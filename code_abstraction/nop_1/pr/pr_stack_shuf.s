	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b80

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	dword ptr [rbp - 0x124], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], edi
	mov	qword ptr [rbp - 0x130], rsi
	nop	
	mov	byte ptr [rbp - 0x105], 0
	mov	byte ptr [rbp - 0x125], 0
	mov	byte ptr [rbp - 5], 0
	nop	
	mov	qword ptr [rbp - 0x90], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2
	mov	qword ptr [rbp - 0xa0], rax
	call	bindtextdomain
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x28], rax
	call	atexit
	mov	dword ptr [rbp - 0xfc], 0
	cmp	dword ptr [rbp - 0xcc], 1
	mov	dword ptr [rbp - 0x88], eax
	jle	.label_28
	lea	rsi, [rsi]
	mov	eax, 8
	mov	esi, eax
	mov	eax, dword ptr [rbp - 0xcc]
	sub	eax, 1
	movsxd	rdi, eax
	call	xnmalloc
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	jmp	.label_45
.label_28:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	jmp	.label_45
.label_45:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x78], rax
.label_76:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x114]
	mov	dword ptr [rbp - 0x114], 0xffffffff
	mov	edi, dword ptr [rbp - 0xcc]
	mov	rsi, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	call	getopt_long
	mov	dword ptr [rbp - 0xc0], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc0], -1
	nop	
	jne	.label_102
	jmp	.label_63
.label_102:
	nop	
	mov	eax, dword ptr [rbp - 0xc0]
	sub	eax, 0x30
	nop	
	cmp	eax, 9
	ja	.label_73
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jb	.label_69
	lea	rsi, [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x90]
	call	x2realloc
	mov	qword ptr [rbp - 0x90], rax
.label_69:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc0]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	byte ptr [rsi + rdx], cl
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x90]
	mov	byte ptr [rsi + rdx], 0
	lea	rsi, [rsi]
	jmp	.label_76
.label_73:
	mov	qword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0xc0]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xb0], eax
	mov	dword ptr [rbp - 0x60], ecx
	mov	rbp, rbp
	je	.label_88
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x120], eax
	lea	rdi, [rdi]
	je	.label_100
	lea	rdi, [rdi]
	jmp	.label_106
.label_106:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb0]
	nop	
	sub	eax, 1
	mov	dword ptr [rbp - 0x80], eax
	nop	
	je	.label_108
	jmp	.label_10
.label_10:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb0]
	nop	
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x100], eax
	je	.label_11
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	sub	eax, 0x46
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_18
	jmp	.label_25
.label_25:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb0]
	nop	
	sub	eax, 0x4a
	mov	dword ptr [rbp - 0xac], eax
	je	.label_26
	jmp	.label_35
.label_35:
	nop	
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 4], eax
	je	.label_34
	mov	rsp, rsp
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0xb0]
	nop	
	sub	eax, 0x53
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_40
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	je	.label_46
	mov	rbp, rbp
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_48
	mov	rsp, rsp
	jmp	.label_52
.label_52:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	je	.label_54
	jmp	.label_58
.label_58:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x62
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_19
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x13c], eax
	lea	rdi, [rdi]
	je	.label_65
	jmp	.label_70
.label_70:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_72
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0x118], eax
	je	.label_99
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	sub	eax, 0x66
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x110], eax
	je	.label_18
	lea	rsi, [rsi]
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 0x30], eax
	je	.label_85
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x69
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_91
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	sub	eax, 0x6c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_97
	mov	rbp, rbp
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0xb0]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa8], eax
	mov	rsp, rsp
	je	.label_105
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x64], eax
	je	.label_7
	mov	rbp, rbp
	jmp	.label_14
.label_14:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x68], eax
	je	.label_15
	nop	
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_23
	jmp	.label_27
.label_27:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x73
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	je	.label_29
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_38
	nop	
	jmp	.label_74
.label_74:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	sub	eax, 0x76
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_44
	jmp	.label_47
.label_47:
	nop	
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x77
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_9
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0xb0]
	sub	eax, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	je	.label_53
	mov	rbp, rbp
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	sub	eax, 0x81
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsp, rsp
	je	.label_57
	nop	
	jmp	.label_62
.label_108:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [first_page_number]],  0
	lea	rsi, [rsi]
	jne	.label_64
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	lea	rsi, [rsi]
	jne	.label_64
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
	jne	.label_36
.label_64:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xfc]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0xfc], edx
	mov	ecx, ecx
	nop	
	mov	esi, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rdi + rsi*8], rax
.label_36:
	jmp	.label_8
.label_57:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_90
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
.label_90:
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x114]
	mov	rdx,  qword ptr [word ptr [optarg]]
	call	first_last_page
	test	al, 1
	jne	.label_107
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x10], rax
	call	quote
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_107:
	lea	rdi, [rdi]
	jmp	.label_43
.label_43:
	jmp	.label_8
.label_53:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 0
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_8
.label_54:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_across_flag]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_8
.label_19:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [balance_columns]],  1
	lea	rdi, [rdi]
	jmp	.label_8
.label_65:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [use_cntrl_prefix]],  1
	jmp	.label_8
.label_72:
	mov	byte ptr [byte ptr [double_space]],  1
	mov	rbp, rbp
	jmp	.label_8
.label_11:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [date_format]],  rax
	lea	rdi, [rdi]
	jmp	.label_8
.label_99:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rsi, [rsi]
	je	.label_55
	mov	rbp, rbp
	mov	esi, 0x65
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:input_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_input_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	getoptarg
.label_55:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [untabify_input]],  1
	lea	rsi, [rsi]
	jmp	.label_8
.label_18:
	mov	byte ptr [byte ptr [use_form_feed]],  1
	lea	rdi, [rdi]
	jmp	.label_8
.label_85:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [custom_header]],  rax
	nop	
	jmp	.label_8
.label_91:
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rbp, rbp
	je	.label_79
	mov	rbp, rbp
	mov	esi, 0x69
	movabs	rdx, OFFSET FLAT:output_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_output_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	getoptarg
.label_79:
	nop	
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_8
.label_26:
	mov	byte ptr [byte ptr [join_lines]],  1
	mov	rsp, rsp
	jmp	.label_8
.label_97:
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	mov	esi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:lines_per_page
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_8
.label_105:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [parallel_files]],  1
	nop	
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_8
.label_7:
	mov	byte ptr [byte ptr [numbered_lines]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	je	.label_16
	mov	rsp, rsp
	mov	esi, 0x6e
	movabs	rdx, OFFSET FLAT:number_separator
	movabs	rcx, OFFSET FLAT:chars_per_number
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	getoptarg
.label_16:
	mov	rsp, rsp
	jmp	.label_8
.label_34:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [skip_count]],  0
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	esi, 0x80000000
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:start_line_num
	nop	
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rcx, rax
	call	getoptnum
	lea	rsi, [rsi]
	jmp	.label_8
.label_15:
	movabs	rdi, OFFSET FLAT:.str.7
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:chars_per_margin
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	getoptnum
	jmp	.label_8
.label_23:
	mov	byte ptr [byte ptr [ignore_failed_opens]],  1
	mov	rbp, rbp
	jmp	.label_8
.label_29:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x105], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_67
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_67
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	separator_string
.label_67:
	jmp	.label_8
.label_40:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
	mov	qword ptr [word ptr [col_sep_string]],  rax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [col_sep_length]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [use_col_separator]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	je	.label_80
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_80:
	lea	rdi, [rdi]
	jmp	.label_8
.label_38:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
	nop	
	jmp	.label_8
.label_46:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [extremities]],  0
	nop	
	mov	byte ptr [byte ptr [keep_FF]],  0
	mov	rsp, rsp
	jmp	.label_8
.label_44:
	mov	byte ptr [byte ptr [use_esc_sequence]],  1
	jmp	.label_8
.label_9:
	movabs	rdi, OFFSET FLAT:.str.8
	mov	byte ptr [rbp - 0x105], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x125], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	call	getoptnum
	mov	rbp, rbp
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_32
	nop	
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [dword ptr [chars_per_line]],  eax
.label_32:
	jmp	.label_8
.label_48:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x125], 0
	mov	byte ptr [byte ptr [truncate_lines]],  1
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:chars_per_line
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rcx, rax
	call	getoptnum
	mov	rsp, rsp
	jmp	.label_8
.label_100:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	usage
.label_88:
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
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_62:
	mov	edi, 1
	call	usage
.label_8:
	mov	rsp, rsp
	jmp	.label_76
.label_63:
	cmp	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	je	.label_81
	mov	rdi, qword ptr [rbp - 0x90]
	call	parse_column_count
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	call	free
.label_81:
	nop	
	cmp	qword ptr [word ptr [date_format]],  0
	nop	
	jne	.label_87
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	call	getenv
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x49], dl
	mov	rsp, rsp
	je	.label_96
	mov	rbp, rbp
	mov	edi, 2
	call	hard_locale
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x49], al
.label_96:
	mov	al, byte ptr [rbp - 0x49]
	movabs	rcx, OFFSET FLAT:.str.16
	movabs	rdx, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [date_format]],  rcx
.label_87:
	movabs	rdi, OFFSET FLAT:.str
	call	getenv
	mov	rdi, rax
	nop	
	call	tzalloc
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	qword ptr [word ptr [first_page_number]],  0
	mov	rsp, rsp
	jne	.label_20
	mov	qword ptr [word ptr [first_page_number]],  1
.label_20:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rbp, rbp
	je	.label_30
	mov	rbp, rbp
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_30
	nop	
	movabs	rdi, OFFSET FLAT:.str.18
	nop	
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_30:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rsp, rsp
	je	.label_12
	test	byte ptr [byte ptr [print_across_flag]],  1
	lea	rdi, [rdi]
	je	.label_12
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
.label_12:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x105], 1
	lea	rdi, [rdi]
	je	.label_56
	mov	rbp, rbp
	test	byte ptr [rbp - 0x125], 1
	je	.label_60
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_61
	mov	rsp, rsp
	test	byte ptr [byte ptr [explicit_columns]],  1
	lea	rsi, [rsi]
	je	.label_66
.label_61:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [truncate_lines]],  1
	test	byte ptr [rbp - 5], 1
	je	.label_71
	nop	
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_71:
	jmp	.label_75
.label_66:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [join_lines]],  1
.label_75:
	lea	rsi, [rsi]
	jmp	.label_77
.label_60:
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_31
	test	byte ptr [rbp - 5], 1
	je	.label_82
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [parallel_files]],  1
	nop	
	jne	.label_83
	test	byte ptr [byte ptr [explicit_columns]],  1
	lea	rsi, [rsi]
	je	.label_82
.label_83:
	test	byte ptr [byte ptr [truncate_lines]],  1
	mov	rsp, rsp
	jne	.label_94
	mov	byte ptr [byte ptr [join_lines]],  1
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jle	.label_93
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_93:
	jmp	.label_101
.label_94:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_101:
	jmp	.label_82
.label_82:
	jmp	.label_31
.label_31:
	jmp	.label_77
.label_77:
	jmp	.label_56
.label_56:
	mov	rbp, rbp
	jmp	.label_13
.label_13:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0xcc]
	jge	.label_109
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x130]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0xfc]
	mov	esi, edx
	add	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xfc], esi
	mov	rbp, rbp
	mov	edx, edx
	mov	ecx, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_13
.label_109:
	nop	
	cmp	dword ptr [rbp - 0xfc], 0
	jne	.label_104
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	call	print_files
	jmp	.label_41
.label_104:
	mov	rbp, rbp
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_42
	mov	edi, dword ptr [rbp - 0xfc]
	mov	rsi, qword ptr [rbp - 0x78]
	call	print_files
	lea	rsi, [rsi]
	jmp	.label_33
.label_42:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], 0
.label_59:
	mov	eax, dword ptr [rbp - 0x104]
	nop	
	cmp	eax, dword ptr [rbp - 0xfc]
	jae	.label_50
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	eax, dword ptr [rbp - 0x104]
	mov	ecx, eax
	shl	rcx, 3
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x78]
	mov	rsi, rcx
	call	print_files
	mov	eax, dword ptr [rbp - 0x104]
	add	eax, 1
	mov	dword ptr [rbp - 0x104], eax
	mov	rbp, rbp
	jmp	.label_59
.label_50:
	jmp	.label_33
.label_33:
	jmp	.label_41
.label_41:
	mov	rbp, rbp
	call	cleanup
	nop	
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_68
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	rpl_fclose
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_68
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.20
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x34]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_68:
	xor	eax, eax
	mov	ecx, 1
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [failed_opens]]
	lea	rdi, [rdi]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x150
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

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
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x28]
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str_0
	mov	dword ptr [rbp - 0x20], edi
	mov	byte ptr [rbp - 0x39], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x38], -1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, ecx
	mov	rcx, r8
	lea	rsi, [rsi]
	mov	r8, r9
	lea	rdi, [rdi]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	je	.label_112
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 2
	nop	
	je	.label_112
	movabs	rcx, OFFSET FLAT:long_options
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	edx, al
	call	xstrtol_fatal
.label_112:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_115
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_116
.label_115:
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_113
.label_116:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x3a
	mov	rsp, rsp
	jne	.label_111
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x38]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrtoumax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_117
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x20]
	mov	al, byte ptr [rbp - 0x39]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	movsx	edx, al
	call	xstrtol_fatal
.label_117:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_114
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_118
.label_114:
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_113
.label_118:
	lea	rdi, [rdi]
	jmp	.label_111
.label_111:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_119
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_113
.label_119:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [word ptr [first_page_number]],  rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [word ptr [last_page_number]],  rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_113:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402da0

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	nop	
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:columns
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
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
	#Procedure 0x402e00

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rcx]
	lea	rdi, [rdi]
	sub	esi, 0x30
	nop	
	cmp	esi, 9
	jbe	.label_120
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	dl, byte ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], dl
.label_120:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	je	.label_125
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str_0
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrtol
	cmp	eax, 0
	jne	.label_121
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jle	.label_121
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	nop	
	jge	.label_123
.label_121:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jge	.label_122
	lea	rdi, [rdi]
	mov	eax, 0x4b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_124
.label_122:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
.label_124:
	mov	eax, dword ptr [rbp - 0x28]
	movabs	rdi, OFFSET FLAT:.str.67
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	gettext
	movsx	ecx, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	lea	rdi, [rdi]
	call	quote
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_123:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
.label_125:
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

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
	mov	dword ptr [rbp - 0x1c], esi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, r9
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9d, eax
	call	xdectoimax
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r9d, eax
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], r9d
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403010

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_126
	nop	
	call	integer_overflow
.label_126:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	dword ptr [dword ptr [col_sep_length]],  ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403080

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], edi
	nop	
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_127
	jmp	.label_129
.label_129:
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
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_128
.label_127:
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
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x40], eax
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
	mov	dword ptr [rbp - 0x14], eax
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
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.29
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x48], eax
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
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.34
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
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
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.37
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x24], eax
	call	emit_ancillary_info
.label_128:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x4033d0

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
	jne	.label_130
	jmp	.label_131
.label_130:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_135
	lea	rsi, [rsi]
	call	init_store_cols
.label_135:
	cmp	qword ptr [word ptr [first_page_number]],  1
	mov	rsp, rsp
	jbe	.label_133
	mov	rdi,  qword ptr [word ptr [first_page_number]]
	call	skip_to_page
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_132
	jmp	.label_131
.label_132:
	mov	rax,  qword ptr [word ptr [first_page_number]]
	mov	qword ptr [word ptr [page_number]],  rax
	jmp	.label_136
.label_133:
	mov	rsp, rsp
	mov	qword ptr [word ptr [page_number]],  1
.label_136:
	call	init_funcs
	mov	eax,  dword ptr [dword ptr [line_count]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [line_number]],  eax
.label_134:
	lea	rdi, [rdi]
	call	print_page
	test	al, 1
	mov	rsp, rsp
	jne	.label_137
	jmp	.label_131
.label_137:
	jmp	.label_134
.label_131:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034c0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403530

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403570

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x48], rax
.label_141:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], cl
	mov	rbp, rbp
	je	.label_143
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax]
	call	strcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], cl
.label_143:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x39]
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_138
	lea	rdi, [rdi]
	jmp	.label_139
.label_138:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_141
.label_139:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_142
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_142:
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
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_140
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
	je	.label_140
	movabs	rdi, OFFSET FLAT:.str.94
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_140:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.95
	nop	
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.96
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.97
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmove	rdx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800

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
	#Procedure 0x403840

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0x38], edi
	mov	dword ptr [rbp - 0xc], 0
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
	jg	.label_168
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
.label_168:
	mov	al,  byte ptr [byte ptr [extremities]]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_191
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [lines_per_page]]
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_191:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_198
	mov	eax, 2
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_198:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x38], 0
	jne	.label_209
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [parallel_files]],  0
.label_209:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_215
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [columns]],  eax
.label_215:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_223
	mov	byte ptr [byte ptr [balance_columns]],  1
.label_223:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [columns]],  1
	lea	rsi, [rsi]
	jle	.label_231
	test	byte ptr [byte ptr [use_col_separator]],  1
	lea	rdi, [rdi]
	jne	.label_238
	nop	
	test	byte ptr [byte ptr [join_lines]],  1
	lea	rsi, [rsi]
	je	.label_193
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [line_separator]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	jmp	.label_246
.label_193:
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_246:
	nop	
	mov	dword ptr [dword ptr [col_sep_length]],  1
	mov	byte ptr [byte ptr [use_col_separator]],  1
	nop	
	jmp	.label_254
.label_238:
	test	byte ptr [byte ptr [join_lines]],  1
	jne	.label_260
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [col_sep_length]],  1
	lea	rsi, [rsi]
	jne	.label_260
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 9
	jne	.label_260
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_260:
	mov	rsp, rsp
	jmp	.label_254
.label_254:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_275
.label_231:
	nop	
	mov	byte ptr [byte ptr [storing_columns]],  0
.label_275:
	test	byte ptr [byte ptr [join_lines]],  1
	mov	rbp, rbp
	je	.label_282
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [truncate_lines]],  0
.label_282:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_285
	mov	dword ptr [rbp - 0x24], 8
	mov	eax,  dword ptr [dword ptr [start_line_num]]
	mov	dword ptr [dword ptr [line_count]],  eax
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	lea	rsi, [rsi]
	cmp	eax, 9
	jne	.label_288
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x24]
	sub	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [number_width]],  edx
	jmp	.label_298
.label_288:
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	nop	
	add	eax, 1
	mov	dword ptr [dword ptr [number_width]],  eax
.label_298:
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rsp, rsp
	je	.label_309
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 0xc], eax
.label_309:
	nop	
	jmp	.label_285
.label_285:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_322
	jmp	.label_299
.label_322:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_332
	lea	rdi, [rdi]
	jmp	.label_336
.label_332:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_339
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_344
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
	jl	.label_167
	jmp	.label_156
.label_344:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_352
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_167
	lea	rsi, [rsi]
	jmp	.label_156
.label_352:
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
	jl	.label_167
	mov	rbp, rbp
	jmp	.label_156
.label_339:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_162
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_167
	jmp	.label_156
.label_162:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [columns]]
	nop	
	sub	eax, 1
	mov	rsp, rsp
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_175
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
	jl	.label_167
	mov	rbp, rbp
	jmp	.label_156
.label_175:
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
	jl	.label_167
.label_156:
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
	jl	.label_167
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
	jge	.label_218
.label_167:
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
	mov	dword ptr [rbp - 0x44], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_164
	mov	rsp, rsp
	jmp	.label_176
.label_218:
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
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_164
	jmp	.label_176
.label_336:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_264
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_266
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
	jl	.label_188
	mov	rbp, rbp
	jmp	.label_277
.label_266:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_281
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_188
	nop	
	jmp	.label_277
.label_281:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_188
	nop	
	jmp	.label_277
.label_264:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	mov	rsp, rsp
	jne	.label_296
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_188
	jmp	.label_277
.label_296:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_300
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_188
	jmp	.label_277
.label_300:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	nop	
	jl	.label_188
.label_277:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_188
	nop	
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	jge	.label_341
.label_188:
	nop	
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rsi, [rsi]
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x44], ecx
	test	al, 1
	jne	.label_164
	jmp	.label_176
.label_341:
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
	mov	dword ptr [rbp - 0x44], eax
	nop	
	test	cl, 1
	jne	.label_164
	jmp	.label_176
.label_299:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_224
	jmp	.label_363
.label_224:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_364
	jmp	.label_144
.label_364:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_145
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
	jge	.label_160
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
	jl	.label_171
	nop	
	jmp	.label_185
.label_160:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_187
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_171
	jmp	.label_185
.label_187:
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
	jl	.label_171
	mov	rsp, rsp
	jmp	.label_185
.label_145:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_212
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_171
	mov	rsp, rsp
	jmp	.label_185
.label_212:
	mov	eax,  dword ptr [dword ptr [columns]]
	nop	
	sub	eax, 1
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_230
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
	jl	.label_171
	jmp	.label_185
.label_230:
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
	jl	.label_171
.label_185:
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
	jl	.label_171
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
	jge	.label_251
.label_171:
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
	mov	dword ptr [rbp - 0x44], ecx
	test	al, 1
	jne	.label_164
	mov	rsp, rsp
	jmp	.label_176
.label_251:
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
	mov	dword ptr [rbp - 0x44], eax
	test	cl, 1
	jne	.label_164
	jmp	.label_176
.label_144:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_315
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_325
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
	jl	.label_153
	jmp	.label_149
.label_325:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_343
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_153
	jmp	.label_149
.label_343:
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
	jl	.label_153
	mov	rbp, rbp
	jmp	.label_149
.label_315:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_351
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_153
	lea	rdi, [rdi]
	jmp	.label_149
.label_351:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_359
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	nop	
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_153
	jmp	.label_149
.label_359:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_153
.label_149:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	eax, 1
	lea	rdi, [rdi]
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	nop	
	cmp	eax, 0xffff8000
	nop	
	jl	.label_153
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
	jge	.label_177
.label_153:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x44], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_164
	nop	
	jmp	.label_176
.label_177:
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
	mov	dword ptr [rbp - 0x44], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_164
	jmp	.label_176
.label_363:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_203
	jmp	.label_207
.label_203:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_211
	lea	rsi, [rsi]
	jmp	.label_214
.label_211:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_217
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_221
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_226
	mov	rbp, rbp
	jmp	.label_174
.label_221:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_243
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_226
	jmp	.label_174
.label_243:
	nop	
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jl	.label_226
	jmp	.label_174
.label_217:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_256
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_226
	jmp	.label_174
.label_256:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_262
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_226
	jmp	.label_174
.label_262:
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
	jl	.label_226
.label_174:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	lea	rdi, [rdi]
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	lea	rsi, [rsi]
	jl	.label_226
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_290
.label_226:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_164
	jmp	.label_176
.label_290:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	lea	rdi, [rdi]
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x44], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_164
	jmp	.label_176
.label_214:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	lea	rdi, [rdi]
	jge	.label_317
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	cmp	eax, 0
	jge	.label_328
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_161
	nop	
	jmp	.label_157
.label_328:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	lea	rdi, [rdi]
	jne	.label_345
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_161
	mov	rbp, rbp
	jmp	.label_157
.label_345:
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
	jl	.label_161
	lea	rsi, [rsi]
	jmp	.label_157
.label_317:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	mov	rbp, rbp
	jne	.label_353
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_161
	jmp	.label_157
.label_353:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_361
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jl	.label_161
	nop	
	jmp	.label_157
.label_361:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	nop	
	cmp	eax, ecx
	nop	
	jl	.label_161
.label_157:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	rsp, rsp
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	lea	rdi, [rdi]
	jl	.label_161
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_179
.label_161:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_164
	nop	
	jmp	.label_176
.label_179:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_164
	jmp	.label_176
.label_207:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_204
	jmp	.label_210
.label_204:
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_276
	jmp	.label_213
.label_276:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_216
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	eax, 1
	lea	rdi, [rdi]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_222
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	nop	
	cqo	
	lea	rsi, [rsi]
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x50]
	cmp	rsi, rax
	jl	.label_232
	jmp	.label_247
.label_222:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_249
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_232
	lea	rsi, [rsi]
	jmp	.label_247
.label_249:
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
	jl	.label_232
	lea	rsi, [rsi]
	jmp	.label_247
.label_216:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_270
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_232
	lea	rdi, [rdi]
	jmp	.label_247
.label_270:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	eax, 1
	mov	rsp, rsp
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	jge	.label_235
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
	jl	.label_232
	lea	rsi, [rsi]
	jmp	.label_247
.label_235:
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
	jl	.label_232
.label_247:
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
	jl	.label_232
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
	jge	.label_330
.label_232:
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
	mov	dword ptr [rbp - 0x44], ecx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_164
	jmp	.label_176
.label_330:
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
	mov	dword ptr [rbp - 0x44], eax
	test	cl, 1
	jne	.label_164
	lea	rsi, [rsi]
	jmp	.label_176
.label_213:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	nop	
	jge	.label_355
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	eax, 1
	nop	
	cmp	eax, 0
	jge	.label_360
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
	jl	.label_166
	jmp	.label_169
.label_360:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_163
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_166
	lea	rsi, [rsi]
	jmp	.label_169
.label_163:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_166
	mov	rsp, rsp
	jmp	.label_169
.label_355:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	lea	rsi, [rsi]
	jne	.label_182
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_166
	jmp	.label_169
.label_182:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_357
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
	jl	.label_166
	jmp	.label_169
.label_357:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_166
.label_169:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_166
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
	jge	.label_228
.label_166:
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
	mov	dword ptr [rbp - 0x44], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_164
	jmp	.label_176
