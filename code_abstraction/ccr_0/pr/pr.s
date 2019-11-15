	.section	.text
	.align	16
	#Procedure 0x401c30

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
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
	movabs	rsi, OFFSET FLAT:label_45
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_50
	movabs	rsi, OFFSET FLAT:label_51
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_50
	mov	qword ptr [rbp - 0x58], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x60], rax
	call	atexit
	mov	dword ptr [rbp - 0x14], 0
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 0x64], eax
	jle	.label_65
	mov	eax, 8
	mov	esi, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rdi, eax
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_10
.label_65:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_10
.label_10:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20], rax
.label_13:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], -1
	jne	.label_31
	jmp	.label_70
.label_31:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_37
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_40
	lea	rsi, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x28]
	call	x2realloc
	mov	qword ptr [rbp - 0x28], rax
.label_40:
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
	jmp	.label_13
.label_37:
	mov	qword ptr [rbp - 0x30], 0
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x104
	mov	qword ptr [rbp - 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_61
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_68]]
	jmp	rcx
.label_2238:
	cmp	qword ptr [word ptr [first_page_number]],  0
	jne	.label_72
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_72
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	rdx, rax
	call	first_last_page
	test	al, 1
	jne	.label_26
.label_72:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0x14], edx
	mov	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + rsi*8], rax
.label_26:
	jmp	.label_9
.label_2263:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_36
	movabs	rdi, OFFSET FLAT:label_38
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_36:
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx,  qword ptr [word ptr [optarg]]
	call	first_last_page
	test	al, 1
	jne	.label_53
	movabs	rdi, OFFSET FLAT:label_12
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_53:
	jmp	.label_67
.label_67:
	jmp	.label_9
.label_2262:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_9
.label_2246:
	mov	byte ptr [byte ptr [print_across_flag]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_9
.label_2247:
	mov	byte ptr [byte ptr [balance_columns]],  1
	jmp	.label_9
.label_2248:
	mov	byte ptr [byte ptr [use_cntrl_prefix]],  1
	jmp	.label_9
.label_2249:
	mov	byte ptr [byte ptr [double_space]],  1
	jmp	.label_9
.label_2239:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [date_format]],  rax
	jmp	.label_9
.label_2250:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_24
	mov	esi, 0x65
	movabs	rdx, OFFSET FLAT:input_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_input_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_24:
	mov	byte ptr [byte ptr [untabify_input]],  1
	jmp	.label_9
.label_2240:
	mov	byte ptr [byte ptr [use_form_feed]],  1
	jmp	.label_9
.label_2251:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [custom_header]],  rax
	jmp	.label_9
.label_2252:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_62
	mov	esi, 0x69
	movabs	rdx, OFFSET FLAT:output_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_output_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_62:
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_9
.label_2241:
	mov	byte ptr [byte ptr [join_lines]],  1
	jmp	.label_9
.label_2253:
	movabs	rdi, OFFSET FLAT:label_16
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:lines_per_page
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_9
.label_2254:
	mov	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_9
.label_2255:
	mov	byte ptr [byte ptr [numbered_lines]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_41
	mov	esi, 0x6e
	movabs	rdx, OFFSET FLAT:number_separator
	movabs	rcx, OFFSET FLAT:chars_per_number
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_41:
	jmp	.label_9
.label_2242:
	movabs	rdi, OFFSET FLAT:label_59
	mov	byte ptr [byte ptr [skip_count]],  0
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	mov	esi, 0x80000000
	movabs	rdx, OFFSET FLAT:start_line_num
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_9
.label_2256:
	movabs	rdi, OFFSET FLAT:label_75
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:chars_per_margin
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_9
.label_2257:
	mov	byte ptr [byte ptr [ignore_failed_opens]],  1
	jmp	.label_9
.label_2258:
	mov	byte ptr [rbp - 0x15], 1
	mov	byte ptr [rbp - 0x17], 1
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_30
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_30
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_30:
	jmp	.label_9
.label_2243:
	movabs	rax, OFFSET FLAT:label_45
	mov	byte ptr [rbp - 0x17], 0
	mov	qword ptr [word ptr [col_sep_string]],  rax
	mov	dword ptr [dword ptr [col_sep_length]],  0
	mov	byte ptr [byte ptr [use_col_separator]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_46
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_46:
	jmp	.label_9
.label_2259:
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
	jmp	.label_9
.label_2244:
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  0
	jmp	.label_9
.label_2260:
	mov	byte ptr [byte ptr [use_esc_sequence]],  1
	jmp	.label_9
.label_2261:
	movabs	rdi, OFFSET FLAT:label_76
	mov	byte ptr [rbp - 0x15], 1
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa8], rax
	call	gettext
	mov	esi, 1
	lea	rdx, [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	call	getoptnum
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_22
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [dword ptr [chars_per_line]],  eax
.label_22:
	jmp	.label_9
.label_2245:
	movabs	rdi, OFFSET FLAT:label_35
	mov	byte ptr [rbp - 0x16], 0
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:chars_per_line
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_9
.label_2237:
	xor	edi, edi
	call	usage
.label_2236:
	movabs	rsi, OFFSET FLAT:label_55
	movabs	rdx, OFFSET FLAT:label_56
	movabs	r8, OFFSET FLAT:label_57
	movabs	r9, OFFSET FLAT:label_58
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_61:
	mov	edi, 1
	call	usage
.label_9:
	jmp	.label_13
.label_70:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_15
	mov	rdi, qword ptr [rbp - 0x28]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
.label_15:
	cmp	qword ptr [word ptr [date_format]],  0
	jne	.label_28
	movabs	rdi, OFFSET FLAT:label_29
	call	getenv
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0xb9], dl
	je	.label_34
	mov	edi, 2
	call	hard_locale
	xor	al, 0xff
	mov	byte ptr [rbp - 0xb9], al
.label_34:
	mov	al, byte ptr [rbp - 0xb9]
	movabs	rcx, OFFSET FLAT:label_43
	movabs	rdx, OFFSET FLAT:label_44
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [date_format]],  rcx
.label_28:
	movabs	rdi, OFFSET FLAT:label_54
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	qword ptr [word ptr [first_page_number]],  0
	jne	.label_60
	mov	qword ptr [word ptr [first_page_number]],  1
.label_60:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_64
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_64
	movabs	rdi, OFFSET FLAT:label_74
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_64:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_14
	test	byte ptr [byte ptr [print_across_flag]],  1
	je	.label_14
	movabs	rdi, OFFSET FLAT:label_27
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_14:
	test	byte ptr [rbp - 0x15], 1
	je	.label_11
	test	byte ptr [rbp - 0x16], 1
	je	.label_73
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_66
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_42
.label_66:
	mov	byte ptr [byte ptr [truncate_lines]],  1
	test	byte ptr [rbp - 0x17], 1
	je	.label_63
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_63:
	jmp	.label_52
.label_42:
	mov	byte ptr [byte ptr [join_lines]],  1
.label_52:
	jmp	.label_21
.label_73:
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_20
	test	byte ptr [rbp - 0x17], 1
	je	.label_17
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_47
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_17
.label_47:
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_69
	mov	byte ptr [byte ptr [join_lines]],  1
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jle	.label_78
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_78:
	jmp	.label_18
.label_69:
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_18:
	jmp	.label_17
.label_17:
	jmp	.label_20
.label_20:
	jmp	.label_21
.label_21:
	jmp	.label_11
.label_11:
	jmp	.label_25
.label_25:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_77
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
	jmp	.label_25
.label_77:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_48
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	print_files
	jmp	.label_32
.label_48:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_39
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_files
	jmp	.label_49
.label_39:
	mov	dword ptr [rbp - 0x48], 0
.label_71:
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_33
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
	jmp	.label_71
.label_33:
	jmp	.label_49
.label_49:
	jmp	.label_32
.label_32:
	call	cleanup
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_19
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_19
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_23
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_19:
	xor	eax, eax
	mov	ecx, 1
	mov	dl,  byte ptr [byte ptr [failed_opens]]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402670

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
	movabs	r9, OFFSET FLAT:label_45
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
	je	.label_80
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_80
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_80:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_82
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_86
.label_82:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_79
.label_86:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3a
	jne	.label_83
	lea	rsi, [rbp - 0x20]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x30]
	movabs	r8, OFFSET FLAT:label_45
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_85
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_85:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_84
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_81
.label_84:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_79
.label_81:
	jmp	.label_83
.label_83:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_87
	mov	byte ptr [rbp - 1], 0
	jmp	.label_79
.label_87:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [first_page_number]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [last_page_number]],  rax
	mov	byte ptr [rbp - 1], 1
.label_79:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_88
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
	.align	16
	#Procedure 0x402830

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
	jbe	.label_92
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], dl
.label_92:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_93
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x28]
	movabs	r8, OFFSET FLAT:label_45
	mov	rdi, qword ptr [rbp - 8]
	call	xstrtol
	cmp	eax, 0
	jne	.label_90
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_90
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_94
.label_90:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_89
	mov	eax, 0x4b
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_95
.label_89:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
.label_95:
	mov	eax, dword ptr [rbp - 0x2c]
	movabs	rdi, OFFSET FLAT:label_91
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
.label_94:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
.label_93:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402950

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x7fffffff
	mov	r8d, eax
	movabs	r9, OFFSET FLAT:label_45
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
	.align	16
	#Procedure 0x4029c0

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
	jae	.label_96
	call	integer_overflow
.label_96:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	dword ptr [dword ptr [col_sep_length]],  ecx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_106
	jmp	.label_115
.label_115:
	movabs	rdi, OFFSET FLAT:label_117
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_111
.label_106:
	movabs	rdi, OFFSET FLAT:label_114
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_102
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_97
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_108
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_98
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_109
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_100
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_110
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_101
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_112
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_107
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_113
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_116
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_99
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_103
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_105
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_104
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_55
	mov	dword ptr [rbp - 0x58], eax
	call	emit_ancillary_info
.label_111:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402ce0

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
	jne	.label_118
	jmp	.label_120
.label_118:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_123
	call	init_store_cols
.label_123:
	cmp	qword ptr [word ptr [first_page_number]],  1
	jbe	.label_124
	mov	rdi,  qword ptr [word ptr [first_page_number]]
	call	skip_to_page
	test	al, 1
	jne	.label_125
	jmp	.label_120
.label_125:
	mov	rax,  qword ptr [word ptr [first_page_number]]
	mov	qword ptr [word ptr [page_number]],  rax
	jmp	.label_121
.label_124:
	mov	qword ptr [word ptr [page_number]],  1
.label_121:
	call	init_funcs
	mov	eax,  dword ptr [dword ptr [line_count]]
	mov	dword ptr [dword ptr [line_number]],  eax
.label_122:
	call	print_page
	test	al, 1
	jne	.label_119
	jmp	.label_120
.label_119:
	jmp	.label_122
.label_120:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402da0

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
	.align	16
	#Procedure 0x402e00

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_126
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
	#Procedure 0x402e30

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_127
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
	#Procedure 0x402e60

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
.label_130:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_129
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_129:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_137
	jmp	.label_140
.label_137:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_130
.label_140:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_132
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_132:
	movabs	rdi, OFFSET FLAT:label_136
	call	gettext
	movabs	rsi, OFFSET FLAT:label_56
	movabs	rdx, OFFSET FLAT:label_131
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
	je	.label_133
	movabs	rsi, OFFSET FLAT:label_139
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_133
	movabs	rdi, OFFSET FLAT:label_134
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_133:
	movabs	rdi, OFFSET FLAT:label_128
	call	gettext
	movabs	rsi, OFFSET FLAT:label_131
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_135
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_45
	movabs	rsi, OFFSET FLAT:label_138
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
	#Procedure 0x403000

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_141
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030

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
	jg	.label_161
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
.label_161:
	mov	al,  byte ptr [byte ptr [extremities]]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	jne	.label_183
	mov	eax,  dword ptr [dword ptr [lines_per_page]]
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_183:
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_194
	mov	eax, 2
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x18]
	idiv	ecx
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_194:
	cmp	dword ptr [rbp - 4], 0
	jne	.label_207
	mov	byte ptr [byte ptr [parallel_files]],  0
.label_207:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_211
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [columns]],  eax
.label_211:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_217
	mov	byte ptr [byte ptr [balance_columns]],  1
.label_217:
	cmp	dword ptr [dword ptr [columns]],  1
	jle	.label_275
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_224
	test	byte ptr [byte ptr [join_lines]],  1
	je	.label_319
	mov	rax,  qword ptr [word ptr [line_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	jmp	.label_231
.label_319:
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_231:
	mov	dword ptr [dword ptr [col_sep_length]],  1
	mov	byte ptr [byte ptr [use_col_separator]],  1
	jmp	.label_242
.label_224:
	test	byte ptr [byte ptr [join_lines]],  1
	jne	.label_250
	cmp	dword ptr [dword ptr [col_sep_length]],  1
	jne	.label_250
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 9
	jne	.label_250
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_250:
	jmp	.label_242
.label_242:
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_278
.label_275:
	mov	byte ptr [byte ptr [storing_columns]],  0
.label_278:
	test	byte ptr [byte ptr [join_lines]],  1
	je	.label_268
	mov	byte ptr [byte ptr [truncate_lines]],  0
.label_268:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_300
	mov	dword ptr [rbp - 0xc], 8
	mov	eax,  dword ptr [dword ptr [start_line_num]]
	mov	dword ptr [dword ptr [line_count]],  eax
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	cmp	eax, 9
	jne	.label_349
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
	jmp	.label_277
.label_349:
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	add	eax, 1
	mov	dword ptr [dword ptr [number_width]],  eax
.label_277:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_293
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 8], eax
.label_293:
	jmp	.label_300
.label_300:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_301
	jmp	.label_306
.label_301:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_309
	jmp	.label_311
.label_309:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_312
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_316
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
	jl	.label_173
	jmp	.label_193
.label_316:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_328
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_173
	jmp	.label_193
.label_328:
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
	jl	.label_173
	jmp	.label_193
.label_312:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_339
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_173
	jmp	.label_193
.label_339:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_202
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
	jl	.label_173
	jmp	.label_193
.label_202:
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
	jl	.label_173
.label_193:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_173
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
	jge	.label_176
.label_173:
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
	jne	.label_150
	jmp	.label_165
.label_176:
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
	jne	.label_150
	jmp	.label_165
.label_311:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_200
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_204
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_210
	jmp	.label_216
.label_204:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_218
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_210
	jmp	.label_216
.label_218:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_210
	jmp	.label_216
.label_200:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_233
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_210
	jmp	.label_216
.label_233:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_366
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_210
	jmp	.label_216
.label_366:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_210
.label_216:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, -0x80
	jl	.label_210
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_265
.label_210:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_265:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_150
	jmp	.label_165
.label_306:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_286
	jmp	.label_290
.label_286:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_291
	jmp	.label_294
.label_291:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_295
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_303
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
	jl	.label_237
	jmp	.label_239
.label_303:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_184
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_237
	jmp	.label_239
.label_184:
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
	jl	.label_237
	jmp	.label_239
.label_295:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_310
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_237
	jmp	.label_239
.label_310:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_336
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
	jl	.label_237
	jmp	.label_239
.label_336:
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
	jl	.label_237
.label_239:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_237
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
	jge	.label_361
.label_237:
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
	jne	.label_150
	jmp	.label_165
.label_361:
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
	jne	.label_150
	jmp	.label_165
.label_294:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_188
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_190
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_171
	jmp	.label_191
.label_190:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_208
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_171
	jmp	.label_191
.label_208:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_171
	jmp	.label_191
.label_188:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_222
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_171
	jmp	.label_191
.label_222:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_230
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_171
	jmp	.label_191
.label_230:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_171
.label_191:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0xffff8000
	jl	.label_171
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_257
.label_171:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_257:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_150
	jmp	.label_165
.label_290:
	mov	al, 1
	test	al, 1
	jne	.label_276
	jmp	.label_281
.label_276:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_282
	jmp	.label_284
.label_282:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_285
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_289
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_164
	jmp	.label_304
.label_289:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_305
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_164
	jmp	.label_304
.label_305:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_164
	jmp	.label_304
.label_285:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_320
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_164
	jmp	.label_304
.label_320:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_326
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_164
	jmp	.label_304
.label_326:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_164
.label_304:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	jl	.label_164
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_340
.label_164:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_340:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_150
	jmp	.label_165
.label_284:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_299
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_357
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_149
	jmp	.label_163
.label_357:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_142
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_149
	jmp	.label_163
.label_142:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_149
	jmp	.label_163
.label_299:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_166
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_149
	jmp	.label_163
.label_166:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_179
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_149
	jmp	.label_163
.label_179:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_149
.label_163:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	jl	.label_149
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_212
.label_149:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_212:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_150
	jmp	.label_165
.label_281:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_236
	jmp	.label_360
.label_236:
	mov	al, 1
	test	al, 1
	jne	.label_243
	jmp	.label_247
.label_243:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jge	.label_249
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_206
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
	jl	.label_240
	jmp	.label_264
.label_206:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_266
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_240
	jmp	.label_264
.label_266:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_240
	jmp	.label_264
.label_249:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jne	.label_279
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_240
	jmp	.label_264
.label_279:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_288
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
	jl	.label_240
	jmp	.label_264
.label_288:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_240
.label_264:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rdx, rax
	jl	.label_240
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	jge	.label_327
.label_240:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_327:
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
	jne	.label_150
	jmp	.label_165
.label_247:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_344
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_346
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_160
	jmp	.label_170
.label_346:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_352
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_160
	jmp	.label_170
.label_352:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_160
	jmp	.label_170
.label_344:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_253
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_160
	jmp	.label_170
.label_253:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_155
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_160
	jmp	.label_170
.label_155:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_160
.label_170:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_160
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_195
.label_160:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_195:
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
	jne	.label_150
	jmp	.label_165
.label_360:
	mov	al, 1
	test	al, 1
	jne	.label_226
	jmp	.label_229
.label_226:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jge	.label_232
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_235
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
	jl	.label_244
	jmp	.label_167
.label_235:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_254
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_244
	jmp	.label_167
.label_254:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_244
	jmp	.label_167
.label_232:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jne	.label_271
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_244
	jmp	.label_167
.label_271:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_274
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
	jl	.label_244
	jmp	.label_167
.label_274:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_244
.label_167:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rdx, rax
	jl	.label_244
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	jge	.label_318
.label_244:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_318:
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
	jne	.label_150
	jmp	.label_165
.label_229:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_345
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_356
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_156
	jmp	.label_154
.label_356:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_347
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_156
	jmp	.label_154
.label_347:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_156
	jmp	.label_154
.label_345:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_355
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_156
	jmp	.label_154
.label_355:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_362
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_156
	jmp	.label_154
.label_362:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_156
.label_154:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_156
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_297
.label_156:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_150
	jmp	.label_165
.label_297:
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
	jne	.label_150
	jmp	.label_165
.label_150:
	mov	dword ptr [rbp - 0x10], 0x7fffffff
.label_165:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_219
	jmp	.label_220
.label_219:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_221
	jmp	.label_298
.label_221:
	mov	al, 1
	test	al, 1
	jne	.label_225
	jmp	.label_358
.label_225:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_228
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jl	.label_162
	jmp	.label_245
.label_228:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 0x80000000
	cmp	eax, edx
	jl	.label_162
	jmp	.label_245
.label_358:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_252
	mov	al, 1
	test	al, 1
	jne	.label_162
	jmp	.label_245
.label_252:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_260
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
	jle	.label_162
	jmp	.label_245
.label_260:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jl	.label_162
.label_245:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	sub	eax, edx
	cmp	eax, -0x80
	jl	.label_162
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
	jge	.label_238
.label_162:
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
	jne	.label_143
	jmp	.label_177
.label_238:
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
	jne	.label_143
	jmp	.label_177
.label_298:
	mov	al, 1
	test	al, 1
	jne	.label_321
	jmp	.label_322
.label_321:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_324
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_325
	jmp	.label_307
.label_324:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_325
	jmp	.label_307
.label_322:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_314
	mov	al, 1
	test	al, 1
	jne	.label_325
	jmp	.label_307
.label_314:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_335
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_325
	jmp	.label_307
.label_335:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_325
.label_307:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, -0x80
	jl	.label_325
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_251
.label_325:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_251:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_143
	jmp	.label_177
.label_220:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_365
	jmp	.label_145
.label_365:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_147
	jmp	.label_153
.label_147:
	mov	al, 1
	test	al, 1
	jne	.label_199
	jmp	.label_157
.label_199:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_159
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_181
	jmp	.label_178
.label_159:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x80000000
	cmp	eax, edx
	jl	.label_181
	jmp	.label_178
.label_157:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_192
	mov	al, 1
	test	al, 1
	jne	.label_181
	jmp	.label_178
.label_192:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_205
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
	jle	.label_181
	jmp	.label_178
.label_205:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_181
.label_178:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	sub	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_181
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
	jge	.label_241
.label_181:
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
	jne	.label_143
	jmp	.label_177
.label_241:
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
	jne	.label_143
	jmp	.label_177
.label_153:
	mov	al, 1
	test	al, 1
	jne	.label_270
	jmp	.label_272
.label_270:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_273
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_189
	jmp	.label_151
.label_273:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_189
	jmp	.label_151
.label_272:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_255
	mov	al, 1
	test	al, 1
	jne	.label_189
	jmp	.label_151
.label_255:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_198
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_189
	jmp	.label_151
.label_198:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_189
.label_151:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0xffff8000
	jl	.label_189
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_317
.label_189:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_317:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_143
	jmp	.label_177
.label_145:
	mov	al, 1
	test	al, 1
	jne	.label_329
	jmp	.label_331
.label_329:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_332
	jmp	.label_333
.label_332:
	mov	al, 1
	test	al, 1
	jne	.label_334
	jmp	.label_337
.label_334:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_338
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_197
	jmp	.label_343
.label_338:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_197
	jmp	.label_343
.label_337:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_248
	mov	al, 1
	test	al, 1
	jne	.label_197
	jmp	.label_343
.label_248:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_246
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_197
	jmp	.label_343
.label_246:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_197
.label_343:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0x80000000
	jl	.label_197
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_148
.label_197:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_148:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_143
	jmp	.label_177
.label_333:
	mov	al, 1
	test	al, 1
	jne	.label_180
	jmp	.label_182
.label_180:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_185
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_187
	jmp	.label_174
.label_185:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_187
	jmp	.label_174
.label_182:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_186
	mov	al, 1
	test	al, 1
	jne	.label_187
	jmp	.label_174
.label_186:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_214
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_187
	jmp	.label_174
.label_214:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_187
.label_174:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0x80000000
	jl	.label_187
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_234
.label_187:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_234:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_143
	jmp	.label_177
.label_331:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_256
	jmp	.label_258
.label_256:
	mov	al, 1
	test	al, 1
	jne	.label_259
	jmp	.label_261
.label_259:
	mov	al, 1
	test	al, 1
	jne	.label_262
	jmp	.label_308
.label_262:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_315
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	cmp	rax, rcx
	jl	.label_152
	jmp	.label_213
.label_315:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	movabs	rsi, 0x8000000000000000
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_152
	jmp	.label_213
.label_308:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_283
	mov	al, 1
	test	al, 1
	jne	.label_152
	jmp	.label_213
.label_283:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_364
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_152
	jmp	.label_213
.label_364:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	cmp	rcx, rdx
	jl	.label_152
.label_213:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_152
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_323
.label_152:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_323:
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
	jne	.label_143
	jmp	.label_177
.label_261:
	mov	al, 1
	test	al, 1
	jne	.label_223
	jmp	.label_341
.label_223:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_342
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_144
	jmp	.label_215
.label_342:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_144
	jmp	.label_215
.label_341:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_267
	mov	al, 1
	test	al, 1
	jne	.label_144
	jmp	.label_215
.label_267:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_354
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_144
	jmp	.label_215
.label_354:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_144
.label_215:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_144
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_158
.label_144:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_158:
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
	jne	.label_143
	jmp	.label_177
.label_258:
	mov	al, 1
	test	al, 1
	jne	.label_196
	jmp	.label_280
.label_196:
	mov	al, 1
	test	al, 1
	jne	.label_201
	jmp	.label_203
.label_201:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_296
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	cmp	rax, rcx
	jl	.label_209
	jmp	.label_168
.label_296:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	movabs	rsi, 0x8000000000000000
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_209
	jmp	.label_168
.label_203:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_227
	mov	al, 1
	test	al, 1
	jne	.label_209
	jmp	.label_168
.label_227:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_351
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_209
	jmp	.label_168
.label_351:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	cmp	rcx, rdx
	jl	.label_209
.label_168:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_209
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_350
.label_209:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_350:
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
	jne	.label_143
	jmp	.label_177
.label_280:
	mov	al, 1
	test	al, 1
	jne	.label_287
	jmp	.label_263
.label_287:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_292
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_269
	jmp	.label_302
.label_292:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_269
	jmp	.label_302
.label_263:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_313
	mov	al, 1
	test	al, 1
	jne	.label_269
	jmp	.label_302
.label_313:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_172
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_269
	jmp	.label_302
.label_172:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_269
.label_302:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_269
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_330
.label_269:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_143
	jmp	.label_177
.label_330:
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
	jne	.label_143
	jmp	.label_177
.label_143:
	mov	dword ptr [rbp - 0x14], 0
.label_177:
	mov	eax, dword ptr [rbp - 0x14]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	dword ptr [dword ptr [chars_per_column]],  eax
	cmp	dword ptr [dword ptr [chars_per_column]],  1
	jge	.label_348
	movabs	rdi, OFFSET FLAT:label_353
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_348:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_359
	mov	rdi,  qword ptr [word ptr [number_buff]]
	call	free
	movsxd	rdi,  dword ptr [dword ptr [chars_per_number]]
	cmp	rdi, 0xb
	jbe	.label_363
	movsxd	rax,  dword ptr [dword ptr [chars_per_number]]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_146
.label_363:
	mov	eax, 0xb
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_146
.label_146:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [number_buff]],  rax
.label_359:
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	eax, 8
	cmp	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	jle	.label_169
	mov	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_175
.label_169:
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	mov	dword ptr [rbp - 0x4c], eax
.label_175:
	mov	eax, dword ptr [rbp - 0x4c]
	movsxd	rdi, eax
	call	xmalloc
	mov	qword ptr [word ptr [clump_buff]],  rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405490

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
	je	.label_369
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
.label_367:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	eax, 0
	je	.label_377
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_file
	test	al, 1
	jne	.label_371
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	add	ecx, -1
	mov	dword ptr [dword ptr [columns]],  ecx
.label_371:
	jmp	.label_379
.label_379:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_367
.label_377:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_373
	mov	byte ptr [rbp - 1], 0
	jmp	.label_376
.label_373:
	movabs	rdi, OFFSET FLAT:label_45
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_368
.label_369:
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [rbp - 8], 0
	jle	.label_370
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_file
	test	al, 1
	jne	.label_378
	mov	byte ptr [rbp - 1], 0
	jmp	.label_376
.label_378:
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
	jmp	.label_375
.label_370:
	movabs	rdi, OFFSET FLAT:label_23
	call	gettext
	movabs	rdi, OFFSET FLAT:label_45
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
.label_375:
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
.label_374:
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_372
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
	jmp	.label_374
.label_372:
	jmp	.label_368
.label_368:
	mov	eax,  dword ptr [dword ptr [total_files]]
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
	mov	byte ptr [rbp - 1], 1
.label_376:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405720

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_783
	jmp	.label_787
.label_783:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_788
	jmp	.label_789
.label_788:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_791
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_792
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
	jl	.label_389
	jmp	.label_397
.label_792:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_802
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_389
	jmp	.label_397
.label_802:
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
	jl	.label_389
	jmp	.label_397
.label_791:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_815
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_389
	jmp	.label_397
.label_815:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_399
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
	jl	.label_389
	jmp	.label_397
.label_399:
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
	jl	.label_389
.label_397:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [columns]]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_389
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_442
.label_389:
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
	jne	.label_380
	jmp	.label_396
.label_442:
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
	jne	.label_380
	jmp	.label_396
.label_789:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_474
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_481
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_489
	jmp	.label_502
.label_481:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_505
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_489
	jmp	.label_502
.label_505:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_489
	jmp	.label_502
.label_474:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_522
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_489
	jmp	.label_502
.label_522:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_524
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_489
	jmp	.label_502
.label_524:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_489
.label_502:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, -0x80
	jl	.label_489
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_536
.label_489:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_536:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_396
.label_787:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_386
	jmp	.label_565
.label_386:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_428
	jmp	.label_569
.label_428:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_570
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_575
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
	jl	.label_580
	jmp	.label_588
.label_575:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_589
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_580
	jmp	.label_588
.label_589:
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
	jl	.label_580
	jmp	.label_588
.label_570:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_600
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_580
	jmp	.label_588
.label_600:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_615
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
	jl	.label_580
	jmp	.label_588
.label_615:
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
	jl	.label_580
.label_588:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [columns]]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_580
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_649
.label_580:
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
	jne	.label_380
	jmp	.label_396
.label_649:
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
	jne	.label_380
	jmp	.label_396
.label_569:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_662
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_698
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_668
	jmp	.label_679
.label_698:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_680
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_668
	jmp	.label_679
.label_680:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_668
	jmp	.label_679
.label_662:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_695
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_668
	jmp	.label_679
.label_695:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_701
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_668
	jmp	.label_679
.label_701:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_668
.label_679:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0xffff8000
	jl	.label_668
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_713
.label_668:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_713:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_396
.label_565:
	mov	al, 1
	test	al, 1
	jne	.label_734
	jmp	.label_737
.label_734:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_738
	jmp	.label_743
.label_738:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_746
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_750
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_753
	jmp	.label_758
.label_750:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_761
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_753
	jmp	.label_758
.label_761:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_753
	jmp	.label_758
.label_746:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_771
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_753
	jmp	.label_758
.label_771:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_777
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_753
	jmp	.label_758
.label_777:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_753
.label_758:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_753
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_794
.label_753:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_794:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_396
.label_743:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_807
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_809
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_418
	jmp	.label_410
.label_809:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_381
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_418
	jmp	.label_410
.label_381:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_418
	jmp	.label_410
.label_807:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_412
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_418
	jmp	.label_410
.label_412:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_424
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_418
	jmp	.label_410
.label_424:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_418
.label_410:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_418
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_447
.label_418:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_447:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_396
.label_737:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_465
	jmp	.label_467
.label_465:
	mov	al, 1
	test	al, 1
	jne	.label_470
	jmp	.label_472
.label_470:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_475
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_391
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x18]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_493
	jmp	.label_512
.label_391:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	jne	.label_514
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_493
	jmp	.label_512
.label_514:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_493
	jmp	.label_512
.label_475:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_527
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_493
	jmp	.label_512
.label_527:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_530
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_493
	jmp	.label_512
.label_530:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_493
.label_512:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_493
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_816
.label_493:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_816:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_396
.label_472:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_587
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_590
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_592
	jmp	.label_435
.label_590:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_596
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_592
	jmp	.label_435
.label_596:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_592
	jmp	.label_435
.label_587:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_609
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_592
	jmp	.label_435
.label_609:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_611
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_592
	jmp	.label_435
.label_611:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_592
.label_435:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_592
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_647
.label_592:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_647:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_396
.label_467:
	mov	al, 1
	test	al, 1
	jne	.label_656
	jmp	.label_658
.label_656:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_659
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_661
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x28]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_440
	jmp	.label_675
.label_661:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	jne	.label_678
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_440
	jmp	.label_675
.label_678:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_440
	jmp	.label_675
.label_659:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_409
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_440
	jmp	.label_675
.label_409:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_573
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x30], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x30]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_440
	jmp	.label_675
.label_573:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_440
.label_675:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_440
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_729
.label_440:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_729:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_396
.label_658:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_757
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_760
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_764
	jmp	.label_506