.label_228:
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
	mov	dword ptr [rbp - 0x44], eax
	test	cl, 1
	jne	.label_164
	mov	rbp, rbp
	jmp	.label_176
.label_210:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_265
	jmp	.label_268
.label_265:
	nop	
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_269
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	eax, 1
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	jge	.label_274
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, rax
	jl	.label_280
	lea	rdi, [rdi]
	jmp	.label_293
.label_274:
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_294
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_280
	lea	rdi, [rdi]
	jmp	.label_293
.label_294:
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
	jl	.label_280
	lea	rsi, [rsi]
	jmp	.label_293
.label_269:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_313
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_280
	lea	rsi, [rsi]
	jmp	.label_293
.label_313:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	jge	.label_333
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, rax
	jl	.label_280
	jmp	.label_293
.label_333:
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
	jl	.label_280
.label_293:
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
	jl	.label_280
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
	jge	.label_366
.label_280:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], ecx
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_164
	jmp	.label_176
.label_366:
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
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_164
	jmp	.label_176
.label_268:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	mov	rbp, rbp
	jge	.label_365
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_196
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
	jl	.label_200
	jmp	.label_205
.label_196:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_208
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_200
	jmp	.label_205
.label_208:
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
	jl	.label_200
	jmp	.label_205
.label_365:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_234
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_200
	lea	rsi, [rsi]
	jmp	.label_205
.label_234:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_244
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
	jl	.label_200
	lea	rsi, [rsi]
	jmp	.label_205
.label_244:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	nop	
	cmp	eax, ecx
	jl	.label_200
.label_205:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rdi, [rdi]
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, rax
	jl	.label_200
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
	jge	.label_183
.label_200:
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
	mov	dword ptr [rbp - 0x44], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_164
	mov	rbp, rbp
	jmp	.label_176
.label_183:
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
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_164
	jmp	.label_176
.label_164:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 0x7fffffff
.label_176:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_304
	lea	rdi, [rdi]
	jmp	.label_308
.label_304:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_310
	nop	
	jmp	.label_314
.label_310:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_318
	jmp	.label_326
.label_318:
	mov	eax, dword ptr [rbp - 0x44]
	mov	cl, al
	movsx	eax, cl
	nop	
	cmp	eax, 0
	jge	.label_329
	mov	eax, dword ptr [rbp - 0x44]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	cl, dl
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_159
	jmp	.label_155
.label_329:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x44]
	mov	cl, dl
	movsx	edx, cl
	lea	rdi, [rdi]
	add	edx, 0x80000000
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_159
	jmp	.label_155
.label_326:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_347
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_159
	jmp	.label_155
.label_347:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_354
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	cl, dl
	movsx	edx, cl
	nop	
	sub	eax, edx
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 0xc]
	nop	
	mov	cl, dl
	movsx	edx, cl
	mov	rbp, rbp
	cmp	eax, edx
	jle	.label_159
	jmp	.label_155
.label_354:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	cl, dl
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_159
.label_155:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	nop	
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	cl, dl
	movsx	edx, cl
	nop	
	sub	eax, edx
	cmp	eax, -0x80
	mov	rsp, rsp
	jl	.label_159
	mov	rbp, rbp
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	nop	
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_184
.label_159:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x44]
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	sub	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x3c], ecx
	test	al, 1
	jne	.label_154
	lea	rdi, [rdi]
	jmp	.label_147
.label_184:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0xc]
	mov	dl, al
	movsx	eax, dl
	nop	
	mov	esi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	dl, sil
	nop	
	movsx	esi, dl
	sub	eax, esi
	mov	rbp, rbp
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	mov	dword ptr [rbp - 0x3c], eax
	test	cl, 1
	jne	.label_154
	lea	rsi, [rsi]
	jmp	.label_147
.label_314:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_225
	jmp	.label_229
.label_225:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 0
	nop	
	jge	.label_237
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_236
	mov	rsp, rsp
	jmp	.label_245
.label_237:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0xc]
	mov	ecx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	ecx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_236
	mov	rbp, rbp
	jmp	.label_245
.label_229:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0
	jge	.label_255
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_236
	jmp	.label_245
.label_255:
	cmp	dword ptr [rbp - 0x44], 0
	nop	
	jge	.label_261
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x44]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_236
	jmp	.label_245
.label_261:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 0xc]
	nop	
	cmp	eax, dword ptr [rbp - 0x44]
	jl	.label_236
.label_245:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	cmp	eax, -0x80
	jl	.label_236
	mov	eax, 0x7f
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	sub	ecx, dword ptr [rbp - 0x44]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_297
.label_236:
	nop	
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	sub	ecx, dword ptr [rbp - 0x44]
	mov	dl, cl
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_154
	jmp	.label_147
.label_297:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	nop	
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x3c], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_154
	mov	rbp, rbp
	jmp	.label_147
.label_308:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_301
	mov	rsp, rsp
	jmp	.label_302
.label_301:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_306
	mov	rsp, rsp
	jmp	.label_242
.label_306:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_312
	lea	rsi, [rsi]
	jmp	.label_316
.label_312:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	nop	
	jge	.label_320
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 0xc]
	mov	cx, dx
	mov	rsp, rsp
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_172
	jmp	.label_158
.label_320:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 0xc]
	nop	
	mov	cx, ax
	movsx	eax, cx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_172
	jmp	.label_158
.label_316:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_348
	mov	al, 1
	test	al, 1
	jne	.label_172
	jmp	.label_158
.label_348:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_356
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	mov	cx, dx
	movsx	edx, cx
	sub	eax, edx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	mov	rsp, rsp
	jle	.label_172
	jmp	.label_158
.label_356:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x44]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_172
.label_158:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	cx, dx
	mov	rsp, rsp
	movsx	edx, cx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_172
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	dx, si
	nop	
	movsx	esi, dx
	lea	rsi, [rsi]
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_253
.label_172:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	nop	
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dx, si
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_154
	mov	rbp, rbp
	jmp	.label_147
.label_253:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dx, ax
	mov	rsp, rsp
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	dx, si
	lea	rsi, [rsi]
	movsx	esi, dx
	sub	eax, esi
	lea	rsi, [rsi]
	mov	dx, ax
	mov	rbp, rbp
	movsx	eax, dx
	mov	dword ptr [rbp - 0x3c], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_154
	jmp	.label_147
.label_242:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_367
	lea	rdi, [rdi]
	jmp	.label_239
.label_367:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_346
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0xc]
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_146
	nop	
	jmp	.label_258
.label_346:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_146
	nop	
	jmp	.label_258
.label_239:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_259
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_146
	jmp	.label_258
.label_259:
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_267
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_146
	jmp	.label_258
.label_267:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	jl	.label_146
.label_258:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	cmp	eax, 0xffff8000
	mov	rsp, rsp
	jl	.label_146
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x44]
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_287
.label_146:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	sub	ecx, dword ptr [rbp - 0x44]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_154
	jmp	.label_147
.label_287:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dx, ax
	mov	rbp, rbp
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_154
	lea	rdi, [rdi]
	jmp	.label_147
.label_302:
	mov	al, 1
	test	al, 1
	jne	.label_263
	nop	
	jmp	.label_321
.label_263:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_324
	jmp	.label_331
.label_324:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_305
	lea	rsi, [rsi]
	jmp	.label_335
.label_305:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_337
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_165
	lea	rsi, [rsi]
	jmp	.label_170
.label_337:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0xc]
	mov	ecx, dword ptr [rbp - 0x44]
	add	ecx, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_165
	mov	rbp, rbp
	jmp	.label_170
.label_335:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_349
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_165
	jmp	.label_170
.label_349:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	nop	
	jge	.label_358
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, dword ptr [rbp - 0x44]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_165
	mov	rbp, rbp
	jmp	.label_170
.label_358:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 0x44]
	jl	.label_165
.label_170:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	cmp	eax, 0x80000000
	jl	.label_165
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x44]
	cmp	eax, ecx
	jge	.label_338
.label_165:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_154
	jmp	.label_147
.label_338:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_154
	jmp	.label_147
.label_331:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_197
	jmp	.label_199
.label_197:
	cmp	dword ptr [rbp - 0x44], 0
	mov	rbp, rbp
	jge	.label_201
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jl	.label_202
	mov	rsp, rsp
	jmp	.label_206
.label_201:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 0xc]
	mov	ecx, dword ptr [rbp - 0x44]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_202
	jmp	.label_206
.label_199:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_220
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_202
	lea	rdi, [rdi]
	jmp	.label_206
.label_220:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 0
	nop	
	jge	.label_148
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x44]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_202
	jmp	.label_206
.label_148:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x44]
	nop	
	jl	.label_202
.label_206:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x44]
	cmp	eax, 0x80000000
	jl	.label_202
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0xc]
	sub	ecx, dword ptr [rbp - 0x44]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_192
.label_202:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x3c], ecx
	test	al, 1
	jne	.label_154
	mov	rsp, rsp
	jmp	.label_147
.label_192:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_154
	lea	rdi, [rdi]
	jmp	.label_147
.label_321:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_248
	jmp	.label_284
.label_248:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_278
	lea	rdi, [rdi]
	jmp	.label_289
.label_278:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_292
	nop	
	jmp	.label_295
.label_292:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x44]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_334
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x44]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0xc]
	movsxd	rcx, edx
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_150
	jmp	.label_303
.label_334:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0xc]
	nop	
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x44]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_150
	jmp	.label_303
.label_295:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_323
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_150
	jmp	.label_303
.label_323:
	movsxd	rax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jge	.label_340
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jle	.label_150
	mov	rsp, rsp
	jmp	.label_303
.label_340:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0xc]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x44]
	nop	
	cmp	rcx, rdx
	jl	.label_150
.label_303:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	movsxd	rsi, dword ptr [rbp - 0x44]
	sub	rdx, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_150
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	sub	rdx, rsi
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_362
.label_150:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x44]
	nop	
	sub	rdx, rsi
	nop	
	mov	ecx, edx
	mov	dword ptr [rbp - 0x3c], ecx
	test	al, 1
	jne	.label_154
	jmp	.label_147
.label_362:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	sub	rdx, rsi
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_154
	lea	rdi, [rdi]
	jmp	.label_147
.label_289:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_189
	lea	rsi, [rsi]
	jmp	.label_233
.label_189:
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_194
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, ecx
	nop	
	jl	.label_195
	jmp	.label_151
.label_194:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	ecx, dword ptr [rbp - 0x44]
	nop	
	add	ecx, 0x80000000
	mov	rbp, rbp
	cmp	eax, ecx
	jl	.label_195
	jmp	.label_151
.label_233:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_257
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_195
	lea	rdi, [rdi]
	jmp	.label_151
.label_257:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_219
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_195
	nop	
	jmp	.label_151
.label_219:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 0x44]
	nop	
	jl	.label_195
.label_151:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x44]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, rax
	jl	.label_195
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rax, rdx
	jge	.label_250
.label_195:
	nop	
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x44]
	sub	rdx, rsi
	mov	ecx, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], ecx
	test	al, 1
	jne	.label_154
	mov	rbp, rbp
	jmp	.label_147
.label_250:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x3c], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_154
	mov	rbp, rbp
	jmp	.label_147
.label_284:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_227
	jmp	.label_252
.label_227:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_283
	jmp	.label_273
.label_283:
	movsxd	rax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_286
	movsxd	rax, dword ptr [rbp - 0x44]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 0xc]
	movsxd	rcx, edx
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_180
	jmp	.label_152
.label_286:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_180
	mov	rsp, rsp
	jmp	.label_152
.label_273:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_307
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_180
	lea	rsi, [rsi]
	jmp	.label_152
.label_307:
	movsxd	rax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_327
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x44]
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_180
	nop	
	jmp	.label_152
.label_327:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x44]
	cmp	rcx, rdx
	jl	.label_180
.label_152:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	nop	
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x44]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_180
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x44]
	nop	
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_350
.label_180:
	lea	rsi, [rsi]
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	sub	rdx, rsi
	mov	rsp, rsp
	mov	ecx, edx
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_154
	nop	
	jmp	.label_147
.label_350:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x44]
	nop	
	sub	rdx, rsi
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	test	cl, 1
	jne	.label_154
	nop	
	jmp	.label_147
.label_252:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_173
	jmp	.label_272
.label_173:
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_178
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_181
	jmp	.label_190
.label_178:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	ecx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	ecx, 0x80000000
	nop	
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_181
	lea	rsi, [rsi]
	jmp	.label_190
.label_272:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_186
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_181
	nop	
	jmp	.label_190
.label_186:
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	jge	.label_342
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 0x44]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	nop	
	jle	.label_181
	jmp	.label_190
.label_342:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 0x44]
	jl	.label_181
.label_190:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0xc]
	sub	ecx, dword ptr [rbp - 0x44]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_181
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 0xc]
	sub	ecx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jge	.label_240
.label_181:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x44]
	sub	rdx, rsi
	lea	rsi, [rsi]
	mov	ecx, edx
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_154
	jmp	.label_147
.label_240:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0xc]
	movsxd	rdx, eax
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x44]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x3c], eax
	test	cl, 1
	jne	.label_154
	jmp	.label_147
.label_154:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0
.label_147:
	mov	eax, dword ptr [rbp - 0x3c]
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [chars_per_column]],  eax
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [chars_per_column]],  1
	jge	.label_271
	movabs	rdi, OFFSET FLAT:.str.68
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_271:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_241
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [number_buff]]
	mov	rbp, rbp
	call	free
	movsxd	rdi,  dword ptr [dword ptr [chars_per_number]]
	mov	rsp, rsp
	cmp	rdi, 0xb
	jbe	.label_291
	nop	
	movsxd	rax,  dword ptr [dword ptr [chars_per_number]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_279
.label_291:
	lea	rdi, [rdi]
	mov	eax, 0xb
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	jmp	.label_279
.label_279:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [word ptr [number_buff]],  rax
.label_241:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	eax, 8
	cmp	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	lea	rdi, [rdi]
	jle	.label_311
	mov	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_319
.label_311:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
.label_319:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movsxd	rdi, eax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [clump_buff]],  rax
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406750

	.globl init_fps
	.type init_fps, @function
init_fps:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
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
	je	.label_376
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
.label_378:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x30], ecx
	cmp	eax, 0
	nop	
	je	.label_370
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	open_file
	test	al, 1
	jne	.label_380
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, -0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	add	ecx, -1
	mov	dword ptr [dword ptr [columns]],  ecx
.label_380:
	lea	rsi, [rsi]
	jmp	.label_377
.label_377:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_378
.label_370:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [columns]],  0
	lea	rsi, [rsi]
	jne	.label_374
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
	jmp	.label_372
.label_374:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
	call	init_header
	lea	rsi, [rsi]
	jmp	.label_371
.label_376:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [rbp - 4], 0
	jle	.label_373
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	open_file
	test	al, 1
	jne	.label_369
	mov	byte ptr [rbp - 5], 0
	jmp	.label_372
.label_369:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fileno
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, eax
	nop	
	call	init_header
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi + 0x2c], 0
	jmp	.label_375
.label_373:
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
.label_375:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
.label_368:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	je	.label_379
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_368
.label_379:
	mov	rbp, rbp
	jmp	.label_371
.label_371:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [total_files]]
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 1
.label_372:
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ab0

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_552
	mov	rbp, rbp
	jmp	.label_557
.label_552:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_559
	jmp	.label_564
.label_559:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_719
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	movsx	eax, cl
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_569
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
	jl	.label_432
	lea	rdi, [rdi]
	jmp	.label_579
.label_569:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	nop	
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_581
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_432
	nop	
	jmp	.label_579
.label_581:
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
	jl	.label_432
	nop	
	jmp	.label_579
.label_719:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	eax, cl
	nop	
	cmp	eax, 0
	jne	.label_601
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_432
	lea	rdi, [rdi]
	jmp	.label_579
.label_601:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_614
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
	jl	.label_432
	jmp	.label_579
.label_614:
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
	jl	.label_432
.label_579:
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
	jl	.label_432
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
	jge	.label_657
.label_432:
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
	mov	dword ptr [rbp - 0x18], ecx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_392
	jmp	.label_398
.label_657:
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
	mov	dword ptr [rbp - 0x18], eax
	nop	
	test	cl, 1
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_398
.label_564:
	nop	
	cmp	dword ptr [dword ptr [columns]],  0
	lea	rdi, [rdi]
	jge	.label_693
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_698
	mov	eax, 0x7fffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_701
	mov	rbp, rbp
	jmp	.label_695
.label_698:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_709
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_701
	nop	
	jmp	.label_695
.label_709:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	jl	.label_701
	jmp	.label_695
.label_693:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rbp, rbp
	jne	.label_656
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_701
	mov	rbp, rbp
	jmp	.label_695
.label_656:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	lea	rsi, [rsi]
	jge	.label_728
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jl	.label_701
	nop	
	jmp	.label_695
.label_728:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	jl	.label_701
.label_695:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	imul	eax,  dword ptr [dword ptr [columns]]
	nop	
	cmp	eax, -0x80
	jl	.label_701
	nop	
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jge	.label_751
.label_701:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	nop	
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x18], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_398
.label_751:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dl, al
	movsx	eax, dl
	nop	
	mov	dword ptr [rbp - 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_392
	jmp	.label_398
.label_557:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_780
	jmp	.label_786
.label_780:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_644
	mov	rbp, rbp
	jmp	.label_631
.label_644:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	eax, cx
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_791
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_799
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
	jl	.label_395
	nop	
	jmp	.label_400
.label_799:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_383
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_395
	jmp	.label_400
.label_383:
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
	jl	.label_395
	mov	rbp, rbp
	jmp	.label_400
.label_791:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_419
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_395
	mov	rsp, rsp
	jmp	.label_400
.label_419:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_436
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
	jl	.label_395
	lea	rdi, [rdi]
	jmp	.label_400
.label_436:
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
	jl	.label_395
.label_400:
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
	jl	.label_395
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
	jge	.label_479
.label_395:
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
	mov	dword ptr [rbp - 0x18], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_398
.label_479:
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
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_392
	jmp	.label_398
.label_631:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [columns]],  0
	nop	
	jge	.label_528
	nop	
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_533
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	ecx, eax
	jl	.label_538
	lea	rsi, [rsi]
	jmp	.label_547
.label_533:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_549
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_538
	mov	rsp, rsp
	jmp	.label_547
.label_549:
	mov	eax, 0x80000000
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	jl	.label_538
	lea	rsi, [rsi]
	jmp	.label_547
.label_528:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_566
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_538
	jmp	.label_547
.label_566:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_573
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jl	.label_538
	jmp	.label_547
.label_573:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	nop	
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_538
.label_547:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	nop	
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0xffff8000
	jl	.label_538
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_592
.label_538:
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_398
.label_592:
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
	mov	dword ptr [rbp - 0x18], eax
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_392
	jmp	.label_398
.label_786:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_620
	jmp	.label_625
.label_620:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_629
	lea	rdi, [rdi]
	jmp	.label_634
.label_629:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_635
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_639
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_640
	nop	
	jmp	.label_647
.label_639:
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rsp, rsp
	jne	.label_650
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_640
	jmp	.label_647
.label_650:
	nop	
	mov	eax, 0x80000000
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_640
	mov	rbp, rbp
	jmp	.label_647
.label_635:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_666
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_640
	jmp	.label_647
.label_666:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	mov	rbp, rbp
	jge	.label_675
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	cmp	ecx, eax
	jl	.label_640
	jmp	.label_647
.label_675:
	mov	eax, 0x7fffffff
	nop	
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	jl	.label_640
.label_647:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_640
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	nop	
	jge	.label_482
.label_640:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_392
	lea	rdi, [rdi]
	jmp	.label_398
.label_482:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	nop	
	imul	eax,  dword ptr [dword ptr [columns]]
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	test	cl, 1
	nop	
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_398
.label_634:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jge	.label_721
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	nop	
	jge	.label_671
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_725
	jmp	.label_732
.label_671:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rsp, rsp
	jne	.label_734
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_725
	lea	rdi, [rdi]
	jmp	.label_732
.label_734:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_725
	lea	rdi, [rdi]
	jmp	.label_732
.label_721:
	nop	
	cmp	dword ptr [dword ptr [columns]],  0
	lea	rdi, [rdi]
	jne	.label_748
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_725
	jmp	.label_732
.label_748:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	lea	rsi, [rsi]
	jge	.label_758
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_725
	jmp	.label_732
.label_758:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_725
.label_732:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_725
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_782
.label_725:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x18], ecx
	test	al, 1
	jne	.label_392
	jmp	.label_398
.label_782:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_398
.label_625:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_807
	jmp	.label_812
.label_807:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_814
	mov	rsp, rsp
	jmp	.label_381
.label_814:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	nop	
	cmp	rax, 0
	jge	.label_387
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_393
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x30], rdx
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	idiv	rsi
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_399
	nop	
	jmp	.label_411
.label_393:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_414
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_399
	jmp	.label_411
.label_414:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_399
	jmp	.label_411
.label_387:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_439
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_399
	jmp	.label_411
.label_439:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_451
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
	jl	.label_399
	jmp	.label_411
.label_451:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_399
.label_411:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	imul	rcx, rdx
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_399
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_484
.label_399:
	nop	
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	nop	
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], esi
	test	al, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_398
.label_484:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0x18], eax
	test	cl, 1
	jne	.label_392
	jmp	.label_398
.label_381:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jge	.label_524
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	lea	rsi, [rsi]
	jge	.label_529
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	nop	
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_550
	jmp	.label_544
.label_529:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rbp, rbp
	jne	.label_779
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_550
	jmp	.label_544
.label_779:
	nop	
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_550
	jmp	.label_544
.label_524:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jne	.label_561
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_550
	jmp	.label_544
.label_561:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	nop	
	jge	.label_568
	nop	
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_550
	jmp	.label_544
.label_568:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_550
.label_544:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_550
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rsp, rsp
	jge	.label_685
.label_550:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], esi
	nop	
	test	al, 1
	nop	
	jne	.label_392
	jmp	.label_398
.label_685:
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
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_398
.label_812:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_623
	jmp	.label_624
.label_623:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_628
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jge	.label_632
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	idiv	rsi
	cmp	rcx, rax
	jl	.label_471
	lea	rdi, [rdi]
	jmp	.label_648
.label_632:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_652
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_471
	jmp	.label_648
.label_652:
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
	jl	.label_471
	jmp	.label_648
.label_628:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	nop	
	jne	.label_674
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_471
	lea	rsi, [rsi]
	jmp	.label_648
.label_674:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_681
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x40]
	idiv	rsi
	cmp	rcx, rax
	nop	
	jl	.label_471
	nop	
	jmp	.label_648
.label_681:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_471
.label_648:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_471
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	nop	
	cmp	rax, rcx
	nop	
	jge	.label_716
.label_471:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x18], esi
	nop	
	test	al, 1
	jne	.label_392
	jmp	.label_398
.label_716:
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
	mov	dword ptr [rbp - 0x18], eax
	test	cl, 1
	jne	.label_392
	jmp	.label_398
.label_624:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jge	.label_742
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	nop	
	jge	.label_745
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_500
	lea	rsi, [rsi]
	jmp	.label_556
.label_745:
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rbp, rbp
	jne	.label_753
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_500
	jmp	.label_556
.label_753:
	nop	
	mov	eax, 0x80000000
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	nop	
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	jl	.label_500
	nop	
	jmp	.label_556
.label_742:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_770
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_500
	jmp	.label_556
.label_770:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_777
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_500
	mov	rsp, rsp
	jmp	.label_556
.label_777:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	nop	
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	nop	
	jl	.label_500
.label_556:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_500
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_804
.label_500:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	nop	
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	imul	rcx, rdx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], esi
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_392
	jmp	.label_398
.label_804:
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
	mov	dword ptr [rbp - 0x18], eax
	test	cl, 1
	jne	.label_392
.label_398:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_409
	mov	rsp, rsp
	jmp	.label_416
.label_409:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_418
	jmp	.label_421
.label_418:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_423
	mov	rbp, rbp
	jmp	.label_429
.label_423:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_430
	jmp	.label_437
.label_430:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_438
	jmp	.label_440
.label_437:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dl, cl
	nop	
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_438
	jmp	.label_440
.label_429:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_453
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	nop	
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_438
	jmp	.label_440
.label_453:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_467
	nop	
	jmp	.label_473
.label_467:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	cl, dl
	movsx	edx, cl
	mov	rbp, rbp
	add	edx, 1
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_438
	nop	
	jmp	.label_440
.label_473:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	cl, al
	movsx	eax, cl
	nop	
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_438
.label_440:
	mov	eax, dword ptr [rbp - 0x18]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_438
	nop	
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_485
.label_438:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	nop	
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_392
	jmp	.label_390
.label_485:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	dl, al
	movsx	eax, dl
	add	eax, 1
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_392
	lea	rdi, [rdi]
	jmp	.label_390
.label_421:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_517
	jmp	.label_682
.label_517:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_688
	lea	rsi, [rsi]
	jmp	.label_527
.label_688:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0x7fffffff
	jl	.label_510
	mov	rbp, rbp
	jmp	.label_535
.label_527:
	nop	
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_510
	mov	rbp, rbp
	jmp	.label_535
.label_682:
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_543
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_510
	jmp	.label_535
.label_543:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_553
	mov	rsp, rsp
	jmp	.label_558
.label_553:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_510
	nop	
	jmp	.label_535
.label_558:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_510
.label_535:
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_510
	nop	
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_572
.label_510:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	rsp, rsp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x24], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_392
	jmp	.label_390
.label_572:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	rsp, rsp
	mov	dl, al
	mov	rbp, rbp
	movsx	eax, dl
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_392
	jmp	.label_390
.label_416:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_589
	mov	rsp, rsp
	jmp	.label_595
.label_589:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_597
	jmp	.label_599
.label_597:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_731
	mov	rbp, rbp
	jmp	.label_602
.label_731:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_603
	jmp	.label_778
.label_603:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_608
	jmp	.label_616
.label_778:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dx, cx
	movsx	ecx, dx
	lea	rsi, [rsi]
	cmp	eax, ecx
	nop	
	jl	.label_608
	jmp	.label_616
.label_602:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_441
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_608
	jmp	.label_616
.label_441:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_638
	jmp	.label_641
.label_638:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	cx, ax
	movsx	eax, cx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x18]
	mov	cx, dx
	movsx	edx, cx
	lea	rsi, [rsi]
	add	edx, 1
	cmp	eax, edx
	jle	.label_608
	lea	rsi, [rsi]
	jmp	.label_616
.label_641:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_608
.label_616:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, 0xffff8000
	mov	rsp, rsp
	jl	.label_608
	nop	
	mov	eax, 0x7fff
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	nop	
	add	ecx, 1
	nop	
	cmp	eax, ecx
	nop	
	jge	.label_691
.label_608:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_390
.label_691:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dx, ax
	movsx	eax, dx
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dx, ax
	movsx	eax, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_390
.label_599:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_694
	mov	rsp, rsp
	jmp	.label_697
.label_694:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_591
	jmp	.label_702
.label_591:
	cmp	dword ptr [rbp - 0x18], 0x7fffffff
	lea	rdi, [rdi]
	jl	.label_546
	lea	rsi, [rsi]
	jmp	.label_565
.label_702:
	mov	eax, 0x7ffffffe
	nop	
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_546
	mov	rsp, rsp
	jmp	.label_565
.label_697:
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jge	.label_711
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_546
	jmp	.label_565
.label_711:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_718
	mov	rsp, rsp
	jmp	.label_720
.label_718:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	nop	
	cmp	eax, ecx
	nop	
	jle	.label_546
	jmp	.label_565
.label_720:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	jl	.label_546
.label_565:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_546
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jge	.label_736
.label_546:
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_392
	jmp	.label_390
.label_736:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	nop	
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_392
	nop	
	jmp	.label_390
.label_595:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_754
	jmp	.label_759
.label_754:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_474
	jmp	.label_764
.label_474:
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_766
	mov	rbp, rbp
	jmp	.label_768
.label_766:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_769
	mov	rbp, rbp
	jmp	.label_771
.label_769:
	cmp	dword ptr [rbp - 0x18], 0x7fffffff
	jl	.label_737
	mov	rsp, rsp
	jmp	.label_775
.label_771:
	nop	
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_737
	mov	rbp, rbp
	jmp	.label_775
.label_768:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jge	.label_622
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	add	ecx, 1
	cmp	eax, ecx
	nop	
	jle	.label_737
	jmp	.label_775
.label_622:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_792
	jmp	.label_795
.label_792:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_737
	mov	rsp, rsp
	jmp	.label_775
.label_795:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jl	.label_737
.label_775:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	eax, 1
	cmp	eax, 0x80000000
	nop	
	jl	.label_737
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_808
.label_737:
	nop	
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	dword ptr [rbp - 0x24], ecx
	test	al, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_390
.label_808:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_392
	lea	rdi, [rdi]
	jmp	.label_390
.label_764:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_404
	lea	rsi, [rsi]
	jmp	.label_407
.label_404:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_408
	lea	rdi, [rdi]
	jmp	.label_415
.label_408:
	cmp	dword ptr [rbp - 0x18], 0x7fffffff
	jl	.label_417
	mov	rsp, rsp
	jmp	.label_420
.label_415:
	mov	rsp, rsp
	mov	eax, 0x7ffffffe
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x18]
	nop	
	jl	.label_417
	mov	rbp, rbp
	jmp	.label_420
.label_407:
	cmp	dword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jge	.label_431
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_417
	jmp	.label_420
.label_431:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_670
	nop	
	jmp	.label_444
.label_670:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	ecx, 1
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_417
	lea	rdi, [rdi]
	jmp	.label_420
.label_444:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	nop	
	jl	.label_417
.label_420:
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_417
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_466
.label_417:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_392
	lea	rdi, [rdi]
	jmp	.label_390
.label_466:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_390
.label_759:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_481
	nop	
	jmp	.label_518
.label_481:
	nop	
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_487
	lea	rdi, [rdi]
	jmp	.label_490
.label_487:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_493
	jmp	.label_496
.label_493:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_497
	jmp	.label_505
.label_497:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_506
	nop	
	jmp	.label_511
.label_505:
	nop	
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_506
	jmp	.label_511
.label_496:
	movsxd	rax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_522
	nop	
	mov	eax, 1
	nop	
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x18]
	add	rdx, 1
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_506
	jmp	.label_511
.label_522:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_537
	jmp	.label_542
.label_537:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rax, rcx
	nop	
	jle	.label_506
	lea	rdi, [rdi]
	jmp	.label_511
.label_542:
	movsxd	rax, dword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, 1
	jl	.label_506
.label_511:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_506
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_562
.label_506:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x24], edx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_390
.label_562:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x18]
	nop	
	add	rdx, 1
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_390
.label_490:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_577
	lea	rdi, [rdi]
	jmp	.label_580
.label_577:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_582
	lea	rsi, [rsi]
	jmp	.label_585
.label_582:
	cmp	dword ptr [rbp - 0x18], 0x7fffffff
	jl	.label_504
	lea	rdi, [rdi]
	jmp	.label_596
.label_585:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_504
	lea	rsi, [rsi]
	jmp	.label_596
.label_580:
	nop	
	cmp	dword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jge	.label_598
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_504
	mov	rsp, rsp
	jmp	.label_596
.label_598:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_604
	nop	
	jmp	.label_607
.label_604:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_504
	jmp	.label_596
.label_607:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	nop	
	cmp	eax, 1
	jl	.label_504
.label_596:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_504
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_630
.label_504:
	nop	
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	edx, ecx
	mov	dword ptr [rbp - 0x24], edx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_392
	jmp	.label_390
.label_630:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rdx, 1
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	jne	.label_392
	jmp	.label_390
.label_518:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_658
	mov	rbp, rbp
	jmp	.label_661
.label_658:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_663
	lea	rsi, [rsi]
	jmp	.label_664
.label_663:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_665
	jmp	.label_669
.label_665:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_678
	mov	rsp, rsp
	jmp	.label_676
.label_669:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 0x18]
	cmp	rax, rcx
	jl	.label_678
	jmp	.label_676
.label_664:
	movsxd	rax, dword ptr [rbp - 0x18]
	cmp	rax, 0
	jge	.label_680
	mov	eax, 1
	nop	
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_678
	jmp	.label_676
.label_680:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_690
	lea	rsi, [rsi]
	jmp	.label_447
.label_690:
	movsxd	rax, dword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_678
	lea	rsi, [rsi]
	jmp	.label_676
.label_447:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	cmp	rax, 1
	mov	rbp, rbp
	jl	.label_678
.label_676:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rcx, rax
	nop	
	jl	.label_678
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_713
.label_678:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x24], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_392
	jmp	.label_390
.label_713:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x18]
	add	rdx, 1
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_392
	nop	
	jmp	.label_390
.label_661:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_729
	mov	rbp, rbp
	jmp	.label_733
.label_729:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_645
	mov	rbp, rbp
	jmp	.label_738
.label_645:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x18], 0x7fffffff
	jl	.label_740
	jmp	.label_744
.label_738:
	lea	rdi, [rdi]
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_740
	jmp	.label_744
.label_733:
	cmp	dword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jge	.label_747
	nop	
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_740
	jmp	.label_744
.label_747:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_755
	jmp	.label_760
.label_755:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_740
	jmp	.label_744
.label_760:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_740
.label_744:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_740
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_774
.label_740:
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, 1
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_392
	jmp	.label_390
.label_774:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	movsxd	rdx, dword ptr [rbp - 0x18]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x24], eax
	test	cl, 1
	nop	
	jne	.label_392
.label_390:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_797
	mov	rsp, rsp
	jmp	.label_801
.label_797:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_803
	mov	rsp, rsp
	jmp	.label_805
.label_803:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_806
	lea	rsi, [rsi]
	jmp	.label_809
.label_806:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_813
	jmp	.label_382
.label_813:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	nop	
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_385
	jmp	.label_396
.label_382:
	lea	rsi, [rsi]
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_385
	jmp	.label_396
.label_809:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_405
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_385
	mov	rsp, rsp
	jmp	.label_396
.label_405:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_427
	jmp	.label_611
.label_427:
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
	jle	.label_385
	jmp	.label_396
.label_611:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_385
.label_396:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	mov	rsp, rsp
	add	eax, 1
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_385
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
	jge	.label_494
.label_385:
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
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_406
.label_494:
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
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_406
.label_805:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_488
	mov	rsp, rsp
	jmp	.label_491
.label_488:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_495
	nop	
	jmp	.label_498
.label_495:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_499
	jmp	.label_507
.label_498:
	mov	eax, 0x7ffffffe
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_499
	jmp	.label_507
.label_491:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_514
	mov	rsp, rsp
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_499
	jmp	.label_507
.label_514:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_526
	jmp	.label_532
.label_526:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_499
	jmp	.label_507
.label_532:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_499
.label_507:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_499
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_554
.label_499:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	ecx, 1
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_392
	jmp	.label_406
.label_554:
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
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_392
	jmp	.label_406
.label_801:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_575
	mov	rbp, rbp
	jmp	.label_576
.label_575:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_578
	jmp	.label_583
.label_578:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_540
	jmp	.label_586
.label_540:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_587
	lea	rsi, [rsi]
	jmp	.label_593
.label_587:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_574
	jmp	.label_600
.label_593:
	mov	eax, 0x7ffffffe
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_574
	lea	rsi, [rsi]
	jmp	.label_600
.label_586:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_609
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	add	ecx, 1
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_574
	nop	
	jmp	.label_600
.label_609:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_627
	mov	rbp, rbp
	jmp	.label_633
.label_627:
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
	jle	.label_574
	jmp	.label_600
.label_633:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	nop	
	cmp	eax, 1
	jl	.label_574
.label_600:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	lea	rsi, [rsi]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_574
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	nop	
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_662
.label_574:
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
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_392
	nop	
	jmp	.label_406
.label_662:
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
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_392
	jmp	.label_406
.label_583:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_684
	jmp	.label_686
.label_684:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_687
	jmp	.label_692
.label_687:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	mov	rsp, rsp
	jl	.label_651
	jmp	.label_699
.label_692:
	mov	rbp, rbp
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_651
	mov	rsp, rsp
	jmp	.label_699
.label_686:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_705
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_651
	mov	rsp, rsp
	jmp	.label_699
.label_705:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_714
	jmp	.label_717
.label_714:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_651
	jmp	.label_699
.label_717:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_651
.label_699:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_651
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_730
.label_651:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	nop	
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_392
	jmp	.label_406
.label_730:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_392
	lea	rdi, [rdi]
	jmp	.label_406
.label_576:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_756
	jmp	.label_762
.label_756:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_763
	jmp	.label_765
.label_763:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_767
	mov	rbp, rbp
	jmp	.label_530
.label_767:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_750
	jmp	.label_772
.label_750:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	nop	
	jl	.label_773
	mov	rsp, rsp
	jmp	.label_776
.label_772:
	mov	eax, 0x7ffffffe
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_773
	jmp	.label_776
.label_530:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_785
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_773
	jmp	.label_776
.label_785:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_794
	jmp	.label_800
.label_794:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_773
	mov	rbp, rbp
	jmp	.label_776
.label_800:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jl	.label_773
.label_776:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 0x80000000
	nop	
	jl	.label_773
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rsi, [rsi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_389
.label_773:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_406
.label_389:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_392
	jmp	.label_406
.label_765:
	mov	al, 1
	test	al, 1
	jne	.label_422
	jmp	.label_426
.label_422:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_428
	mov	rbp, rbp
	jmp	.label_434
.label_428:
	nop	
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	lea	rdi, [rdi]
	jl	.label_435
	mov	rbp, rbp
	jmp	.label_401
.label_434:
	lea	rdi, [rdi]
	mov	eax, 0x7ffffffe
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_435
	mov	rbp, rbp
	jmp	.label_401
.label_426:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_704
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_435
	mov	rbp, rbp
	jmp	.label_401
.label_704:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_757
	lea	rsi, [rsi]
	jmp	.label_465
.label_757:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_435
	jmp	.label_401
.label_465:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jl	.label_435
.label_401:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0x80000000
	jl	.label_435
	nop	
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_480
.label_435:
	nop	
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_392
	jmp	.label_406
.label_480:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_406
.label_762:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_508
	mov	rsp, rsp
	jmp	.label_515
.label_508:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_516
	lea	rsi, [rsi]
	jmp	.label_520
.label_516:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_523
	jmp	.label_815
.label_523:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_539
	jmp	.label_534
.label_539:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_536
	jmp	.label_545
.label_534:
	lea	rsi, [rsi]
	movabs	rax, 0x7ffffffffffffffe
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	nop	
	cmp	rax, rcx
	jl	.label_536
	nop	
	jmp	.label_545
.label_815:
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_555
	mov	eax, 1
	nop	
	mov	ecx, eax
	nop	
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	nop	
	jle	.label_536
	mov	rsp, rsp
	jmp	.label_545
.label_555:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_567
	nop	
	jmp	.label_570
.label_567:
	nop	
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_536
	jmp	.label_545
.label_570:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_536
.label_545:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_536
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	nop	
	jge	.label_655
.label_536:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_392
	jmp	.label_406
.label_655:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_392
	nop	
	jmp	.label_406
.label_520:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_610
	mov	rbp, rbp
	jmp	.label_615
.label_610:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_397
	mov	rbp, rbp
	jmp	.label_619
.label_397:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	mov	rbp, rbp
	jl	.label_621
	mov	rsp, rsp
	jmp	.label_469
.label_619:
	lea	rsi, [rsi]
	mov	eax, 0x7ffffffe
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	jl	.label_621
	jmp	.label_469
.label_615:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	nop	
	jge	.label_637
	nop	
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_621
	jmp	.label_469
.label_637:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_646
	lea	rdi, [rdi]
	jmp	.label_654
.label_646:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_621
	jmp	.label_469
.label_654:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	eax, 1
	cmp	eax, 1
	jl	.label_621
.label_469:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_621
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_667
.label_621:
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x14], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_392
	jmp	.label_406
.label_667:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_392
	jmp	.label_406
.label_515:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_700
	jmp	.label_703
.label_700:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_512
	nop	
	jmp	.label_706
.label_512:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_708
	mov	rsp, rsp
	jmp	.label_710
.label_708:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_391
	jmp	.label_660
.label_710:
	movabs	rax, 0x7ffffffffffffffe
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_391
	lea	rsi, [rsi]
	jmp	.label_660
.label_706:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_724
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jle	.label_391
	jmp	.label_660
.label_724:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_735
	nop	
	jmp	.label_739
.label_735:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	rcx, 1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_391
	jmp	.label_660
.label_739:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_391
.label_660:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_391
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_761
.label_391:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x14], edx
	test	al, 1
	jne	.label_392
	jmp	.label_406
.label_761:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_406
.label_703:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_783
	jmp	.label_787
.label_783:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_788
	mov	rbp, rbp
	jmp	.label_790
.label_788:
	nop	
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_384
	lea	rsi, [rsi]
	jmp	.label_449
.label_790:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_384
	lea	rdi, [rdi]
	jmp	.label_449
.label_787:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	mov	rbp, rbp
	jge	.label_802
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_384
	jmp	.label_449
.label_802:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_810
	lea	rdi, [rdi]
	jmp	.label_816
.label_810:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_384
	lea	rsi, [rsi]
	jmp	.label_449
.label_816:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_384
.label_449:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_384
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_413
.label_384:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	rsp, rsp
	mov	edx, ecx
	mov	dword ptr [rbp - 0x14], edx
	nop	
	test	al, 1
	jne	.label_392
	jmp	.label_406
.label_413:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_392
.label_406:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_443
	lea	rdi, [rdi]
	jmp	.label_452
.label_443:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_455
	lea	rdi, [rdi]
	jmp	.label_458
.label_455:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_741
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_464
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x14]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	mov	rsp, rsp
	idiv	esi
	cmp	ecx, eax
	jl	.label_472
	lea	rdi, [rdi]
	jmp	.label_475
.label_464:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	nop	
	jne	.label_476
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_472
	jmp	.label_475
.label_476:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	nop	
	cdq	
	mov	rsp, rsp
	idiv	ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	sil, cl
	lea	rdi, [rdi]
	movsx	ecx, sil
	nop	
	cmp	eax, ecx
	jl	.label_472
	mov	rsp, rsp
	jmp	.label_475
.label_741:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	nop	
	jne	.label_501
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_472
	jmp	.label_475
.label_501:
	mov	eax, dword ptr [rbp - 0x18]
	mov	cl, al
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_513
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	lea	rdi, [rdi]
	cdq	
	idiv	esi
	mov	rsp, rsp
	cmp	ecx, eax
	jl	.label_472
	jmp	.label_475
.label_513:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	sil, cl
	movsx	ecx, sil
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_472
.label_475:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	lea	rsi, [rsi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_472
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	esi, dl
	imul	ecx, esi
	nop	
	cmp	eax, ecx
	jge	.label_445
.label_472:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	mov	dl, sil
	movsx	esi, dl
	mov	rsp, rsp
	imul	ecx, esi
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x34], ecx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_392
	jmp	.label_433
.label_445:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0x14]
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	nop	
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_392
	jmp	.label_433
.label_458:
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_588
	cmp	dword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jge	.label_590
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_594
	mov	rbp, rbp
	jmp	.label_477
.label_590:
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_726
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_594
	nop	
	jmp	.label_477
.label_726:
	mov	rbp, rbp
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jl	.label_594
	jmp	.label_477
.label_588:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_612
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_594
	lea	rsi, [rsi]
	jmp	.label_477
.label_612:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jge	.label_618
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x18]
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	jl	.label_594
	lea	rdi, [rdi]
	jmp	.label_477
.label_618:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jl	.label_594
.label_477:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_594
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x18]
	imul	ecx, dword ptr [rbp - 0x14]
	cmp	eax, ecx
	jge	.label_643
.label_594:
	lea	rsi, [rsi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18]
	imul	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_433
.label_643:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x14]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	test	cl, 1
	jne	.label_392
	jmp	.label_433
.label_452:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_668
	jmp	.label_672
.label_668:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_673
	mov	rsp, rsp
	jmp	.label_722
.label_673:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_677
	mov	eax, dword ptr [rbp - 0x18]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_679
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_424
	jmp	.label_460
.label_679:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_696
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_424
	jmp	.label_460
.label_696:
	mov	eax, 0x80000000
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	nop	
	cdq	
	nop	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 0x18]
	mov	si, cx
	mov	rbp, rbp
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_424
	jmp	.label_460
.label_677:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_715
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_424
	mov	rsp, rsp
	jmp	.label_460
.label_715:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	mov	cx, ax
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_723
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0x14]
	mov	dx, si
	movsx	esi, dx
	mov	rsp, rsp
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_424
	jmp	.label_460
.label_723:
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	si, cx
	mov	rbp, rbp
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_424
.label_460:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x14]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	mov	rbp, rbp
	cmp	eax, 0xffff8000
	jl	.label_424
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0x14]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	nop	
	cmp	eax, ecx
	jge	.label_410
.label_424:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x34], ecx
	test	al, 1
	nop	
	jne	.label_392
	jmp	.label_433
.label_410:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	dx, ax
	nop	
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_433
.label_722:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jge	.label_784
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jge	.label_789
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	jl	.label_403
	jmp	.label_402
.label_789:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], -1
	mov	rsp, rsp
	jne	.label_798
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_403
	nop	
	jmp	.label_402
.label_798:
	mov	eax, 0x80000000
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jl	.label_403
	jmp	.label_402
.label_784:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_811
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_403
	jmp	.label_402
.label_811:
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_388
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [rbp - 0x14]
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_403
	jmp	.label_402
.label_388:
	mov	eax, 0x7fffffff
	nop	
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_403
.label_402:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x14]
	cmp	eax, 0xffff8000
	jl	.label_403
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	imul	ecx, dword ptr [rbp - 0x14]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_541
.label_403:
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	imul	ecx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_392
	nop	
	jmp	.label_433
.label_541:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	imul	eax, dword ptr [rbp - 0x14]
	mov	dx, ax
	lea	rdi, [rdi]
	movsx	eax, dx
	mov	dword ptr [rbp - 0x34], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_392
	jmp	.label_433
.label_672:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_442
	lea	rsi, [rsi]
	jmp	.label_446
.label_442:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_448
	jmp	.label_456
.label_448:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	jge	.label_457
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_459
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x18]
	cdq	
	idiv	dword ptr [rbp - 0x14]
	nop	
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_462
	jmp	.label_468
.label_459:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], -1
	lea	rdi, [rdi]
	jne	.label_470
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_462
	lea	rsi, [rsi]
	jmp	.label_468
.label_470:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jl	.label_462
	jmp	.label_468
.label_457:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jne	.label_478
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_462
	nop	
	jmp	.label_468
.label_478:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_483
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x18]
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	jl	.label_462
	nop	
	jmp	.label_468
.label_483:
	mov	eax, 0x7fffffff
	nop	
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	jl	.label_462
.label_468:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x14]
	cmp	eax, 0x80000000
	lea	rdi, [rdi]
	jl	.label_462
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x14]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_509
.label_462:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18]
	imul	ecx, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_433
.label_509:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	imul	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x34], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_392
	jmp	.label_433
.label_456:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jge	.label_689
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_653
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x18]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0x14]
	nop	
	cmp	ecx, eax
	jl	.label_461
	lea	rsi, [rsi]
	jmp	.label_548
.label_653:
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_551
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_461
	jmp	.label_548
.label_551:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [rbp - 0x14]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_461
	nop	
	jmp	.label_548
.label_689:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jne	.label_563
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_461
	jmp	.label_548
.label_563:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_571
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	nop	
	jl	.label_461
	lea	rdi, [rdi]
	jmp	.label_548
.label_571:
	nop	
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_461
.label_548:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x14]
	cmp	eax, 0x80000000
	jl	.label_461
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	imul	ecx, dword ptr [rbp - 0x14]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_584
.label_461:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18]
	imul	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x34], ecx
	test	al, 1
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_433
.label_584:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x18]
	imul	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	test	cl, 1
	nop	
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_433
.label_446:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_746
	jmp	.label_605
.label_746:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_606
	mov	rbp, rbp
	jmp	.label_793
.label_606:
	movsxd	rax, dword ptr [rbp - 0x14]
	cmp	rax, 0
	jge	.label_613
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, 0
	jge	.label_707
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x50], rdx
	mov	rbp, rbp
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	idiv	rsi
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_617
	mov	rsp, rsp
	jmp	.label_502
.label_707:
	movsxd	rax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	cmp	rax, -1
	jne	.label_636
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_617
	mov	rbp, rbp
	jmp	.label_502
.label_636:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	mov	rbp, rbp
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 0x18]
	cmp	rax, rcx
	jl	.label_617
	mov	rsp, rsp
	jmp	.label_502
.label_613:
	movsxd	rax, dword ptr [rbp - 0x14]
	cmp	rax, 0
	nop	
	jne	.label_659
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_617
	nop	
	jmp	.label_502
.label_659:
	movsxd	rax, dword ptr [rbp - 0x18]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_683
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rdx
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	idiv	rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_617
	jmp	.label_502
.label_683:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x18]
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_617
.label_502:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	imul	rcx, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_617
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x14]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_749
.label_617:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	imul	rcx, rdx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x34], esi
	mov	rbp, rbp
	test	al, 1
	jne	.label_392
	lea	rdi, [rdi]
	jmp	.label_433
.label_749:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x14]
	imul	rdx, rsi
	nop	
	mov	eax, edx
	mov	dword ptr [rbp - 0x34], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_433
.label_793:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_626
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jge	.label_642
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_492
	nop	
	jmp	.label_454
.label_642:
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_727
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_492
	mov	rsp, rsp
	jmp	.label_454
.label_727:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x18]
	jl	.label_492
	lea	rdi, [rdi]
	jmp	.label_454
.label_626:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_463
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_492
	lea	rsi, [rsi]
	jmp	.label_454
.label_463:
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_817
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_492
	jmp	.label_454
.label_817:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	jl	.label_492
.label_454:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_492
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	imul	ecx, dword ptr [rbp - 0x14]
	nop	
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_560
.label_492:
	mov	rbp, rbp
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	imul	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x34], esi
	test	al, 1
	jne	.label_392
	mov	rsp, rsp
	jmp	.label_433
.label_560:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x14]
	imul	rdx, rsi
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_392
	jmp	.label_433
.label_605:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_796
	jmp	.label_712
.label_796:
	movsxd	rax, dword ptr [rbp - 0x14]
	cmp	rax, 0
	jge	.label_649
	movsxd	rax, dword ptr [rbp - 0x18]
	cmp	rax, 0
	jge	.label_743
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	nop	
	mov	qword ptr [rbp - 0x58], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	idiv	rsi
	nop	
	cmp	rcx, rax
	jl	.label_394
	mov	rbp, rbp
	jmp	.label_386
.label_743:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x14]
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_752
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_394
	lea	rdi, [rdi]
	jmp	.label_386
.label_752:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	mov	rsp, rsp
	idiv	rcx
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_394
	jmp	.label_386