.label_760:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_769
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_764
	jmp	.label_506
.label_769:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_764
	jmp	.label_506
.label_757:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_776
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_764
	jmp	.label_506
.label_776:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_786
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_764
	jmp	.label_506
.label_786:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_764
.label_506:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_764
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_801
.label_764:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_380
	jmp	.label_396
.label_801:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_380
.label_396:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_390
	jmp	.label_398
.label_390:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_400
	jmp	.label_404
.label_400:
	mov	al, 1
	test	al, 1
	jne	.label_406
	jmp	.label_411
.label_406:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_413
	jmp	.label_419
.label_413:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_420
	jmp	.label_426
.label_419:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_420
	jmp	.label_426
.label_411:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_433
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_420
	jmp	.label_426
.label_433:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_443
	jmp	.label_446
.label_443:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 4]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 1
	cmp	eax, edx
	jle	.label_420
	jmp	.label_426
.label_446:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_420
.label_426:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_420
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_458
.label_420:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_458:
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
	jne	.label_380
	jmp	.label_395
.label_404:
	mov	al, 1
	test	al, 1
	jne	.label_497
	jmp	.label_499
.label_497:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_503
	jmp	.label_508
.label_503:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_486
	jmp	.label_513
.label_508:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_486
	jmp	.label_513
.label_499:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_518
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_486
	jmp	.label_513
.label_518:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_523
	jmp	.label_525
.label_523:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_486
	jmp	.label_513
.label_525:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_486
.label_513:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_486
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_531
.label_486:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_531:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_395
.label_398:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_544
	jmp	.label_547
.label_544:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_549
	jmp	.label_550
.label_549:
	mov	al, 1
	test	al, 1
	jne	.label_408
	jmp	.label_491
.label_408:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_806
	jmp	.label_561
.label_806:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_401
	jmp	.label_402
.label_561:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	jl	.label_401
	jmp	.label_402
.label_491:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_488
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_401
	jmp	.label_402
.label_488:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_585
	jmp	.label_586
.label_585:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 4]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 1
	cmp	eax, edx
	jle	.label_401
	jmp	.label_402
.label_586:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 1
	jl	.label_401
.label_402:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_401
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_598
.label_401:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_598:
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
	jne	.label_380
	jmp	.label_395
.label_550:
	mov	al, 1
	test	al, 1
	jne	.label_630
	jmp	.label_634
.label_630:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_635
	jmp	.label_638
.label_635:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_528
	jmp	.label_540
.label_638:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_528
	jmp	.label_540
.label_634:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_646
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_528
	jmp	.label_540
.label_646:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_582
	jmp	.label_650
.label_582:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_528
	jmp	.label_540
.label_650:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_528
.label_540:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_528
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_654
.label_528:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_654:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_395
.label_547:
	mov	al, 1
	test	al, 1
	jne	.label_663
	jmp	.label_666
.label_663:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_667
	jmp	.label_669
.label_667:
	mov	al, 1
	test	al, 1
	jne	.label_670
	jmp	.label_673
.label_670:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_676
	jmp	.label_682
.label_676:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_684
	jmp	.label_687
.label_682:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_684
	jmp	.label_687
.label_673:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_690
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_684
	jmp	.label_687
.label_690:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_697
	jmp	.label_700
.label_697:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_684
	jmp	.label_687
.label_700:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_684
.label_687:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_684
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_708
.label_684:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_708:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_395
.label_669:
	mov	al, 1
	test	al, 1
	jne	.label_617
	jmp	.label_719
.label_617:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_721
	jmp	.label_724
.label_721:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_727
	jmp	.label_730
.label_724:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_727
	jmp	.label_730
.label_719:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_732
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_727
	jmp	.label_730
.label_732:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_741
	jmp	.label_748
.label_741:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_727
	jmp	.label_730
.label_748:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_727
.label_730:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_727
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_808
.label_727:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_808:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_395
.label_666:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_772
	jmp	.label_521
.label_772:
	mov	al, 1
	test	al, 1
	jne	.label_774
	jmp	.label_778
.label_774:
	mov	al, 1
	test	al, 1
	jne	.label_779
	jmp	.label_545
.label_779:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_782
	jmp	.label_785
.label_782:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rcx, rax
	jl	.label_612
	jmp	.label_601
.label_785:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_612
	jmp	.label_601
.label_545:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_793
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_612
	jmp	.label_601
.label_793:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_799
	jmp	.label_705
.label_799:
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_612
	jmp	.label_601
.label_705:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, 1
	cmp	rax, 1
	jl	.label_612
.label_601:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_612
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_811
.label_612:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_811:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_395
.label_778:
	mov	al, 1
	test	al, 1
	jne	.label_552
	jmp	.label_414
.label_552:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_416
	jmp	.label_422
.label_416:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_423
	jmp	.label_427
.label_422:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_423
	jmp	.label_427
.label_414:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_583
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_423
	jmp	.label_427
.label_583:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_439
	jmp	.label_441
.label_439:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_423
	jmp	.label_427
.label_441:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_423
.label_427:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_423
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_451
.label_423:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_451:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_395
.label_521:
	mov	al, 1
	test	al, 1
	jne	.label_478
	jmp	.label_484
.label_478:
	mov	al, 1
	test	al, 1
	jne	.label_487
	jmp	.label_492
.label_487:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_495
	jmp	.label_500
.label_495:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rcx, rax
	jl	.label_504
	jmp	.label_509
.label_500:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_504
	jmp	.label_509
.label_492:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_537
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_504
	jmp	.label_509
.label_537:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_593
	jmp	.label_605
.label_593:
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_504
	jmp	.label_509
.label_605:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, 1
	cmp	rax, 1
	jl	.label_504
.label_509:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_504
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_535
.label_504:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_535:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_395
.label_484:
	mov	al, 1
	test	al, 1
	jne	.label_553
	jmp	.label_554
.label_553:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_557
	jmp	.label_624
.label_557:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_562
	jmp	.label_568
.label_624:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_562
	jmp	.label_568
.label_554:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_454
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_562
	jmp	.label_568
.label_454:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_579
	jmp	.label_581
.label_579:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_562
	jmp	.label_568
.label_581:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_562
.label_568:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_562
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_594
.label_562:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_380
	jmp	.label_395
.label_594:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_380
.label_395:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_607
	jmp	.label_720
.label_607:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_618
	jmp	.label_620
.label_618:
	mov	al, 1
	test	al, 1
	jne	.label_623
	jmp	.label_766
.label_623:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_722
	jmp	.label_798
.label_722:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_640
	jmp	.label_639
.label_798:
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_640
	jmp	.label_639
.label_766:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_644
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_640
	jmp	.label_639
.label_644:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_651
	jmp	.label_652
.label_651:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 1
	cmp	eax, edx
	jle	.label_640
	jmp	.label_639
.label_652:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_640
.label_639:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_640
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_660
.label_640:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_660:
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
	jne	.label_380
	jmp	.label_448
.label_620:
	mov	al, 1
	test	al, 1
	jne	.label_686
	jmp	.label_688
.label_686:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_689
	jmp	.label_691
.label_689:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_692
	jmp	.label_567
.label_691:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_692
	jmp	.label_567
.label_688:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_702
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_692
	jmp	.label_567
.label_702:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_706
	jmp	.label_715
.label_706:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_692
	jmp	.label_567
.label_715:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_692
.label_567:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_692
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_717
.label_692:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_717:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_448
.label_720:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_716
	jmp	.label_742
.label_716:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_745
	jmp	.label_749
.label_745:
	mov	al, 1
	test	al, 1
	jne	.label_751
	jmp	.label_752
.label_751:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_754
	jmp	.label_756
.label_754:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_498
	jmp	.label_393
.label_756:
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	jl	.label_498
	jmp	.label_393
.label_752:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_770
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_498
	jmp	.label_393
.label_770:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_780
	jmp	.label_781
.label_780:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 1
	cmp	eax, edx
	jle	.label_498
	jmp	.label_393
.label_781:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 1
	jl	.label_498
.label_393:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_498
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_796
.label_498:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_796:
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
	jne	.label_380
	jmp	.label_448
.label_749:
	mov	al, 1
	test	al, 1
	jne	.label_797
	jmp	.label_812
.label_797:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_814
	jmp	.label_384
.label_814:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_387
	jmp	.label_405
.label_384:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_387
	jmp	.label_405
.label_812:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_407
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_387
	jmp	.label_405
.label_407:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_425
	jmp	.label_555
.label_425:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_387
	jmp	.label_405
.label_555:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_387
.label_405:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_387
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_444
.label_387:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_444:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_448
.label_742:
	mov	al, 1
	test	al, 1
	jne	.label_461
	jmp	.label_463
.label_461:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_773
	jmp	.label_468
.label_773:
	mov	al, 1
	test	al, 1
	jne	.label_471
	jmp	.label_473
.label_471:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_476
	jmp	.label_483
.label_476:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_485
	jmp	.label_494
.label_483:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_485
	jmp	.label_494
.label_473:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_507
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_485
	jmp	.label_494
.label_507:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_516
	jmp	.label_520
.label_516:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_485
	jmp	.label_494
.label_520:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_485
.label_494:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_485
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_529
.label_485:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_529:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_448
.label_468:
	mov	al, 1
	test	al, 1
	jne	.label_541
	jmp	.label_542
.label_541:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_543
	jmp	.label_546
.label_543:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_548
	jmp	.label_551
.label_546:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_548
	jmp	.label_551
.label_542:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_559
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_548
	jmp	.label_551
.label_559:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_572
	jmp	.label_532
.label_572:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_548
	jmp	.label_551
.label_532:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_548
.label_551:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_548
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_577
.label_548:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_577:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_448
.label_463:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_599
	jmp	.label_603
.label_599:
	mov	al, 1
	test	al, 1
	jne	.label_604
	jmp	.label_606
.label_604:
	mov	al, 1
	test	al, 1
	jne	.label_608
	jmp	.label_613
.label_608:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_725
	jmp	.label_619
.label_725:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	jl	.label_622
	jmp	.label_631
.label_619:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_622
	jmp	.label_631
.label_613:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_641
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_622
	jmp	.label_631
.label_641:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_648
	jmp	.label_501
.label_648:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_622
	jmp	.label_631
.label_501:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_622
.label_631:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_622
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_610
.label_622:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_610:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_448
.label_606:
	mov	al, 1
	test	al, 1
	jne	.label_671
	jmp	.label_674
.label_671:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_677
	jmp	.label_683
.label_677:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_394
	jmp	.label_438
.label_683:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_394
	jmp	.label_438
.label_674:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_693
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_394
	jmp	.label_438
.label_693:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_445
	jmp	.label_457
.label_445:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_394
	jmp	.label_438
.label_457:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_394
.label_438:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_394
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_714
.label_394:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_714:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_448
.label_603:
	mov	al, 1
	test	al, 1
	jne	.label_733
	jmp	.label_735
.label_733:
	mov	al, 1
	test	al, 1
	jne	.label_736
	jmp	.label_739
.label_736:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_740
	jmp	.label_747
.label_740:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	jl	.label_645
	jmp	.label_755
.label_747:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_645
	jmp	.label_755
.label_739:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_762
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_645
	jmp	.label_755
.label_762:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_469
	jmp	.label_479
.label_469:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_645
	jmp	.label_755
.label_479:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_645
.label_755:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_645
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_616
.label_645:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_616:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_448
.label_735:
	mov	al, 1
	test	al, 1
	jne	.label_803
	jmp	.label_804
.label_803:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_805
	jmp	.label_759
.label_805:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_383
	jmp	.label_417
.label_759:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_383
	jmp	.label_417
.label_804:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_813
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_383
	jmp	.label_417
.label_813:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_436
	jmp	.label_403
.label_436:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_383
	jmp	.label_417
.label_403:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_383
.label_417:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_383
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_432
.label_383:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_380
	jmp	.label_448
.label_432:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_380
.label_448:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_694
	jmp	.label_449
.label_694:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_450
	jmp	.label_723
.label_450:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_455
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_460
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
	jl	.label_466
	jmp	.label_434
.label_460:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_810
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_466
	jmp	.label_434
.label_810:
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
	jl	.label_466
	jmp	.label_434
.label_455:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_511
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_466
	jmp	.label_434
.label_511:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_519
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
	jl	.label_466
	jmp	.label_434
.label_519:
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
	jl	.label_466
.label_434:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xc]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_466
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_533
.label_466:
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
	jne	.label_380
	jmp	.label_388
.label_533:
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
	jne	.label_380
	jmp	.label_388
.label_723:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_560
	cmp	dword ptr [rbp - 4], 0
	jge	.label_564
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_517
	jmp	.label_571
.label_564:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_574
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_517
	jmp	.label_571
.label_574:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_517
	jmp	.label_571
.label_560:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_655
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_517
	jmp	.label_571
.label_655:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_672
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_517
	jmp	.label_571
.label_672:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_517
.label_571:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, -0x80
	jl	.label_517
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_597
.label_517:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_597:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_449:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_621
	jmp	.label_626
.label_621:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_628
	jmp	.label_632
.label_628:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_633
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_637
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
	jl	.label_602
	jmp	.label_563
.label_637:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_496
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_602
	jmp	.label_563
.label_496:
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
	jl	.label_602
	jmp	.label_563
.label_633:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_534
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_602
	jmp	.label_563
.label_534:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_614
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
	jl	.label_602
	jmp	.label_563
.label_614:
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
	jl	.label_602
.label_563:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0xc]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_602
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_681
.label_602:
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
	jne	.label_380
	jmp	.label_388
.label_681:
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
	jne	.label_380
	jmp	.label_388
.label_632:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_704
	cmp	dword ptr [rbp - 4], 0
	jge	.label_707
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_591
	jmp	.label_710
.label_707:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_711
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_591
	jmp	.label_710
.label_711:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_591
	jmp	.label_710
.label_704:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_718
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_591
	jmp	.label_710
.label_718:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_726
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_591
	jmp	.label_710
.label_726:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_591
.label_710:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0xffff8000
	jl	.label_591
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_728
.label_591:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_728:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_626:
	mov	al, 1
	test	al, 1
	jne	.label_763
	jmp	.label_765
.label_763:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_744
	jmp	.label_767
.label_744:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_768
	cmp	dword ptr [rbp - 4], 0
	jge	.label_515
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_482
	jmp	.label_429
.label_515:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_526
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_482
	jmp	.label_429
.label_526:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_482
	jmp	.label_429
.label_768:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_576
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_482
	jmp	.label_429
.label_576:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_790
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_482
	jmp	.label_429
.label_790:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_482
.label_429:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	jl	.label_482
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_800
.label_482:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_800:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_767:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_784
	cmp	dword ptr [rbp - 4], 0
	jge	.label_462
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_392
	jmp	.label_382
.label_462:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_385
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_392
	jmp	.label_382
.label_385:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_392
	jmp	.label_382
.label_784:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_490
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_392
	jmp	.label_382
.label_490:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_421
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_392
	jmp	.label_382
.label_421:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_392
.label_382:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	jl	.label_392
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_437
.label_392:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_437:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_765:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_699
	jmp	.label_709
.label_699:
	mov	al, 1
	test	al, 1
	jne	.label_452
	jmp	.label_453
.label_452:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_456
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_459
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x38], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x38]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_464
	jmp	.label_477
.label_459:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, -1
	jne	.label_480
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_464
	jmp	.label_477
.label_480:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_464
	jmp	.label_477
.label_456:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jne	.label_510
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_464
	jmp	.label_477
.label_510:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_431
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x40], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x40]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_464
	jmp	.label_477
.label_431:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_464
.label_477:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_464
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_685
.label_464:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_685:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_453:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_795
	cmp	dword ptr [rbp - 4], 0
	jge	.label_556
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_558
	jmp	.label_566
.label_556:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_430
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_558
	jmp	.label_566
.label_430:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_558
	jmp	.label_566
.label_795:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_578
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_558
	jmp	.label_566
.label_578:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_584
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_558
	jmp	.label_566