.label_649:
	movsxd	rax, dword ptr [rbp - 0x14]
	cmp	rax, 0
	jne	.label_412
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_394
	nop	
	jmp	.label_386
.label_412:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jge	.label_425
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	idiv	rsi
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_394
	jmp	.label_386
.label_425:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 0x18]
	nop	
	cmp	rax, rcx
	jl	.label_394
.label_386:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_394
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	imul	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_781
.label_394:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	imul	rcx, rdx
	mov	esi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], esi
	test	al, 1
	mov	rbp, rbp
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_433
.label_781:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x14]
	imul	rdx, rsi
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x34], eax
	test	cl, 1
	jne	.label_392
	nop	
	jmp	.label_433
.label_712:
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	jge	.label_486
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	nop	
	jge	.label_489
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0x14]
	cmp	ecx, eax
	jl	.label_525
	jmp	.label_519
.label_489:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], -1
	lea	rdi, [rdi]
	jne	.label_503
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_525
	jmp	.label_519
.label_503:
	mov	eax, 0x80000000
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jl	.label_525
	lea	rdi, [rdi]
	jmp	.label_519
.label_486:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_521
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_525
	mov	rsp, rsp
	jmp	.label_519
.label_521:
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jge	.label_531
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cdq	
	idiv	dword ptr [rbp - 0x14]
	nop	
	cmp	ecx, eax
	nop	
	jl	.label_525
	mov	rbp, rbp
	jmp	.label_519
.label_531:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	jl	.label_525
.label_519:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_525
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x14]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_450
.label_525:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	imul	rcx, rdx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x34], esi
	test	al, 1
	jne	.label_392
	mov	rbp, rbp
	jmp	.label_433
.label_450:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x14]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x34], eax
	test	cl, 1
	jne	.label_392
	jmp	.label_433
.label_392:
	mov	rbp, rbp
	call	integer_overflow
.label_433:
	nop	
	mov	rax,  qword ptr [word ptr [line_vector]]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	ecx, 4
	mov	rsp, rsp
	mov	esi, ecx
	movsxd	rdi, dword ptr [rbp - 0x24]
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
	movsxd	rdi, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [end_vector]],  rax
	nop	
	mov	rdi,  qword ptr [word ptr [buff]]
	lea	rdi, [rdi]
	call	free
	movsxd	rdi, dword ptr [rbp - 0x34]
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
	movsxd	rax, dword ptr [rbp - 0x34]
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
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b440

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 1
.label_824:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_820
	mov	dword ptr [rbp - 4], 1
.label_822:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jge	.label_834
	nop	
	mov	dword ptr [rbp - 8], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_828:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	nop	
	cmp	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	jg	.label_829
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_835
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	skip_read
.label_835:
	jmp	.label_827
.label_827:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	jmp	.label_828
.label_829:
	jmp	.label_832
.label_832:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_822
.label_834:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [last_line]],  1
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_833:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_819
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_837
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 8]
	call	skip_read
.label_837:
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	jmp	.label_833
.label_819:
	mov	rbp, rbp
	test	byte ptr [byte ptr [storing_columns]],  1
	lea	rsi, [rsi]
	je	.label_825
	nop	
	mov	dword ptr [rbp - 8], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_836:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	jg	.label_818
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 3
	je	.label_826
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
.label_826:
	jmp	.label_830
.label_830:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_836
.label_818:
	jmp	.label_825
.label_825:
	call	reset_status
	mov	byte ptr [byte ptr [last_line]],  0
	nop	
	cmp	dword ptr [dword ptr [files_ready_to_read]],  1
	mov	rbp, rbp
	jge	.label_823
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.75
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	mov	rbp, rbp
	call	error
	jmp	.label_820
.label_823:
	jmp	.label_821
.label_821:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_824
.label_820:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6d0

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	dword ptr [rbp - 0x10], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_847
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_841
.label_847:
	nop	
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_840
	test	byte ptr [byte ptr [numbered_lines]],  1
	lea	rdi, [rdi]
	je	.label_840
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	eax,  dword ptr [dword ptr [number_width]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_846
.label_840:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0x1c], eax
.label_846:
	lea	rdi, [rdi]
	jmp	.label_841
.label_841:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x18], 1
.label_851:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [columns]]
	jge	.label_852
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_842
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_848
.label_842:
	movabs	rax, OFFSET FLAT:read_line
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:print_char
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
.label_848:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 9], cl
	nop	
	je	.label_838
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1d], al
	mov	rbp, rbp
	je	.label_844
	cmp	dword ptr [rbp - 0x18], 1
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], al
.label_844:
	nop	
	mov	al, byte ptr [rbp - 0x1d]
	mov	byte ptr [rbp - 9], al
.label_838:
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x34], edx
	mov	rsp, rsp
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_839
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jmp	.label_849
.label_839:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0x1c], eax
.label_849:
	mov	rbp, rbp
	jmp	.label_850
.label_850:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x40
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	jmp	.label_851
.label_852:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_843
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_843
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:print_stored
	nop	
	movabs	rcx, OFFSET FLAT:store_char
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_854
.label_843:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:read_line
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:print_char
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
.label_854:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [byte ptr [numbered_lines]],  1
	nop	
	mov	byte ptr [rbp - 0x11], cl
	je	.label_845
	nop	
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1e], al
	je	.label_853
	cmp	dword ptr [rbp - 0x18], 1
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1e], al
.label_853:
	mov	al, byte ptr [rbp - 0x1e]
	nop	
	mov	byte ptr [rbp - 0x11], al
.label_845:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x34], edx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9c0

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
	jne	.label_884
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_879
.label_884:
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_890
	mov	byte ptr [byte ptr [print_a_header]],  1
.label_890:
	mov	byte ptr [byte ptr [pad_vertically]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 0
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [double_space]],  1
	mov	rbp, rbp
	je	.label_857
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	shl	eax, 1
	mov	dword ptr [rbp - 0x28], eax
.label_857:
	jmp	.label_856
.label_856:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16], cl
	jle	.label_878
	mov	rbp, rbp
	call	cols_ready_to_print
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	seta	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x16], cl
.label_878:
	mov	al, byte ptr [rbp - 0x16]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_891
	jmp	.label_859
.label_891:
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
	mov	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
.label_888:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_885
	mov	rbp, rbp
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_881
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_865
.label_881:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [FF_only]],  0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rax
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_886
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	read_rest_of_line
.label_886:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [pad_vertically]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	nop	
	cmp	edx, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rsi + 0x30]
	add	ecx, -1
	mov	dword ptr [rsi + 0x30], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rsi + 0x30], 0
	mov	rbp, rbp
	jg	.label_869
	lea	rdi, [rdi]
	call	cols_ready_to_print
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_864
	jmp	.label_885
.label_864:
	jmp	.label_869
.label_869:
	test	byte ptr [byte ptr [parallel_files]],  1
	lea	rdi, [rdi]
	je	.label_882
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_882
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [empty_line]],  1
	mov	rsp, rsp
	je	.label_873
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	mov	rsp, rsp
	jmp	.label_866
.label_873:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_889
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 2
	jne	.label_880
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [FF_only]],  1
	nop	
	je	.label_880
.label_889:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	align_column
.label_880:
	lea	rsi, [rsi]
	jmp	.label_866
.label_866:
	jmp	.label_882
.label_882:
	lea	rsi, [rsi]
	jmp	.label_862
.label_865:
	test	byte ptr [byte ptr [parallel_files]],  1
	nop	
	je	.label_855
	test	byte ptr [byte ptr [empty_line]],  1
	lea	rdi, [rdi]
	je	.label_863
	nop	
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_867
.label_863:
	mov	rdi, qword ptr [rbp - 0x10]
	call	align_column
.label_867:
	jmp	.label_855
.label_855:
	jmp	.label_862
.label_862:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_877
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
.label_877:
	jmp	.label_870
.label_870:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_888
.label_885:
	test	byte ptr [byte ptr [pad_vertically]],  1
	nop	
	je	.label_860
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	edi, -1
	mov	dword ptr [rbp - 0x28], edi
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_860:
	nop	
	call	cols_ready_to_print
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_876
	mov	rsp, rsp
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_876
	jmp	.label_859
.label_876:
	mov	rbp, rbp
	test	byte ptr [byte ptr [double_space]],  1
	mov	rbp, rbp
	je	.label_861
	mov	rbp, rbp
	test	byte ptr [rbp - 0x21], 1
	je	.label_861
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	edi, -1
	mov	dword ptr [rbp - 0x28], edi
	mov	dword ptr [rbp - 4], eax
.label_861:
	jmp	.label_856
.label_859:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_868
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_858:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_883
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 0
	nop	
	jne	.label_887
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x39], 1
.label_887:
	jmp	.label_892
.label_892:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_858
.label_883:
	jmp	.label_868
.label_868:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [byte ptr [pad_vertically]],  al
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_874
	test	byte ptr [byte ptr [extremities]],  1
	nop	
	je	.label_874
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	add	eax, 5
	mov	edi, eax
	mov	rbp, rbp
	call	pad_down
	mov	rbp, rbp
	jmp	.label_872
.label_874:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_871
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_a_FF]],  1
	nop	
	je	.label_871
	mov	edi, 0xc
	call	putchar_unlocked
	mov	rbp, rbp
	mov	byte ptr [byte ptr [print_a_FF]],  0
	mov	dword ptr [rbp - 0x20], eax
.label_871:
	mov	rsp, rsp
	jmp	.label_872
.label_872:
	mov	rax,  qword ptr [word ptr [last_page_number]]
	mov	rcx,  qword ptr [word ptr [page_number]]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [page_number]],  rcx
	cmp	rax, rcx
	jae	.label_875
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
	mov	rsp, rsp
	jmp	.label_879
.label_875:
	nop	
	call	reset_status
	mov	byte ptr [rbp - 0x15], 1
.label_879:
	nop	
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf10

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
	jne	.label_897
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
	jmp	.label_896
.label_897:
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
.label_896:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_895
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [failed_opens]],  1
	mov	rsp, rsp
	test	byte ptr [byte ptr [ignore_failed_opens]],  1
	lea	rdi, [rdi]
	jne	.label_893
	call	__errno_location
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_893:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_894
.label_895:
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
	mov	byte ptr [rbp - 0x19], 1
.label_894:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c090

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	qword ptr [rbp - 0x40], rdi
	nop	
	mov	dword ptr [rbp - 0x7c], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.71
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_908
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 0xffffffff
.label_908:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x7c]
	jg	.label_901
	nop	
	lea	rsi, [rbp - 0x158]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_901
	mov	rbp, rbp
	lea	rdi, [rbp - 0x158]
	lea	rsi, [rsi]
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_902
.label_901:
	cmp	qword ptr [word ptr [init_header.timespec]],  0
	jne	.label_898
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:init_header.timespec
	nop	
	call	gettime
.label_898:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [init_header.timespec]]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [label_904]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_902:
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x78]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xc4], ecx
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
	lea	rcx, [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [localtz]]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0xc4]
	call	nstrftime
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	call	xmalloc
	lea	rcx, [rbp - 0x78]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	r8,  qword ptr [word ptr [localtz]]
	nop	
	mov	r9d, dword ptr [rbp - 0xc4]
	call	nstrftime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	jmp	.label_900
.label_907:
	mov	eax, 0x21
	mov	edi, eax
	nop	
	call	xmalloc
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	timetostr
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.74
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x30], eax
.label_900:
	mov	rdi,  qword ptr [word ptr [date_text]]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [word ptr [date_text]],  rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [custom_header]],  0
	lea	rsi, [rsi]
	je	.label_905
	mov	rax,  qword ptr [word ptr [custom_header]]
	mov	qword ptr [rbp - 0x160], rax
	lea	rsi, [rsi]
	jmp	.label_906
.label_905:
	cmp	dword ptr [rbp - 0x7c], 0
	jge	.label_899
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_903
.label_899:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
.label_903:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
.label_906:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	xor	esi, esi
	mov	qword ptr [word ptr [file_text]],  rax
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rdi,  qword ptr [word ptr [date_text]]
	mov	dword ptr [rbp - 0x2c], ecx
	call	gnu_mbswidth
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x2c]
	nop	
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [file_text]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
	lea	rdi, [rdi]
	call	gnu_mbswidth
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [header_width_available]],  ecx
	add	rsp, 0x160
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c3d0

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	imaxtostr
	nop	
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c410

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], esi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 0x25], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	getc_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	eax, 0xc
	mov	rbp, rbp
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rax + 0x39], 1
	lea	rsi, [rsi]
	je	.label_909
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	getc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	eax, 0xa
	jne	.label_924
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_924:
	jmp	.label_909
.label_909:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x39], 0
	cmp	dword ptr [rbp - 0x2c], 0xc
	jne	.label_913
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 1
.label_913:
	mov	rsp, rsp
	test	byte ptr [byte ptr [last_line]],  1
	lea	rsi, [rsi]
	je	.label_923
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x39], 1
.label_923:
	jmp	.label_912
.label_912:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0xa
	lea	rdi, [rdi]
	je	.label_914
	cmp	dword ptr [rbp - 0x2c], 0xc
	jne	.label_919
	nop	
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_922
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_925
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], ecx
.label_920:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_917
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x39], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	jmp	.label_920
.label_917:
	mov	rsp, rsp
	jmp	.label_921
.label_925:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x39], 0
.label_921:
	jmp	.label_922
.label_922:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, 0xa
	lea	rdi, [rdi]
	je	.label_910
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	call	ungetc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
.label_910:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hold_file
	mov	rbp, rbp
	jmp	.label_914
.label_919:
	nop	
	cmp	dword ptr [rbp - 0x2c], -1
	jne	.label_926
	mov	rdi, qword ptr [rbp - 0x20]
	call	close_file
	jmp	.label_914
.label_926:
	lea	rdi, [rdi]
	jmp	.label_915
.label_915:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_912
.label_914:
	mov	rsp, rsp
	test	byte ptr [byte ptr [skip_count]],  1
	lea	rsi, [rsi]
	je	.label_918
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rbp, rbp
	je	.label_911
	cmp	dword ptr [rbp - 0x18], 1
	jne	.label_916
.label_911:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x25], 1
	jne	.label_916
	mov	eax,  dword ptr [dword ptr [line_count]]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [line_count]],  eax
.label_916:
	jmp	.label_918
.label_918:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c660

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c750

	.globl hold_file
	.type hold_file, @function
hold_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rsp, rsp
	jne	.label_934
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
.label_938:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_937
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_939
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 1
	jmp	.label_935
.label_939:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 2
.label_935:
	lea	rsi, [rsi]
	jmp	.label_936
.label_936:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	jmp	.label_938
.label_937:
	jmp	.label_940
.label_934:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x10], 2
.label_940:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x30], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	lea	rsi, [rsi]
	add	ecx, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c830

	.globl close_file
	.type close_file, @function
close_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rdi + 0x10], 3
	jne	.label_947
	jmp	.label_944
.label_947:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_948
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0x14], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_948:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	fileno
	cmp	eax, 0
	je	.label_943
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_943:
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rbp, rbp
	jne	.label_950
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
.label_946:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	je	.label_945
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax + 0x10], 3
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_949
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax + 0x30], 0
.label_949:
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0x24]
	add	ecx, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_946
.label_945:
	mov	rsp, rsp
	jmp	.label_942
.label_950:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 3
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x30], 0
.label_942:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [files_ready_to_read]]
	add	eax, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
.label_944:
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca10

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cab0

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
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
	mov	qword ptr [rbp - 8], rdx
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
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	byte ptr [byte ptr [pad_vertically]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	nop	
	je	.label_963
	call	print_header
.label_963:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x10], 1
	nop	
	jne	.label_953
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x38], rax
.label_952:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_961
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax + 0x10], 2
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 0x40
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	jmp	.label_952
.label_961:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_962
	test	byte ptr [byte ptr [extremities]],  1
	nop	
	jne	.label_954
	nop	
	mov	byte ptr [byte ptr [pad_vertically]],  0
.label_954:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_959
.label_962:
	jmp	.label_953
.label_953:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	nop	
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_960
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
.label_960:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [use_col_separator]],  1
	mov	rbp, rbp
	je	.label_957
	mov	rbp, rbp
	call	print_sep_string
.label_957:
	jmp	.label_955
.label_955:
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	je	.label_956
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 8], rcx
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	print_char
	jmp	.label_955
.label_956:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jne	.label_964
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x34]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rdx,  qword ptr [word ptr [end_vector]]
	add	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [dword ptr [output_position]],  ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x34]
	sub	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	cmp	ecx,  dword ptr [dword ptr [chars_per_margin]]
	lea	rdi, [rdi]
	jne	.label_958
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [output_position]]
	nop	
	sub	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [output_position]],  ecx
.label_958:
	jmp	.label_964
.label_964:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
.label_959:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cd20

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
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
	mov	dword ptr [rbp - 8], eax
.label_970:
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ce30

	.globl read_line
	.type read_line, @function
read_line:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	call	getc_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [input_position]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 8], 0xc
	jne	.label_994
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x39], 1
	mov	rbp, rbp
	je	.label_994
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_984
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	getc_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_984:
	jmp	.label_994
.label_994:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x39], 0
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, ecx
	nop	
	sub	edx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 0x18], edx
	je	.label_997
	nop	
	jmp	.label_1006
.label_1006:
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x34], eax
	je	.label_991
	jmp	.label_973
.label_973:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x28], eax
	nop	
	jne	.label_976
	jmp	.label_986
.label_986:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	cmp	eax, 0xa
	lea	rsi, [rsi]
	je	.label_989
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
.label_989:
	mov	byte ptr [byte ptr [FF_only]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_999
	test	byte ptr [byte ptr [storing_columns]],  1
	mov	rbp, rbp
	jne	.label_999
	mov	byte ptr [byte ptr [pad_vertically]],  1
	call	print_header
	jmp	.label_979
.label_999:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [keep_FF]],  1
	mov	rsp, rsp
	je	.label_982
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_982:
	jmp	.label_979
.label_979:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	hold_file
	mov	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jmp	.label_981
.label_997:
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	close_file
	mov	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jmp	.label_981
.label_991:
	lea	rdi, [rdi]
	jmp	.label_1004
.label_976:
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edi, cl
	lea	rdi, [rdi]
	call	char_to_clump
	mov	dword ptr [rbp - 0x38], eax
.label_1004:
	mov	rbp, rbp
	test	byte ptr [byte ptr [truncate_lines]],  1
	mov	rsp, rsp
	je	.label_985
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	jle	.label_985
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_981
.label_985:
	movabs	rax, OFFSET FLAT:store_char
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 0x20], rax
	je	.label_990
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [pad_vertically]],  1
	nop	
	test	byte ptr [byte ptr [print_a_header]],  1
	mov	rbp, rbp
	je	.label_974
	mov	rsp, rsp
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_974
	mov	rsp, rsp
	call	print_header
.label_974:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_988
	test	byte ptr [byte ptr [align_empty_cols]],  1
	je	.label_988
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 1
	mov	rcx,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 0x48], rcx
.label_977:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_983
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	align_column
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_977
.label_983:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	test	byte ptr [byte ptr [truncate_lines]],  1
	mov	rbp, rbp
	je	.label_992
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	nop	
	jmp	.label_996
.label_992:
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
.label_996:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [align_empty_cols]],  0
.label_988:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	mov	rsp, rsp
	jge	.label_978
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_978:
	test	byte ptr [byte ptr [use_col_separator]],  1
	nop	
	je	.label_995
	lea	rsi, [rsi]
	call	print_sep_string
.label_995:
	jmp	.label_990
.label_990:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x38], 1
	mov	rbp, rbp
	je	.label_1000
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	add_line_number
.label_1000:
	nop	
	mov	byte ptr [byte ptr [empty_line]],  0
	cmp	dword ptr [rbp - 8], 0xa
	mov	rbp, rbp
	jne	.label_1008
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_981
.label_1008:
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
.label_987:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 8], eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	sub	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	je	.label_975
	mov	rbp, rbp
	jmp	.label_1002
.label_1002:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0xa
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	je	.label_1005
	jmp	.label_980
.label_980:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	je	.label_1003
	jmp	.label_998
.label_1005:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_981
.label_1003:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 8], eax
	cmp	eax, 0xa
	je	.label_993
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	ungetc
	mov	dword ptr [rbp - 0x54], eax
.label_993:
	mov	rsp, rsp
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1007
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1007:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	hold_file
	nop	
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_981
.label_975:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	call	close_file
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_981
.label_998:
	mov	eax,  dword ptr [dword ptr [input_position]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edi, cl
	call	char_to_clump
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1001
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [input_position]]
	nop	
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_1001
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [dword ptr [input_position]],  eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_981
.label_1001:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
	lea	rsi, [rsi]
	jmp	.label_987
.label_981:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d3d0

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
	jne	.label_1011
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
.label_1011:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rax, [rbp - 0x130]
	nop	
	mov	qword ptr [rbp - 0x148], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [page_number]]
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	sprintf
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rbp - 0x130]
	mov	ecx,  dword ptr [dword ptr [header_width_available]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	call	gnu_mbswidth
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, dword ptr [rbp - 0xc]
	sub	esi, eax
	mov	dword ptr [rbp - 0x13c], esi
	cmp	ecx, dword ptr [rbp - 0x13c]
	jle	.label_1010
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_1009
.label_1010:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x13c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x15c], eax
.label_1009:
	mov	eax, dword ptr [rbp - 0x15c]
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.78
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:.str.70
	lea	rsi, [rbp - 0x130]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x13c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x13c]
	lea	rsi, [rsi]
	sar	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	nop	
	mov	eax, dword ptr [rbp - 0x13c]
	sub	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14c], eax
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	r8,  qword ptr [word ptr [date_text]]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [file_text]]
	mov	r11d, dword ptr [rbp - 0x14c]
	mov	qword ptr [rbp - 0x158], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x138], rcx
	nop	
	mov	rcx, r8
	mov	r8d, r9d
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], r11d
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	rbx, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [print_a_header]],  0
	mov	dword ptr [dword ptr [output_position]],  0
	nop	
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	add	rsp, 0x178
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d5f0

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	edi,  dword ptr [dword ptr [output_position]]
	nop	
	mov	dword ptr [rbp - 8], edi
	test	byte ptr [byte ptr [tabify_output]],  1
	nop	
	je	.label_1012
	mov	eax, dword ptr [rbp - 0xc]
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
	cmp	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	jg	.label_1013
	mov	rsp, rsp
	mov	edi, 0x20
	mov	rbp, rbp
	call	putchar_unlocked
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1014
.label_1013:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [dword ptr [output_position]],  eax
.label_1015:
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d690

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 4], ecx
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jg	.label_1024
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	lea	rsi, [rsi]
	jle	.label_1019
	call	print_white_space
.label_1019:
	mov	rsp, rsp
	jmp	.label_1016
.label_1024:
	jmp	.label_1017
.label_1017:
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jle	.label_1020
	lea	rsi, [rsi]
	jmp	.label_1022
.label_1022:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, -1
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_1026
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x20
	lea	rsi, [rsi]
	jne	.label_1027
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
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
	jle	.label_1018
	mov	rbp, rbp
	call	print_white_space
.label_1018:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [output_position]]
	add	edi, 1
	mov	dword ptr [dword ptr [output_position]],  edi
	mov	dword ptr [rbp - 0x14], eax
.label_1025:
	jmp	.label_1022
.label_1026:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1023
	lea	rdi, [rdi]
	call	print_white_space
.label_1023:
	lea	rdi, [rdi]
	jmp	.label_1021
.label_1021:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	mov	rbp, rbp
	add	eax, -1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	mov	rsp, rsp
	jmp	.label_1017
.label_1020:
	jmp	.label_1016
.label_1016:
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d800

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax,  dword ptr [dword ptr [output_position]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	add	eax,  dword ptr [dword ptr [spaces_not_printed]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_1030:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 4]
	cmp	eax, 1
	mov	byte ptr [rbp - 0x19], cl
	nop	
	jle	.label_1029
	mov	eax, dword ptr [rbp - 4]
	mov	ecx,  dword ptr [dword ptr [chars_per_output_tab]]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	mov	eax, edx
	nop	
	cdq	
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	lea	rdi, [rdi]
	sub	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 8]
	nop	
	add	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], edx
	lea	rsi, [rsi]
	cmp	edx, dword ptr [rbp - 0x18]
	setle	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1029:
	mov	al, byte ptr [rbp - 0x19]
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
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1030
.label_1032:
	jmp	.label_1031
.label_1031:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	jg	.label_1033
	lea	rdi, [rdi]
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1031
.label_1033:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [dword ptr [output_position]],  eax
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d920

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d940

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
	mov	byte ptr [rbp - 9], al
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x31], al
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [clump_buff]]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x38], 8
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	movsx	edx,  byte ptr [byte ptr [input_tab_char]]
	mov	rsp, rsp
	cmp	edi, edx
	jne	.label_1050
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
.label_1050:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 9]
	movsx	ecx,  byte ptr [byte ptr [input_tab_char]]
	cmp	eax, ecx
	je	.label_1042
	nop	
	movsx	eax, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	cmp	eax, 9
	jne	.label_1047
.label_1042:
	mov	eax, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x18]
	sub	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x3c], ecx
	test	byte ptr [byte ptr [untabify_input]],  1
	mov	rbp, rbp
	je	.label_1052
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x10], eax
.label_1039:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	nop	
	je	.label_1035
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0x20
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1039
.label_1035:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_1051
.label_1052:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x1c], 1
.label_1051:
	mov	rbp, rbp
	jmp	.label_1058
.label_1047:
	movzx	eax, byte ptr [rbp - 0x31]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_1034
	mov	rsp, rsp
	test	byte ptr [byte ptr [use_esc_sequence]],  1
	je	.label_1043
	movabs	rsi, OFFSET FLAT:.str.79
	lea	rdi, [rbp - 8]
	mov	dword ptr [rbp - 0x3c], 4
	mov	dword ptr [rbp - 0x1c], 4
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 0x31]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	mov	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_1045:
	cmp	dword ptr [rbp - 0x10], 2
	jg	.label_1038
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	cl, byte ptr [rbp + rax - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [rax], cl
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1045
.label_1038:
	mov	rsp, rsp
	jmp	.label_1048
.label_1043:
	test	byte ptr [byte ptr [use_cntrl_prefix]],  1
	mov	rbp, rbp
	je	.label_1054
	movzx	eax, byte ptr [rbp - 0x31]
	cmp	eax, 0x80
	lea	rsi, [rsi]
	jge	.label_1057
	mov	dword ptr [rbp - 0x3c], 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x5e
	mov	rbp, rbp
	movsx	edx, byte ptr [rbp - 9]
	nop	
	xor	edx, 0x40
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	byte ptr [rax], sil
	lea	rdi, [rdi]
	jmp	.label_1049
.label_1057:
	movabs	rsi, OFFSET FLAT:.str.79
	lea	rdi, [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 4
	mov	dword ptr [rbp - 0x1c], 4
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	sprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_1044:
	nop	
	cmp	dword ptr [rbp - 0x10], 2
	jg	.label_1055
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp + rax - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [rax], cl
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1044
.label_1055:
	mov	rsp, rsp
	jmp	.label_1049
.label_1049:
	jmp	.label_1041
.label_1054:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 9]
	cmp	eax, 8
	jne	.label_1059
	nop	
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	nop	
	mov	dword ptr [rbp - 0x1c], 1
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	byte ptr [rcx], al
	jmp	.label_1036
.label_1059:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x1c], 1
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx], al
.label_1036:
	jmp	.label_1041
.label_1041:
	mov	rsp, rsp
	jmp	.label_1048
.label_1048:
	jmp	.label_1053
.label_1034:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 1
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	byte ptr [rcx], al
.label_1053:
	jmp	.label_1058
.label_1058:
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jge	.label_1037
	nop	
	cmp	dword ptr [dword ptr [input_position]],  0
	lea	rsi, [rsi]
	jne	.label_1037
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1040
.label_1037:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jge	.label_1046
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [input_position]]
	sub	eax, dword ptr [rbp - 0x3c]
	cmp	ecx, eax
	nop	
	jg	.label_1046
	mov	rbp, rbp
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1056
.label_1046:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1056:
	jmp	.label_1040
.label_1040:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dda0

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de50

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [number_buff]]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx,  dword ptr [dword ptr [line_number]]
	mov	al, 0
	mov	rbp, rbp
	call	sprintf
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	eax,  dword ptr [dword ptr [line_number]]
	add	eax, 1
	mov	dword ptr [dword ptr [line_number]],  eax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [number_buff]]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	movsxd	rdi, eax
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_1063:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jle	.label_1068
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	movsx	edi, byte ptr [rcx]
	call	rax
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_1063
.label_1068:
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
	mov	dword ptr [rbp - 0x1c], eax
.label_1072:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	eax, 0
	nop	
	jle	.label_1067
	lea	rdi, [rdi]
	mov	edi, 0x20
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	qword ptr [rax + 0x20]
	mov	rbp, rbp
	jmp	.label_1072
.label_1067:
	jmp	.label_1065
.label_1071:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
.label_1065:
	lea	rsi, [rsi]
	jmp	.label_1066
.label_1069:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 8], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [output_position]],  edx
.label_1064:
	nop	
	jmp	.label_1066
.label_1066:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl print_clump
	.type print_clump, @function
print_clump:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	qword ptr [rbp - 8], rdx
.label_1074:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1073
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0f0

	.globl init_page
	.type init_page, @function
init_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1082
	nop	
	call	store_columns
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 8], rcx
.label_1085:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_1078
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], ecx
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rcx, qword ptr [rbp - 8]
	nop	
	add	rcx, 0x40
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	jmp	.label_1085
.label_1078:
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1077
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x30], ecx
	jmp	.label_1084
.label_1077:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1080
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x30], eax
	mov	rsp, rsp
	jmp	.label_1087
.label_1080:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
.label_1087:
	lea	rdi, [rdi]
	jmp	.label_1084
.label_1084:
	jmp	.label_1075
.label_1082:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 8], rcx
.label_1081:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_1086
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 0
	nop	
	jne	.label_1083
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_1076
.label_1083:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
.label_1076:
	mov	rsp, rsp
	jmp	.label_1079
.label_1079:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -1
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x40
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1081
.label_1086:
	jmp	.label_1075
.label_1075:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e260

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 0
	mov	rax,  qword ptr [word ptr [column_vector]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 4], 0
.label_1091:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jae	.label_1092
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1088
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 1
	je	.label_1088
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1089
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x2c], 0
	lea	rdi, [rdi]
	jle	.label_1089
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_1089
.label_1088:
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
.label_1089:
	mov	rbp, rbp
	jmp	.label_1090
.label_1090:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jmp	.label_1091
.label_1092:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e340

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 8], rdi
.label_1093:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	getc_unlocked
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	eax, 0xa
	je	.label_1094
	cmp	dword ptr [rbp - 0x18], 0xc
	jne	.label_1099
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	getc_unlocked
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, 0xa
	je	.label_1095
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	ungetc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_1095:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1096
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1096:
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	rbp, rbp
	jmp	.label_1094
.label_1099:
	cmp	dword ptr [rbp - 0x18], -1
	jne	.label_1098
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e410

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 8], edi
	test	byte ptr [byte ptr [use_form_feed]],  1
	je	.label_1100
	mov	edi, 0xc
	lea	rsi, [rsi]
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1101
.label_1100:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1102:
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	je	.label_1103
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1102
.label_1103:
	jmp	.label_1101
.label_1101:
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e490

	.globl store_columns
	.type store_columns, @function
store_columns:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	nop	
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [dword ptr [buff_current]],  0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [balance_columns]],  1
	nop	
	je	.label_1109
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1108
.label_1109:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 4], eax
.label_1108:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1113:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	jg	.label_1105
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x2c], 0
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	jmp	.label_1113
.label_1105:
	mov	dword ptr [rbp - 0x14], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [column_vector]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1119:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	cmp	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	mov	rsp, rsp
	jg	.label_1116
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	lea	rsi, [rsi]
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], al
.label_1116:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_1107
	mov	rbp, rbp
	jmp	.label_1114
.label_1107:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
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
	mov	byte ptr [rbp - 9], cl
	nop	
	je	.label_1121
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], al
.label_1121:
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	test	al, 1
	jne	.label_1118
	nop	
	jmp	.label_1120
.label_1118:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1104
	mov	rsp, rsp
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	read_line
	nop	
	test	al, 1
	jne	.label_1106
	mov	rdi, qword ptr [rbp - 0x28]
	call	read_rest_of_line
.label_1106:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1122
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [buff_current]]
	lea	rsi, [rsi]
	je	.label_1111
.label_1122:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	add	ecx, 1
	mov	dword ptr [rax + 0x2c], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	eax, edx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	rbp, rbp
	mov	dword ptr [rsi + rax*4], ecx
	nop	
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	edx, dword ptr [rbp - 0x1c]
	nop	
	mov	edi, edx
	nop	
	add	edi, 1
	nop	
	mov	dword ptr [rbp - 0x1c], edi
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
.label_1111:
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
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rcx, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1119
.label_1114:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	dword ptr [rsi + rdx*4], eax
	test	byte ptr [byte ptr [balance_columns]],  1
	lea	rdi, [rdi]
	je	.label_1110
	mov	edi, dword ptr [rbp - 0x1c]
	call	balance
.label_1110:
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e750

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e820
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e850
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e880

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
	je	.label_1127
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_1126
.label_1127:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1130
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
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
	mov	rcx, qword ptr [rbp - 0x10]
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
	je	.label_1129
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1129:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9b0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e9f0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1131
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 8], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	call	fdadvise
.label_1131:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ea50

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	fopen
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1136
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x34]
	jg	.label_1135
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jg	.label_1135
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jge	.label_1133
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1134
.label_1133:
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1137
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1132
.label_1137:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1134
.label_1132:
	jmp	.label_1135
.label_1135:
	jmp	.label_1136
.label_1136:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_1134:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ebd0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec10
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
	lea	rdi, [rbp - 0x10]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec60

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
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1139
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1140
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1138
.label_1140:
	mov	byte ptr [rbp - 0xd], 0
.label_1138:
	jmp	.label_1139
.label_1139:
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed00

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1144
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1143
	jmp	.label_1142
.label_1142:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ee50

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eea0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi, qword ptr [rbp - 0x60]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1166
	jmp	.label_1163
.label_1163:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jae	.label_1169
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	ja	.label_1174
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1155]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2370:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_1159
.label_1174:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
.label_1152:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x64]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_1154
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1158
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	jmp	.label_1151
.label_1158:
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1149
.label_1154:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1171
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1175
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_1151
.label_1175:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1149
.label_1171:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_1161
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
.label_1161:
	mov	edi, dword ptr [rbp - 0x64]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	cmp	dword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jl	.label_1160
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x68]
	nop	
	sub	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jle	.label_1172
	jmp	.label_1150
.label_1172:
	mov	eax, dword ptr [rbp - 0x68]
	add	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_1148
.label_1160:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1156
	mov	edi, dword ptr [rbp - 0x64]
	call	iswcntrl
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1162
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	lea	rsi, [rsi]
	jne	.label_1164
	jmp	.label_1150
.label_1164:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x58], eax
.label_1162:
	mov	rsp, rsp
	jmp	.label_1147
.label_1156:
	nop	
	mov	dword ptr [rbp - 0x54], 0xffffffff
	nop	
	jmp	.label_1149
.label_1147:
	jmp	.label_1148
.label_1148:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1152
.label_1151:
	mov	rsp, rsp
	jmp	.label_1159
.label_1159:
	jmp	.label_1163
.label_1169:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1149
.label_1166:
	jmp	.label_1146
.label_1146:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1168
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 1], dl
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	nop	
	movsxd	rax, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_1157
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_1165
	jmp	.label_1150
.label_1165:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_1145
.label_1157:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	and	eax, 2
	cmp	eax, 0
	jne	.label_1173
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 1]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 2
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1153
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_1167
	mov	rsp, rsp
	jmp	.label_1150
.label_1167:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
.label_1153:
	jmp	.label_1170
.label_1173:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1149
.label_1170:
	jmp	.label_1145
.label_1145:
	lea	rdi, [rdi]
	jmp	.label_1146
.label_1168:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_1149
.label_1150:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0x7fffffff
.label_1149:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x70
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f2c0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	xor	eax, eax
	nop	
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	lea	r11, [rbp - 0x41]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x38], r8
	nop	
	mov	dword ptr [rbp - 4], r9d
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x38]
	nop	
	mov	r9d, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	dword ptr [rbp - 0x48], r9d
	nop	
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r11
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], r10d
	call	__strftime_internal
	lea	rdi, [rdi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f380

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
	sub	rsp, 0xa48
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdi
	mov	qword ptr [rbp - 0x398], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x308], rdx
	mov	qword ptr [rbp - 0x2b8], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x29d], al
	mov	dword ptr [rbp - 0x2bc], r9d
	mov	dword ptr [rbp - 0x22c], ebx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x498], r11
	mov	qword ptr [rbp - 0x488], r10
	mov	dword ptr [rbp - 0x9d0], r8d
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	r8d, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2dc], r8d
	mov	qword ptr [rbp - 0x978], 0
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x370], rcx
	mov	qword ptr [rbp - 0xe0], 0
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rcx
	cmp	qword ptr [rbp - 0xe0], 0
	nop	
	jne	.label_1362
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xe0], rax
.label_1362:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2dc], 0xc
	jle	.label_1418
	mov	eax, dword ptr [rbp - 0x2dc]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2dc], eax
	nop	
	jmp	.label_1421
.label_1418:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2dc], 0
	lea	rdi, [rdi]
	jne	.label_1428
	nop	
	mov	dword ptr [rbp - 0x2dc], 0xc
.label_1428:
	mov	rbp, rbp
	jmp	.label_1421
.label_1421:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x308]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
.label_1549:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1441
	nop	
	mov	dword ptr [rbp - 0x9c0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x230], 0
	mov	byte ptr [rbp - 0x51], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29d]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9e9], al
	nop	
	mov	byte ptr [rbp - 0x339], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x25
	nop	
	je	.label_1448
	lea	rsi, [rsi]
	jmp	.label_1466
.label_1466:
	mov	qword ptr [rbp - 0x470], 1
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1467
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x274], eax
	jmp	.label_1473
.label_1467:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x274], eax
.label_1473:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x274]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x470]
	cmp	rcx, qword ptr [rbp - 0x158]
	nop	
	jae	.label_1479
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3b0], rax
	nop	
	jmp	.label_1486
.label_1479:
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	mov	qword ptr [rbp - 0x3b0], rax
.label_1486:
	mov	rax, qword ptr [rbp - 0x3b0]
	mov	qword ptr [rbp - 0x468], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x468]
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1495
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1495:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_1508
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x230], 0
	lea	rsi, [rsi]
	jne	.label_1449
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x470]
	cmp	rax, qword ptr [rbp - 0x158]
	nop	
	jae	.label_1449
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x470]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], rax
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_1520
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_1531
.label_1520:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1542
.label_1531:
	lea	rsi, [rsi]
	mov	esi, 0x20
	nop	
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
.label_1542:
	mov	rbp, rbp
	jmp	.label_1449
.label_1449:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	add	rax, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rax
.label_1508:
	mov	rax, qword ptr [rbp - 0x468]
	nop	
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1547
.label_1448:
	jmp	.label_1193
.label_1193:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rcx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	esi, edx
	nop	
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x9bc], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa40], esi
	mov	rsp, rsp
	je	.label_1576
	jmp	.label_1587
.label_1587:
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9cc], eax
	je	.label_1191
	jmp	.label_1592
.label_1592:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9bc]
	mov	rsp, rsp
	sub	eax, 0x2d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28c], eax
	je	.label_1191
	nop	
	jmp	.label_1575
.label_1575:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9bc]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x480], eax
	je	.label_1191
	mov	rbp, rbp
	jmp	.label_1177
.label_1177:
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xec], eax
	mov	rbp, rbp
	je	.label_1180
	jmp	.label_1184
.label_1184:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x5f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x344], eax
	jne	.label_1185
	jmp	.label_1191
.label_1191:
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x9c0], ecx
	nop	
	jmp	.label_1193
.label_1180:
	nop	
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rbp, rbp
	jmp	.label_1193
.label_1576:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x339], 1
	lea	rdi, [rdi]
	jmp	.label_1193
.label_1185:
	jmp	.label_1203
.label_1203:
	lea	rdi, [rdi]
	jmp	.label_1206
.label_1206:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_1208
	mov	dword ptr [rbp - 0x22c], 0
.label_1239:
	cmp	dword ptr [rbp - 0x22c], 0xccccccc
	lea	rdi, [rdi]
	jg	.label_1216
	cmp	dword ptr [rbp - 0x22c], 0xccccccc
	jne	.label_1225
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_1225
.label_1216:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x22c], 0x7fffffff
	nop	
	jmp	.label_1227
.label_1225:
	imul	eax, dword ptr [rbp - 0x22c], 0xa
	nop	
	mov	dword ptr [rbp - 0x22c], eax
	mov	rcx, qword ptr [rbp - 0x108]
	nop	
	movsx	eax, byte ptr [rcx]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
.label_1227:
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 9
	jbe	.label_1239
	mov	rbp, rbp
	jmp	.label_1208
.label_1208:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x238], ecx
	mov	dword ptr [rbp - 0x7c], edx
	je	.label_1249
	lea	rsi, [rsi]
	jmp	.label_1256
.label_1256:
	mov	eax, dword ptr [rbp - 0x238]
	nop	
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x9ac], eax
	jne	.label_1258
	jmp	.label_1249
.label_1249:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x108], rcx
	nop	
	movsx	edx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x45c], edx
	jmp	.label_1261
.label_1258:
	mov	dword ptr [rbp - 0x45c], 0
.label_1261:
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x314], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x318], ecx
	je	.label_1272
	lea	rdi, [rdi]
	jmp	.label_1400
.label_1400:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	mov	rsp, rsp
	je	.label_1282
	lea	rdi, [rdi]
	jmp	.label_1288
.label_1288:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x294], eax
	je	.label_1291
	nop	
	jmp	.label_1496
.label_1496:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3d4], eax
	nop	
	je	.label_1502
	jmp	.label_1534
.label_1534:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x42
	nop	
	mov	dword ptr [rbp - 0x474], eax
	je	.label_1305
	lea	rsi, [rsi]
	jmp	.label_1309
.label_1309:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x4bc], eax
	je	.label_1310
	mov	rbp, rbp
	jmp	.label_1314
.label_1314:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xa04], eax
	je	.label_1317
	jmp	.label_1322
.label_1322:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x354], eax
	je	.label_1323
	lea	rdi, [rdi]
	jmp	.label_1328
.label_1328:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x3ec], eax
	je	.label_1329
	mov	rsp, rsp
	jmp	.label_1332
.label_1332:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_1290
	jmp	.label_1340
.label_1340:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x184], eax
	lea	rdi, [rdi]
	je	.label_1341
	jmp	.label_1345
.label_1345:
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x364], eax
	je	.label_1347
	jmp	.label_1352
.label_1352:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x9b8], eax
	je	.label_1354
	jmp	.label_1360
.label_1360:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x288], eax
	lea	rsi, [rsi]
	je	.label_1221
	lea	rdi, [rdi]
	jmp	.label_1368
.label_1368:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1370
	jmp	.label_1377
.label_1377:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x124], eax
	mov	rbp, rbp
	je	.label_1528
	jmp	.label_1386
.label_1386:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2d8], eax
	je	.label_1388
	jmp	.label_1394
.label_1394:
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x55
	nop	
	mov	dword ptr [rbp - 0x9d8], eax
	je	.label_1396
	jmp	.label_1210
.label_1210:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x950], eax
	lea	rsi, [rsi]
	je	.label_1329
	jmp	.label_1404
.label_1404:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x57
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x328], eax
	je	.label_1254
	jmp	.label_1286
.label_1286:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x58
	nop	
	mov	dword ptr [rbp - 0x13c], eax
	lea	rsi, [rsi]
	je	.label_1413
	jmp	.label_1419
.label_1419:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1333
	nop	
	jmp	.label_1366
.label_1366:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x24c], eax
	lea	rdi, [rdi]
	je	.label_1374
	mov	rbp, rbp
	jmp	.label_1436
.label_1436:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	je	.label_1439
	jmp	.label_1235
.label_1235:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x348], eax
	lea	rdi, [rdi]
	je	.label_1445
	mov	rsp, rsp
	jmp	.label_1450
.label_1450:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x110], eax
	je	.label_1453
	lea	rsi, [rsi]
	jmp	.label_1458
.label_1458:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2d0], eax
	je	.label_1459
	jmp	.label_1462
.label_1462:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4a8], eax
	je	.label_1464
	mov	rbp, rbp
	jmp	.label_1471
.label_1471:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x47c], eax
	je	.label_1329
	mov	rbp, rbp
	jmp	.label_1477
.label_1477:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x2d4], eax
	je	.label_1445
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1482:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x16c], eax
	lea	rdi, [rdi]
	je	.label_1484
	jmp	.label_1488
.label_1488:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x214], eax
	mov	rbp, rbp
	je	.label_1304
	mov	rsp, rsp
	jmp	.label_1497
.label_1497:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x4ac], eax
	nop	
	je	.label_1499
	mov	rbp, rbp
	jmp	.label_1501
.label_1501:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x340], eax
	je	.label_1503
	mov	rbp, rbp
	jmp	.label_1423
.label_1423:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x284], eax
	lea	rsi, [rsi]
	je	.label_1510
	jmp	.label_1517
.label_1517:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x70
	nop	
	mov	dword ptr [rbp - 0x338], eax
	lea	rdi, [rdi]
	je	.label_1518
	jmp	.label_1522
.label_1522:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x100], eax
	je	.label_1525
	lea	rdi, [rdi]
	jmp	.label_1529
.label_1529:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x72
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98c], eax
	mov	rsp, rsp
	je	.label_1532
	jmp	.label_1538
.label_1538:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x9d4], eax
	je	.label_1596
	jmp	.label_1546
.label_1546:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa3c], eax
	nop	
	je	.label_1548
	jmp	.label_1212
.label_1212:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c4], eax
	mov	rbp, rbp
	je	.label_1555
	jmp	.label_1562
.label_1562:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x2cc], eax
	lea	rdi, [rdi]
	je	.label_1293
	jmp	.label_1325
.label_1325:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x914], eax
	je	.label_1567
	lea	rdi, [rdi]
	jmp	.label_1361
.label_1361:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	je	.label_1571
	jmp	.label_1460
.label_1460:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x298], eax
	je	.label_1411
	jmp	.label_1581
.label_1282:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_1582
	mov	rsp, rsp
	jmp	.label_1186
.label_1582:
	jmp	.label_1585
.label_1585:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9e0], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1492
	xor	eax, eax
	mov	dword ptr [rbp - 0x9f0], eax
	lea	rsi, [rsi]
	jmp	.label_1591
.label_1492:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x9f0], eax
.label_1591:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9f0]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x458], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x9e0]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x458]
.label_2387:
	lea	rdi, [rdi]
	jae	.label_1595
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x458]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_1181
.label_1595:
	nop	
	mov	rax, qword ptr [rbp - 0x9e0]
	nop	
	mov	qword ptr [rbp - 0x1e8], rax
.label_1181:
	mov	rax, qword ptr [rbp - 0x1e8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x968], rax
	nop	
	mov	rax, qword ptr [rbp - 0x968]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1189
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1198
.label_1189:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1202
	cmp	dword ptr [rbp - 0x230], 0
	lea	rsi, [rsi]
	jne	.label_1205
	mov	rax, qword ptr [rbp - 0x9e0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x458]
	mov	rsp, rsp
	jae	.label_1205
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x9e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	nop	
	je	.label_1215
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	jne	.label_1226
.label_1215:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1232
.label_1226:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rdx, qword ptr [rbp - 0x330]
	call	memset
	mov	rdx, qword ptr [rbp - 0x330]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1232:
	jmp	.label_1205
.label_1205:
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], cl
	nop	
	mov	rax, qword ptr [rbp - 0x9e0]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_1202:
	nop	
	mov	rax, qword ptr [rbp - 0x968]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x978], rax
	nop	
	jmp	.label_1199
.label_1439:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_1260
	mov	rbp, rbp
	jmp	.label_1186
.label_1260:
	test	byte ptr [rbp - 0x339], 1
	je	.label_1265
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 0
.label_1265:
	mov	rsp, rsp
	jmp	.label_1236
.label_1502:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_1351
	jmp	.label_1186
.label_1351:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x339], 1
	je	.label_1276
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], 0
.label_1276:
	jmp	.label_1236
.label_1445:
	test	byte ptr [rbp - 0x339], 1
	nop	
	je	.label_1285
	nop	
	mov	byte ptr [rbp - 0x9e9], 1
	mov	byte ptr [rbp - 0x51], 0
.label_1285:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_1292
	nop	
	jmp	.label_1186
.label_1292:
	jmp	.label_1236
.label_1305:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1299
	nop	
	jmp	.label_1186
.label_1299:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x339], 1
	je	.label_1302
	mov	byte ptr [rbp - 0x9e9], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], 0
.label_1302:
	lea	rdi, [rdi]
	jmp	.label_1236
.label_1453:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_1572
	jmp	.label_1186
.label_1572:
	lea	rsi, [rsi]
	jmp	.label_1236
.label_1252:
	nop	
	mov	dword ptr [rbp - 0x334], 0xffffffff
.label_1395:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	r8b, byte ptr [rbp - 0x9e9]
	nop	
	mov	r9d, dword ptr [rbp - 0x9c0]
	mov	eax, dword ptr [rbp - 0x334]
	mov	r10, qword ptr [rbp - 0x498]
	mov	r11, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x9d0]
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
	mov	qword ptr [rbp - 0x390], rax
	mov	rax, qword ptr [rbp - 0x390]
	mov	qword ptr [rbp - 0x48], rax
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1342
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	rsp, rsp
	jmp	.label_1348
.label_1342:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x1dc], eax
.label_1348:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x2f8], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x2f8]
	nop	
	jae	.label_1355
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f8]
	mov	qword ptr [rbp - 0x1b0], rax
	lea	rsi, [rsi]
	jmp	.label_1365
.label_1355:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
.label_1365:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x3f8], rax
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_1375
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1198
.label_1375:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_1593
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_1397
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2f8]
	lea	rsi, [rsi]
	jae	.label_1397
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4f8], rax
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1403
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	jne	.label_1412
.label_1403:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f8]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1425
.label_1412:
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1425:
	mov	rsp, rsp
	jmp	.label_1397
.label_1397:
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x398]
	sub	rax, qword ptr [rbp - 0x978]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x9e9]
	mov	r9d, dword ptr [rbp - 0x9c0]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x334]
	mov	r10, qword ptr [rbp - 0x498]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x488]
	mov	ebx, dword ptr [rbp - 0x9d0]
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x111], sil
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp - 0x111]
	mov	rbp, rbp
	movzx	r15d, r14b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], r8d
	mov	r8d, r15d
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp - 0x234]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rcx
	mov	qword ptr [rbp - 0x1c8], rax