.label_584:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_558
.label_566:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_558
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_595
.label_558:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_595:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_709:
	mov	al, 1
	test	al, 1
	jne	.label_665
	jmp	.label_625
.label_665:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_627
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_415
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x48], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x48]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_636
	jmp	.label_642
.label_415:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, -1
	jne	.label_643
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_636
	jmp	.label_642
.label_643:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_636
	jmp	.label_642
.label_627:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jne	.label_657
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_636
	jmp	.label_642
.label_657:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_653
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x50], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x50]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_636
	jmp	.label_642
.label_653:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_636
.label_642:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_636
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_775
.label_636:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_775:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_625:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_664
	cmp	dword ptr [rbp - 4], 0
	jge	.label_696
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_629
	jmp	.label_538
.label_696:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_703
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_629
	jmp	.label_538
.label_703:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_629
	jmp	.label_538
.label_664:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_539
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_629
	jmp	.label_538
.label_539:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_712
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_629
	jmp	.label_538
.label_712:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_629
.label_538:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_629
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_731
.label_629:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_380
	jmp	.label_388
.label_731:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_380
	jmp	.label_388
.label_380:
	call	integer_overflow
.label_388:
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
	.align	16
	#Procedure 0x408f50

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 1
.label_827:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_825
	mov	dword ptr [rbp - 0x20], 1
.label_833:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jge	.label_836
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_820:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_832
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_835
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	skip_read
.label_835:
	jmp	.label_819
.label_819:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_820
.label_832:
	jmp	.label_830
.label_830:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_833
.label_836:
	mov	byte ptr [byte ptr [last_line]],  1
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_817:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_824
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_829
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	skip_read
.label_829:
	jmp	.label_837
.label_837:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_817
.label_824:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_818
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_834:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_823
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_821
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
.label_821:
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_834
.label_823:
	jmp	.label_818
.label_818:
	call	reset_status
	mov	byte ptr [byte ptr [last_line]],  0
	cmp	dword ptr [dword ptr [files_ready_to_read]],  1
	jge	.label_822
	movabs	rdi, OFFSET FLAT:label_828
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
	jmp	.label_825
.label_822:
	jmp	.label_826
.label_826:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_827
.label_825:
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setg	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409150

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	dword ptr [rbp - 8], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_843
	mov	dword ptr [rbp - 0xc], 0
	jmp	.label_849
.label_843:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_840
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_840
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_844
.label_840:
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_844:
	jmp	.label_849
.label_849:
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 8], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_845:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jge	.label_853
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_850
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_854
.label_850:
	movabs	rax, OFFSET FLAT:read_line
	movabs	rcx, OFFSET FLAT:print_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_854:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 0x19], cl
	je	.label_841
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1a], al
	je	.label_847
	cmp	dword ptr [rbp - 4], 1
	sete	al
	mov	byte ptr [rbp - 0x1a], al
.label_847:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_841:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x34], edx
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_839
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xc], 0
	jmp	.label_848
.label_839:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_848:
	jmp	.label_852
.label_852:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_845
.label_853:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_838
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_838
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_842
.label_838:
	movabs	rax, OFFSET FLAT:read_line
	movabs	rcx, OFFSET FLAT:print_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_842:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_846
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1c], al
	je	.label_851
	cmp	dword ptr [rbp - 4], 1
	sete	al
	mov	byte ptr [rbp - 0x1c], al
.label_851:
	mov	al, byte ptr [rbp - 0x1c]
	mov	byte ptr [rbp - 0x1b], al
.label_846:
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
	.align	16
	#Procedure 0x4093b0

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	call	init_page
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_880
	mov	byte ptr [rbp - 1], 0
	jmp	.label_878
.label_880:
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_884
	mov	byte ptr [byte ptr [print_a_header]],  1
.label_884:
	mov	byte ptr [byte ptr [pad_vertically]],  0
	mov	byte ptr [rbp - 0x19], 0
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0xc], eax
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_888
	mov	eax, dword ptr [rbp - 0xc]
	shl	eax, 1
	mov	dword ptr [rbp - 0xc], eax
.label_888:
	jmp	.label_862
.label_862:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], 0
	mov	byte ptr [rbp - 0x1a], cl
	jle	.label_870
	call	cols_ready_to_print
	cmp	eax, 0
	seta	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_870:
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	jne	.label_877
	jmp	.label_882
.label_877:
	mov	dword ptr [dword ptr [output_position]],  0
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	mov	byte ptr [byte ptr [pad_vertically]],  0
	mov	byte ptr [byte ptr [align_empty_cols]],  0
	mov	byte ptr [byte ptr [empty_line]],  1
	mov	dword ptr [rbp - 8], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_871:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_868
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_873
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_879
.label_873:
	mov	byte ptr [byte ptr [FF_only]],  0
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	test	al, 1
	jne	.label_891
	mov	rdi, qword ptr [rbp - 0x18]
	call	read_rest_of_line
.label_891:
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
	jg	.label_857
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_881
	jmp	.label_868
.label_881:
	jmp	.label_857
.label_857:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_872
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_872
	test	byte ptr [byte ptr [empty_line]],  1
	je	.label_875
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_855
.label_875:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_885
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 2
	jne	.label_860
	test	byte ptr [byte ptr [FF_only]],  1
	je	.label_860
.label_885:
	mov	rdi, qword ptr [rbp - 0x18]
	call	align_column
.label_860:
	jmp	.label_855
.label_855:
	jmp	.label_872
.label_872:
	jmp	.label_859
.label_879:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_856
	test	byte ptr [byte ptr [empty_line]],  1
	je	.label_876
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_889
.label_876:
	mov	rdi, qword ptr [rbp - 0x18]
	call	align_column
.label_889:
	jmp	.label_856
.label_856:
	jmp	.label_859
.label_859:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_863
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
.label_863:
	jmp	.label_874
.label_874:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_871
.label_868:
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_883
	mov	edi, 0xa
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0xc]
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x20], eax
.label_883:
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_892
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_892
	jmp	.label_882
.label_892:
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_865
	test	byte ptr [rbp - 0x19], 1
	je	.label_865
	mov	edi, 0xa
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0xc]
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x24], eax
.label_865:
	jmp	.label_862
.label_882:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_864
	mov	dword ptr [rbp - 8], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_861:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_886
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_890
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 1
.label_890:
	jmp	.label_858
.label_858:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_861
.label_886:
	jmp	.label_864
.label_864:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	byte ptr [byte ptr [pad_vertically]],  al
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_866
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_866
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 5
	mov	edi, eax
	call	pad_down
	jmp	.label_867
.label_866:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_887
	test	byte ptr [byte ptr [print_a_FF]],  1
	je	.label_887
	mov	edi, 0xc
	call	putchar_unlocked
	mov	byte ptr [byte ptr [print_a_FF]],  0
	mov	dword ptr [rbp - 0x28], eax
.label_887:
	jmp	.label_867
.label_867:
	mov	rax,  qword ptr [word ptr [last_page_number]]
	mov	rcx,  qword ptr [word ptr [page_number]]
	add	rcx, 1
	mov	qword ptr [word ptr [page_number]],  rcx
	cmp	rax, rcx
	jae	.label_869
	mov	byte ptr [rbp - 1], 0
	jmp	.label_878
.label_869:
	call	reset_status
	mov	byte ptr [rbp - 1], 1
.label_878:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097e0

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_893
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_894
	movabs	rdi, OFFSET FLAT:label_23
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	jmp	.label_897
.label_894:
	movabs	rsi, OFFSET FLAT:label_899
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_897:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_895
	mov	byte ptr [byte ptr [failed_opens]],  1
	test	byte ptr [byte ptr [ignore_failed_opens]],  1
	jne	.label_896
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_900
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_896:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_898
.label_895:
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
.label_898:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409910

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
	mov	esi, OFFSET FLAT:label_893
	call	strcmp
	cmp	eax, 0
	jne	.label_911
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_911:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_902
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0xc]
	call	fstat
	cmp	eax, 0
	jne	.label_902
	lea	rdi, [rbp - 0xa8]
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_910
.label_902:
	cmp	qword ptr [word ptr [init_header.timespec]],  0
	jne	.label_908
	movabs	rdi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_908:
	mov	rax,  qword ptr [word ptr [init_header.timespec]]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax,  qword ptr [word ptr [label_901]]
	mov	qword ptr [rbp - 0xb0], rax
.label_910:
	lea	rdx, [rbp - 0xf8]
	lea	rsi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xbc], ecx
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_905
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
	jmp	.label_906
.label_905:
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
	movabs	rsi, OFFSET FLAT:label_903
	mov	ecx, dword ptr [rbp - 0xbc]
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x144], eax
.label_906:
	mov	rdi,  qword ptr [word ptr [date_text]]
	call	free
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [date_text]],  rdi
	cmp	qword ptr [word ptr [custom_header]],  0
	je	.label_912
	mov	rax,  qword ptr [word ptr [custom_header]]
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_907
.label_912:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_909
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_904
.label_909:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x158], rax
.label_904:
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
	.align	16
	#Procedure 0x409bd0

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
	.align	16
	#Procedure 0x409c00

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
	jne	.label_924
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x39], 1
	je	.label_924
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xa
	jne	.label_913
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
.label_913:
	jmp	.label_924
.label_924:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_927
	mov	byte ptr [rbp - 0x1d], 1
.label_927:
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_930
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 1
.label_930:
	jmp	.label_917
.label_917:
	cmp	dword ptr [rbp - 0x10], 0xa
	je	.label_919
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_914
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_918
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_929
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x1c], ecx
.label_922:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_928
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x39], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_922
.label_928:
	jmp	.label_921
.label_929:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
.label_921:
	jmp	.label_918
.label_918:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xa
	je	.label_925
	mov	edi, dword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	dword ptr [rbp - 0x2c], eax
.label_925:
	mov	rdi, qword ptr [rbp - 8]
	call	hold_file
	jmp	.label_919
.label_914:
	cmp	dword ptr [rbp - 0x10], -1
	jne	.label_915
	mov	rdi, qword ptr [rbp - 8]
	call	close_file
	jmp	.label_919
.label_915:
	jmp	.label_926
.label_926:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_917
.label_919:
	test	byte ptr [byte ptr [skip_count]],  1
	je	.label_920
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_923
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_916
.label_923:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_916
	mov	eax,  dword ptr [dword ptr [line_count]]
	add	eax, 1
	mov	dword ptr [dword ptr [line_count]],  eax
.label_916:
	jmp	.label_920
.label_920:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dd0

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
	jne	.label_935
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	add	ecx, 1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
.label_935:
	jmp	.label_937
.label_937:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_931
.label_932:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_934
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_933
	mov	dword ptr [dword ptr [files_ready_to_read]],  0
	jmp	.label_936
.label_933:
	mov	dword ptr [dword ptr [files_ready_to_read]],  1
.label_936:
	jmp	.label_934
.label_934:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e80

	.globl hold_file
	.type hold_file, @function
hold_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_938
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], ecx
.label_939:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_943
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_944
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 1
	jmp	.label_941
.label_944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 2
.label_941:
	jmp	.label_942
.label_942:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_939
.label_943:
	jmp	.label_940
.label_938:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 2
.label_940:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	add	ecx, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f30

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x10], 3
	jne	.label_950
	jmp	.label_946
.label_950:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_949
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0x18], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_900
	mov	esi, dword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_949:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	fileno
	cmp	eax, 0
	je	.label_952
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_952
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_900
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_952:
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_945
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], ecx
.label_948:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_951
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 3
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_953
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_953:
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_948
.label_951:
	jmp	.label_954
.label_945:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
.label_954:
	mov	eax,  dword ptr [dword ptr [files_ready_to_read]]
	add	eax, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
.label_946:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0b0

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
	jb	.label_955
	movabs	rsi, OFFSET FLAT:buff_allocated
	mov	rdi,  qword ptr [word ptr [buff]]
	call	x2realloc
	mov	qword ptr [word ptr [buff]],  rax
.label_955:
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
	.align	16
	#Procedure 0x40a120

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
	je	.label_962
	call	print_header
.label_962:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_960
	mov	dword ptr [rbp - 0x34], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_957:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_968
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_957
.label_968:
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_965
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_967
	mov	byte ptr [byte ptr [pad_vertically]],  0
.label_967:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_959
.label_965:
	jmp	.label_960
.label_960:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_963
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_963:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_956
	call	print_sep_string
.label_956:
	jmp	.label_958
.label_958:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_966
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	movsx	edi, byte ptr [rax]
	call	print_char
	jmp	.label_958
.label_966:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jne	.label_961
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
	jne	.label_964
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [output_position]]
	sub	ecx, eax
	mov	dword ptr [dword ptr [output_position]],  ecx
.label_964:
	jmp	.label_961
.label_961:
	mov	byte ptr [rbp - 1], 1
.label_959:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a310

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	test	byte ptr [byte ptr [tabify_output]],  1
	je	.label_972
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x20
	jne	.label_971
	mov	eax,  dword ptr [dword ptr [spaces_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_975
.label_971:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_973
	call	print_white_space
.label_973:
	jmp	.label_969
.label_969:
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
	jne	.label_976
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 8
	jne	.label_974
	mov	eax,  dword ptr [dword ptr [output_position]]
	add	eax, -1
	mov	dword ptr [dword ptr [output_position]],  eax
.label_974:
	jmp	.label_970
.label_976:
	mov	eax,  dword ptr [dword ptr [output_position]]
	add	eax, 1
	mov	dword ptr [dword ptr [output_position]],  eax
.label_970:
	jmp	.label_972
.label_972:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_975:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3f0

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
	jne	.label_980
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x39], 1
	je	.label_980
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	jne	.label_1003
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_1003:
	jmp	.label_980
.label_980:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x39], 0
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	sub	edx, -1
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], edx
	je	.label_1005
	jmp	.label_1011
.label_1011:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_1012
	jmp	.label_981
.label_981:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x40], eax
	jne	.label_983
	jmp	.label_990
.label_990:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	je	.label_992
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	dword ptr [rbp - 0x44], eax
.label_992:
	mov	byte ptr [byte ptr [FF_only]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_998
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_998
	mov	byte ptr [byte ptr [pad_vertically]],  1
	call	print_header
	jmp	.label_988
.label_998:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_977
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_977:
	jmp	.label_988
.label_988:
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_1005:
	mov	rdi, qword ptr [rbp - 0x10]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_1012:
	jmp	.label_995
.label_983:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	edi, cl
	call	char_to_clump
	mov	dword ptr [rbp - 0x18], eax
.label_995:
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1002
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_1002
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	byte ptr [rbp - 1], 0
	jmp	.label_979
.label_1002:
	movabs	rax, OFFSET FLAT:store_char
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x20], rax
	je	.label_982
	mov	byte ptr [byte ptr [pad_vertically]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_991
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_991
	call	print_header
.label_991:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_999
	test	byte ptr [byte ptr [align_empty_cols]],  1
	je	.label_999
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	mov	dword ptr [rbp - 0x24], eax
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	mov	dword ptr [rbp - 0x20], 1
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x30], rcx
.label_1008:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_987
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
	jmp	.label_1008
.label_987:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1001
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_984
.label_1001:
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
.label_984:
	mov	byte ptr [byte ptr [align_empty_cols]],  0
.label_999:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_986
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_986:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_997
	call	print_sep_string
.label_997:
	jmp	.label_982
.label_982:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x38], 1
	je	.label_1007
	mov	rdi, qword ptr [rbp - 0x10]
	call	add_line_number
.label_1007:
	mov	byte ptr [byte ptr [empty_line]],  0
	cmp	dword ptr [rbp - 0x14], 0xa
	jne	.label_994
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_994:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
.label_1009:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x48], ecx
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_993
	jmp	.label_989
.label_989:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x50], eax
	je	.label_1000
	jmp	.label_1004
.label_1004:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1006
	jmp	.label_1010