.label_1593:
	mov	rax, qword ptr [rbp - 0x3f8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1199
.label_1236:
	nop	
	lea	rax, [rbp - 0x39d]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x928], rax
	mov	rax, qword ptr [rbp - 0x928]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x928], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x928]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x928], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_1493
	nop	
	mov	eax, dword ptr [rbp - 0x45c]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x928]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x928], rsi
	mov	byte ptr [rdx], cl
.label_1493:
	mov	rbp, rbp
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x39d]
	lea	rdi, [rbp - 0x910]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x314]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x928]
	mov	rsp, rsp
	mov	r9, r8
	add	r9, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x928], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x928]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x2b8]
	call	strftime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4c8], 0
	nop	
	je	.label_1244
	lea	rdi, [rdi]
	jmp	.label_1551
.label_1551:
	mov	rax, qword ptr [rbp - 0x4c8]
	sub	rax, 1
	mov	qword ptr [rbp - 0xa38], rax
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_1552
	xor	eax, eax
	mov	dword ptr [rbp - 0x44c], eax
	jmp	.label_1263
.label_1552:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x44c], eax
.label_1263:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x180], rcx
	mov	rcx, qword ptr [rbp - 0xa38]
	cmp	rcx, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	jae	.label_1298
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_1570
.label_1298:
	mov	rax, qword ptr [rbp - 0xa38]
	mov	qword ptr [rbp - 0x70], rax
.label_1570:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x3e0], rax
	mov	rax, qword ptr [rbp - 0x3e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1573
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1573:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1586
	nop	
	cmp	dword ptr [rbp - 0x230], 0
	nop	
	jne	.label_1187
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x180]
	jae	.label_1187
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xa38]
	mov	qword ptr [rbp - 0x970], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1561
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	nop	
	jne	.label_1599
.label_1561:
	lea	rdi, [rdi]
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rdx, qword ptr [rbp - 0x970]
	call	memset
	nop	
	mov	rdx, qword ptr [rbp - 0x970]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1230
.label_1599:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x970]
	call	memset
	mov	rdx, qword ptr [rbp - 0x970]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rdx
.label_1230:
	jmp	.label_1187
.label_1187:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1204
	lea	rax, [rbp - 0x910]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa38]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_1219
.label_1204:
	test	byte ptr [rbp - 0x9e9], 1
	je	.label_1433
	lea	rax, [rbp - 0x910]
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0xa38]
	mov	rsi, rax
	nop	
	call	memcpy_uppcase
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3d0], rax
	jmp	.label_1228
.label_1433:
	lea	rax, [rbp - 0x910]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0xa38]
	nop	
	mov	rsi, rax
	call	memcpy
.label_1228:
	jmp	.label_1219
.label_1219:
	mov	rax, qword ptr [rbp - 0xa38]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_1586:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x3e0]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1244
.label_1244:
	jmp	.label_1199
.label_1310:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1248
	mov	rbp, rbp
	jmp	.label_1236
.label_1248:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x64
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rdx + 0x14]
	nop	
	mov	dword ptr [rbp - 0x9c8], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x9c8]
	idiv	esi
	add	eax, 0x13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9e8], eax
	mov	rdi, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x9a5], cl
	lea	rsi, [rsi]
	jge	.label_1255
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x9e8]
	setl	cl
	mov	byte ptr [rbp - 0x9a5], cl
.label_1255:
	mov	al, byte ptr [rbp - 0x9a5]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x9e8]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x9e8], edx
	mov	dword ptr [rbp - 0x230], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa21], cl
	nop	
	mov	edx, dword ptr [rbp - 0x9e8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	lea	rdi, [rdi]
	jmp	.label_1279
.label_1567:
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_1584
	mov	rsp, rsp
	jmp	.label_1186
.label_1584:
	lea	rdi, [rdi]
	jmp	.label_1236
.label_1317:
	cmp	dword ptr [rbp - 0x45c], 0
	mov	rsp, rsp
	je	.label_1307
	lea	rsi, [rsi]
	jmp	.label_1186
.label_1307:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1252
.label_1459:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1316
	jmp	.label_1186
.label_1316:
	jmp	.label_1321
.label_1321:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x3b4], ecx
	lea	rdi, [rdi]
	jmp	.label_1178
.label_1464:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1209
	jmp	.label_1186
.label_1209:
	jmp	.label_1334
.label_1334:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x3b4], ecx
	jmp	.label_1338
.label_1294:
	mov	byte ptr [rbp - 0x45d], 1
	lea	rsi, [rsi]
	jmp	.label_1343
.label_1279:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0
	jne	.label_1346
	mov	eax, dword ptr [rbp - 0x2bc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c0], eax
.label_1346:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	byte ptr [rbp - 0x9e1], cl
	jne	.label_1353
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x230], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x14c]
	nop	
	mov	byte ptr [rbp - 0x16d], al
	jb	.label_1359
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x230]
	cmp	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	setl	cl
	mov	byte ptr [rbp - 0x16d], cl
.label_1359:
	mov	al, byte ptr [rbp - 0x16d]
	mov	byte ptr [rbp - 0x9e1], al
.label_1353:
	mov	al, byte ptr [rbp - 0x9e1]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45d], al
	nop	
	jmp	.label_1384
.label_1338:
	cmp	dword ptr [rbp - 0x9c0], 0
	jne	.label_1391
	nop	
	mov	dword ptr [rbp - 0x9c0], 0x5f
.label_1391:
	jmp	.label_1178
.label_1178:
	cmp	dword ptr [rbp - 0x3b4], 0
	nop	
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa21], al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x3b4]
	mov	dword ptr [rbp - 0x14c], ecx
.label_1238:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45d], 0
.label_1384:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], 0
.label_1343:
	nop	
	cmp	dword ptr [rbp - 0x45c], 0x4f
	lea	rsi, [rsi]
	jne	.label_1406
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa21], 1
	jne	.label_1406
	lea	rdi, [rdi]
	jmp	.label_1236
.label_1406:
	lea	rax, [rbp - 0xd0]
	add	rax, 0x17
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa00], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa21], 1
	je	.label_1417
	xor	eax, eax
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x14c], eax
.label_1417:
	jmp	.label_1429
.label_1429:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	je	.label_1430
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa00]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xa00], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_1430:
	nop	
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [rbp - 0x78], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2a4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2a4]
	div	ecx
	add	edx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xa00]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa00], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14c]
	nop	
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x14c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x14c], 0
	mov	byte ptr [rbp - 0x3f9], al
	jne	.label_1443
	cmp	dword ptr [rbp - 0x78], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x3f9], al
.label_1443:
	mov	al, byte ptr [rbp - 0x3f9]
	nop	
	test	al, 1
	jne	.label_1429
	nop	
	jmp	.label_1297
.label_1297:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	jge	.label_1480
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x230], eax
.label_1480:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xa21], 1
	je	.label_1487
	mov	rbp, rbp
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x9b4], eax
	lea	rdi, [rdi]
	jmp	.label_1490
.label_1487:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x2b
	nop	
	mov	dl, byte ptr [rbp - 0x45d]
	mov	rsp, rsp
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9b4], eax
.label_1490:
	nop	
	mov	eax, dword ptr [rbp - 0x9b4]
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0x4a1], cl
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2d
	lea	rdi, [rdi]
	jne	.label_1383
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x4a1], 0
	mov	rsp, rsp
	je	.label_1182
	jmp	.label_1512
.label_1512:
	mov	qword ptr [rbp - 0x1f8], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1513
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50c], eax
	jmp	.label_1519
.label_1513:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	dword ptr [rbp - 0x50c], eax
.label_1519:
	mov	eax, dword ptr [rbp - 0x50c]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2e8], rcx
	mov	rcx, qword ptr [rbp - 0x1f8]
	cmp	rcx, qword ptr [rbp - 0x2e8]
	jae	.label_1526
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	qword ptr [rbp - 0x4d0], rax
	lea	rdi, [rdi]
	jmp	.label_1535
.label_1526:
	nop	
	mov	rax, qword ptr [rbp - 0x1f8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4d0], rax
.label_1535:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4d0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4e0], rax
	mov	rax, qword ptr [rbp - 0x4e0]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1545
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1198
.label_1545:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_1560
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1564
	mov	rax, qword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2e8]
	nop	
	jae	.label_1564
	nop	
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x1f8]
	nop	
	mov	qword ptr [rbp - 0xa20], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1246
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_1577
.label_1246:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0xa20]
	call	memset
	mov	rdx, qword ptr [rbp - 0xa20]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rdx
	lea	rsi, [rsi]
	jmp	.label_1583
.label_1577:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1583:
	mov	rsp, rsp
	jmp	.label_1564
.label_1564:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1f8]
	nop	
	add	rcx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rcx
.label_1560:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4e0]
	add	rax, qword ptr [rbp - 0x978]
	nop	
	mov	qword ptr [rbp - 0x978], rax
	mov	rsp, rsp
	jmp	.label_1182
.label_1182:
	mov	rsp, rsp
	jmp	.label_1190
.label_1383:
	lea	rax, [rbp - 0xd0]
	movsxd	rcx, dword ptr [rbp - 0x230]
	mov	rbp, rbp
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa00]
	nop	
	sub	rax, rdx
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	byte ptr [rbp - 0x4a1], 0
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
	mov	dword ptr [rbp - 0x4e8], edi
	cmp	dword ptr [rbp - 0x4e8], 0
	mov	rbp, rbp
	jle	.label_1192
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c0], 0x5f
	nop	
	jne	.label_1217
	movsxd	rax, dword ptr [rbp - 0x4e8]
	mov	rcx, qword ptr [rbp - 0x398]
	nop	
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	nop	
	jb	.label_1222
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_1198
.label_1222:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rsp, rsp
	je	.label_1229
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x4e8]
	call	memset
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x4e8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x370]
	movsxd	rdi, esi
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rdx
.label_1229:
	movsxd	rax, dword ptr [rbp - 0x4e8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x978], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x4e8]
	nop	
	jle	.label_1245
	mov	eax, dword ptr [rbp - 0x22c]
	sub	eax, dword ptr [rbp - 0x4e8]
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_1253
.label_1245:
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	jmp	.label_1253
.label_1253:
	nop	
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
	cmp	byte ptr [rbp - 0x4a1], 0
	nop	
	je	.label_1259
	lea	rdi, [rdi]
	jmp	.label_1264
.label_1264:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x220], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1267
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x224], eax
	lea	rdi, [rdi]
	jmp	.label_1271
.label_1267:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x224], eax
.label_1271:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x224]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	cmp	rcx, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	jae	.label_1280
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_1289
.label_1280:
	nop	
	mov	rax, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0xa0], rax
.label_1289:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	nop	
	jb	.label_1301
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1198
.label_1301:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_1312
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1319
	mov	rax, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x3c0]
	mov	rbp, rbp
	jae	.label_1319
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x300], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	mov	rbp, rbp
	je	.label_1327
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	nop	
	jne	.label_1335
.label_1327:
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_1344
.label_1335:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1344:
	mov	rbp, rbp
	jmp	.label_1319
.label_1319:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x220]
	add	rcx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rcx
.label_1312:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x978]
	nop	
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1259
.label_1259:
	jmp	.label_1387
.label_1217:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rbp - 0x398]
	nop	
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1389
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1198
.label_1389:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x4a1], 0
	je	.label_1200
	nop	
	jmp	.label_1223
.label_1223:
	mov	qword ptr [rbp - 0x930], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rbp, rbp
	jge	.label_1402
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x37c], eax
	jmp	.label_1409
.label_1402:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x37c], eax
.label_1409:
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	rcx, qword ptr [rbp - 0x930]
	cmp	rcx, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	jae	.label_1416
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rax
	nop	
	jmp	.label_1426
.label_1416:
	mov	rax, qword ptr [rbp - 0x930]
	mov	qword ptr [rbp - 0x4b8], rax
.label_1426:
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x208], rax
	mov	rax, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1435
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1198
.label_1435:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1451
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1454
	nop	
	mov	rax, qword ptr [rbp - 0x930]
	cmp	rax, qword ptr [rbp - 0x1a0]
	jae	.label_1454
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x930]
	mov	qword ptr [rbp - 0x138], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1461
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_1469
.label_1461:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	mov	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_1476
.label_1469:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x138]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1476:
	jmp	.label_1454
.label_1454:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4a1]
	nop	
	mov	rcx, qword ptr [rbp - 0x370]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x930]
	add	rcx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rcx
.label_1451:
	mov	rax, qword ptr [rbp - 0x208]
	add	rax, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1200
.label_1200:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	lea	rdi, [rdi]
	je	.label_1420
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x4e8]
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4e8]
	mov	rdx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x370], rdx
.label_1420:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x4e8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], 0
.label_1387:
	jmp	.label_1214
.label_1192:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x4a1], 0
	lea	rsi, [rsi]
	je	.label_1207
	jmp	.label_1540
.label_1540:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x948], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1541
	xor	eax, eax
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_1550
.label_1541:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x10c], eax
.label_1550:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3a8], rcx
	mov	rcx, qword ptr [rbp - 0x948]
	cmp	rcx, qword ptr [rbp - 0x3a8]
	lea	rsi, [rsi]
	jae	.label_1554
	mov	rax, qword ptr [rbp - 0x3a8]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1444
.label_1554:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x948]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
.label_1444:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_1569
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1198
.label_1569:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1579
	nop	
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_1196
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x948]
	cmp	rax, qword ptr [rbp - 0x3a8]
	nop	
	jae	.label_1196
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x948]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x248], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1589
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_1594
.label_1589:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x248]
	call	memset
	mov	rdx, qword ptr [rbp - 0x248]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1176
.label_1594:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x248]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rdx
.label_1176:
	nop	
	jmp	.label_1196
.label_1196:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rcx
.label_1579:
	mov	rax, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1207
.label_1207:
	jmp	.label_1214
.label_1214:
	lea	rdi, [rdi]
	jmp	.label_1190
.label_1190:
	mov	rbp, rbp
	jmp	.label_1218
.label_1218:
	lea	rax, [rbp - 0xd0]
	lea	rdi, [rdi]
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa00]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x190], rax
	nop	
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_1220
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x30c], eax
	lea	rsi, [rsi]
	jmp	.label_1494
.label_1220:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x30c], eax
.label_1494:
	mov	eax, dword ptr [rbp - 0x30c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x998], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x998]
	jae	.label_1234
	mov	rax, qword ptr [rbp - 0x998]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x920], rax
	nop	
	jmp	.label_1243
.label_1234:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x920], rax
.label_1243:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x920]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1251
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1198
.label_1251:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rsp, rsp
	je	.label_1262
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1268
	mov	rax, qword ptr [rbp - 0x190]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x998]
	mov	rsp, rsp
	jae	.label_1268
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x960], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	nop	
	je	.label_1274
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	rsp, rsp
	jne	.label_1284
.label_1274:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x960]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x960]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1295
.label_1284:
	nop	
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x960]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x960]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1295:
	lea	rdi, [rdi]
	jmp	.label_1268
.label_1268:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	je	.label_1588
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa00]
	nop	
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rbp, rbp
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x508], rax
	jmp	.label_1324
.label_1588:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x9e9], 1
	je	.label_1326
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rsi, qword ptr [rbp - 0xa00]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	call	memcpy_uppcase
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4d8], rax
	jmp	.label_1337
.label_1326:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa00]
	mov	rdx, qword ptr [rbp - 0x190]
	call	memcpy
.label_1337:
	jmp	.label_1324
.label_1324:
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_1262:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1199
.label_1323:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	nop	
	je	.label_1357
	jmp	.label_1186
.label_1357:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0
	lea	rdi, [rdi]
	jne	.label_1364
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_1364
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x334], 4
	nop	
	jmp	.label_1373
.label_1364:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x334], eax
	nop	
	cmp	dword ptr [rbp - 0x334], 0
	jge	.label_1382
	mov	dword ptr [rbp - 0x334], 0
.label_1382:
	jmp	.label_1373
.label_1373:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1395
.label_1290:
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rsi, [rsi]
	jne	.label_1399
	jmp	.label_1186
.label_1399:
	jmp	.label_1401
.label_1401:
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x3b4], ecx
	nop	
	jmp	.label_1178
.label_1341:
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rsp, rsp
	jne	.label_1410
	nop	
	jmp	.label_1186
.label_1410:
	jmp	.label_1414
.label_1414:
	mov	dword ptr [rbp - 0x230], 2
	mov	eax, dword ptr [rbp - 0x2dc]
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1178
.label_1304:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1422
	lea	rsi, [rsi]
	jmp	.label_1186
.label_1422:
	mov	rbp, rbp
	jmp	.label_1427
.label_1427:
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x3b4], ecx
	nop	
	jmp	.label_1338
.label_1499:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1438
	jmp	.label_1186
.label_1438:
	jmp	.label_1442
.label_1442:
	mov	dword ptr [rbp - 0x230], 2
	nop	
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rdi, [rdi]
	jmp	.label_1338
.label_1484:
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_1452
	jmp	.label_1186
.label_1452:
	jmp	.label_1457
.label_1457:
	mov	dword ptr [rbp - 0x230], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x1c], -1
	lea	rdi, [rdi]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rax + 0x1c]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	mov	rsp, rsp
	jmp	.label_1238
.label_1347:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_1472
	lea	rsi, [rsi]
	jmp	.label_1186
.label_1472:
	jmp	.label_1478
.label_1478:
	mov	dword ptr [rbp - 0x230], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x3b4], ecx
	mov	rsp, rsp
	jmp	.label_1178
.label_1503:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1313
	mov	rsp, rsp
	jmp	.label_1186
.label_1313:
	mov	rsp, rsp
	jmp	.label_1489
.label_1489:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x230], 2
	nop	
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	mov	rax, qword ptr [rbp - 0x2b8]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	mov	rbp, rbp
	jmp	.label_1238
.label_1354:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1505
	jmp	.label_1186
.label_1505:
	mov	eax, dword ptr [rbp - 0x9d0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x22c], -1
	jne	.label_1509
	mov	dword ptr [rbp - 0x22c], 9
	lea	rsi, [rsi]
	jmp	.label_1516
.label_1509:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x358], eax
.label_1527:
	cmp	dword ptr [rbp - 0x358], 9
	lea	rdi, [rdi]
	jge	.label_1521
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x3b4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x9c4]
	idiv	ecx
	mov	dword ptr [rbp - 0x3b4], eax
	mov	eax, dword ptr [rbp - 0x358]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x358], eax
	jmp	.label_1527
.label_1521:
	jmp	.label_1516
.label_1516:
	jmp	.label_1544
.label_1544:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], eax
	mov	eax, dword ptr [rbp - 0x3b4]
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1178
.label_1510:
	nop	
	jmp	.label_1553
.label_1553:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa10], 1
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_1556
	xor	eax, eax
	mov	dword ptr [rbp - 0x97c], eax
	jmp	.label_1563
.label_1556:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x97c], eax
.label_1563:
	nop	
	mov	eax, dword ptr [rbp - 0x97c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x9a0], rcx
	mov	rcx, qword ptr [rbp - 0xa10]
	cmp	rcx, qword ptr [rbp - 0x9a0]
	mov	rbp, rbp
	jae	.label_1566
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x9a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x938], rax
	mov	rbp, rbp
	jmp	.label_1376
.label_1566:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa10]
	nop	
	mov	qword ptr [rbp - 0x938], rax
.label_1376:
	mov	rax, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x260], rax
	mov	rax, qword ptr [rbp - 0x260]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_1578
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1198
.label_1578:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x370], 0
	nop	
	je	.label_1590
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1213
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x9a0]
	lea	rsi, [rsi]
	jae	.label_1213
	movsxd	rax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0xa10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e8], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rdi, [rdi]
	je	.label_1598
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	rbp, rbp
	jne	.label_1183
.label_1598:
	mov	esi, 0x30
	nop	
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x370], rdx
	nop	
	jmp	.label_1194
.label_1183:
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x3e8]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x3e8]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1194:
	mov	rbp, rbp
	jmp	.label_1213
.label_1213:
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_1590:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x260]
	nop	
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1199
.label_1221:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 1
	mov	dword ptr [rbp - 0x314], 0x70
.label_1518:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x339], 1
	mov	rbp, rbp
	je	.label_1511
	mov	byte ptr [rbp - 0x9e9], 0
	mov	byte ptr [rbp - 0x51], 1
.label_1511:
	jmp	.label_1236
.label_1525:
	lea	rdi, [rdi]
	jmp	.label_1237
.label_1237:
	nop	
	mov	dword ptr [rbp - 0x230], 1
	mov	byte ptr [rbp - 0xa21], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	ecx, 5
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], ecx
	lea	rsi, [rsi]
	jmp	.label_1238
.label_1370:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.3_0
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1252
.label_1532:
	nop	
	jmp	.label_1236
.label_1528:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rdi, [rdi]
	jne	.label_1257
	mov	rbp, rbp
	jmp	.label_1186
.label_1257:
	jmp	.label_1275
.label_1275:
	nop	
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3b4], ecx
	lea	rdi, [rdi]
	jmp	.label_1178
.label_1596:
	mov	rbp, rbp
	lea	rax, [rbp - 0x440]
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x2c8], rax
	mov	rbp, rbp
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x488]
	mov	rsi, qword ptr [rbp - 0x2c8]
	lea	rsi, [rsi]
	call	mktime_z
	lea	rdx, [rbp - 0xd0]
	mov	qword ptr [rbp - 0x988], rax
	lea	rsi, [rsi]
	add	rdx, 0x17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa00], rdx
	cmp	qword ptr [rbp - 0x988], 0
	lea	rdi, [rdi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0xa21], r8b
.label_1320:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x988]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x1bc], esi
	mov	rdx, qword ptr [rbp - 0x988]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	qword ptr [rbp - 0x988], rax
	test	byte ptr [rbp - 0xa21], 1
	je	.label_1300
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x954], eax
	jmp	.label_1311
.label_1300:
	nop	
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x954], eax
.label_1311:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x954]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa00]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa00], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x988], 0
	mov	rbp, rbp
	jne	.label_1320
	mov	dword ptr [rbp - 0x230], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45d], 0
	lea	rdi, [rdi]
	jmp	.label_1297
.label_1413:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x4f
	nop	
	jne	.label_1339
	jmp	.label_1186
.label_1339:
	jmp	.label_1236
.label_1388:
	movabs	rax, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1252
.label_1548:
	jmp	.label_1349
.label_1349:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_1350
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_1356
.label_1350:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4e4], eax
.label_1356:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4e4]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x350], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	jae	.label_1474
	mov	rax, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x408], rax
	mov	rbp, rbp
	jmp	.label_1380
.label_1474:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x408], rax
.label_1380:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x408]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x378], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x378]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1390
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1198
.label_1390:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1240
	cmp	dword ptr [rbp - 0x230], 0
	lea	rdi, [rdi]
	jne	.label_1273
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x350]
	jae	.label_1273
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x500], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_1440
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_1424
.label_1440:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x500]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1434
.label_1424:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1434:
	mov	rbp, rbp
	jmp	.label_1273
.label_1273:
	mov	rax, qword ptr [rbp - 0x370]
	nop	
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_1240:
	nop	
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	mov	rbp, rbp
	jmp	.label_1199
.label_1555:
	jmp	.label_1468
.label_1468:
	mov	eax, 7
	nop	
	mov	dword ptr [rbp - 0x230], 1
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	edx, 1
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x31c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x31c]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b4], edx
	lea	rdi, [rdi]
	jmp	.label_1178
.label_1396:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	nop	
	jne	.label_1485
	jmp	.label_1186
.label_1485:
	nop	
	jmp	.label_1306
.label_1306:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x230], 2
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2b8]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9f4], eax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x9f4]
	idiv	esi
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1178
.label_1329:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1507
	jmp	.label_1186
.label_1507:
	lea	rdi, [rdi]
	mov	eax, 0xffffff9c
	lea	rdi, [rdi]
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rdx + 0x14], 0
	mov	rbp, rbp
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x12c], esi
	mov	dword ptr [rbp - 0x1a4], 0
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2b8]
	nop	
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x174], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x174], 0
	jge	.label_1533
	nop	
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x1a4], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x12c]
	mov	rbp, rbp
	sub	edi, 1
	mov	dword ptr [rbp - 0x94c], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x94c]
	idiv	edi
	mov	rsp, rsp
	cmp	edx, 0
	mov	dword ptr [rbp - 0x1ec], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9ad], cl
	jne	.label_1537
	mov	al, 1
	mov	ecx, 0x64
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x12c]
	sub	edx, 1
	mov	byte ptr [rbp - 0x71], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x939], sil
	nop	
	jne	.label_1557
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x12c]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x90]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x939], sil
.label_1557:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x939]
	mov	byte ptr [rbp - 0x9ad], al
.label_1537:
	mov	al, byte ptr [rbp - 0x9ad]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x1ec]
	lea	rsi, [rsi]
	add	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	lea	rsi, [rsi]
	jmp	.label_1231
.label_1533:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x2b8]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x12c]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	idiv	edi
	cmp	edx, 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x258], esi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31d], cl
	mov	rbp, rbp
	jne	.label_1523
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x12c]
	nop	
	mov	byte ptr [rbp - 0x489], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x489]
	mov	byte ptr [rbp - 0x24d], sil
	lea	rsi, [rsi]
	jne	.label_1197
	lea	rdi, [rdi]
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x12c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x228], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x228]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	sete	sil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x24d], sil
.label_1197:
	mov	al, byte ptr [rbp - 0x24d]
	mov	byte ptr [rbp - 0x31d], al