.label_1000:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_1006:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	je	.label_978
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	dword ptr [rbp - 0x58], eax
.label_978:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_985
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_985:
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_993:
	mov	rdi, qword ptr [rbp - 0x10]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_1010:
	mov	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	edi, cl
	call	char_to_clump
	mov	dword ptr [rbp - 0x18], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_996
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_996
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	byte ptr [rbp - 1], 0
	jmp	.label_979
.label_996:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
	jmp	.label_1009
.label_979:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a860

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
	jne	.label_1013
	movabs	rdi, OFFSET FLAT:label_1019
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1013:
	movabs	rdi, OFFSET FLAT:label_1015
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
	jle	.label_1016
	xor	eax, eax
	mov	dword ptr [rbp - 0x144], eax
	jmp	.label_1014
.label_1016:
	mov	eax, dword ptr [rbp - 0x124]
	mov	dword ptr [rbp - 0x144], eax
.label_1014:
	mov	eax, dword ptr [rbp - 0x144]
	movabs	rdi, OFFSET FLAT:label_1017
	movabs	rdx, OFFSET FLAT:label_45
	movabs	rcx, OFFSET FLAT:label_1018
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
	.align	16
	#Procedure 0x40aa30

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
	je	.label_1020
	mov	eax, dword ptr [rbp - 4]
	sub	eax,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_1021
.label_1020:
	jmp	.label_1022
.label_1022:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1023
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1022
.label_1023:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [output_position]],  eax
.label_1021:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aab0

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
	jg	.label_1030
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1035
	call	print_white_space
.label_1035:
	jmp	.label_1027
.label_1030:
	jmp	.label_1029
.label_1029:
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jle	.label_1034
	jmp	.label_1026
.label_1026:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	jle	.label_1028
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
	jmp	.label_1025
.label_1024:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1032
	call	print_white_space
.label_1032:
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
.label_1025:
	jmp	.label_1026
.label_1028:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1033
	call	print_white_space
.label_1033:
	jmp	.label_1031
.label_1031:
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, -1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	jmp	.label_1029
.label_1034:
	jmp	.label_1027
.label_1027:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40abd0

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
.label_1039:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 1
	mov	byte ptr [rbp - 0xd], cl
	jle	.label_1038
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
.label_1038:
	mov	al, byte ptr [rbp - 0xd]
	test	al, 1
	jne	.label_1040
	jmp	.label_1041
.label_1040:
	movsx	edi,  byte ptr [byte ptr [output_tab_char]]
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1039
.label_1041:
	jmp	.label_1036
.label_1036:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1037
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1036
.label_1037:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [dword ptr [output_position]],  eax
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40acb0

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
	#Procedure 0x40acc0

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
	jne	.label_1058
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	mov	dword ptr [rbp - 0x24], eax
.label_1058:
	movsx	eax, byte ptr [rbp - 1]
	movsx	ecx,  byte ptr [byte ptr [input_tab_char]]
	cmp	eax, ecx
	je	.label_1042
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 9
	jne	.label_1047
.label_1042:
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
	je	.label_1053
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x14], eax
.label_1066:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1063
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1066
.label_1063:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_1062
.label_1053:
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x20], 1
.label_1062:
	jmp	.label_1043
.label_1047:
	movzx	eax, byte ptr [rbp - 2]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_1055
	test	byte ptr [byte ptr [use_esc_sequence]],  1
	je	.label_1059
	movabs	rsi, OFFSET FLAT:label_1051
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
.label_1046:
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
	jmp	.label_1046
.label_1048:
	jmp	.label_1060
.label_1059:
	test	byte ptr [byte ptr [use_cntrl_prefix]],  1
	je	.label_1061
	movzx	eax, byte ptr [rbp - 2]
	cmp	eax, 0x80
	jge	.label_1065
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
	jmp	.label_1044
.label_1065:
	movabs	rsi, OFFSET FLAT:label_1051
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
.label_1057:
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1067
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
	jmp	.label_1057
.label_1067:
	jmp	.label_1044
.label_1044:
	jmp	.label_1049
.label_1061:
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 8
	jne	.label_1050
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	jmp	.label_1054
.label_1050:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
.label_1054:
	jmp	.label_1049
.label_1049:
	jmp	.label_1060
.label_1060:
	jmp	.label_1068
.label_1055:
	mov	dword ptr [rbp - 0x1c], 1
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
.label_1068:
	jmp	.label_1043
.label_1043:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1045
	cmp	dword ptr [dword ptr [input_position]],  0
	jne	.label_1045
	mov	dword ptr [rbp - 0x20], 0
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1052
.label_1045:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1056
	xor	eax, eax
	mov	ecx,  dword ptr [dword ptr [input_position]]
	sub	eax, dword ptr [rbp - 0x1c]
	cmp	ecx, eax
	jg	.label_1056
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1064
.label_1056:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1064:
	jmp	.label_1052
.label_1052:
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b010

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
	jge	.label_1069
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_1069:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_1071
	call	print_sep_string
.label_1071:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x38], 1
	je	.label_1070
	mov	rdi, qword ptr [rbp - 8]
	call	add_line_number
.label_1070:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b090

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rsi, OFFSET FLAT:label_1076
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
.label_1077:
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_1082
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
	jmp	.label_1077
.label_1082:
	cmp	dword ptr [dword ptr [columns]],  1
	jle	.label_1079
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	cmp	eax, 9
	jne	.label_1081
	mov	eax,  dword ptr [dword ptr [number_width]]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0xc], eax
.label_1072:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	jle	.label_1078
	mov	edi, 0x20
	mov	rax, qword ptr [rbp - 8]
	call	qword ptr [rax + 0x20]
	jmp	.label_1072
.label_1078:
	jmp	.label_1073
.label_1081:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
.label_1073:
	jmp	.label_1075
.label_1079:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	cmp	edi, 9
	jne	.label_1080
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
.label_1080:
	jmp	.label_1075
.label_1075:
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1074
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_1074
	mov	eax,  dword ptr [dword ptr [number_width]]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1074:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b240

	.globl print_clump
	.type print_clump, @function
print_clump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
.label_1084:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	je	.label_1083
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	movsx	edi, byte ptr [rcx]
	call	rax
	jmp	.label_1084
.label_1083:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b290

	.globl init_page
	.type init_page, @function
init_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1090
	call	store_columns
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_1092:
	cmp	dword ptr [rbp - 4], 0
	je	.label_1086
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
	jmp	.label_1092
.label_1086:
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1093
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], ecx
	jmp	.label_1095
.label_1093:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1094
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_1087
.label_1094:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_1087:
	jmp	.label_1095
.label_1095:
	jmp	.label_1088
.label_1090:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_1097:
	cmp	dword ptr [rbp - 4], 0
	je	.label_1085
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1089
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_1096
.label_1089:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_1096:
	jmp	.label_1091
.label_1091:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1097
.label_1085:
	jmp	.label_1088
.label_1088:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3d0

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x10], 0
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 0
.label_1098:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jae	.label_1099
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_1101
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 1
	je	.label_1101
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1100
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jle	.label_1100
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_1100
.label_1101:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
.label_1100:
	jmp	.label_1102
.label_1102:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x40
	mov	qword ptr [rbp - 8], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_1098
.label_1099:
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b480

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
.label_1107:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, 0xa
	je	.label_1103
	cmp	dword ptr [rbp - 0xc], 0xc
	jne	.label_1104
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, 0xa
	je	.label_1109
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	dword ptr [rbp - 0x1c], eax
.label_1109:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1106
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1106:
	mov	rdi, qword ptr [rbp - 8]
	call	hold_file
	jmp	.label_1103
.label_1104:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1108
	mov	rdi, qword ptr [rbp - 8]
	call	close_file
	jmp	.label_1103
.label_1108:
	jmp	.label_1105
.label_1105:
	jmp	.label_1107
.label_1103:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b530

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [use_form_feed]],  1
	je	.label_1110
	mov	edi, 0xc
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1112
.label_1110:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
.label_1113:
	cmp	dword ptr [rbp - 8], 0
	je	.label_1111
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1113
.label_1111:
	jmp	.label_1112
.label_1112:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5a0

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
	je	.label_1124
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1118
.label_1124:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], eax
.label_1118:
	mov	dword ptr [rbp - 4], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x20], rax
.label_1117:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_1132
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x2c], 0
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1117
.label_1132:
	mov	dword ptr [rbp - 4], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x20], rax
.label_1122:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x14]
	mov	byte ptr [rbp - 0x21], cl
	jg	.label_1114
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setne	al
	mov	byte ptr [rbp - 0x21], al
.label_1114:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1125
	jmp	.label_1128
.label_1125:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx + 0x28], eax
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 8], eax
.label_1123:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x22], cl
	je	.label_1115
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setne	al
	mov	byte ptr [rbp - 0x22], al
.label_1115:
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	jne	.label_1126
	jmp	.label_1129
.label_1126:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1120
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rdi, qword ptr [rbp - 0x20]
	call	read_line
	test	al, 1
	jne	.label_1119
	mov	rdi, qword ptr [rbp - 0x20]
	call	read_rest_of_line
.label_1119:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_1127
	mov	eax, dword ptr [rbp - 0x10]
	cmp	eax,  dword ptr [dword ptr [buff_current]]
	je	.label_1130
.label_1127:
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
.label_1130:
	jmp	.label_1120
.label_1120:
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1123
.label_1129:
	jmp	.label_1131
.label_1131:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1122
.label_1128:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	dword ptr [rsi + rdx*4], eax
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1116
	mov	edi, dword ptr [rbp - 0xc]
	call	balance
.label_1116:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7c0

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
.label_1134:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_1133
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
	jg	.label_1135
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1135:
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
	jmp	.label_1134
.label_1133:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b860
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
	#Procedure 0x40b880
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
	#Procedure 0x40b8a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1139
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1142
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1139
.label_1142:
	movabs	rdi, OFFSET FLAT:label_1141
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1137
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1136
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1138
.label_1137:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_900
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1138:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1139:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1140
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1140:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b990

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
	.align	16
	#Procedure 0x40b9d0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1143
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
.label_1143:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba20

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
	je	.label_1148
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1147
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_1147
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1145
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
	jmp	.label_1144
.label_1145:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_1149
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1146
.label_1149:
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
	jmp	.label_1144
.label_1146:
	jmp	.label_1147
.label_1147:
	jmp	.label_1148
.label_1148:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1144:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb30

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
	.align	16
	#Procedure 0x40bb60
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
	.align	16
	#Procedure 0x40bb90

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
	je	.label_1150
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1152
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1153
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1151
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1154
.label_1153:
	mov	byte ptr [rbp - 5], 0
.label_1154:
	jmp	.label_1150
.label_1150:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc10

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
	jge	.label_1155
	jmp	.label_1158
.label_1158:
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
	jne	.label_1158
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1157
.label_1155:
	jmp	.label_1156
.label_1156:
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
	jne	.label_1156
	jmp	.label_1157
.label_1157:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd10

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
	.align	16
	#Procedure 0x40bd50

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
	jbe	.label_1161
	jmp	.label_1163
.label_1163:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1164
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1168
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1178]]
	jmp	rcx
.label_2423:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1183
.label_1168:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_1184:
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
	jne	.label_1166
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1171
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1177
.label_1171:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1160
.label_1166:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1185
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1188
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1177
.label_1188:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1160
.label_1185:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1169
	mov	qword ptr [rbp - 0x50], 1
.label_1169:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_1174
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_1179
	jmp	.label_1165
.label_1179:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1173
.label_1174:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1187
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_1159
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1162
	jmp	.label_1165
.label_1162:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1159:
	jmp	.label_1175
.label_1187:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1160
.label_1175:
	jmp	.label_1173
.label_1173:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1184
.label_1177:
	jmp	.label_1183
.label_1183:
	jmp	.label_1163
.label_1164:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1160
.label_1161:
	jmp	.label_1180
.label_1180:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1189
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
	je	.label_1172
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1181
	jmp	.label_1165
.label_1181:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1182
.label_1172:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1186
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_1170
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1167
	jmp	.label_1165
.label_1167:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1170:
	jmp	.label_1176
.label_1186:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1160
.label_1176:
	jmp	.label_1182
.label_1182:
	jmp	.label_1180
.label_1189:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1160
.label_1165:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1160:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c080

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
	.align	16
	#Procedure 0x40c110

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x938
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
	jne	.label_1369
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 0x70], rax
.label_1369:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_1470
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1357
.label_1470:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_1376
	mov	dword ptr [rbp - 0x68], 0xc
.label_1376:
	jmp	.label_1357
.label_1357:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_1195:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1362
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
	je	.label_1370
	jmp	.label_1286
.label_1286:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1396
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_1404
.label_1396:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_1404:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_1411
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_1421
.label_1411:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_1421:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1432
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1432:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1445
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1308
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_1308
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1461
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1466
.label_1461:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1478
.label_1466:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1478:
	jmp	.label_1308
.label_1308:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1445:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1191
.label_1370:
	jmp	.label_1229
.label_1229:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_1513
	jmp	.label_1527
.label_1527:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_1192
	jmp	.label_1190
.label_1190:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_1192
	jmp	.label_1199
.label_1199:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_1192
	jmp	.label_1208
.label_1208:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_1210
	jmp	.label_1218
.label_1218:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_1221
	jmp	.label_1192
.label_1192:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_1229
.label_1210:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_1229
.label_1513:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_1229
.label_1221:
	jmp	.label_1361
.label_1361:
	jmp	.label_1245
.label_1245:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1246
	mov	dword ptr [rbp - 0x4c], 0
.label_1284:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_1256
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_1261
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_1261
.label_1256:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_1273
.label_1261:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_1273:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1284
	jmp	.label_1246
.label_1246:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_1304
	jmp	.label_1317
.label_1317:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_1523
	jmp	.label_1304
.label_1304:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_1327
.label_1523:
	mov	dword ptr [rbp - 0x90], 0
.label_1327:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	mov	ecx, dword ptr [rbp - 0xf8]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 0x7a
	mov	qword ptr [rbp - 0x798], rax
	mov	qword ptr [rbp - 0x7a0], rdx
	ja	.label_1344
	mov	rax, qword ptr [rbp - 0x798]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1366]]
	jmp	rcx
.label_2378:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1372
	jmp	.label_1197
.label_1372:
	jmp	.label_1382
.label_1382:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1383
	xor	eax, eax
	mov	dword ptr [rbp - 0x7a4], eax
	jmp	.label_1389
.label_1383:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7a4], eax
.label_1389:
	mov	eax, dword ptr [rbp - 0x7a4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_1399
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_1409
.label_1399:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x7b0], rax
.label_1409:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1419
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1419:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1436
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1438
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_1438
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1449
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1458
.label_1449:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1435
.label_1458:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1435:
	jmp	.label_1438
.label_1438:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1436:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1334
.label_2399:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1501
	jmp	.label_1197
.label_1501:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1507
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1507:
	jmp	.label_1200
.label_2380:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1514
	jmp	.label_1197
.label_1514:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1520
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1520:
	jmp	.label_1200
.label_2400:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1530
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1530:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1196
	jmp	.label_1197
.label_1196:
	jmp	.label_1200
.label_2381:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1202
	jmp	.label_1197
.label_1202:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1299
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1299:
	jmp	.label_1200
.label_2401:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1374
	jmp	.label_1197
.label_1374:
	jmp	.label_1200
.label_1277:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_1495:
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
	jge	.label_1251
	xor	eax, eax
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_1319
.label_1251:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7b4], eax
.label_1319:
	mov	eax, dword ptr [rbp - 0x7b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_1275
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_1288
.label_1275:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x7c0], rax
.label_1288:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1302
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1302:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1325
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1279
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_1279
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1472
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1350
.label_1472:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1364
.label_1350:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1364:
	jmp	.label_1279
.label_1279:
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
	mov	byte ptr [rbp - 0x7c1], sil
	mov	rsi, rax
	mov	r14b, byte ptr [rbp - 0x7c1]
	movzx	r15d, r14b
	mov	dword ptr [rbp - 0x7c8], r8d
	mov	r8d, r15d
	mov	r15d, dword ptr [rbp - 0x7c8]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x7d0], rax
.label_1325:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1334
.label_1200:
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
	je	.label_1237
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_1237:
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
	je	.label_1492
	jmp	.label_1499
.label_1499:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1503
	xor	eax, eax
	mov	dword ptr [rbp - 0x7d4], eax
	jmp	.label_1510
.label_1503:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7d4], eax
.label_1510:
	mov	eax, dword ptr [rbp - 0x7d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_1420
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x7e0], rax
	jmp	.label_1525
.label_1420:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x7e0], rax
.label_1525:
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1250
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1250:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1209
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1219
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_1219
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1447
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1352
.label_1447:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1524
.label_1352:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1524:
	jmp	.label_1219
.label_1219:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1267
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_1241
.label_1267:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1485
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_1415
.label_1485:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_1415:
	jmp	.label_1241
.label_1241:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1209:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1492
.label_1492:
	jmp	.label_1334
.label_2382:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1337
	jmp	.label_1200
.label_1337:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x7f4], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x7f4]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x7f5], cl
	jge	.label_1342
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x7f5], cl
.label_1342:
	mov	al, byte ptr [rbp - 0x7f5]
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
	jmp	.label_1228
.label_2416:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1406
	jmp	.label_1197
.label_1406:
	jmp	.label_1200
.label_2383:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1413
	jmp	.label_1197
.label_1413:
	movabs	rax, OFFSET FLAT:label_1417
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1277
.label_2402:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1423
	jmp	.label_1197
.label_1423:
	jmp	.label_1429
.label_1429:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1231
.label_2403:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1440
	jmp	.label_1197
.label_1440:
	jmp	.label_1266
.label_1266:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1203
.label_1238:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_1454
.label_1228:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1459
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_1459:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x7f6], cl
	jne	.label_1463
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x7f7], al
	jb	.label_1469
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x7f7], cl
.label_1469:
	mov	al, byte ptr [rbp - 0x7f7]
	mov	byte ptr [rbp - 0x7f6], al
.label_1463:
	mov	al, byte ptr [rbp - 0x7f6]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_1491
.label_1203:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1497
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_1497:
	jmp	.label_1231
.label_1231:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_1227:
	mov	byte ptr [rbp - 0x9e], 0
.label_1491:
	mov	dword ptr [rbp - 0xa4], 0
.label_1454:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1519
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_1519
	jmp	.label_1200
.label_1519:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1528
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_1528:
	jmp	.label_1198
.label_1198:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_1201
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_1201:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x7fc], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x7fc]
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
	mov	byte ptr [rbp - 0x7fd], al
	jne	.label_1215
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x7fd], al
.label_1215:
	mov	al, byte ptr [rbp - 0x7fd]
	test	al, 1
	jne	.label_1198
	jmp	.label_1262
.label_1262:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_1264
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_1264:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1356
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_1386
.label_1356:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x804], eax
.label_1386:
	mov	eax, dword ptr [rbp - 0x804]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_1291
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1306
	jmp	.label_1311
.label_1311:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1314
	xor	eax, eax
	mov	dword ptr [rbp - 0x808], eax
	jmp	.label_1321
.label_1314:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x808], eax
.label_1321:
	mov	eax, dword ptr [rbp - 0x808]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_1324
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x810], rax
	jmp	.label_1341
.label_1324:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x810], rax
.label_1341:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1212
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1212:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1400
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1335
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_1335
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1489
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1486
.label_1489:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1414
.label_1486:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1414:
	jmp	.label_1335
.label_1335:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1400:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1306
.label_1306:
	jmp	.label_1281
.label_1291:
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
	jle	.label_1448
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_1402
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1477
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1477:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1487
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1487:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_1398
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_1512
.label_1398:
	xor	eax, eax
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_1512
.label_1512:
	mov	eax, dword ptr [rbp - 0x814]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1393
	jmp	.label_1504
.label_1504:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1257
	xor	eax, eax
	mov	dword ptr [rbp - 0x818], eax
	jmp	.label_1476
.label_1257:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x818], eax
.label_1476:
	mov	eax, dword ptr [rbp - 0x818]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_1305
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x820], rax
	jmp	.label_1211
.label_1305:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x820], rax
.label_1211:
	mov	rax, qword ptr [rbp - 0x820]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1222
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1222:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1390
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1244
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_1244
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1255
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1296
.label_1255:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1278
.label_1296:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1278:
	jmp	.label_1244
.label_1244:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1390:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1393
.label_1393:
	jmp	.label_1320
.label_1402:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1323
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1323:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1403
	jmp	.label_1475
.label_1475:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1391
	xor	eax, eax
	mov	dword ptr [rbp - 0x824], eax
	jmp	.label_1348
.label_1391:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x824], eax
.label_1348:
	mov	eax, dword ptr [rbp - 0x824]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_1377
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_1373
.label_1377:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x830], rax
.label_1373:
	mov	rax, qword ptr [rbp - 0x830]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1385
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1385:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1405
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1206
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_1206
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1418
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1217
.label_1418:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1268
.label_1217:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1268:
	jmp	.label_1206
.label_1206:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1405:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1403
.label_1403:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1468
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1468:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_1320:
	jmp	.label_1270
.label_1448:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1332
	jmp	.label_1496
.label_1496:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1287
	xor	eax, eax
	mov	dword ptr [rbp - 0x834], eax
	jmp	.label_1401
.label_1287:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x834], eax
.label_1401:
	mov	eax, dword ptr [rbp - 0x834]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_1316
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x840], rax
	jmp	.label_1522
.label_1316:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x840], rax
.label_1522:
	mov	rax, qword ptr [rbp - 0x840]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1531
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1531:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1330
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1295
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_1295
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1484
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1232
.label_1484:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1326
.label_1232:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1326:
	jmp	.label_1295
.label_1295:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1330:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1332
.label_1332:
	jmp	.label_1270
.label_1270:
	jmp	.label_1281
.label_1281:
	jmp	.label_1282
.label_1282:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1434
	xor	eax, eax
	mov	dword ptr [rbp - 0x844], eax
	jmp	.label_1297
.label_1434:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x844], eax
.label_1297:
	mov	eax, dword ptr [rbp - 0x844]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_1307
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_1322
.label_1307:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x850], rax
.label_1322:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1359
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1359:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1428
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1358
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_1358
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1274
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1242
.label_1274:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1333
.label_1242:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1333:
	jmp	.label_1358
.label_1358:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1452
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x858], rax
	jmp	.label_1345
.label_1452:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1430
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_1239
.label_1430:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1239:
	jmp	.label_1345
.label_1345:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1428:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1334
.label_2384:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1462
	jmp	.label_1197
.label_1462:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1465
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1465
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_1474
.label_1465:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_1481
	mov	dword ptr [rbp - 0xfc], 0
.label_1481:
	jmp	.label_1474
.label_1474:
	movabs	rax, OFFSET FLAT:label_1494
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1495
.label_2386:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1502
	jmp	.label_1197
.label_1502:
	jmp	.label_1346
.label_1346:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1231
.label_2387:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1515
	jmp	.label_1197
.label_1515:
	jmp	.label_1453
.label_1453:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1231
.label_2405:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1529
	jmp	.label_1197
.label_1529:
	jmp	.label_1193
.label_1193:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1203
.label_2406:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1259
	jmp	.label_1197
.label_1259:
	jmp	.label_1207
.label_1207:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1203
.label_2404:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1220
	jmp	.label_1197
.label_1220:
	jmp	.label_1223
.label_1223:
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
	jmp	.label_1227
.label_2388:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1243
	jmp	.label_1197
.label_1243:
	jmp	.label_1249
.label_1249:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1231
.label_2407:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1260
	jmp	.label_1197
.label_1260:
	jmp	.label_1265
.label_1265:
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
	jmp	.label_1227
.label_2389:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1426
	jmp	.label_1197
.label_1426:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_1290
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_1300
.label_1290:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_1315:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_1309
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x864], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x864]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	add	eax, 1
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_1315
.label_1309:
	jmp	.label_1300
.label_1300:
	jmp	.label_1336
.label_1336:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1231
.label_2408:
	jmp	.label_1408
.label_1408:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1349
	xor	eax, eax
	mov	dword ptr [rbp - 0x868], eax
	jmp	.label_1360
.label_1349:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x868], eax
.label_1360:
	mov	eax, dword ptr [rbp - 0x868]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_1368
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x870], rax
	jmp	.label_1234
.label_1368:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x870], rax
.label_1234:
	mov	rax, qword ptr [rbp - 0x870]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1395
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1395:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1412
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1416
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_1416
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1424
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1194
.label_1424:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1442
.label_1194:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1442:
	jmp	.label_1416
.label_1416:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1412:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1334
.label_2390:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_2409:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1479
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1479:
	jmp	.label_1200
.label_2410:
	jmp	.label_1490
.label_1490:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_1227
.label_2391:
	movabs	rax, OFFSET FLAT:label_1505
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1277
.label_2411:
	jmp	.label_1200
.label_2392:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1511
	jmp	.label_1197
.label_1511:
	jmp	.label_1517
.label_1517:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1231
.label_2412:
	lea	rax, [rbp - 0x6b8]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x878], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x878]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_1516:
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
	je	.label_1213
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_1235
.label_1213:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
.label_1235:
	mov	eax, dword ptr [rbp - 0x87c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_1516
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_1262
.label_2396:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1269
	jmp	.label_1197
.label_1269:
	jmp	.label_1200
.label_2393:
	movabs	rax, OFFSET FLAT:label_1276
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1277
.label_2413:
	jmp	.label_1283
.label_1283:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1285
	xor	eax, eax
	mov	dword ptr [rbp - 0x880], eax
	jmp	.label_1292
.label_1285:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x880], eax
.label_1292:
	mov	eax, dword ptr [rbp - 0x880]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_1303
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_1318
.label_1303:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x888], rax
.label_1318:
	mov	rax, qword ptr [rbp - 0x888]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1329
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1329:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1347
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1354
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_1354
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1367
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1381
.label_1367:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1392
.label_1381:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1392:
	jmp	.label_1354
.label_1354:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1347:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1334
.label_2414:
	jmp	.label_1425
.label_1425:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x88c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x88c]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_1231
.label_2394:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1443
	jmp	.label_1197
.label_1443:
	jmp	.label_1450
.label_1450:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x890], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x890]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1231
.label_2385:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1467
	jmp	.label_1197
.label_1467:
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
	jge	.label_1493
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	sub	edi, 1
	mov	dword ptr [rbp - 0x894], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x894]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x898], esi
	mov	byte ptr [rbp - 0x899], cl
	jne	.label_1298
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x89a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x89a]
	mov	byte ptr [rbp - 0x89b], sil
	jne	.label_1521
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x8a0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8a0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x89b], sil
.label_1521:
	mov	al, byte ptr [rbp - 0x89b]
	mov	byte ptr [rbp - 0x899], al
.label_1298:
	mov	al, byte ptr [rbp - 0x899]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x898]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	jmp	.label_1224
.label_1493:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8a4], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x8a4]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x8a8], esi
	mov	byte ptr [rbp - 0x8a9], cl
	jne	.label_1230
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	mov	byte ptr [rbp - 0x8aa], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x8aa]
	mov	byte ptr [rbp - 0x8ab], sil
	jne	.label_1248
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8b0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8b0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x8ab], sil
.label_1248:
	mov	al, byte ptr [rbp - 0x8ab]
	mov	byte ptr [rbp - 0x8a9], al
.label_1230:
	mov	al, byte ptr [rbp - 0x8a9]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x8a8]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_1480
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_1480:
	jmp	.label_1224
.label_1224:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x8b4], ecx
	mov	dword ptr [rbp - 0x8b8], edx
	je	.label_1225
	jmp	.label_1328
.label_1328:
	mov	eax, dword ptr [rbp - 0x8b4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8bc], eax
	jne	.label_1331
	jmp	.label_1338
.label_1338:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8c0], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8c0]
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
	jg	.label_1340
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_1371
.label_1340:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_1379
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c8], eax
	jmp	.label_1387
.label_1379:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8c8], eax
.label_1387:
	mov	eax, dword ptr [rbp - 0x8c8]
	mov	dword ptr [rbp - 0x8c4], eax
.label_1371:
	mov	eax, dword ptr [rbp - 0x8c4]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1228
.label_1225:
	jmp	.label_1410
.label_1410:
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
	jmp	.label_1228
.label_1331:
	jmp	.label_1433
.label_1433:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x8cc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8cc]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1231
.label_2395:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1451
	jmp	.label_1197
.label_1451:
	jmp	.label_1456
.label_1456:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0x8d0], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x8d4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d0]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x8d4]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1231
.label_2415:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1482
	jmp	.label_1197
.label_1482:
	jmp	.label_1488
.label_1488:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1231
.label_2397:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1498
	jmp	.label_1200
.label_1498:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1506
	jmp	.label_1197
.label_1506:
	jmp	.label_1508
.label_1508:
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
	jmp	.label_1228
.label_2417:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1526
	jmp	.label_1200
.label_1526:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8d8], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d8]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	jge	.label_1532
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1272
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x8dc], eax
	jmp	.label_1313
.label_1272:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8dc], eax
.label_1313:
	mov	eax, dword ptr [rbp - 0x8dc]
	mov	dword ptr [rbp - 0x700], eax
.label_1532:
	jmp	.label_1226
.label_1226:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1228
.label_2398:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1240
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1240:
	jmp	.label_1247
.label_1247:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1216
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e0], eax
	jmp	.label_1258
.label_1216:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e0], eax
.label_1258:
	mov	eax, dword ptr [rbp - 0x8e0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_1263
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x8e8], rax
	jmp	.label_1280
.label_1263:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x8e8], rax
.label_1280:
	mov	rax, qword ptr [rbp - 0x8e8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1289
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1289:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1312
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1214
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_1214
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1460
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1294
.label_1460:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1351
.label_1294:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1351:
	jmp	.label_1214
.label_1214:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1378
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_1388
.label_1378:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1394
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_1407
.label_1394:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_1407:
	jmp	.label_1388
.label_1388:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1312:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1334
.label_2379:
	mov	qword ptr [rbp - 0xf0], 1
.label_1441:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_1431
	jmp	.label_1439
.label_1439:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1441
.label_1431:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_1446
	jmp	.label_1197
.label_1446:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1457
.label_2418:
	mov	qword ptr [rbp - 0xf0], 0
.label_1457:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_1464
	jmp	.label_1334
.label_1464:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8f9], al
	jl	.label_1471
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8fa], cl
	jne	.label_1483
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x8fa], dl
.label_1483:
	mov	al, byte ptr [rbp - 0x8fa]
	mov	byte ptr [rbp - 0x8f9], al
.label_1471:
	mov	al, byte ptr [rbp - 0x8f9]
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
	mov	qword ptr [rbp - 0x908], rcx
	mov	qword ptr [rbp - 0x910], r8
	ja	.label_1500
	mov	rax, qword ptr [rbp - 0x908]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1233]]
	jmp	rcx
.label_2361:
	jmp	.label_1236
.label_1236:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1238
.label_2362:
	jmp	.label_1252
.label_1252:
	jmp	.label_1254
.label_1254:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1238
.label_2363:
	jmp	.label_1271
.label_1271:
	jmp	.label_1518
.label_1518:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1238
.label_2364:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_1293
	jmp	.label_1271
.label_1293:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_1301
	jmp	.label_1252
.label_1301:
	jmp	.label_1310
.label_1310:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1238
.label_1500:
	jmp	.label_1197
.label_2377:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_1344:
	jmp	.label_1197
.label_1197:
	mov	dword ptr [rbp - 0x734], 1
.label_1355:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_1339
	jmp	.label_1353
.label_1353:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_1355
.label_1339:
	jmp	.label_1363
.label_1363:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1365
	xor	eax, eax
	mov	dword ptr [rbp - 0x914], eax
	jmp	.label_1375
.label_1365:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x914], eax
.label_1375:
	mov	eax, dword ptr [rbp - 0x914]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_1384
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x920], rax
	jmp	.label_1397