.label_1523:
	mov	al, byte ptr [rbp - 0x31d]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rsi, [rsi]
	call	iso_week_days
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x264], eax
	cmp	ecx, dword ptr [rbp - 0x264]
	jg	.label_1224
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1a4], 1
	mov	eax, dword ptr [rbp - 0x264]
	nop	
	mov	dword ptr [rbp - 0x174], eax
.label_1224:
	lea	rsi, [rsi]
	jmp	.label_1231
.label_1231:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x478], ecx
	mov	dword ptr [rbp - 0x324], edx
	lea	rsi, [rsi]
	je	.label_1233
	jmp	.label_1241
.label_1241:
	mov	eax, dword ptr [rbp - 0x478]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9f8], eax
	lea	rdi, [rdi]
	jne	.label_1242
	mov	rsp, rsp
	jmp	.label_1277
.label_1277:
	nop	
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x29c], eax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x29c]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rbp - 0x1a4]
	nop	
	mov	eax, edx
	cdq	
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x230], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa21], 0
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	jg	.label_1247
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1269
.label_1247:
	mov	eax, 0xfffff894
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x1a4]
	cmp	edx, eax
	lea	rdi, [rdi]
	jge	.label_1270
	mov	rsp, rsp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	nop	
	jmp	.label_1278
.label_1270:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x254], eax
.label_1278:
	nop	
	mov	eax, dword ptr [rbp - 0x254]
	mov	dword ptr [rbp - 0x28], eax
.label_1269:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1279
.label_1233:
	nop	
	jmp	.label_1296
.label_1296:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x230], 4
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x1a4]
	nop	
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	mov	byte ptr [rbp - 0xa21], sil
	mov	rcx, qword ptr [rbp - 0x2b8]
	nop	
	mov	eax, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x1a4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1279
.label_1242:
	jmp	.label_1318
.label_1318:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	mov	ecx, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 0x310], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x310]
	lea	rsi, [rsi]
	idiv	ecx
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1178
.label_1254:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1331
	jmp	.label_1186
.label_1331:
	lea	rsi, [rsi]
	jmp	.label_1336
.label_1336:
	nop	
	mov	eax, 7
	mov	dword ptr [rbp - 0x230], 2
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	nop	
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	mov	rsp, rsp
	add	esi, 7
	mov	dword ptr [rbp - 0x990], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x64], edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x990]
	mov	rbp, rbp
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x64]
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	nop	
	mov	eax, edi
	mov	rsp, rsp
	cdq	
	nop	
	idiv	esi
	mov	dword ptr [rbp - 0x3b4], eax
	nop	
	jmp	.label_1178
.label_1293:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1363
	jmp	.label_1186
.label_1363:
	jmp	.label_1367
.label_1367:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 1
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x3b4], ecx
	jmp	.label_1178
.label_1333:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_1379
	nop	
	jmp	.label_1236
.label_1379:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_1385
	lea	rdi, [rdi]
	jmp	.label_1186
.label_1385:
	lea	rsi, [rsi]
	jmp	.label_1393
.label_1393:
	mov	dword ptr [rbp - 0x230], 4
	nop	
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x14c], edx
	mov	rbp, rbp
	jmp	.label_1279
.label_1571:
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rdi, [rdi]
	jne	.label_1407
	nop	
	jmp	.label_1236
.label_1407:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x2ec], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2ec]
	lea	rdi, [rdi]
	idiv	esi
	mov	dword ptr [rbp - 0x290], edx
	cmp	dword ptr [rbp - 0x290], 0
	lea	rsi, [rsi]
	jge	.label_1281
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1371
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	jmp	.label_1432
.label_1371:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x290]
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
.label_1432:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x290], eax
.label_1281:
	lea	rdi, [rdi]
	jmp	.label_1446
.label_1446:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	mov	byte ptr [rbp - 0xa21], 0
	mov	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1279
.label_1374:
	test	byte ptr [rbp - 0x339], 1
	mov	rsp, rsp
	je	.label_1455
	nop	
	mov	byte ptr [rbp - 0x9e9], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 1
.label_1455:
	jmp	.label_1559
.label_1559:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x198], rax
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_1465
	xor	eax, eax
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_1470
.label_1465:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xd4], eax
.label_1470:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x1b8], rcx
	mov	rcx, qword ptr [rbp - 0x198]
	nop	
	cmp	rcx, qword ptr [rbp - 0x1b8]
	nop	
	jae	.label_1475
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0xa30], rax
	mov	rsp, rsp
	jmp	.label_1483
.label_1475:
	mov	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xa30], rax
.label_1483:
	mov	rax, qword ptr [rbp - 0xa30]
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4a0]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1491
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1198
.label_1491:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1504
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_1506
	mov	rax, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1b8]
	nop	
	jae	.label_1506
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x360], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_1515
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_1524
.label_1515:
	mov	rsp, rsp
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x360]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x360]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_1536
.label_1524:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x360]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x360]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rdx
.label_1536:
	jmp	.label_1506
.label_1506:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	je	.label_1558
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy_lowcase
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1565
.label_1558:
	test	byte ptr [rbp - 0x9e9], 1
	lea	rsi, [rsi]
	je	.label_1568
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_1574
.label_1568:
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy
.label_1574:
	mov	rbp, rbp
	jmp	.label_1565
.label_1565:
	mov	rax, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rax
.label_1504:
	mov	rax, qword ptr [rbp - 0x4a0]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1199
.label_1291:
	mov	qword ptr [rbp - 0x388], 1
.label_1597:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x388]
	mov	rcx, qword ptr [rbp - 0x108]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x3a
	lea	rsi, [rsi]
	jne	.label_1539
	lea	rdi, [rdi]
	jmp	.label_1580
.label_1580:
	mov	rax, qword ptr [rbp - 0x388]
	add	rax, 1
	mov	qword ptr [rbp - 0x388], rax
	jmp	.label_1597
.label_1539:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x388]
	mov	rcx, qword ptr [rbp - 0x108]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x7a
	je	.label_1179
	mov	rbp, rbp
	jmp	.label_1186
.label_1179:
	mov	rax, qword ptr [rbp - 0x388]
	add	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1188
.label_1411:
	mov	qword ptr [rbp - 0x388], 0
.label_1188:
	mov	rax, qword ptr [rbp - 0x2b8]
	nop	
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_1195
	jmp	.label_1199
.label_1195:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x400], edx
	cmp	dword ptr [rbp - 0x400], 0
	mov	byte ptr [rbp - 0x125], al
	mov	rsp, rsp
	jl	.label_1201
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x400], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	jne	.label_1211
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf9], dl
.label_1211:
	mov	al, byte ptr [rbp - 0xf9]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x125], al
.label_1201:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x125]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa21], al
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x400]
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
	mov	dword ptr [rbp - 0x150], edx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x400]
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
	mov	dword ptr [rbp - 0xa14], esi
	movsxd	rcx, dword ptr [rbp - 0x400]
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
	mov	dword ptr [rbp - 0x218], edx
	mov	rcx, qword ptr [rbp - 0x388]
	lea	rsi, [rsi]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x98], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x210], r8
	ja	.label_1283
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1287]]
	lea	rsi, [rsi]
	jmp	rcx
.label_2331:
	jmp	.label_1408
.label_1408:
	mov	dword ptr [rbp - 0x230], 5
	mov	dword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x150], 0x64
	add	eax, dword ptr [rbp - 0xa14]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1294
.label_2332:
	lea	rsi, [rsi]
	jmp	.label_1303
.label_1303:
	mov	rbp, rbp
	jmp	.label_1543
.label_1543:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 6
	nop	
	mov	dword ptr [rbp - 0x78], 4
	imul	eax, dword ptr [rbp - 0x150], 0x64
	add	eax, dword ptr [rbp - 0xa14]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1294
.label_2333:
	jmp	.label_1315
.label_1315:
	jmp	.label_1266
.label_1266:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x230], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x78], 0x14
	imul	eax, dword ptr [rbp - 0x150], 0x2710
	imul	ecx, dword ptr [rbp - 0xa14], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x218]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1294
.label_2334:
	cmp	dword ptr [rbp - 0x218], 0
	je	.label_1330
	mov	rbp, rbp
	jmp	.label_1315
.label_1330:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa14], 0
	je	.label_1378
	jmp	.label_1303
.label_1378:
	jmp	.label_1308
.label_1308:
	nop	
	mov	dword ptr [rbp - 0x230], 3
	mov	dword ptr [rbp - 0x78], 0
	mov	eax, dword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], eax
	mov	rbp, rbp
	jmp	.label_1294
.label_1283:
	mov	rbp, rbp
	jmp	.label_1186
.label_1272:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, -1
	mov	qword ptr [rbp - 0x108], rax
.label_1581:
	mov	rsp, rsp
	jmp	.label_1186
.label_1186:
	mov	dword ptr [rbp - 0x200], 1
.label_1372:
	mov	rbp, rbp
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x200]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	nop	
	je	.label_1358
	mov	rsp, rsp
	jmp	.label_1369
.label_1369:
	mov	eax, dword ptr [rbp - 0x200]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x200], eax
	jmp	.label_1372
.label_1358:
	mov	rbp, rbp
	jmp	.label_1530
.label_1530:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x200]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x270], rax
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_1381
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x9a4], eax
	jmp	.label_1392
.label_1381:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x9a4], eax
.label_1392:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9a4]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x270]
	cmp	rcx, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	jae	.label_1398
	nop	
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1405
.label_1398:
	mov	rax, qword ptr [rbp - 0x270]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rax
.label_1405:
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_1415
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1198
.label_1415:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_1431
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1437
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	jae	.label_1437
	nop	
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x270]
	mov	qword ptr [rbp - 0x4f0], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1447
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_1456
.label_1447:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4f0]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f0]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1463
.label_1456:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x4f0]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f0]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1463:
	lea	rdi, [rdi]
	jmp	.label_1437
.label_1437:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x51], 1
	mov	rbp, rbp
	je	.label_1481
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x370]
	sub	eax, dword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_1498
.label_1481:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9e9], 1
	lea	rdi, [rdi]
	je	.label_1500
	mov	eax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x370]
	sub	eax, dword ptr [rbp - 0x200]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	jmp	.label_1514
.label_1500:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x200]
	mov	rsp, rsp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1514:
	jmp	.label_1498
.label_1498:
	mov	rax, qword ptr [rbp - 0x270]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_1431:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	nop	
	jmp	.label_1199
.label_1199:
	jmp	.label_1547
.label_1547:
	mov	dword ptr [rbp - 0x22c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1549
.label_1441:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1250
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x398], 0
	je	.label_1250
	mov	rax, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_1250:
	mov	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x20], rax
.label_1198:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0xa48
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413740

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
.label_1600:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	jbe	.label_1601
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1600
.label_1601:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4137b0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
.label_1603:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_1602
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	toupper
	mov	dl, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rcx], dl
	lea	rdi, [rdi]
	jmp	.label_1603
.label_1602:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413840

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	sub	edi, dword ptr [rbp - 4]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4138a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1604
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_1604:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1607
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1606
.label_1607:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1606:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	rcx, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_1608
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1608:
	jmp	.label_1605
.label_1605:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413a20
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1609
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1610
.label_1609:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1610
.label_1610:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ad0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1611
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1612
.label_1611:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1612
.label_1612:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413b30
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_1613
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1614
.label_1613:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1614
.label_1614:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413b90

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_1615
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1616
.label_1615:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1616
.label_1616:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413c90
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1617
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_1617:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413cf0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_1618
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_1618:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
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
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413d90
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1621
	mov	rax, qword ptr [rbp - 0x50]
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
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413e90

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_1792:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1675
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1806]]
	jmp	rcx
.label_2360:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_2359:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1812
	jmp	.label_1816
.label_1816:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1817
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1817:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1812
.label_1812:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_1630
.label_2361:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1630
.label_2362:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_1644
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_1644:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1660
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_1684:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1665
	jmp	.label_1725
.label_1725:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1669
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_1669:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1731
.label_1731:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1684
.label_1665:
	mov	rbp, rbp
	jmp	.label_1660
.label_1660:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_1630
.label_2357:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_2356:
	mov	byte ptr [rbp - 0x3e], 1
.label_2358:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1707
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_1707:
	jmp	.label_1708
.label_1708:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1719
	jmp	.label_1712
.label_1712:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1741
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1741:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1719
.label_1719:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_1630
.label_2355:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1630
.label_1675:
	call	abort
.label_1630:
	mov	qword ptr [rbp - 0xd8], 0
.label_1737:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1733
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_1734
.label_1733:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1734:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1753
	mov	rbp, rbp
	jmp	.label_1763
.label_1753:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1646
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1646
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1646
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1714
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1714
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1787
.label_1714:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1787:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1646
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1646
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1810
	jmp	.label_1623
.label_1810:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1646:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_1815
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1628]]
	nop	
	jmp	rcx
.label_2292:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1634
	mov	rsp, rsp
	jmp	.label_1638
.label_1638:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1641
	jmp	.label_1623
.label_1641:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1642
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_1642
	nop	
	jmp	.label_1651
.label_1651:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1655
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1655:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1661
.label_1661:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1663
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1663:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1671
.label_1671:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1676
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1676:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1642:
	lea	rsi, [rsi]
	jmp	.label_1689
.label_1689:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1690
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1690:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1820
.label_1820:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_1698
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1698
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1698
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1698
	nop	
	jmp	.label_1717
.label_1717:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1718
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1718:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1726
.label_1726:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1653
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1653:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1698
.label_1698:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1738
.label_1634:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1742
	mov	rbp, rbp
	jmp	.label_1735
.label_1742:
	jmp	.label_1738
.label_1738:
	jmp	.label_1627
.label_2303:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1751
	mov	rbp, rbp
	jmp	.label_1758
.label_1758:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1761
	jmp	.label_1767
.label_1751:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1768
	jmp	.label_1623
.label_1768:
	jmp	.label_1687
.label_1761:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_1693
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_1693
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1693
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_1784
	nop	
	jmp	.label_1648
.label_1648:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1784
	jmp	.label_1798
.label_1798:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1784
	jmp	.label_1807
.label_1807:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1784
	jmp	.label_1756
.label_1756:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1794
	jmp	.label_1784
.label_1784:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1819
	jmp	.label_1623
.label_1819:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1823
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1823:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1647
.label_1647:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1652
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1652:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1658
.label_1658:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1818
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1818:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1668
.label_1668:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1694
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1694:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1730
.label_1794:
	jmp	.label_1730
.label_1730:
	jmp	.label_1693
.label_1693:
	jmp	.label_1687
.label_1767:
	jmp	.label_1687
.label_1687:
	jmp	.label_1627
.label_2293:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_1692
.label_2294:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_1692
.label_2298:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_1692
.label_2296:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_1677
.label_2299:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_1677
.label_2295:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_1677
.label_2297:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_1692
.label_2304:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1705
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1710
	nop	
	jmp	.label_1623
.label_1710:
	lea	rsi, [rsi]
	jmp	.label_1625
.label_1705:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1721
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1721
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1721
	jmp	.label_1625
.label_1721:
	jmp	.label_1677
.label_1677:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1727
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1727
	jmp	.label_1623
.label_1727:
	mov	rsp, rsp
	jmp	.label_1692
.label_1692:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1732
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1629
.label_1732:
	jmp	.label_1627
.label_2305:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1739
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1743
	jmp	.label_1749
.label_1739:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1743
.label_1749:
	nop	
	jmp	.label_1627
.label_1743:
	jmp	.label_1754
.label_1754:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1799
	lea	rsi, [rsi]
	jmp	.label_1627
.label_1799:
	nop	
	jmp	.label_1764
.label_1764:
	mov	byte ptr [rbp - 0x91], 1
.label_2300:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1766
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1766
	jmp	.label_1623
.label_1766:
	lea	rsi, [rsi]
	jmp	.label_1627
.label_2302:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1772
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1779
	jmp	.label_1623
.label_1779:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1750
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_1750
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1750:
	jmp	.label_1789
.label_1789:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1791
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1791:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1796
.label_1796:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1802
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1802:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1811
.label_1811:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1814
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1814:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1772:
	lea	rsi, [rsi]
	jmp	.label_1627
.label_2301:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_1627
.label_1815:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_1635
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_1645
.label_1635:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_1662
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_1662:
	jmp	.label_1670
.label_1670:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1688
	jmp	.label_1697
.label_1688:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_1695
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_1697
.label_1695:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_1701
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1716:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_1657
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_1657:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1713
	jmp	.label_1715
.label_1713:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1716
.label_1715:
	jmp	.label_1697
.label_1701:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1775
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1775
	mov	qword ptr [rbp - 0xe8], 1
.label_1771:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1728
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_1650
	jmp	.label_1746
.label_1746:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1650
	jmp	.label_1752
.label_1752:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1650
	jmp	.label_1760
.label_1760:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1762
	mov	rsp, rsp
	jmp	.label_1650
.label_1650:
	mov	rsp, rsp
	jmp	.label_1623
.label_1762:
	jmp	.label_1769
.label_1769:
	mov	rsp, rsp
	jmp	.label_1674
.label_1674:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1771
.label_1728:
	mov	rbp, rbp
	jmp	.label_1775
.label_1775:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_1682
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1682:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1781
.label_1781:
	lea	rsi, [rsi]
	jmp	.label_1783
.label_1783:
	jmp	.label_1785
.label_1785:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
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
	jne	.label_1670
.label_1697:
	jmp	.label_1645
.label_1645:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1795
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1805
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1805
.label_1795:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1782:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1686
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1686
	jmp	.label_1821
.label_1821:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1822
	jmp	.label_1623
.label_1822:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1626
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1626
	lea	rdi, [rdi]
	jmp	.label_1636
.label_1636:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1678
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1678:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1722
.label_1722:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1780
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1780:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1790
.label_1790:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1706
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1706:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1626:
	jmp	.label_1672
.label_1672:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1673
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1673:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1759
.label_1759:
	jmp	.label_1683
.label_1683:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1685
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_1685:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1700
.label_1700:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1703
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_1703:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_1709
.label_1686:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1773
	lea	rdi, [rdi]
	jmp	.label_1720
.label_1720:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1724
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1724:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1773:
	nop	
	jmp	.label_1709
.label_1709:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1681
	jmp	.label_1736
.label_1681:
	lea	rsi, [rsi]
	jmp	.label_1740
.label_1740:
	test	byte ptr [rbp - 0x42], 1
	je	.label_1729
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1729
	lea	rsi, [rsi]
	jmp	.label_1747
.label_1747:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1748
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1748:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1757
.label_1757:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1765
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1765:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1729:
	nop	
	jmp	.label_1774
.label_1774:
	mov	rsp, rsp
	jmp	.label_1776
.label_1776:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1777
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1777:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_1782
.label_1736:
	mov	rsp, rsp
	jmp	.label_1625
.label_1805:
	lea	rsi, [rsi]
	jmp	.label_1627
.label_1627:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_1788
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1801
.label_1788:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1804
.label_1801:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1804
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
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
	jne	.label_1808
.label_1804:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1808
	mov	rsp, rsp
	jmp	.label_1625
.label_1808:
	nop	
	jmp	.label_1629
.label_1629:
	jmp	.label_1631
.label_1631:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1633
	jmp	.label_1623
.label_1633:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1637
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_1637
	lea	rdi, [rdi]
	jmp	.label_1643
.label_1643:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1800
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1800:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1656
.label_1656:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1793
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1793:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1664
.label_1664:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1667
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1667:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1637:
	jmp	.label_1679
.label_1679:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1680
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1680:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1691
.label_1691:
	nop	
	jmp	.label_1625
.label_1625:
	jmp	.label_1696
.label_1696:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_1699
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1699
	lea	rdi, [rdi]
	jmp	.label_1702
.label_1702:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1704
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1704:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1744
.label_1744:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1711
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1711:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1699:
	jmp	.label_1723
.label_1723:
	nop	
	jmp	.label_1803
.label_1803:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1770
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1770:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1666
	mov	byte ptr [rbp - 0xb7], 0
.label_1666:
	mov	rbp, rbp
	jmp	.label_1735
.label_1735:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1737
.label_1763:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1745
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1745
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1745
	nop	
	jmp	.label_1623
.label_1745:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1755
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1755
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1755
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1659
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_1649
.label_1659:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1786
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1786
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1792
.label_1786:
	jmp	.label_1797
.label_1797:
	mov	rbp, rbp
	jmp	.label_1755
.label_1755:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1639
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1639
	mov	rbp, rbp
	jmp	.label_1632
.label_1632:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1809
	lea	rdi, [rdi]
	jmp	.label_1778
.label_1778:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1813
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1813:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1624
.label_1624:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1632
.label_1809:
	jmp	.label_1639
.label_1639:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1640
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_1640:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1649
.label_1623:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1654
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1654
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_1654:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_1649:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415930
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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4159a0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_1824
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1825
.label_1824:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1825
.label_1825:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
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
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
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
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1826
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1826:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415b70
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415c80

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
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415cd0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_1838
	call	abort
.label_1838:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1833
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_1834
	call	xalloc_die
.label_1834:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1835
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1839
.label_1835:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1839:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_1837
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1827]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1837:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
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
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_1833:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_1836
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_1832
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1832:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_1836:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416000

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
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416040
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416070
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4160b0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416110

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
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_1840
	call	abort
.label_1840:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4161b0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416220
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416260
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4162a0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416350

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416390

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
	nop	
	.section	.text
	.align	32
	#Procedure 0x4163c0
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416400

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4164e0

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
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416530

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4165d0
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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416620
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
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416680

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4166c0
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416700

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416740

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416780

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1844
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1843
.label_1844:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1843
.label_1842:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1841
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1843
.label_1841:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1843:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4168c0
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4168e0
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416900
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x416920
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416940
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416970
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4169a0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4169d0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	qword ptr [rbp - 8], -1
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416a10
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416a30

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416a70

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1848
	movabs	rsi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_1846
.label_1848:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1846:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
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
	mov	rdi, qword ptr [rbp - 0xc8]
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
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_1847
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1849]]
	jmp	rcx
.label_2342:
	jmp	.label_1845
.label_2343:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1845
.label_2344:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1845
.label_2345:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_1845
.label_2346:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1845
.label_2347:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_1845
.label_2348:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_1845
.label_2349:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_1845
.label_2350:
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_1845
.label_2351:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
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
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_1845
.label_1847:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
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
	mov	dword ptr [rbp - 0x10c], eax
.label_1845:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4172b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_1850:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1851
	mov	rbp, rbp
	jmp	.label_1852
.label_1852:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1850
.label_1851:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417360

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_1854:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1857
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1856
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1855
.label_1856:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1855:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_1857:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1853
	mov	rsp, rsp
	jmp	.label_1858
.label_1853:
	jmp	.label_1859
.label_1859:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1854
.label_1858:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4174c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_1860
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_1860:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417680
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
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x417730

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417790

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1862
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1862
	lea	rdi, [rdi]
	call	xalloc_die
.label_1862:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4177f0
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1863
	mov	rsp, rsp
	call	xalloc_die
.label_1863:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417870

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1864
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1864
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1866
.label_1864:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1865
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1865
	lea	rsi, [rsi]
	call	xalloc_die
.label_1865:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1866:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417920

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_1867
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1869
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1869:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
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
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1868
	call	xalloc_die
.label_1868:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1870:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417a50

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417a80

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417ac0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417b10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1872
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1873
.label_1872:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1873:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417b80

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417bd0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417c30

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417c90

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	push	rbx
	sub	rsp, 0x68
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11d, r10d
	nop	
	lea	rbx, [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dword ptr [rbp - 0x50], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], r9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, r11
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoimax
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1888
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_1877
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_1880
.label_1877:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0x3fffffff
	jle	.label_1884
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	jmp	.label_1878
.label_1884:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], -0x40000000
	nop	
	jge	.label_1881
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	jmp	.label_1887
.label_1881:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x22
.label_1887:
	mov	rbp, rbp
	jmp	.label_1878
.label_1878:
	mov	rbp, rbp
	jmp	.label_1880
.label_1880:
	jmp	.label_1882
.label_1888:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 1
	mov	rbp, rbp
	jne	.label_1883
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1874
.label_1883:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 3
	jne	.label_1879
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
.label_1879:
	nop	
	jmp	.label_1874
.label_1874:
	jmp	.label_1882
.label_1882:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1885
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	je	.label_1889
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1876
.label_1889:
	mov	rsp, rsp
	mov	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_1876
.label_1876:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x48], eax
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_1886
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1875
.label_1886:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1875:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x4c], eax
	mov	qword ptr [rbp - 0x68], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_1885:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x68
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417ec0

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x20]
	mov	r10d, dword ptr [rbp - 0x24]
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rsp], r10d
	call	xnumtoimax
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417f30

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xc8], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	dword ptr [rbp - 0xa0], edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0xdc], 0
	nop	
	cmp	eax, dword ptr [rbp - 0xa0]
	jg	.label_1905
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa0], 0x24
	mov	rsp, rsp
	jg	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1925
.label_1905:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_7
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
.label_1925:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1939
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_1945
.label_1939:
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_1945
.label_1945:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xa0]
	call	strtoimax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	jne	.label_1908
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1916
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1916
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	je	.label_1916
	nop	
	mov	qword ptr [rbp - 0x80], 1
	jmp	.label_1938
.label_1916:
	mov	dword ptr [rbp - 0x40], 4
	jmp	.label_1892
.label_1938:
	jmp	.label_1901
.label_1908:
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1949
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x22
	je	.label_1952
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 4
	mov	rsp, rsp
	jmp	.label_1892
.label_1952:
	nop	
	mov	dword ptr [rbp - 0xdc], 1
.label_1949:
	lea	rdi, [rdi]
	jmp	.label_1901