.label_1384:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x920], rax
.label_1397:
	mov	rax, qword ptr [rbp - 0x920]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1380
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1205
.label_1380:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1422
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1427
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_1427
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1437
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1444
.label_1437:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1455
.label_1444:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1455:
	jmp	.label_1427
.label_1427:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1473
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_1343
.label_1473:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1253
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x930], rax
	jmp	.label_1509
.label_1253:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_1509:
	jmp	.label_1343
.label_1343:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1422:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1334
.label_1334:
	jmp	.label_1191
.label_1191:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1195
.label_1362:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1204
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1204
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_1204:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_1205:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x938
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f060

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1534:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1533
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1534
.label_1533:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f0c0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1536:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1535
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1536
.label_1535:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f120

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
	#Procedure 0x40f160

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1537
	movabs	rdi, OFFSET FLAT:label_1544
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1537:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1538
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1542
.label_1538:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1542:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1539
	movabs	rsi, OFFSET FLAT:label_1540
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1539
	movabs	rsi, OFFSET FLAT:label_1541
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1543
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1543:
	jmp	.label_1539
.label_1539:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f280
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
	je	.label_1545
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1546
.label_1545:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1546
.label_1546:
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
	#Procedure 0x40f300
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1547
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1548
.label_1547:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1548
.label_1548:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f340
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
	je	.label_1549
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1550
.label_1549:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1550
.label_1550:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f390

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
	je	.label_1551
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1552
.label_1551:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1552
.label_1552:
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
	#Procedure 0x40f440
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1553
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1553:
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
	#Procedure 0x40f480

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
	jne	.label_1554
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1554:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1556
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1555
.label_1556:
	call	abort
.label_1555:
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
	#Procedure 0x40f4f0
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
	je	.label_1557
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1558
.label_1557:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1558
.label_1558:
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
	#Procedure 0x40f5c0

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
.label_1569:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1678
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1683]]
	jmp	rcx
.label_2443:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2442:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1691
	jmp	.label_1693
.label_1693:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1694
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1694:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1691
.label_1691:
	movabs	rax, OFFSET FLAT:label_1703
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1562
.label_2444:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1562
.label_2445:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1647
	movabs	rdi, OFFSET FLAT:label_1662
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_1561
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1647:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1632
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1743:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1726
	jmp	.label_1729
.label_1729:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1731
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1731:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1737
.label_1737:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1743
.label_1726:
	jmp	.label_1632
.label_1632:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1562
.label_2440:
	mov	byte ptr [rbp - 0x79], 1
.label_2439:
	mov	byte ptr [rbp - 0x7b], 1
.label_2441:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1753
	mov	byte ptr [rbp - 0x79], 1
.label_1753:
	jmp	.label_1754
.label_1754:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1755
	jmp	.label_1757
.label_1757:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1758
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1758:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1755
.label_1755:
	movabs	rax, OFFSET FLAT:label_1561
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1562
.label_2438:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1562
.label_1678:
	call	abort
.label_1562:
	mov	qword ptr [rbp - 0x58], 0
.label_1741:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1573
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1577
.label_1573:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1577:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1589
	jmp	.label_1599
.label_1589:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1559
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1559
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1559
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1610
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1610
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1621
.label_1610:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1621:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1559
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1559
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1631
	jmp	.label_1597
.label_1631:
	mov	byte ptr [rbp - 0x81], 1
.label_1559:
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
	ja	.label_1749
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1642]]
	jmp	rcx
.label_2194:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1644
	jmp	.label_1648
.label_1648:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1650
	jmp	.label_1597
.label_1650:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1654
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1654
	jmp	.label_1747
.label_1747:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1661
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1661:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1664
.label_1664:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1667
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1667:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1670
.label_1670:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1675
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1675:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1654:
	jmp	.label_1684
.label_1684:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1686
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1686:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1739
.label_1739:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1696
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1696
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1696
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1696
	jmp	.label_1709
.label_1709:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1711
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1711:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1718
.label_1718:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1721
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1721:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1696
.label_1696:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1730
.label_1644:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1761
	jmp	.label_1736
.label_1761:
	jmp	.label_1730
.label_1730:
	jmp	.label_1593
.label_2205:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1738
	jmp	.label_1745
.label_1745:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1746
	jmp	.label_1750
.label_1738:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1659
	jmp	.label_1597
.label_1659:
	jmp	.label_1636
.label_1746:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1634
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1634
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1634
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1567
	jmp	.label_1566
.label_1566:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1567
	jmp	.label_1571
.label_1571:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1567
	jmp	.label_1657
.label_1657:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1567
	jmp	.label_1582
.label_1582:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1583
	jmp	.label_1567
.label_1567:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1592
	jmp	.label_1597
.label_1592:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1598
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1598:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1609
.label_1609:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1612
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1612:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1617
.label_1617:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1677
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1677:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1624
.label_1624:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1588
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1588:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1628
.label_1583:
	jmp	.label_1628
.label_1628:
	jmp	.label_1634
.label_1634:
	jmp	.label_1636
.label_1750:
	jmp	.label_1636
.label_1636:
	jmp	.label_1593
.label_2195:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1638
.label_2196:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1638
.label_2200:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1638
.label_2198:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1641
.label_2201:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1641
.label_2197:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1641
.label_2199:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1638
.label_2206:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1646
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1652
	jmp	.label_1597
.label_1652:
	jmp	.label_1630
.label_1646:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1655
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1655
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1655
	jmp	.label_1630
.label_1655:
	jmp	.label_1641
.label_1641:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1663
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1663
	jmp	.label_1597
.label_1663:
	jmp	.label_1638
.label_1638:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1668
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1651
.label_1668:
	jmp	.label_1593
.label_2207:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1672
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1676
	jmp	.label_1680
.label_1672:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1676
.label_1680:
	jmp	.label_1593
.label_1676:
	jmp	.label_1682
.label_1682:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1685
	jmp	.label_1593
.label_1685:
	jmp	.label_1688
.label_1688:
	mov	byte ptr [rbp - 0x83], 1
.label_2202:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1692
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1692
	jmp	.label_1597
.label_1692:
	jmp	.label_1593
.label_2204:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1698
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1702
	jmp	.label_1597
.label_1702:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1705
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1705
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1705:
	jmp	.label_1714
.label_1714:
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
	jmp	.label_1720
.label_1720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1723
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1723:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1728
.label_1728:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1735
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1735:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1698:
	jmp	.label_1593
.label_2203:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1593
.label_1749:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1708
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
	jmp	.label_1673
.label_1708:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
.label_2272:
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1762
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1762:
	jmp	.label_1568
.label_1568:
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
	jne	.label_1580
	jmp	.label_1590
.label_1580:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1587
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1590
.label_1587:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1595
	mov	byte ptr [rbp - 0x91], 0
.label_1660:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1600
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1600:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1614
	jmp	.label_1615
.label_1614:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1660
.label_1615:
	jmp	.label_1590
.label_1595:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1623
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1623
	mov	qword ptr [rbp - 0xb8], 1
.label_1658:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1625
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
	jb	.label_1627
	jmp	.label_1640
.label_1640:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1627
	jmp	.label_1649
.label_1649:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1627
	jmp	.label_1645
.label_1645:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1585
	jmp	.label_1627
.label_1627:
	jmp	.label_1597
.label_1585:
	jmp	.label_1605
.label_1605:
	jmp	.label_1602
.label_1602:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1658
.label_1625:
	jmp	.label_1623
.label_1623:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1665
	mov	byte ptr [rbp - 0x91], 0
.label_1665:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1606
.label_1606:
	jmp	.label_1629
.label_1629:
	jmp	.label_1671
.label_1671:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1568
.label_1590:
	jmp	.label_1673
.label_1673:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1681
	test	byte ptr [rbp - 0x79], 1
	je	.label_1690
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1690
.label_1681:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1740:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1699
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1699
	jmp	.label_1604
.label_1604:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1704
	jmp	.label_1597
.label_1704:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1707
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1707
	jmp	.label_1712
.label_1712:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1715
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1715:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1719
.label_1719:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1722
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1722:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1727
.label_1727:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1733
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1733:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1707:
	jmp	.label_1742
.label_1742:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1744
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1744:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1748
.label_1748:
	jmp	.label_1751
.label_1751:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1752
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1752:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1756
.label_1756:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1759
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1759:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1563
.label_1699:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1570
	jmp	.label_1572
.label_1572:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1574
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1574:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1570:
	jmp	.label_1563
.label_1563:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1584
	jmp	.label_1591
.label_1584:
	jmp	.label_1594
.label_1594:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1596
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1596
	jmp	.label_1601
.label_1601:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1603
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1603:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1608
.label_1608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1596:
	jmp	.label_1619
.label_1619:
	jmp	.label_1620
.label_1620:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1622
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1622:
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
	jmp	.label_1740
.label_1591:
	jmp	.label_1630
.label_1690:
	jmp	.label_1593
.label_1593:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1633
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1635
.label_1633:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1637
.label_1635:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1637
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
	jne	.label_1626
.label_1637:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1626
	jmp	.label_1630
.label_1626:
	jmp	.label_1651
.label_1651:
	jmp	.label_1653
.label_1653:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1713
	jmp	.label_1597
.label_1713:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1656
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1656
	jmp	.label_1760
.label_1760:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1564
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1564:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1666
.label_1666:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1669
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1669:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1674
.label_1674:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1679
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1679:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1656:
	jmp	.label_1687
.label_1687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1689
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1689:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1695
.label_1695:
	jmp	.label_1630
.label_1630:
	jmp	.label_1578
.label_1578:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1701
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1701
	jmp	.label_1616
.label_1616:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1706
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1706:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1710
.label_1710:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1717
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1717:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1701:
	jmp	.label_1724
.label_1724:
	jmp	.label_1725
.label_1725:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1732
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1732:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1734
	mov	byte ptr [rbp - 0x7e], 0
.label_1734:
	jmp	.label_1736
.label_1736:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1741
.label_1599:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1643
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1643
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1643
	jmp	.label_1597
.label_1643:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1575
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1575
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1575
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1700
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
	jmp	.label_1560
.label_1700:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1565
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1565
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1569
.label_1565:
	jmp	.label_1639
.label_1639:
	jmp	.label_1575
.label_1575:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1576
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1576
	jmp	.label_1579
.label_1579:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1581
	jmp	.label_1697
.label_1697:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1586
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1586:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1618
.label_1618:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1579
.label_1581:
	jmp	.label_1576
.label_1576:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1607
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1607:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1560
.label_1597:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1613
	test	byte ptr [rbp - 0x79], 1
	je	.label_1613
	mov	dword ptr [rbp - 0x34], 4
.label_1613:
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
.label_1560:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410960
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
	#Procedure 0x4109a0

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
	je	.label_1763
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1764
.label_1763:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1764
.label_1764:
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
	je	.label_1765
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1765:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1767:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1768
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1767
.label_1768:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1770
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1769]],  rax
.label_1770:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1766
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1766:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410be0

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
	#Procedure 0x410c20

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
	jge	.label_1778
	call	abort
.label_1778:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1776
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1774
	call	xalloc_die
.label_1774:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1775
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1777
.label_1775:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1777:
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
	je	.label_1773
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1769]]
	mov	qword ptr [rax + 8], rcx
.label_1773:
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
.label_1776:
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
	ja	.label_1771
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1772
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1772:
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
.label_1771:
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
	#Procedure 0x410ea0

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
	#Procedure 0x410ee0
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
	#Procedure 0x410f00
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
	#Procedure 0x410f30

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
	#Procedure 0x410f70

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
	jne	.label_1779
	call	abort
.label_1779:
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
	#Procedure 0x410fe0

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
	#Procedure 0x411020
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
	#Procedure 0x411050
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
	#Procedure 0x411080

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
	#Procedure 0x411100

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
	#Procedure 0x411130

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
	#Procedure 0x411150
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
	#Procedure 0x411180

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
	#Procedure 0x411230

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
	#Procedure 0x411270

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
	#Procedure 0x4112f0
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
	#Procedure 0x411320
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
	#Procedure 0x411360

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
	#Procedure 0x4113a0
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
	#Procedure 0x4113d0

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
	#Procedure 0x411400

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
	#Procedure 0x411420

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
	je	.label_1786
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1782
.label_1786:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1784
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1785
	movabs	rax, OFFSET FLAT:label_1788
	movabs	rcx, OFFSET FLAT:label_1789
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1782
.label_1785:
	movabs	rsi, OFFSET FLAT:label_1783
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1787
	movabs	rax, OFFSET FLAT:label_1780
	movabs	rcx, OFFSET FLAT:label_1781
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1782
.label_1787:
	movabs	rax, OFFSET FLAT:label_1561
	movabs	rcx, OFFSET FLAT:label_1703
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1782:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411520
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
	.align	16
	#Procedure 0x411540
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
	.align	16
	#Procedure 0x411560
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
	.align	16
	#Procedure 0x411580
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
	.align	16
	#Procedure 0x411590
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
	.align	16
	#Procedure 0x4115b0
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
	.align	16
	#Procedure 0x4115d0

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
	.align	16
	#Procedure 0x4115f0
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
	.align	16
	#Procedure 0x411620
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
	.align	16
	#Procedure 0x411630

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
	.align	16
	#Procedure 0x411660

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
	je	.label_1798
	movabs	rsi, OFFSET FLAT:label_1795
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1807
.label_1798:
	movabs	rsi, OFFSET FLAT:label_1808
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1807:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1796
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
	mov	ecx, OFFSET FLAT:label_1803
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
	ja	.label_1804
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1791]]
	jmp	rcx
.label_2289:
	jmp	.label_1790
.label_2290:
	movabs	rdi, OFFSET FLAT:label_1801
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
	jmp	.label_1790
.label_2291:
	movabs	rdi, OFFSET FLAT:label_1794
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
	jmp	.label_1790
.label_2292:
	movabs	rdi, OFFSET FLAT:label_1793
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
	jmp	.label_1790
.label_2293:
	movabs	rdi, OFFSET FLAT:label_1797
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
	jmp	.label_1790
.label_2294:
	movabs	rdi, OFFSET FLAT:label_1806
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
	jmp	.label_1790
.label_2295:
	movabs	rdi, OFFSET FLAT:label_1800
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
	jmp	.label_1790
.label_2296:
	movabs	rdi, OFFSET FLAT:label_1805
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
	jmp	.label_1790
.label_2297:
	movabs	rdi, OFFSET FLAT:label_1792
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
	jmp	.label_1790
.label_2298:
	movabs	rdi, OFFSET FLAT:label_1799
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
	jmp	.label_1790
.label_1804:
	movabs	rdi, OFFSET FLAT:label_1802
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
.label_1790:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411c20
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
.label_1811:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1809
	jmp	.label_1810
.label_1810:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1811
.label_1809:
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
	#Procedure 0x411c90

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
.label_1812:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1817
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1815
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1813
.label_1815:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1813:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1817:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1814
	jmp	.label_1818
.label_1814:
	jmp	.label_1816
.label_1816:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1812
.label_1818:
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
	#Procedure 0x411da0

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
	je	.label_1819
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
.label_1819:
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
	#Procedure 0x411f10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1820
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1822
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1823
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_56
	movabs	rdx, OFFSET FLAT:label_131
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1821
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
	#Procedure 0x411fa0

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
	jae	.label_1824
	call	xalloc_die
.label_1824:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ff0

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
	jne	.label_1825
	cmp	qword ptr [rbp - 8], 0
	je	.label_1825
	call	xalloc_die
.label_1825:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412030
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
	jae	.label_1826
	call	xalloc_die
.label_1826:
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
	#Procedure 0x412080

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1827
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1827
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1829
.label_1827:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1828
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1828
	call	xalloc_die
.label_1828:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1829:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412100

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
	jne	.label_1830
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1833
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
.label_1833:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1831
	call	xalloc_die
.label_1831:
	jmp	.label_1832
.label_1830:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1834
	call	xalloc_die
.label_1834:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1832:
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
	#Procedure 0x4121f0

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
	#Procedure 0x412210

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
	#Procedure 0x412240
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
	#Procedure 0x412280
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
	jb	.label_1835
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1836
.label_1835:
	call	xalloc_die
.label_1836:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4122e0

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
	#Procedure 0x412320
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
	#Procedure 0x412360

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1837
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_900
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4123a0

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
	jne	.label_1848
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_1852
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_1838
.label_1852:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jle	.label_1842
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1845
.label_1842:
	cmp	qword ptr [rbp - 0x48], -0x40000000
	jge	.label_1853
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1841
.label_1853:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_1841:
	jmp	.label_1845
.label_1845:
	jmp	.label_1838
.label_1838:
	jmp	.label_1849
.label_1848:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1850
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1843
.label_1850:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_1840
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1840:
	jmp	.label_1843
.label_1843:
	jmp	.label_1849
.label_1849:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1847
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1851
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1839
.label_1851:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1839
.label_1839:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1844
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1846
.label_1844:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_1846:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_1136
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_1847:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412540

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
	.align	16
	#Procedure 0x412590

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
	jg	.label_1872
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1872
	jmp	.label_1884
.label_1872:
	movabs	rdi, OFFSET FLAT:label_1885
	movabs	rsi, OFFSET FLAT:label_1886
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1887
	call	__assert_fail
.label_1884:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1891
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1854
.label_1891:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1854
.label_1854:
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
	jne	.label_1865
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1866
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1866
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1866
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1867
.label_1866:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1860
.label_1867:
	jmp	.label_1876
.label_1865:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1879
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1881
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1860
.label_1881:
	mov	dword ptr [rbp - 0x4c], 1
.label_1879:
	jmp	.label_1876
.label_1876:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1889
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1860
.label_1889:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1857
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1863
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1860
.label_1863:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_1856
	jmp	.label_1871
.label_1871:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1856
	jmp	.label_1873
.label_1873:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1856
	jmp	.label_1892
.label_1892:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1856
	jmp	.label_1878
.label_1878:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1856
	jmp	.label_1883
.label_1883:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1856
	jmp	.label_1888
.label_1888:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_1856
	jmp	.label_1890
.label_1890:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1856
	jmp	.label_1855
.label_1855:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1856
	jmp	.label_1859
.label_1859:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1856
	jmp	.label_1862
.label_1862:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_1864
	jmp	.label_1856
.label_1856:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1868
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_1870
	jmp	.label_1874
.label_1874:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1870
	jmp	.label_1875
.label_1875:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_1877
	jmp	.label_1880
.label_1880:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1882
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_1882:
	jmp	.label_1877
.label_1870:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_1877:
	jmp	.label_1868
.label_1868:
	jmp	.label_1864
.label_1864:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_1893
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1861]]
	jmp	rcx
.label_2190:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2181:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2191:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_1858
.label_2182:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2183:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2184:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2185:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2186:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2187:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2192:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2188:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_2189:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1858
.label_1893:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1860
.label_1858:
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
	je	.label_1869
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1869:
	jmp	.label_1857
.label_1857:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1860:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ac0

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
	jge	.label_1894
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1896
.label_1894:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1895
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1896
.label_1895:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1896:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412b70

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
.label_1898:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1897
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1898
.label_1897:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412bc0

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
	jg	.label_1919
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1919
	jmp	.label_1935
.label_1919:
	movabs	rdi, OFFSET FLAT:label_1885
	movabs	rsi, OFFSET FLAT:label_1936
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1937
	call	__assert_fail
.label_1935:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1908
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1912
.label_1908:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1912
.label_1912:
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
	jne	.label_1918
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1920
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1920
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1920
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1927
.label_1920:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1905
.label_1927:
	jmp	.label_1900
.label_1918:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1930
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1932
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1905
.label_1932:
	mov	dword ptr [rbp - 0x4c], 1
.label_1930:
	jmp	.label_1900
.label_1900:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1903
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1905
.label_1903:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1910
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1917
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1905
.label_1917:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_1901
	jmp	.label_1923
.label_1923:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1901
	jmp	.label_1924
.label_1924:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1901
	jmp	.label_1926
.label_1926:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1901
	jmp	.label_1929
.label_1929:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1901
	jmp	.label_1934
.label_1934:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1901
	jmp	.label_1899
.label_1899:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_1901
	jmp	.label_1906
.label_1906:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1901
	jmp	.label_1913
.label_1913:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1901
	jmp	.label_1914
.label_1914:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1901
	jmp	.label_1916
.label_1916:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_1909
	jmp	.label_1901
.label_1901:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1907
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_1922
	jmp	.label_1925
.label_1925:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1922
	jmp	.label_1928
.label_1928:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_1902
	jmp	.label_1931
.label_1931:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1933
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_1933:
	jmp	.label_1902
.label_1922:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_1902:
	jmp	.label_1907
.label_1907:
	jmp	.label_1909
.label_1909:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_1911
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1915]]
	jmp	rcx
.label_2336:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2327:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2337:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_1904
.label_2328:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2329:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2330:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2331:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2332:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2333:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2338:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2334:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_2335:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1904
.label_1911:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1905
.label_1904:
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
	je	.label_1921
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1921:
	jmp	.label_1910
.label_1910:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1905:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4130f0

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
	jge	.label_1938
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1940
.label_1938:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1939
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1940
.label_1939:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1940:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4131a0

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
.label_1942:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1941
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1942
.label_1941:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4131f0

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
	#Procedure 0x413240

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
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_1943
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_1944
	jmp	.label_1955
.label_1955:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_1945
	jmp	.label_1952
.label_1952:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1954
	jmp	.label_1949
.label_1949:
	call	abort
.label_1954:
	movabs	rax, OFFSET FLAT:label_1951
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1947
.label_1945:
	movabs	rax, OFFSET FLAT:label_1946
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1947
.label_1944:
	movabs	rax, OFFSET FLAT:label_1953
	mov	qword ptr [rbp - 0x38], rax
.label_1947:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1948
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
	jmp	.label_1950
.label_1948:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_1950:
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
	#Procedure 0x413370

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
	jg	.label_1977
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1977
	jmp	.label_1985
.label_1977:
	movabs	rdi, OFFSET FLAT:label_1885
	movabs	rsi, OFFSET FLAT:label_1886
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1986
	call	__assert_fail
.label_1985:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1992
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1983
.label_1992:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1983
.label_1983:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1988:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1967
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1988
.label_1967:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1975
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1957
.label_1975:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1980
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1984
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1984
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1984
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1994
.label_1984:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1957
.label_1994:
	jmp	.label_1965
.label_1980:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1956
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1961
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1957
.label_1961:
	mov	dword ptr [rbp - 0x4c], 1
.label_1956:
	jmp	.label_1965
.label_1965:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1966
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1957
.label_1966:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1971
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1978
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1957
.label_1978:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1960
	jmp	.label_1989
.label_1989:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1960
	jmp	.label_1993
.label_1993:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1960
	jmp	.label_1996
.label_1996:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1960
	jmp	.label_1959
.label_1959:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1960
	jmp	.label_1987
.label_1987:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1960
	jmp	.label_1968
.label_1968:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1960
	jmp	.label_1970
.label_1970:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1960
	jmp	.label_1976
.label_1976:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1960
	jmp	.label_1981
.label_1981:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1960
	jmp	.label_1982
.label_1982:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1973
	jmp	.label_1960
.label_1960:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1972
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1991
	jmp	.label_1995
.label_1995:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1991
	jmp	.label_1958
.label_1958:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1969
	jmp	.label_1964
.label_1964:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1979
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1979:
	jmp	.label_1969
.label_1991:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1969:
	jmp	.label_1972
.label_1972:
	jmp	.label_1973
.label_1973:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1974
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1963]]
	jmp	rcx
.label_2314:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2305:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2315:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1962
.label_2306:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2307:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2308:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2309:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2310:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2311:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2316:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2312:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_2313:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1962
.label_1974:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1957
.label_1962:
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
	je	.label_1990
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1990:
	jmp	.label_1971
.label_1971:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1957:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413920

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
	jae	.label_1997
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1998
.label_1997:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1998:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413980

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
.label_2000:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1999
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_1
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2000
.label_1999:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4139d0

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
	jge	.label_2004
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2001
.label_2004:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2005
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2003
.label_2005:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2003
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2003:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2002
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2002:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2001:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413aa0

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
	je	.label_2017
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
.label_2017:
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
	je	.label_2034
	jmp	.label_2031
.label_2031:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2006
	jmp	.label_2013
.label_2034:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2015
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_2023
.label_2015:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2023:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2009
.label_2006:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_2014
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_2022
.label_2014:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2022:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2009
.label_2013:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_2012
	jmp	.label_2020
.label_2020:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_2007
	jmp	.label_2026
.label_2026:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_2012
	jmp	.label_2029
.label_2029:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_2007
	jmp	.label_2035
.label_2035:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_2012
	jmp	.label_2010
.label_2010:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_2012
	jmp	.label_2008
.label_2008:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2007
	jmp	.label_2027
.label_2027:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2012
	jmp	.label_2030
.label_2030:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2007
	jmp	.label_2036
.label_2036:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_2012
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2007
	jmp	.label_2021
.label_2021:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_2012
	jmp	.label_2028
.label_2028:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2012
	jmp	.label_2032
.label_2032:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_2033
	jmp	.label_2007
.label_2007:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2016
.label_2012:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_2018
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_2024
.label_2018:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_2024:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2016
.label_2033:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_2019
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_2025
.label_2019:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_2025:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2016:
	jmp	.label_2009
.label_2009:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413fc0

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
	.align	16
	#Procedure 0x413ff0

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
	jg	.label_2043
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2041
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2044
.label_2041:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2039
.label_2044:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2040
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2040:
	jmp	.label_2039
.label_2039:
	jmp	.label_2045
.label_2043:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2045:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2037
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2037
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2042
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2038
.label_2042:
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
.label_2038:
	jmp	.label_2037
.label_2037:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414120

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2046
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2047
.label_2046:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2048
.label_2047:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2048:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414180

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
	je	.label_2049
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2049:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4141c0

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
	jne	.label_2050
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_2050
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2050
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2052
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2051
.label_2052:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2051
.label_2050:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_2051:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414290

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
	jne	.label_2053
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2053:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2054
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2054
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2054
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2055
.label_2054:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2055:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414340

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2056
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2057
.label_2056:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_2057
.label_2057:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_2061
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_2059
.label_2061:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_2059:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2058
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
	je	.label_2060
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_2060:
	jmp	.label_2058
.label_2058:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414440

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
	#Procedure 0x414480

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_2062
	jmp	.label_2064
.label_2064:
	cmp	qword ptr [rbp - 8], 0
	je	.label_2063
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2064
.label_2063:
	jmp	.label_2062
.label_2062:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4144e0

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
	jne	.label_2065
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2066
.label_2065:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2068
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_2070
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_2070:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_2067
	jmp	.label_2069
.label_2067:
	test	byte ptr [rbp - 0x29], 1
	je	.label_2069
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2066
.label_2069:
	jmp	.label_2068
.label_2068:
	mov	qword ptr [rbp - 8], 0
.label_2066:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4145b0

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
	je	.label_2071
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2072
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_2074
	jmp	.label_2072
.label_2071:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2072
.label_2074:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2073
.label_2072:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2075
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2073
.label_2075:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_2076
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
	jmp	.label_2073
.label_2076:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2073:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146a0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2084
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2087
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_2087
.label_2084:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2077
.label_2087:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2081
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2088:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_2086
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2083
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_2080
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_2083
.label_2080:
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
	jae	.label_2078
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2077
.label_2078:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2079
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_2085
.label_2079:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2089
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2077
.label_2089:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2085:
	jmp	.label_2086
.label_2083:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_2082
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2082
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2082:
	jmp	.label_2088
.label_2086:
	jmp	.label_2081
.label_2081:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_2077:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148a0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_2090
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2092
.label_2090:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_2091
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2091:
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
.label_2092:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414930

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2096
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2097
.label_2096:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2094
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2099
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_2095
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_2095
.label_2099:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_2095
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2095:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_2093
	jmp	.label_2098
.label_2093:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2097
.label_2098:
	jmp	.label_2094
.label_2094:
	mov	qword ptr [rbp - 8], -1
.label_2097:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a20

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
	#Procedure 0x414ac0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_54
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414ae0

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
	je	.label_2100
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2103
.label_2100:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2103
.label_2103:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_2102
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2101
.label_2102:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_2101:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414b50

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2104
	movabs	rdi, OFFSET FLAT:label_54
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2105
.label_2104:
	movabs	rdi, OFFSET FLAT:label_54
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_2105:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414bb0

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
	je	.label_2106
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_2106
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_2106:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414c10

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
	jne	.label_2107
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2111
.label_2107:
	jmp	.label_2108
.label_2108:
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
	jne	.label_2110
	jmp	.label_2109
.label_2110:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2108
.label_2109:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2111:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414cd0

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
	jne	.label_2112
	test	byte ptr [rbp - 0x13], 1
	je	.label_2113
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2112
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2113
.label_2112:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2114
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2114:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2115
.label_2113:
	mov	dword ptr [rbp - 4], 0
.label_2115:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414d80

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
	jne	.label_2116
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 8], rax
.label_2116:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2117
	movabs	rax, OFFSET FLAT:label_2118
	mov	qword ptr [rbp - 8], rax
.label_2117:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414de0

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
	ja	.label_2119
	jmp	.label_2121
.label_2121:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2120
.label_2119:
	jmp	.label_2120
.label_2120:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414e30
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
	jb	.label_2122
	jmp	.label_2125
.label_2125:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2122
	jmp	.label_2123
.label_2123:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2124
	jmp	.label_2122
.label_2122:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2126
.label_2124:
	mov	byte ptr [rbp - 1], 0
.label_2126:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414ea0
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
	jb	.label_2127
	jmp	.label_2130
.label_2130:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2128
	jmp	.label_2127
.label_2127:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2129
.label_2128:
	mov	byte ptr [rbp - 1], 0
.label_2129:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414ef0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2131
	jmp	.label_2132
.label_2132:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2133
.label_2131:
	mov	byte ptr [rbp - 1], 0
.label_2133:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414f20
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2134
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2134:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414f50
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
	jb	.label_2135
	jmp	.label_2137
.label_2137:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2138
	jmp	.label_2135
.label_2135:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2136
.label_2138:
	mov	byte ptr [rbp - 1], 0
.label_2136:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414fa0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2139
	jmp	.label_2141
.label_2141:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2140
.label_2139:
	mov	byte ptr [rbp - 1], 0
.label_2140:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414fe0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2142
	jmp	.label_2144
.label_2144:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2143
.label_2142:
	mov	byte ptr [rbp - 1], 0
.label_2143:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415020
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2145
	jmp	.label_2147
.label_2147:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2146
.label_2145:
	mov	byte ptr [rbp - 1], 0
.label_2146:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415060
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2148
	jmp	.label_2150
.label_2150:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2149
.label_2148:
	mov	byte ptr [rbp - 1], 0
.label_2149:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150a0
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
	ja	.label_2151
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2153]]
	jmp	rcx
.label_2358:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2152
.label_2151:
	mov	byte ptr [rbp - 1], 0
.label_2152:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150f0
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
	jb	.label_2154
	jmp	.label_2156
.label_2156:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2157
	jmp	.label_2154
.label_2154:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2155
.label_2157:
	mov	byte ptr [rbp - 1], 0
.label_2155:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415140
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2158
	jmp	.label_2160
.label_2160:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2159
.label_2158:
	mov	byte ptr [rbp - 1], 0
.label_2159:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415180
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
	jb	.label_2161
	jmp	.label_2163
.label_2163:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2161
	jmp	.label_2162
.label_2162:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2164
	jmp	.label_2161
.label_2161:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2165
.label_2164:
	mov	byte ptr [rbp - 1], 0
.label_2165:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4151f0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2166
	jmp	.label_2168
.label_2168:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2167
.label_2166:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2167:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415230
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2169
	jmp	.label_2171
.label_2171:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2170
.label_2169:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2170:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415320

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