.label_1901:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_1891
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
	lea	rdi, [rdi]
	jmp	.label_1892
.label_1891:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1897
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 0x400
	mov	dword ptr [rbp - 0x34], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	call	strchr
	nop	
	cmp	rax, 0
	jne	.label_1935
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xdc]
	or	edx, 2
	mov	dword ptr [rbp - 0x40], edx
	jmp	.label_1892
.label_1935:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x88], ecx
	mov	dword ptr [rbp - 0x3c], edx
	mov	rsp, rsp
	je	.label_1890
	jmp	.label_1894
.label_1894:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1890
	jmp	.label_1903
.label_1903:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_1890
	jmp	.label_1910
.label_1910:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_1890
	jmp	.label_1915
.label_1915:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	je	.label_1890
	jmp	.label_1920
.label_1920:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1890
	lea	rsi, [rsi]
	jmp	.label_1928
.label_1928:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	jb	.label_1890
	mov	rsp, rsp
	jmp	.label_1937
.label_1937:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	je	.label_1890
	mov	rsp, rsp
	jmp	.label_1940
.label_1940:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1890
	mov	rsp, rsp
	jmp	.label_1951
.label_1951:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	eax, 0x6d
	nop	
	mov	dword ptr [rbp - 0x48], eax
	nop	
	je	.label_1890
	lea	rdi, [rdi]
	jmp	.label_1899
.label_1899:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x74
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jne	.label_1906
	jmp	.label_1890
.label_1890:
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	strchr
	nop	
	cmp	rax, 0
	je	.label_1904
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x50], edx
	lea	rsi, [rsi]
	je	.label_1917
	mov	rsp, rsp
	jmp	.label_1927
.label_1927:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1917
	lea	rsi, [rsi]
	jmp	.label_1936
.label_1936:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jne	.label_1895
	jmp	.label_1947
.label_1947:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 2]
	mov	rsp, rsp
	cmp	ecx, 0x42
	jne	.label_1948
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	eax, 2
	mov	dword ptr [rbp - 0x34], eax
.label_1948:
	nop	
	jmp	.label_1895
.label_1917:
	mov	dword ptr [rbp - 0x94], 0x3e8
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_1895:
	mov	rsp, rsp
	jmp	.label_1904
.label_1904:
	jmp	.label_1906
.label_1906:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], edx
	nop	
	je	.label_1907
	jmp	.label_1914
.label_1914:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1919
	nop	
	jmp	.label_1922
.label_1922:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1918
	jmp	.label_1926
.label_1926:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1923
	lea	rdi, [rdi]
	jmp	.label_1932
.label_1932:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1931
	jmp	.label_1941
.label_1941:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	je	.label_1944
	lea	rdi, [rdi]
	jmp	.label_1913
.label_1913:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_1909
	nop	
	jmp	.label_1898
.label_1898:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	je	.label_1893
	jmp	.label_1900
.label_1900:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	je	.label_1902
	jmp	.label_1930
.label_1930:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	je	.label_1942
	jmp	.label_1911
.label_1911:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1912
	jmp	.label_1921
.label_1921:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x10], eax
	je	.label_1918
	jmp	.label_1924
.label_1924:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	je	.label_1923
	jmp	.label_1929
.label_1929:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1931
	jmp	.label_1934
.label_1934:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	je	.label_1909
	lea	rsi, [rsi]
	jmp	.label_1943
.label_1943:
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_1946
	jmp	.label_1950
.label_1942:
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, 0x200
	nop	
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1896
.label_1907:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	jmp	.label_1896
.label_1912:
	mov	dword ptr [rbp - 0xbc], 0
	lea	rdi, [rdi]
	jmp	.label_1896
.label_1919:
	nop	
	lea	rdi, [rbp - 0x80]
	mov	edx, 6
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_1896
.label_1918:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1896
.label_1923:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_1896
.label_1931:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1896
.label_1944:
	lea	rdi, [rbp - 0x80]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_1896
.label_1909:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1896
.label_1946:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x80]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1896
.label_1893:
	lea	rdi, [rbp - 0x80]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_1896
.label_1902:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, 7
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1896
.label_1950:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xdc]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0x40], edx
	nop	
	jmp	.label_1892
.label_1896:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	mov	rbp, rbp
	je	.label_1933
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	or	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
.label_1933:
	jmp	.label_1897
.label_1897:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
.label_1892:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418850

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	nop	
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 4]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_1953
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 1
	jmp	.label_1954
.label_1953:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
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
	mov	dword ptr [rbp - 8], 1
	lea	rsi, [rsi]
	jmp	.label_1954
.label_1955:
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 0
.label_1954:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418930

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], 0
.label_1956:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	cmp	eax, 0
	je	.label_1957
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 4]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_1956
.label_1957:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4189a0

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
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rsi
	nop	
	mov	dword ptr [rbp - 0x9c], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0xd8], r8
	mov	dword ptr [rbp - 0xe4], 0
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x9c]
	nop	
	jg	.label_1999
	cmp	dword ptr [rbp - 0x9c], 0x24
	jg	.label_1999
	lea	rsi, [rsi]
	jmp	.label_2020
.label_1999:
	nop	
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
.label_2020:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_1977
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1979
.label_1977:
	lea	rax, [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1979
.label_1979:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x9c]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jne	.label_2001
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_1959
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1959
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1959
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
	mov	rbp, rbp
	jmp	.label_1965
.label_1959:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe0], 4
	jmp	.label_1966
.label_1965:
	mov	rsp, rsp
	jmp	.label_1978
.label_2001:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	je	.label_1980
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_1982
	mov	dword ptr [rbp - 0xe0], 4
	lea	rsi, [rsi]
	jmp	.label_1966
.label_1982:
	mov	dword ptr [rbp - 0xe4], 1
.label_1980:
	lea	rdi, [rdi]
	jmp	.label_1978
.label_1978:
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	jne	.label_1993
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe0], edx
	mov	rsp, rsp
	jmp	.label_1966
.label_1993:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1990
	mov	dword ptr [rbp - 0x80], 0x400
	mov	dword ptr [rbp - 0xe8], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1974
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], edx
	jmp	.label_1966
.label_1974:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x45
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], ecx
	mov	dword ptr [rbp - 0x58], edx
	je	.label_1964
	lea	rdi, [rdi]
	jmp	.label_1986
.label_1986:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1964
	mov	rbp, rbp
	jmp	.label_1992
.label_1992:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1964
	nop	
	jmp	.label_1998
.label_1998:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_1964
	lea	rsi, [rsi]
	jmp	.label_2005
.label_2005:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1964
	jmp	.label_2010
.label_2010:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1964
	jmp	.label_2016
.label_2016:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, -0x59
	lea	rdi, [rdi]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	nop	
	jb	.label_1964
	jmp	.label_1962
.label_1962:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	lea	rdi, [rdi]
	je	.label_1964
	nop	
	jmp	.label_1975
.label_1975:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	je	.label_1964
	jmp	.label_1981
.label_1981:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	je	.label_1964
	mov	rsp, rsp
	jmp	.label_1985
.label_1985:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	jne	.label_1988
	jmp	.label_1964
.label_1964:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1987
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	je	.label_1961
	lea	rsi, [rsi]
	jmp	.label_1971
.label_1971:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_1961
	jmp	.label_2018
.label_2018:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	jne	.label_1958
	jmp	.label_2007
.label_2007:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x42
	jne	.label_1973
	nop	
	mov	eax, dword ptr [rbp - 0xe8]
	mov	rsp, rsp
	add	eax, 2
	mov	dword ptr [rbp - 0xe8], eax
.label_1973:
	jmp	.label_1958
.label_1961:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], 0x3e8
	mov	eax, dword ptr [rbp - 0xe8]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0xe8], eax
.label_1958:
	mov	rsp, rsp
	jmp	.label_1987
.label_1987:
	lea	rdi, [rdi]
	jmp	.label_1988
.label_1988:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], ecx
	nop	
	mov	dword ptr [rbp - 4], edx
	je	.label_1991
	jmp	.label_2002
.label_2002:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_2004
	jmp	.label_2009
.label_2009:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1994
	jmp	.label_2013
.label_2013:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_2014
	jmp	.label_2017
.label_2017:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	je	.label_2019
	jmp	.label_1989
.label_1989:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	je	.label_1968
	jmp	.label_1976
.label_1976:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	mov	rbp, rbp
	je	.label_1997
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1970
	mov	rbp, rbp
	jmp	.label_1983
.label_1983:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1995
	mov	rsp, rsp
	jmp	.label_1960
.label_1960:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1996
	nop	
	jmp	.label_2000
.label_2000:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x70], eax
	je	.label_2003
	jmp	.label_2008
.label_2008:
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 0x67
	nop	
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	je	.label_1994
	lea	rdi, [rdi]
	jmp	.label_2012
.label_2012:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2014
	lea	rsi, [rsi]
	jmp	.label_2006
.label_2006:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_2019
	lea	rsi, [rsi]
	jmp	.label_1984
.label_1984:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1997
	lea	rdi, [rdi]
	jmp	.label_1963
.label_1963:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	je	.label_1967
	lea	rdi, [rdi]
	jmp	.label_2015
.label_1996:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x50]
	mov	esi, 0x200
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_1972
.label_1991:
	lea	rdi, [rbp - 0x50]
	mov	esi, 0x400
	lea	rsi, [rsi]
	call	bkm_scale_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	jmp	.label_1972
.label_2003:
	mov	dword ptr [rbp - 0x90], 0
	jmp	.label_1972
.label_2004:
	lea	rdi, [rbp - 0x50]
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_1972
.label_1994:
	lea	rdi, [rbp - 0x50]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x80]
	call	bkm_scale_by_power_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_1972
.label_2014:
	lea	rdi, [rbp - 0x50]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x80]
	call	bkm_scale_by_power_0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	jmp	.label_1972
.label_2019:
	lea	rdi, [rbp - 0x50]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	jmp	.label_1972
.label_1968:
	nop	
	lea	rdi, [rbp - 0x50]
	mov	edx, 5
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_1972
.label_1997:
	lea	rdi, [rbp - 0x50]
	mov	rbp, rbp
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	nop	
	jmp	.label_1972
.label_1967:
	lea	rdi, [rbp - 0x50]
	mov	rsp, rsp
	mov	esi, 2
	lea	rsi, [rsi]
	call	bkm_scale_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	nop	
	jmp	.label_1972
.label_1970:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x50]
	mov	edx, 8
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	nop	
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	jmp	.label_1972
.label_1995:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x50]
	mov	edx, 7
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x80]
	call	bkm_scale_by_power_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_1972
.label_2015:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xe4]
	or	edx, 2
	mov	dword ptr [rbp - 0xe0], edx
	mov	rsp, rsp
	jmp	.label_1966
.label_1972:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	or	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], eax
	mov	eax, dword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	nop	
	je	.label_1969
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	or	eax, 2
	mov	dword ptr [rbp - 0xe4], eax
.label_1969:
	jmp	.label_1990
.label_1990:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 0xe0], edx
.label_1966:
	nop	
	mov	eax, dword ptr [rbp - 0xe0]
	nop	
	add	rsp, 0xf0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4192b0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419390

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
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0
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
	mov	esi, dword ptr [rbp - 0x14]
	call	bkm_scale_0
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_2025
.label_2024:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419400

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
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419460

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 0x29], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], r9d
	mov	qword ptr [word ptr [rbp - 64]], OFFSET FLAT:.str_8
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_2026
	nop	
	jmp	.label_2031
.label_2031:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_2033
	lea	rdi, [rdi]
	jmp	.label_2030
.label_2030:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	je	.label_2032
	lea	rsi, [rsi]
	jmp	.label_2029
.label_2029:
	call	abort
.label_2032:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_7
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_2027
.label_2033:
	movabs	rax, OFFSET FLAT:.str.2_3
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2027
.label_2026:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2027:
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jge	.label_2034
	lea	rax, [rbp - 2]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	r8b, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], r8b
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2028
.label_2034:
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_2028:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rbp - 0x44]
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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419610

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	mov	qword ptr [rbp - 0xd8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x54]
	jg	.label_2064
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_2064
	jmp	.label_2062
.label_2064:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2062:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2078
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2082
.label_2078:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_2082
.label_2082:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x91], cl
.label_2052:
	nop	
	movzx	eax, byte ptr [rbp - 0x91]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_2040
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_2052
.label_2040:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2065
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_2041
.label_2065:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_2080
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_2039
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2039
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_2039
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_2044
.label_2039:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_2041
.label_2044:
	lea	rdi, [rdi]
	jmp	.label_2056
.label_2080:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_2060
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_2068
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_2041
.label_2068:
	mov	dword ptr [rbp - 0x60], 1
.label_2060:
	jmp	.label_2056
.label_2056:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_2074
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_2041
.label_2074:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2048
	mov	dword ptr [rbp - 0x64], 0x400
	mov	dword ptr [rbp - 0xd0], 1
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_2037
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	jmp	.label_2041
.label_2037:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	nop	
	je	.label_2053
	jmp	.label_2077
.label_2077:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_2053
	nop	
	jmp	.label_2063
.label_2063:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_2053
	nop	
	jmp	.label_2085
.label_2085:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_2053
	lea	rsi, [rsi]
	jmp	.label_2092
.label_2092:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_2053
	jmp	.label_2096
.label_2096:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2053
	jmp	.label_2036
.label_2036:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_2053
	mov	rsp, rsp
	jmp	.label_2050
.label_2050:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2053
	jmp	.label_2099
.label_2099:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_2053
	mov	rsp, rsp
	jmp	.label_2069
.label_2069:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_2053
	jmp	.label_2090
.label_2090:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_2045
	jmp	.label_2053
.label_2053:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2076
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], edx
	mov	rsp, rsp
	je	.label_2035
	lea	rsi, [rsi]
	jmp	.label_2100
.label_2100:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2035
	jmp	.label_2081
.label_2081:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_2047
	lea	rsi, [rsi]
	jmp	.label_2054
.label_2054:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_2075
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_2075:
	jmp	.label_2047
.label_2035:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_2047:
	jmp	.label_2076
.label_2076:
	nop	
	jmp	.label_2045
.label_2045:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rbp, rbp
	je	.label_2079
	jmp	.label_2071
.label_2071:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_2091
	jmp	.label_2094
.label_2094:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_2083
	jmp	.label_2097
.label_2097:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_2084
	nop	
	jmp	.label_2066
.label_2066:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2042
	nop	
	jmp	.label_2051
.label_2051:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2057
	mov	rsp, rsp
	jmp	.label_2059
.label_2059:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_2049
	jmp	.label_2043
.label_2043:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_2086
	mov	rbp, rbp
	jmp	.label_2072
.label_2072:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_2073
	jmp	.label_2098
.label_2098:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2093
	jmp	.label_2067
.label_2067:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_2061
	jmp	.label_2088
.label_2088:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_2083
	jmp	.label_2070
.label_2070:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2084
	jmp	.label_2095
.label_2095:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_2042
	jmp	.label_2089
.label_2089:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_2049
	jmp	.label_2087
.label_2087:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_2055
	jmp	.label_2058
.label_2093:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale_1
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2079:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2061:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_2046
.label_2091:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2083:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2084:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2042:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2057:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_2046
.label_2049:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_2046
.label_2055:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2086:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2073:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2058:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	jmp	.label_2041
.label_2046:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_2038
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_2038:
	jmp	.label_2048
.label_2048:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_2041:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419fa0

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_2101
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_2102
.label_2101:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_2102:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a020

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_2103:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2104
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale_1
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2103
.label_2104:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a0a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2108
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_2106
.label_2108:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2105
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
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
	je	.label_2107
.label_2105:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2107
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2107:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2109
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2109:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_2106:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a1c0

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
	movaps	xmmword ptr [rbp - 0x80], xmm7
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xd0], xmm4
	movaps	xmmword ptr [rbp - 0x230], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1f0], xmm1
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	mov	dword ptr [rbp - 0x20], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x210], r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	dword ptr [rbp - 0x60], esi
	nop	
	je	.label_2128
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x230]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0xd0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x70]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x80]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_2128:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x210]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rdx, qword ptr [rbp - 0x220]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], r8d
	mov	dword ptr [rbp - 0x1a4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1b0], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1b8], r9
	mov	dword ptr [rbp - 0x1bc], 0x30
	mov	dword ptr [rbp - 0x1c0], 0x10
	mov	edi, dword ptr [rbp - 0x1a4]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], edi
	mov	rsp, rsp
	je	.label_2131
	nop	
	jmp	.label_2122
.label_2122:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_2140
	jmp	.label_2115
.label_2131:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_2117
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f8]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rsi, [rsi]
	jmp	.label_2126
.label_2117:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_2126:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2121
.label_2140:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	ja	.label_2125
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_2137
.label_2125:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2137:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x54]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2121
.label_2115:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_2116
	nop	
	jmp	.label_2138
.label_2138:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_2111
	jmp	.label_2113
.label_2113:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_2116
	nop	
	jmp	.label_2120
.label_2120:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_2111
	nop	
	jmp	.label_2130
.label_2130:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_2116
	lea	rsi, [rsi]
	jmp	.label_2136
.label_2136:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_2116
	lea	rsi, [rsi]
	jmp	.label_2110
.label_2110:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2111
	mov	rsp, rsp
	jmp	.label_2119
.label_2119:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2116
	jmp	.label_2123
.label_2123:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_2111
	lea	rsi, [rsi]
	jmp	.label_2139
.label_2139:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_2116
	jmp	.label_2127
.label_2127:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2111
	mov	rsp, rsp
	jmp	.label_2114
.label_2114:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_2116
	lea	rsi, [rsi]
	jmp	.label_2124
.label_2124:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2116
	nop	
	jmp	.label_2133
.label_2133:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_2134
	lea	rdi, [rdi]
	jmp	.label_2111
.label_2111:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_2112
.label_2116:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_2118
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rcx
	mov	rbp, rbp
	jmp	.label_2129
.label_2118:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_2129:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xac], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	mov	esi, dword ptr [rbp - 0x1a4]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xac]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2112
.label_2134:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_2132
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x90], rcx
	mov	rsp, rsp
	jmp	.label_2135
.label_2132:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_2135:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x5c], eax
.label_2112:
	jmp	.label_2121
.label_2121:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a820

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
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a870

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2149
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	edx, dword ptr [rbp - 0x18]
	jle	.label_2148
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2142
.label_2148:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2144
.label_2142:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_2147
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2147:
	mov	rbp, rbp
	jmp	.label_2144
.label_2144:
	jmp	.label_2145
.label_2149:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_2145:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_2141
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_2141
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_2146
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2143
.label_2146:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2143:
	jmp	.label_2141
.label_2141:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a9f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_2150
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_2151
.label_2150:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2152
.label_2151:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_2152:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aa60

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2153:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aac0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2154
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_2154
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2154
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2156
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_2155
.label_2156:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_2155
.label_2154:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_2155:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41abd0

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
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_2157
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_2157:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_2158
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2159
.label_2158:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2159:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41acc0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2160
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2164
.label_2160:
	nop	
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_2164
.label_2164:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0x77
	lea	rdi, [rdi]
	jae	.label_2165
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_2162
.label_2165:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_2162:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_2163
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 0x20], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2161
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_2161:
	jmp	.label_2163
.label_2163:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ae00

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ae50

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_2166
	mov	rbp, rbp
	jmp	.label_2167
.label_2167:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_2168
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2167
.label_2168:
	jmp	.label_2166
.label_2166:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41aed0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_2173
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2172
.label_2173:
	mov	rdi, qword ptr [rbp - 8]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_2169
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
	je	.label_2170
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x11], al
.label_2170:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2174
	lea	rdi, [rdi]
	jmp	.label_2171
.label_2174:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	je	.label_2171
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2172
.label_2171:
	jmp	.label_2169
.label_2169:
	nop	
	mov	qword ptr [rbp - 0x28], 0
.label_2172:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aff0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2177
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2180
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2179
	jmp	.label_2180
.label_2177:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2180
.label_2179:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2175
.label_2180:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2178
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2175
.label_2178:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	change_env
	test	al, 1
	jne	.label_2176
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_2175
.label_2176:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_2175:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b130

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2193
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	ja	.label_2181
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_2181
.label_2193:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2189
.label_2181:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2188
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 8], rax
.label_2184:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2190
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_2191
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_2183
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_2191
.label_2183:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_2187
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_2189
.label_2187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	cmp	rax, 0x77
	jae	.label_2192
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_2185
.label_2192:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2182
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_2189
.label_2182:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_2185:
	jmp	.label_2190
.label_2191:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_2186
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2186:
	lea	rdi, [rdi]
	jmp	.label_2184
.label_2190:
	mov	rbp, rbp
	jmp	.label_2188
.label_2188:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 9], 1
.label_2189:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b3d0

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
	mov	byte ptr [rbp - 5], 1
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
	mov	dword ptr [rbp - 4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], dl
.label_2195:
	nop	
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b480

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x68], rsi
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jne	.label_2197
	mov	rdi, qword ptr [rbp - 0x68]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2200
.label_2197:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	set_tz
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_2198
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], -1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_2199
	mov	rsp, rsp
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2203
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_2203
.label_2199:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2203
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_2203:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2201
	mov	rsp, rsp
	jmp	.label_2202
.label_2201:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2200
.label_2202:
	jmp	.label_2198
.label_2198:
	mov	qword ptr [rbp - 0x18], -1
.label_2200:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b5c0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 4]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b6b0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b6e0

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
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2206
.label_2204:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2206
.label_2206:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2205
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_2207
.label_2205:
	call	tzset
	nop	
	mov	byte ptr [rbp - 0x11], 1
.label_2207:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b770

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_2208
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2209
.label_2208:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_2209:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b7e0

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
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], esi
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 1], cl
	je	.label_2210
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	jg	.label_2210
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_2210:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b870

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_2211
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2215
.label_2211:
	mov	rbp, rbp
	jmp	.label_2212
.label_2212:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_2213
	jmp	.label_2214
.label_2213:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2212
.label_2214:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2215:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b960

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
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_2218
	test	byte ptr [rbp - 0x15], 1
	je	.label_2217
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_2218
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2217
.label_2218:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_2216
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2216:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_2219
.label_2217:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_2219:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ba40

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bac0

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
	jmp	.label_2224
.label_2224:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2223
.label_2222:
	lea	rsi, [rsi]
	jmp	.label_2223
.label_2223:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb20
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jb	.label_2225
	jmp	.label_2226
.label_2226:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_2225
	nop	
	jmp	.label_2229
.label_2229:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_2228
	jmp	.label_2225
.label_2225:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_2227
.label_2228:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_2227:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bbb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], eax
	jb	.label_2230
	nop	
	jmp	.label_2231
.label_2231:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_2232
	lea	rdi, [rdi]
	jmp	.label_2230
.label_2230:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_2233
.label_2232:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_2233:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2234
	mov	rsp, rsp
	jmp	.label_2236
.label_2236:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2235
.label_2234:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_2235:
	nop	
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc80
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x20
	nop	
	mov	byte ptr [rbp - 5], al
	lea	rdi, [rdi]
	je	.label_2237
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2237:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bcd0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	eax, edi
	mov	rbp, rbp
	sub	edi, 0x20
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	jb	.label_2238
	nop	
	jmp	.label_2239
.label_2239:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_2240
	lea	rsi, [rsi]
	jmp	.label_2238
.label_2238:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2241
.label_2240:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_2241:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bd40
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x30
	lea	rdi, [rdi]
	sub	edi, 9
	mov	dword ptr [rbp - 4], edi
	nop	
	ja	.label_2243
	jmp	.label_2244
.label_2244:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_2242
.label_2243:
	mov	byte ptr [rbp - 5], 0
.label_2242:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bd90
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	nop
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	ja	.label_2245
	lea	rsi, [rsi]
	jmp	.label_2246
.label_2246:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2247
.label_2245:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_2247:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bde0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	ja	.label_2248
	jmp	.label_2249
.label_2249:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2250
.label_2248:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_2250:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41be30
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, -0x20
	nop	
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2251
	jmp	.label_2253
.label_2253:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2252
.label_2251:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_2252:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41be80
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rsp, rsp
	mov	eax, edi
	add	eax, -0x21
	mov	rsp, rsp
	sub	eax, 0xf
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2255
	jmp	.label_2256
.label_2256:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_2255
	nop	
	jmp	.label_2259
.label_2259:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2255
	jmp	.label_2257
.label_2257:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_2254
	mov	rsp, rsp
	jmp	.label_2255
.label_2255:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2258
.label_2254:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_2258:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bf30
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rbp, rbp
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2260
	mov	rbp, rbp
	jmp	.label_2261
.label_2261:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_2263
	mov	rsp, rsp
	jmp	.label_2260
.label_2260:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2262
.label_2263:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_2262:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bfa0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x41
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	ja	.label_2264
	jmp	.label_2266
.label_2266:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_2265
.label_2264:
	mov	byte ptr [rbp - 5], 0
.label_2265:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bff0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2267
	lea	rdi, [rdi]
	jmp	.label_2271
.label_2271:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_2267
	jmp	.label_2268
.label_2268:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2270
	jmp	.label_2267
.label_2267:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2269
.label_2270:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_2269:
	nop	
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c080

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	add	edi, -0x41
	lea	rdi, [rdi]
	sub	edi, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	ja	.label_2272
	jmp	.label_2273
.label_2273:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_2274
.label_2272:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_2274:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c0d0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	add	edi, -0x61
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 8], edi
	ja	.label_2275
	mov	rbp, rbp
	jmp	.label_2276
.label_2276:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2277
.label_2275:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2277:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x41c1e0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat