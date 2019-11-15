	.section	.text
	.align	32
	#Procedure 0x401c80

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rsi
	mov	ebx, edi
	mov	qword ptr [rsp + 0x40], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_17
	call	setlocale
	mov	edi, OFFSET FLAT:label_55
	mov	esi, OFFSET FLAT:label_56
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_55
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_10
	movsxd	rax, ebx
	lea	rdi, [rax*8 - 8]
	call	xmalloc
	mov	r14, rax
.label_10:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	lea	r8, [rsp + 0x14]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	je	.label_15
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x30], r14
	xor	r15d, r15d
	mov	ebx, 0
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_21
	nop	word ptr cs:[rax + rax]
.label_24:
	add	r13d, 0x83
	cmp	r13d, 0x104
	ja	.label_33
	jmp	qword ptr [(r13 * 8) + label_42]
.label_1434:
	mov	byte ptr [rip + use_form_feed],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1439:
	mov	byte ptr [rip + truncate_lines],  1
	mov	r13, qword ptr [rip + optarg]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + chars_per_line],  eax
	xor	r14d, r14d
	jmp	.label_12
.label_1441:
	mov	byte ptr [rip + balance_columns],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1442:
	mov	byte ptr [rip + use_cntrl_prefix],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1445:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + custom_header],  rax
	xor	r14d, r14d
	jmp	.label_12
.label_1449:
	mov	byte ptr [rip + numbered_lines],  1
	mov	rdi, qword ptr [rip + optarg]
	xor	r14d, r14d
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_14
	mov	esi, 0x6e
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	xor	r14d, r14d
	jmp	.label_14
.label_1451:
	mov	byte ptr [rip + ignore_failed_opens],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1452:
	mov	r13, qword ptr [rip + optarg]
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
	test	r13, r13
	mov	rbp, qword ptr [rsp + 8]
	je	.label_31
	movzx	eax, byte ptr [rip + use_col_separator]
	xor	al, 1
	test	al, 1
	je	.label_31
	mov	rdi, r13
	call	strlen
	test	rax, -0x80000000
	jne	.label_22
	mov	dword ptr [rip + col_sep_length],  eax
	mov	qword ptr [rip + col_sep_string],  r13
	xor	r14d, r14d
.label_31:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_14
.label_1456:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + columns],  eax
	mov	byte ptr [rip + explicit_columns],  1
	mov	rdi, rbx
	call	free
	mov	qword ptr [rsp + 0x40], 0
	xor	ebx, ebx
	jmp	.label_12
.label_1432:
	cmp	qword ptr [rip + first_page_number],  0
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_13
	mov	rdx, qword ptr [rip + optarg]
	cmp	byte ptr [rdx], 0x2b
	jne	.label_13
	inc	rdx
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	xor	r14d, r14d
	test	al, al
	jne	.label_14
.label_13:
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, r12d
	inc	r12d
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rdx + rcx*8], rax
	xor	r14d, r14d
	jmp	.label_14
.label_1433:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + date_format],  rax
	xor	r14d, r14d
	jmp	.label_12
.label_1435:
	mov	byte ptr [rip + join_lines],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1436:
	mov	byte ptr [rip + skip_count],  1
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rsi, -0x80000000
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + start_line_num],  eax
	jmp	.label_12
.label_1437:
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_17
	mov	dword ptr [rip + col_sep_length],  0
	mov	byte ptr [rip + use_col_separator],  1
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	test	r13, r13
	mov	rbp, qword ptr [rsp + 8]
	je	.label_69
	mov	rdi, r13
	call	strlen
	test	rax, -0x80000000
	jne	.label_22
	mov	dword ptr [rip + col_sep_length],  eax
	mov	qword ptr [rip + col_sep_string],  r13
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r14d, r14d
	jmp	.label_14
.label_1438:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  0
	xor	r14d, r14d
	jmp	.label_12
.label_1440:
	mov	byte ptr [rip + print_across_flag],  1
	jmp	.label_30
.label_1443:
	mov	byte ptr [rip + double_space],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1444:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_39
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_39:
	mov	byte ptr [rip + untabify_input],  1
	xor	r14d, r14d
	jmp	.label_14
.label_1446:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_52
	mov	esi, 0x69
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_52:
	mov	byte ptr [rip + tabify_output],  1
	xor	r14d, r14d
	jmp	.label_14
.label_1447:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + lines_per_page],  eax
	jmp	.label_12
.label_1448:
	mov	byte ptr [rip + parallel_files],  1
.label_30:
	mov	byte ptr [rip + storing_columns],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1450:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + chars_per_margin],  eax
	jmp	.label_12
.label_1453:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1454:
	mov	byte ptr [rip + use_esc_sequence],  1
	xor	r14d, r14d
	jmp	.label_12
.label_1455:
	mov	r13, qword ptr [rip + optarg]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	cl, 1
	mov	qword ptr [rsp + 0x28], rcx
	movzx	ecx, byte ptr [rip + truncate_lines]
	test	cl, cl
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_65
	mov	dword ptr [rip + chars_per_line],  eax
	xor	r14d, r14d
.label_65:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_14
.label_1457:
	mov	rdx, qword ptr [rip + optarg]
	test	rdx, rdx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_74
	mov	edi, dword ptr [rsp + 0x14]
	xor	r14d, r14d
	xor	esi, esi
	call	first_last_page
	test	al, al
	jne	.label_14
	jmp	.label_18
.label_69:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_14
	nop	word ptr [rax + rax]
.label_21:
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_24
	lea	r14, [r15 + 1]
	cmp	r14, qword ptr [rsp + 0x40]
	jb	.label_40
	mov	rdi, rbx
	lea	rsi, [rsp + 0x40]
	call	x2realloc
	mov	rbx, rax
.label_40:
	mov	byte ptr [rbx + r15], r13b
	mov	byte ptr [rbx + r15 + 1], 0
.label_12:
	mov	rbp, qword ptr [rsp + 8]
.label_14:
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	r8, [rsp + 0x14]
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	mov	r15, r14
	jne	.label_21
	test	rbx, rbx
	je	.label_51
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + columns],  eax
	mov	byte ptr [rip + explicit_columns],  1
	mov	rdi, rbx
	call	free
.label_51:
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_70
.label_15:
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	xor	ebp, ebp
.label_70:
	cmp	qword ptr [rip + date_format],  0
	jne	.label_11
	mov	edi, OFFSET FLAT:label_16
	call	getenv
	mov	ecx, OFFSET FLAT:label_19
	test	rax, rax
	je	.label_20
	mov	edi, 2
	call	hard_locale
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_25
	test	al, al
	cmovne	rcx, rdx
.label_20:
	mov	qword ptr [rip + date_format],  rcx
.label_11:
	mov	edi, OFFSET FLAT:label_28
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [rip + localtz],  rax
	cmp	qword ptr [rip + first_page_number],  0
	jne	.label_45
	mov	qword ptr [rip + first_page_number],  1
.label_45:
	mov	r8b, byte ptr [rip + parallel_files]
	cmp	r8b, 1
	jne	.label_43
	cmp	byte ptr [rip + explicit_columns],  1
	je	.label_66
	cmp	byte ptr [rip + print_across_flag],  1
	je	.label_34
.label_43:
	test	bpl, 1
	je	.label_9
	test	r13b, 1
	jne	.label_26
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_9
	test	byte ptr [rip + use_col_separator],  1
	jne	.label_9
	test	r8b, r8b
	jne	.label_59
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_9
.label_59:
	mov	al, byte ptr [rip + truncate_lines]
	test	al, al
	jne	.label_32
	mov	byte ptr [rip + join_lines],  1
	cmp	dword ptr [rip + col_sep_length],  0
	jg	.label_32
	jmp	.label_9
.label_26:
	test	r8b, r8b
	jne	.label_72
	cmp	byte ptr [rip + explicit_columns],  1
	jne	.label_49
.label_72:
	mov	byte ptr [rip + truncate_lines],  1
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_9
.label_32:
	mov	byte ptr [rip + use_col_separator],  1
	jmp	.label_9
.label_49:
	mov	byte ptr [rip + join_lines],  1
.label_9:
	mov	ecx, dword ptr [rip + optind]
	cmp	ecx, ebx
	jge	.label_41
	mov	r11d, ebx
	sub	r11d, ecx
	lea	eax, [rbx - 1]
	sub	eax, ecx
	and	r11d, 3
	cmp	eax, 3
	jb	.label_64
	movsxd	rax, ecx
	lea	rdi, [r15 + rax*8 + 0x18]
	mov	r9d, r12d
	mov	r10d, r11d
	sub	r10d, ebx
	add	r10, rcx
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_71:
	lea	rbp, [r9 + rsi]
	mov	rax, qword ptr [rdi + rsi*8 - 0x18]
	lea	ebx, [rbp + 1]
	mov	edx, ebp
	mov	qword ptr [r14 + rdx*8], rax
	mov	rax, qword ptr [rdi + rsi*8 - 0x10]
	lea	edx, [rbp + 2]
	mov	qword ptr [r14 + rbx*8], rax
	mov	rax, qword ptr [rdi + rsi*8 - 8]
	add	ebp, 3
	mov	qword ptr [r14 + rdx*8], rax
	mov	rax, qword ptr [rdi + rsi*8]
	mov	qword ptr [r14 + rbp*8], rax
	add	rsi, 4
	mov	eax, r10d
	add	eax, esi
	jne	.label_71
	lea	ecx, [rcx + rsi]
	add	r12d, esi
.label_64:
	test	r11d, r11d
	je	.label_44
	movsxd	rcx, ecx
	neg	r11d
	nop	
.label_53:
	mov	rax, qword ptr [r15 + rcx*8]
	mov	edx, r12d
	inc	r12d
	mov	qword ptr [r14 + rdx*8], rax
	inc	rcx
	inc	r11d
	jne	.label_53
.label_44:
	mov	dword ptr [rip + optind],  ecx
.label_41:
	test	r12d, r12d
	je	.label_60
	test	r8b, r8b
	je	.label_29
	mov	edi, r12d
	mov	rsi, r14
	jmp	.label_63
	nop	
.label_29:
	mov	edi, 1
	mov	rsi, r14
	call	print_files
	add	r14, 8
	dec	r12d
	jne	.label_29
	jmp	.label_73
.label_60:
	xor	edi, edi
	xor	esi, esi
.label_63:
	call	print_files
.label_73:
	mov	rdi, qword ptr [rip + number_buff]
	call	free
	mov	rdi, qword ptr [rip + clump_buff]
	call	free
	mov	rdi, qword ptr [rip + column_vector]
	call	free
	mov	rdi, qword ptr [rip + line_vector]
	call	free
	mov	rdi, qword ptr [rip + end_vector]
	call	free
	mov	rdi, qword ptr [rip + buff]
	call	free
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_27
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_68
.label_27:
	movzx	eax, byte ptr [rip + failed_opens]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1430:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_35
	mov	edx, OFFSET FLAT:label_36
	mov	r8d, OFFSET FLAT:label_37
	mov	r9d, OFFSET FLAT:label_38
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1431:
	xor	edi, edi
	call	usage
.label_33:
	mov	edi, 1
	call	usage
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	jmp	.label_58
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	jmp	.label_58
.label_68:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_22:
	call	integer_overflow
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
.label_58:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r15d, esi
	mov	r14d, edi
	mov	qword ptr [rsp + 8], -1
	lea	rsi, [rsp]
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_17
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_78
	mov	rbp, qword ptr [rsp]
	xor	eax, eax
	cmp	rbp, rbx
	je	.label_76
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_76
	mov	dl, byte ptr [rbp]
	mov	rax, -1
	cmp	dl, 0x3a
	jne	.label_79
	inc	rbp
	lea	rsi, [rsp]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_17
	mov	rdi, rbp
	call	xstrtoumax
	test	eax, eax
	jne	.label_78
	mov	rdx, qword ptr [rsp]
	cmp	rbp, rdx
	je	.label_81
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	jae	.label_77
.label_81:
	xor	eax, eax
	jmp	.label_76
.label_77:
	mov	dl, byte ptr [rdx]
.label_79:
	test	dl, dl
	je	.label_80
	xor	eax, eax
	jmp	.label_76
.label_80:
	mov	qword ptr [rip + first_page_number],  rcx
	mov	qword ptr [rip + last_page_number],  rax
	mov	al, 1
.label_76:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_78:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402740

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rcx
	mov	r14d, esi
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_82
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_82:
	test	al, al
	je	.label_85
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_17
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_84
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_84
	mov	dword ptr [rbp], ecx
.label_85:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_84:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	jg	.label_86
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	movsx	ebp, r14b
	mov	rdi, rbx
	call	quote
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402810

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_89
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_88
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_102
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_88
	mov	ecx, OFFSET FLAT:label_35
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_101
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_89:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b90

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14d, edi
	mov	ecx, dword ptr [rip + lines_per_page]
	mov	eax, ecx
	add	eax, -0xa
	mov	dword ptr [rip + lines_per_body],  eax
	jle	.label_315
	cmp	byte ptr [rip + extremities],  1
	je	.label_322
	jmp	.label_323
.label_315:
	mov	byte ptr [rip + extremities],  1
	mov	byte ptr [rip + keep_FF],  1
.label_322:
	mov	dword ptr [rip + lines_per_body],  ecx
	mov	eax, ecx
.label_323:
	cmp	byte ptr [rip + double_space],  1
	jne	.label_329
	mov	ecx, eax
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [rip + lines_per_body],  ecx
.label_329:
	test	r14d, r14d
	je	.label_319
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_334
	mov	dword ptr [rip + columns],  r14d
	mov	sil, 1
	jmp	.label_337
.label_319:
	mov	byte ptr [rip + parallel_files],  0
.label_334:
	xor	esi, esi
.label_337:
	mov	cl, byte ptr [rip + storing_columns]
	test	cl, cl
	jne	.label_123
	mov	byte ptr [rip + balance_columns],  1
.label_123:
	mov	r10d, dword ptr [rip + columns]
	cmp	r10d, 2
	jl	.label_131
	mov	al, byte ptr [rip + use_col_separator]
	mov	dl, byte ptr [rip + join_lines]
	test	al, al
	je	.label_136
	cmp	dword ptr [rip + col_sep_length],  1
	jne	.label_139
	mov	eax, edx
	xor	al, 1
	test	al, 1
	je	.label_139
	mov	rax, qword ptr [rip + col_sep_string]
	cmp	byte ptr [rax], 9
	jne	.label_139
	mov	qword ptr [rip + col_sep_string], OFFSET FLAT:label_147
	jmp	.label_139
.label_131:
	mov	byte ptr [rip + storing_columns],  1
	mov	al, byte ptr [rip + join_lines]
	test	al, al
	jne	.label_151
	jmp	.label_155
.label_136:
	mov	eax, OFFSET FLAT:label_283
	mov	edi, OFFSET FLAT:label_147
	test	dl, 1
	cmovne	rdi, rax
	mov	qword ptr [rip + col_sep_string],  rdi
	mov	dword ptr [rip + col_sep_length],  1
	mov	byte ptr [rip + use_col_separator],  1
.label_139:
	mov	byte ptr [rip + truncate_lines],  1
	mov	byte ptr [rip + tabify_output],  1
	test	dl, 1
	je	.label_155
.label_151:
	mov	byte ptr [rip + truncate_lines],  0
.label_155:
	xor	r11d, r11d
	mov	r8b, byte ptr [rip + numbered_lines]
	cmp	r8b, 1
	jne	.label_170
	mov	eax, dword ptr [rip + start_line_num]
	mov	dword ptr [rip + line_count],  eax
	mov	edx, dword ptr [rip + chars_per_number]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_173
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, edx
	and	eax, 0xfffffff8
	mov	edi, edx
	sub	edi, eax
	neg	edi
	lea	edx, [rdx + rdi + 8]
	jmp	.label_179
.label_173:
	inc	edx
.label_179:
	mov	dword ptr [rip + number_width],  edx
	xor	r11d, r11d
	test	sil, sil
	cmovne	r11d, edx
.label_170:
	mov	ebp, dword ptr [rip + col_sep_length]
	test	ebp, ebp
	js	.label_188
	je	.label_194
	test	r10d, r10d
	jle	.label_278
	lea	r9d, [r10 - 1]
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ebp
	jmp	.label_190
.label_188:
	test	r10d, r10d
	jle	.label_193
	cmp	ebp, -1
	je	.label_194
	lea	r9d, [r10 - 1]
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
.label_190:
	cmp	eax, r9d
	jge	.label_194
	jmp	.label_200
.label_278:
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
	jmp	.label_202
.label_193:
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	ebp
.label_202:
	cmp	r10d, eax
	jle	.label_200
.label_194:
	lea	eax, [r10 - 1]
	imul	ebp, eax
	test	ebp, ebp
	js	.label_209
	mov	edi, ebp
.label_200:
	mov	ecx, dword ptr [rip + chars_per_line]
	mov	edx, ecx
	sub	edx, r11d
	mov	esi, edi
	xor	esi, 0x80000000
	xor	eax, eax
	cmp	edx, esi
	mov	ebp, edi
	jge	.label_198
	jmp	.label_217
.label_209:
	lea	r9d, [rbp + 0x7fffffff]
	mov	ecx, dword ptr [rip + chars_per_line]
	mov	esi, ecx
	sub	esi, r11d
	xor	eax, eax
	cmp	r9d, esi
	jl	.label_217
.label_198:
	sub	ecx, r11d
	sub	ecx, ebp
	mov	eax, ecx
.label_217:
	cdq	
	idiv	r10d
	mov	dword ptr [rip + chars_per_column],  eax
	test	eax, eax
	jle	.label_226
	test	r8b, r8b
	je	.label_229
	mov	rdi, qword ptr [rip + number_buff]
	call	free
	movsxd	rax, dword ptr [rip + chars_per_number]
	cmp	rax, 0xb
	mov	edi, 0xb
	cmova	rdi, rax
	inc	rdi
	call	xmalloc
	mov	qword ptr [rip + number_buff],  rax
.label_229:
	mov	rdi, qword ptr [rip + clump_buff]
	call	free
	mov	eax, dword ptr [rip + chars_per_input_tab]
	cmp	eax, 8
	mov	ecx, 8
	cmovge	ecx, eax
	movsxd	rdi, ecx
	call	xmalloc
	mov	qword ptr [rip + clump_buff],  rax
	mov	dword ptr [rip + total_files],  0
	mov	rdi, qword ptr [rip + column_vector]
	call	free
	movsxd	rdi, dword ptr [rip + columns]
	test	rdi, rdi
	js	.label_197
	shl	rdi, 6
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rip + column_vector],  rbp
	cmp	byte ptr [rip + parallel_files],  1
	je	.label_259
	test	r14d, r14d
	jle	.label_266
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	call	open_file
	test	al, al
	je	.label_117
	mov	rbx, qword ptr [rbx]
	mov	rdi, qword ptr [rbp]
	call	fileno
	mov	rdi, rbx
	mov	esi, eax
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
	lea	rbx, [rbp + 8]
	jmp	.label_271
.label_280:
	add	rbp, 0x40
	add	rbx, 8
.label_259:
	test	r14d, r14d
	je	.label_276
	dec	r14d
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	call	open_file
	test	al, al
	jne	.label_280
	add	rbp, -0x40
	dec	dword ptr [rip + columns]
	jmp	.label_280
.label_276:
	cmp	dword ptr [rip + columns],  0
	je	.label_117
	mov	edi, OFFSET FLAT:label_17
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_144
.label_266:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	lea	rbx, [rbp + 8]
	mov	qword ptr [rbp + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbp], rax
	mov	byte ptr [rip + have_read_stdin],  1
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	edi, OFFSET FLAT:label_17
	mov	esi, 0xffffffff
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
.label_271:
	mov	edi, dword ptr [rip + columns]
	mov	eax, edi
	dec	eax
	je	.label_144
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbp]
	add	rbp, 0x40
	lea	esi, [rdi - 2]
	and	eax, 3
	cmp	esi, 3
	jb	.label_306
	lea	esi, [rax + 1]
	sub	esi, edi
	nop	dword ptr [rax]
.label_237:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	mov	qword ptr [rbp + 0x48], rcx
	mov	qword ptr [rbp + 0x40], rdx
	mov	dword ptr [rbp + 0x50], 0
	mov	byte ptr [rbp + 0x79], 0
	mov	dword ptr [rbp + 0x6c], 0
	mov	qword ptr [rbp + 0x88], rcx
	mov	qword ptr [rbp + 0x80], rdx
	mov	dword ptr [rbp + 0x90], 0
	mov	byte ptr [rbp + 0xb9], 0
	mov	dword ptr [rbp + 0xac], 0
	mov	qword ptr [rbp + 0xc8], rcx
	mov	qword ptr [rbp + 0xc0], rdx
	mov	dword ptr [rbp + 0xd0], 0
	mov	byte ptr [rbp + 0xf9], 0
	mov	dword ptr [rbp + 0xec], 0
	add	rbp, 0x100
	add	esi, 4
	jne	.label_237
.label_306:
	test	eax, eax
	je	.label_144
	neg	eax
	nop	dword ptr [rax]
.label_135:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	add	rbp, 0x40
	inc	eax
	jne	.label_135
.label_144:
	mov	eax, dword ptr [rip + total_files]
	mov	dword ptr [rip + files_ready_to_read],  eax
	mov	al, byte ptr [rip + storing_columns]
	test	al, al
	jne	.label_235
	mov	ecx, dword ptr [rip + columns]
	test	ecx, ecx
	js	.label_152
	mov	r14d, dword ptr [rip + lines_per_body]
	je	.label_154
	test	r14d, r14d
	js	.label_156
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ecx
	jmp	.label_159
.label_152:
	mov	r14d, dword ptr [rip + lines_per_body]
	test	r14d, r14d
	js	.label_162
	cmp	ecx, -1
	je	.label_154
	mov	eax, 0x80000000
	cdq	
	idiv	ecx
.label_159:
	cmp	eax, r14d
	jge	.label_154
	jmp	.label_160
.label_156:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_166
.label_162:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_166:
	idiv	ecx
	cmp	r14d, eax
	jl	.label_160
.label_154:
	imul	r14d, ecx
	cmp	r14d, 0x7fffffff
	je	.label_160
	mov	ebp, dword ptr [rip + chars_per_column]
	cmp	ebp, 0x7fffffff
	je	.label_160
	inc	ebp
	js	.label_180
	test	ebp, ebp
	je	.label_181
	test	r14d, r14d
	js	.label_183
	mov	eax, 0x7fffffff
	xor	edx, edx
	div	ebp
	jmp	.label_185
.label_180:
	test	r14d, r14d
	js	.label_148
	cmp	ebp, -1
	je	.label_181
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
.label_185:
	cmp	eax, r14d
	jge	.label_181
	jmp	.label_160
.label_183:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_189
.label_148:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_189:
	idiv	ebp
	cmp	r14d, eax
	jl	.label_160
.label_181:
	lea	ebx, [r14 + 1]
	mov	rdi, qword ptr [rip + line_vector]
	call	free
	test	ebx, ebx
	js	.label_197
	movsxd	rdi, ebx
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + line_vector],  rax
	mov	rdi, qword ptr [rip + end_vector]
	call	free
	test	r14d, r14d
	js	.label_197
	imul	ebp, r14d
	movsxd	rdi, r14d
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + end_vector],  rax
	mov	rdi, qword ptr [rip + buff]
	call	free
	movsxd	rbx, ebp
	mov	al, byte ptr [rip + use_col_separator]
	test	al, al
	movabs	rcx, 0x3fffffffffffffff
	movabs	rdx, 0x7fffffffffffffff
	cmovne	rdx, rcx
	cmp	rdx, rbx
	jb	.label_197
	movzx	edi, al
	inc	rdi
	imul	rdi, rbx
	call	xmalloc
	mov	qword ptr [rip + buff],  rax
	movzx	eax, byte ptr [rip + use_col_separator]
	inc	rax
	imul	rax, rbx
	mov	qword ptr [rip + buff_allocated],  rax
.label_235:
	mov	r14, qword ptr [rip + first_page_number]
	mov	eax, 1
	cmp	r14, 2
	jb	.label_238
	mov	eax, dword ptr [rip + columns]
	mov	r15d, 1
	nop	dword ptr [rax]
.label_137:
	mov	ecx, dword ptr [rip + lines_per_body]
	cmp	ecx, 2
	jl	.label_242
	mov	r12d, 1
	nop	word ptr cs:[rax + rax]
.label_263:
	test	eax, eax
	jle	.label_251
	mov	ebp, 1
	mov	rbx, qword ptr [rip + column_vector]
.label_257:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_252
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax, dword ptr [rip + columns]
.label_252:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_257
	mov	ecx, dword ptr [rip + lines_per_body]
.label_251:
	inc	r12d
	cmp	r12d, ecx
	jl	.label_263
.label_242:
	mov	byte ptr [rip + last_line],  1
	test	eax, eax
	jle	.label_286
	mov	ebp, 1
	mov	rbx, qword ptr [rip + column_vector]
	nop	dword ptr [rax]
.label_272:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_270
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax, dword ptr [rip + columns]
.label_270:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_272
	mov	cl, byte ptr [rip + storing_columns]
	test	eax, eax
	jle	.label_275
	test	cl, 1
	jne	.label_275
	mov	rcx, qword ptr [rip + column_vector]
	lea	esi, [rax - 1]
	mov	edx, eax
	and	edx, 3
	cmp	esi, 3
	jb	.label_279
	mov	esi, edx
	sub	esi, eax
	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	dword ptr [rcx + 0x10], 3
	je	.label_284
	mov	dword ptr [rcx + 0x10], 2
.label_284:
	cmp	dword ptr [rcx + 0x50], 3
	je	.label_287
	mov	dword ptr [rcx + 0x50], 2
.label_287:
	cmp	dword ptr [rcx + 0x90], 3
	je	.label_291
	mov	dword ptr [rcx + 0x90], 2
.label_291:
	cmp	dword ptr [rcx + 0xd0], 3
	je	.label_295
	mov	dword ptr [rcx + 0xd0], 2
.label_295:
	add	rcx, 0x100
	add	esi, 4
	jne	.label_313
.label_279:
	test	edx, edx
	je	.label_301
	add	rcx, 0x10
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_305:
	cmp	dword ptr [rcx], 3
	je	.label_302
	mov	dword ptr [rcx], 2
.label_302:
	add	rcx, 0x40
	inc	edx
	jne	.label_305
.label_301:
	xor	ecx, ecx
	jmp	.label_275
	nop	word ptr [rax + rax]
.label_286:
	mov	cl, byte ptr [rip + storing_columns]
.label_275:
	mov	rdx, qword ptr [rip + column_vector]
	test	eax, eax
	je	.label_314
	mov	ebp, eax
	and	ebp, 1
	cmp	eax, 1
	mov	rsi, rdx
	je	.label_316
	mov	edi, ebp
	sub	edi, eax
	mov	rsi, rdx
	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	dword ptr [rsi + 0x10], 2
	jne	.label_321
	mov	dword ptr [rsi + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_321:
	cmp	dword ptr [rsi + 0x50], 2
	jne	.label_325
	mov	dword ptr [rsi + 0x50], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_325:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_285
.label_316:
	test	ebp, ebp
	je	.label_314
	cmp	dword ptr [rsi + 0x10], 2
	jne	.label_314
	mov	dword ptr [rsi + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
	nop	word ptr cs:[rax + rax]
.label_314:
	test	cl, 1
	je	.label_116
	mov	ecx, dword ptr [rip + files_ready_to_read]
	mov	byte ptr [rip + last_line],  0
	test	ecx, ecx
	jg	.label_119
	jmp	.label_125
	nop	dword ptr [rax + rax]
.label_116:
	cmp	dword ptr [rdx + 0x10], 3
	je	.label_129
	mov	dword ptr [rip + files_ready_to_read],  1
	mov	byte ptr [rip + last_line],  0
.label_119:
	inc	r15
	cmp	r15, r14
	jb	.label_137
	jmp	.label_140
.label_129:
	mov	dword ptr [rip + files_ready_to_read],  0
	mov	byte ptr [rip + last_line],  0
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	mov	r8, r15
	call	error
	cmp	dword ptr [rip + files_ready_to_read],  0
	jle	.label_117
.label_140:
	mov	rax, qword ptr [rip + first_page_number]
.label_238:
	mov	qword ptr [rip + page_number],  rax
	mov	ecx, dword ptr [rip + chars_per_margin]
	xor	edi, edi
	mov	r11b, byte ptr [rip + truncate_lines]
	cmp	r11b, 1
	jne	.label_158
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_124
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_124
	mov	edi, dword ptr [rip + chars_per_column]
	add	edi, ecx
	add	edi, dword ptr [rip + number_width]
	jmp	.label_158
.label_124:
	mov	edi, dword ptr [rip + chars_per_column]
	add	edi, ecx
.label_158:
	mov	r14d, dword ptr [rip + col_sep_length]
	add	ecx, r14d
	mov	r12, qword ptr [rip + column_vector]
	mov	eax, dword ptr [rip + columns]
	mov	ebp, 1
	mov	dl, byte ptr [rip + storing_columns]
	cmp	eax, 2
	jl	.label_177
	mov	r15b, byte ptr [rip + numbered_lines]
	mov	bl, byte ptr [rip + parallel_files]
	xor	bl, 1
	mov	byte ptr [rsp + 0xb], bl
	mov	r13d, dword ptr [rip + chars_per_column]
	mov	r8d, OFFSET FLAT:print_char
	mov	ebx, OFFSET FLAT:store_char
	mov	esi, OFFSET FLAT:read_line
	mov	ebp, OFFSET FLAT:print_stored
	mov	dword ptr [rsp + 0xc], edx
	and	dl, 1
	cmovne	rbp, rsi
	test	dl, dl
	cmovne	rbx, r8
	lea	edx, [rax - 2]
	inc	rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdx, [r12 + 0x38]
	mov	esi, 1
	sub	esi, eax
	xor	r8d, r8d
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	qword ptr [rdx - 0x18], rbx
	mov	qword ptr [rdx - 0x20], rbp
	test	r15b, 1
	je	.label_204
	test	r10d, r10d
	sete	r9b
	or	r9b, byte ptr [rsp + 0xb]
	jmp	.label_207
	nop	dword ptr [rax]
.label_204:
	xor	r9d, r9d
.label_207:
	and	r9b, 1
	mov	byte ptr [rdx], r9b
	mov	dword ptr [rdx - 4], ecx
	add	edi, r14d
	mov	ecx, edi
	lea	edi, [rdi + r13]
	test	r11b, r11b
	cmove	ecx, r8d
	cmove	edi, r8d
	add	rdx, 0x40
	dec	r10d
	cmp	esi, r10d
	jne	.label_212
	mov	rdi, qword ptr [rsp + 0x10]
	shl	rdi, 6
	add	rdi, r12
	mov	ebp, eax
	mov	edx, dword ptr [rsp + 0xc]
	jmp	.label_260
.label_177:
	mov	rdi, r12
.label_260:
	test	dl, 1
	jne	.label_228
	cmp	byte ptr [rip + balance_columns],  1
	jne	.label_228
	mov	qword ptr [rdi + 32], OFFSET FLAT:store_char
	mov	qword ptr [rdi + 24], OFFSET FLAT:print_stored
	jmp	.label_233
.label_228:
	mov	qword ptr [rdi + 32], OFFSET FLAT:print_char
	mov	qword ptr [rdi + 24], OFFSET FLAT:read_line
.label_233:
	xor	esi, esi
	cmp	byte ptr [rip + numbered_lines],  1
	jne	.label_240
	mov	sil, byte ptr [rip + parallel_files]
	cmp	ebp, 1
	sete	bl
	xor	sil, 1
	or	sil, bl
.label_240:
	and	sil, 1
	mov	byte ptr [rdi + 0x38], sil
	mov	dword ptr [rdi + 0x34], ecx
	mov	ecx, dword ptr [rip + line_count]
	mov	dword ptr [rip + line_number],  ecx
	jmp	.label_244
	nop	dword ptr [rax]
.label_324:
	xor	ecx, ecx
	cmp	dword ptr [r12 + 0x10], 3
	setne	cl
	mov	dword ptr [rip + files_ready_to_read],  ecx
	xor	edx, edx
.label_244:
	test	dl, 1
	jne	.label_253
	mov	dword ptr [rip + buff_current],  0
	mov	cl, byte ptr [rip + balance_columns]
	mov	edx, ecx
	not	dl
	movzx	edi, dl
	mov	edx, edi
	and	edx, 1
	mov	r14d, eax
	sub	r14d, edx
	test	r14d, r14d
	jle	.label_255
	shl	edi, 0x1f
	sar	edi, 0x1f
	lea	ebp, [rax + rdi]
	lea	edx, [rax + rdi - 1]
	and	ebp, 7
	cmp	edx, 7
	mov	rsi, r12
	jb	.label_294
	mov	edx, ebp
	sub	edx, eax
	sub	edx, edi
	mov	rsi, r12
	nop	dword ptr [rax + rax]
.label_130:
	mov	dword ptr [rsi + 0x2c], 0
	mov	dword ptr [rsi + 0x6c], 0
	mov	dword ptr [rsi + 0xac], 0
	mov	dword ptr [rsi + 0xec], 0
	mov	dword ptr [rsi + 0x12c], 0
	mov	dword ptr [rsi + 0x16c], 0
	mov	dword ptr [rsi + 0x1ac], 0
	mov	dword ptr [rsi + 0x1ec], 0
	add	rsi, 0x200
	add	edx, 8
	jne	.label_130
.label_294:
	test	ebp, ebp
	je	.label_245
	add	rsi, 0x2c
	neg	ebp
.label_288:
	mov	dword ptr [rsi], 0
	add	rsi, 0x40
	inc	ebp
	jne	.label_288
.label_245:
	test	r14d, r14d
	jle	.label_255
	mov	edx, dword ptr [rip + files_ready_to_read]
	test	edx, edx
	je	.label_255
	mov	r15d, 1
	xor	eax, eax
	xor	r13d, r13d
.label_336:
	mov	dword ptr [r12 + 0x28], r13d
	test	edx, edx
	je	.label_299
	mov	esi, dword ptr [rip + lines_per_body]
	test	esi, esi
	je	.label_299
	mov	ecx, dword ptr [r12 + 0x10]
	mov	ebx, 1
	sub	ebx, esi
	mov	ebp, eax
	nop	dword ptr [rax]
.label_331:
	test	ecx, ecx
	je	.label_308
	mov	eax, ebp
	jmp	.label_167
	nop	dword ptr [rax + rax]
.label_308:
	mov	dword ptr [rip + input_position],  0
	mov	rdi, r12
	call	read_line
	test	al, al
	jne	.label_317
	mov	rdi, r12
	call	read_rest_of_line
.label_317:
	mov	ecx, dword ptr [r12 + 0x10]
	mov	eax, dword ptr [rip + buff_current]
	test	ecx, ecx
	je	.label_219
	cmp	ebp, eax
	jne	.label_219
	mov	eax, ebp
	jmp	.label_167
.label_219:
	inc	dword ptr [r12 + 0x2c]
	mov	edx, r13d
	mov	rsi, qword ptr [rip + line_vector]
	mov	dword ptr [rsi + rdx*4], ebp
	mov	esi, dword ptr [rip + input_position]
	inc	r13d
	mov	rdi, qword ptr [rip + end_vector]
	mov	dword ptr [rdi + rdx*4], esi
	nop	word ptr [rax + rax]
.label_167:
	mov	edx, dword ptr [rip + files_ready_to_read]
	test	ebx, ebx
	je	.label_299
	inc	ebx
	test	edx, edx
	mov	ebp, eax
	jne	.label_331
.label_299:
	cmp	r15d, r14d
	jge	.label_335
	inc	r15d
	add	r12, 0x40
	test	edx, edx
	jne	.label_336
.label_335:
	mov	cl, byte ptr [rip + balance_columns]
	mov	edx, r13d
	mov	rsi, qword ptr [rip + line_vector]
	mov	dword ptr [rsi + rdx*4], eax
	test	cl, cl
	jne	.label_138
	xor	r8d, r8d
	jmp	.label_143
	nop	dword ptr [rax]
.label_255:
	mov	rax, qword ptr [rip + line_vector]
	mov	dword ptr [rax], 0
	xor	r13d, r13d
	test	cl, 1
	mov	r8d, 0
	je	.label_143
.label_138:
	mov	r9d, dword ptr [rip + columns]
	mov	r8b, 1
	test	r9d, r9d
	jle	.label_143
	mov	rsi, qword ptr [rip + column_vector]
	mov	eax, r13d
	cdq	
	idiv	r9d
	lea	ebp, [r9 - 1]
	mov	r10d, r9d
	and	r10d, 3
	cmp	ebp, 3
	jae	.label_149
	mov	ebp, 1
	xor	ebx, ebx
	jmp	.label_157
.label_149:
	sub	r9d, r10d
	xor	ebp, ebp
	xor	ebx, ebx
.label_163:
	lea	r11d, [rbp + 1]
	xor	edi, edi
	xor	ecx, ecx
	cmp	r11d, edx
	setle	dil
	setl	cl
	add	edi, eax
	mov	dword ptr [rsi + 0x2c], edi
	mov	dword ptr [rsi + 0x28], ebx
	add	edi, ebx
	add	ecx, eax
	mov	dword ptr [rsi + 0x6c], ecx
	mov	dword ptr [rsi + 0x68], edi
	add	ecx, edi
	lea	ebx, [rbp + 3]
	xor	edi, edi
	cmp	ebx, edx
	setle	dil
	add	edi, eax
	mov	dword ptr [rsi + 0xac], edi
	mov	dword ptr [rsi + 0xa8], ecx
	add	edi, ecx
	add	ebp, 4
	xor	ebx, ebx
	cmp	ebp, edx
	setle	bl
	add	ebx, eax
	mov	dword ptr [rsi + 0xec], ebx
	mov	dword ptr [rsi + 0xe8], edi
	add	ebx, edi
	add	rsi, 0x100
	cmp	r9d, ebp
	jne	.label_163
	inc	ebp
.label_157:
	test	r10d, r10d
	je	.label_143
	add	rsi, 0x2c
	neg	r10d
	nop	word ptr cs:[rax + rax]
.label_187:
	xor	ecx, ecx
	cmp	ebp, edx
	setle	cl
	add	ecx, eax
	mov	dword ptr [rsi], ecx
	mov	dword ptr [rsi - 4], ebx
	add	ebx, ecx
	inc	ebp
	add	rsi, 0x40
	inc	r10d
	jne	.label_187
	nop	dword ptr [rax + rax]
.label_143:
	mov	eax, dword ptr [rip + columns]
	mov	r12, qword ptr [rip + column_vector]
	mov	ecx, eax
	dec	ecx
	mov	rdx, r12
	je	.label_191
	lea	edx, [rax - 2]
	and	ecx, 7
	cmp	edx, 7
	mov	rsi, r12
	jb	.label_196
	lea	edi, [rcx + 1]
	sub	edi, eax
	mov	rsi, r12
.label_203:
	mov	ebp, dword ptr [rsi + 0x2c]
	mov	dword ptr [rsi + 0x30], ebp
	mov	ebp, dword ptr [rsi + 0x6c]
	mov	dword ptr [rsi + 0x70], ebp
	mov	ebp, dword ptr [rsi + 0xac]
	mov	dword ptr [rsi + 0xb0], ebp
	mov	ebp, dword ptr [rsi + 0xec]
	mov	dword ptr [rsi + 0xf0], ebp
	mov	ebp, dword ptr [rsi + 0x12c]
	mov	dword ptr [rsi + 0x130], ebp
	mov	ebp, dword ptr [rsi + 0x16c]
	mov	dword ptr [rsi + 0x170], ebp
	mov	ebp, dword ptr [rsi + 0x1ac]
	mov	dword ptr [rsi + 0x1b0], ebp
	mov	ebp, dword ptr [rsi + 0x1ec]
	mov	dword ptr [rsi + 0x1f0], ebp
	add	rsi, 0x200
	add	edi, 8
	jne	.label_203
.label_196:
	test	ecx, ecx
	je	.label_223
	add	rsi, 0x30
	neg	ecx
	nop	word ptr [rax + rax]
.label_227:
	mov	edi, dword ptr [rsi - 4]
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	ecx
	jne	.label_227
.label_223:
	mov	ecx, edx
	shl	rcx, 6
	lea	rdx, [r12 + rcx + 0x40]
.label_191:
	test	r8b, r8b
	je	.label_234
	mov	ecx, dword ptr [rdx + 0x2c]
	mov	dword ptr [rdx + 0x30], ecx
	jmp	.label_241
	nop	dword ptr [rax + rax]
.label_234:
	cmp	dword ptr [rdx + 0x10], 0
	je	.label_239
	mov	dword ptr [rdx + 0x30], 0
	jmp	.label_241
.label_239:
	mov	ecx, dword ptr [rip + lines_per_body]
	mov	dword ptr [rdx + 0x30], ecx
	jmp	.label_241
.label_253:
	test	eax, eax
	je	.label_117
	mov	ecx, dword ptr [rip + lines_per_body]
	lea	esi, [rax - 1]
	mov	edx, eax
	and	edx, 3
	cmp	esi, 3
	mov	rsi, r12
	jb	.label_248
	mov	edi, edx
	sub	edi, eax
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_232:
	cmp	dword ptr [rsi + 0x10], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0x30], ebp
	cmp	dword ptr [rsi + 0x50], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0x70], ebp
	cmp	dword ptr [rsi + 0x90], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0xb0], ebp
	cmp	dword ptr [rsi + 0xd0], 0
	mov	ebp, 0
	cmove	ebp, ecx
	mov	dword ptr [rsi + 0xf0], ebp
	add	rsi, 0x100
	add	edi, 4
	jne	.label_232
.label_248:
	test	edx, edx
	je	.label_241
	add	rsi, 0x30
	neg	edx
	nop	
.label_264:
	cmp	dword ptr [rsi - 0x20], 0
	mov	edi, 0
	cmove	edi, ecx
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	edx
	jne	.label_264
.label_241:
	test	eax, eax
	je	.label_117
	mov	dl, byte ptr [rip + storing_columns]
	mov	ebp, eax
	and	ebp, 1
	xor	ecx, ecx
	cmp	eax, 1
	mov	rsi, r12
	je	.label_277
	mov	edi, ebp
	sub	edi, eax
	xor	ecx, ecx
	mov	rsi, r12
	nop	dword ptr [rax]
.label_296:
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_282
	test	dl, 1
	jne	.label_224
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_224
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_224
	nop	word ptr [rax + rax]
.label_282:
	inc	ecx
.label_224:
	cmp	dword ptr [rsi + 0x50], 2
	jb	.label_289
	test	dl, 1
	jne	.label_290
	cmp	dword ptr [rsi + 0x6c], 0
	jle	.label_290
	cmp	dword ptr [rsi + 0x70], 0
	jle	.label_290
	nop	dword ptr [rax]
.label_289:
	inc	ecx
.label_290:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_296
.label_277:
	test	ebp, ebp
	je	.label_297
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_298
	test	dl, 1
	jne	.label_297
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_297
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_297
	nop	word ptr cs:[rax + rax]
.label_298:
	inc	ecx
.label_297:
	test	ecx, ecx
	je	.label_117
	mov	cl, byte ptr [rip + extremities]
	test	cl, cl
	jne	.label_304
	mov	byte ptr [rip + print_a_header],  1
.label_304:
	mov	byte ptr [rip + pad_vertically],  0
	mov	r14d, dword ptr [rip + lines_per_body]
	mov	cl, byte ptr [rip + double_space]
	shl	r14d, cl
	xor	r15d, r15d
	test	r14d, r14d
	jg	.label_312
	jmp	.label_121
	nop	
.label_142:
	mov	r12, qword ptr [rip + column_vector]
	mov	dl, byte ptr [rip + storing_columns]
.label_312:
	mov	ebp, eax
	and	ebp, 1
	cmp	eax, 1
	mov	ecx, 0
	mov	rsi, r12
	je	.label_133
	mov	edi, ebp
	sub	edi, eax
	xor	ecx, ecx
	mov	rsi, r12
	nop	dword ptr [rax + rax]
.label_122:
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_327
	test	dl, 1
	jne	.label_328
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_328
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_328
	nop	word ptr [rax + rax]
.label_327:
	inc	ecx
.label_328:
	cmp	dword ptr [rsi + 0x50], 2
	jb	.label_333
	test	dl, 1
	jne	.label_118
	cmp	dword ptr [rsi + 0x6c], 0
	jle	.label_118
	cmp	dword ptr [rsi + 0x70], 0
	jle	.label_118
	nop	dword ptr [rax]
.label_333:
	inc	ecx
.label_118:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_122
.label_133:
	test	ebp, ebp
	je	.label_126
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_128
	test	dl, 1
	jne	.label_126
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_126
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_126
	nop	word ptr cs:[rax + rax]
.label_128:
	inc	ecx
.label_126:
	test	ecx, ecx
	je	.label_121
	mov	dword ptr [rip + output_position],  0
	mov	dword ptr [rip + spaces_not_printed],  0
	mov	dword ptr [rip + separators_not_printed],  0
	mov	byte ptr [rip + pad_vertically],  0
	mov	byte ptr [rip + align_empty_cols],  0
	mov	byte ptr [rip + empty_line],  1
	test	eax, eax
	jle	.label_222
	mov	r13d, 1
	nop	dword ptr [rax + rax]
.label_292:
	mov	dword ptr [rip + input_position],  0
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbx, rax
	shr	rbx, 0x20
	test	eax, eax
	jg	.label_303
	cmp	dword ptr [r12 + 0x10], 1
	jne	.label_165
.label_303:
	mov	byte ptr [rip + FF_only],  0
	mov	dword ptr [rip + padding_not_printed],  ebx
	mov	rdi, r12
	call	qword ptr [r12 + 0x18]
	test	al, al
	jne	.label_172
	mov	rdi, r12
	call	read_rest_of_line
.label_172:
	mov	r8b, byte ptr [rip + pad_vertically]
	and	r15b, 1
	or	r15b, r8b
	mov	rbx, qword ptr [r12 + 0x30]
	lea	eax, [rbx - 1]
	mov	dword ptr [r12 + 0x30], eax
	cmp	ebx, 1
	jg	.label_176
	mov	edx, dword ptr [rip + columns]
	xor	eax, eax
	test	edx, edx
	je	.label_184
	mov	rsi, qword ptr [rip + column_vector]
	mov	cl, byte ptr [rip + storing_columns]
	mov	ebp, edx
	and	ebp, 1
	xor	eax, eax
	cmp	edx, 1
	je	.label_186
	mov	edi, ebp
	sub	edi, edx
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_205:
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_210
	test	cl, 1
	jne	.label_192
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_192
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_192
	nop	word ptr [rax + rax]
.label_210:
	inc	eax
.label_192:
	cmp	dword ptr [rsi + 0x50], 2
	jb	.label_199
	test	cl, 1
	jne	.label_134
	cmp	dword ptr [rsi + 0x6c], 0
	jle	.label_134
	cmp	dword ptr [rsi + 0x70], 0
	jle	.label_134
	nop	dword ptr [rax]
.label_199:
	inc	eax
.label_134:
	sub	rsi, -0x80
	add	edi, 2
	jne	.label_205
.label_186:
	test	ebp, ebp
	je	.label_174
	cmp	dword ptr [rsi + 0x10], 2
	jb	.label_208
	test	cl, 1
	jne	.label_174
	cmp	dword ptr [rsi + 0x2c], 0
	jle	.label_174
	cmp	dword ptr [rsi + 0x30], 0
	jle	.label_174
.label_208:
	inc	eax
.label_174:
	test	eax, eax
	je	.label_213
.label_176:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_218
	mov	eax, dword ptr [r12 + 0x10]
	test	eax, eax
	je	.label_218
	cmp	byte ptr [rip + empty_line],  1
	jne	.label_220
	mov	byte ptr [rip + align_empty_cols],  1
	jmp	.label_218
.label_165:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_218
	cmp	byte ptr [rip + empty_line],  1
	jne	.label_221
	mov	byte ptr [rip + align_empty_cols],  1
	jmp	.label_218
.label_220:
	cmp	eax, 3
	je	.label_320
	cmp	eax, 2
	jne	.label_218
	cmp	byte ptr [rip + FF_only],  1
	jne	.label_218
.label_320:
	shr	rbx, 0x20
	mov	dword ptr [rip + padding_not_printed],  ebx
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, ebx
	sub	ebp, eax
	jle	.label_214
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	jne	.label_246
	cmp	ebp, ecx
	jle	.label_250
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_206
.label_221:
	mov	dword ptr [rip + padding_not_printed],  ebx
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, ebx
	sub	ebp, eax
	jle	.label_214
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_254
.label_246:
	sub	ebp, ecx
	mov	dword ptr [rip + spaces_not_printed],  ebp
	jmp	.label_258
.label_254:
	cmp	ebp, ecx
	jle	.label_250
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_262
.label_161:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_267
	nop	word ptr [rax + rax]
.label_206:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_161
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_267:
	dec	ebx
	jne	.label_206
	jmp	.label_250
.label_265:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_273
	nop	
.label_262:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_265
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_273:
	dec	ebx
	jne	.label_262
.label_250:
	mov	dword ptr [rip + output_position],  ebp
.label_258:
	mov	dword ptr [rip + padding_not_printed],  0
.label_214:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_216
	call	print_sep_string
.label_216:
	cmp	byte ptr [r12 + 0x38], 0
	je	.label_218
	mov	rdi, r12
	call	add_line_number
	nop	
.label_218:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_230
	inc	dword ptr [rip + separators_not_printed]
.label_230:
	add	r12, 0x40
	mov	eax, dword ptr [rip + columns]
	cmp	r13d, eax
	lea	ecx, [r13 + 1]
	mov	r13d, ecx
	jl	.label_292
	mov	r8b, byte ptr [rip + pad_vertically]
	jmp	.label_184
.label_213:
	mov	eax, edx
.label_184:
	test	r8b, r8b
	je	.label_222
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_300
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_153:
	dec	r14d
	mov	eax, dword ptr [rip + columns]
.label_222:
	test	eax, eax
	je	.label_309
	mov	rdx, qword ptr [rip + column_vector]
	mov	bl, byte ptr [rip + storing_columns]
	mov	esi, eax
	and	esi, 1
	xor	ecx, ecx
	cmp	eax, 1
	je	.label_311
	mov	edi, esi
	sub	edi, eax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_330:
	cmp	dword ptr [rdx + 0x10], 2
	jb	.label_318
	test	bl, 1
	jne	.label_247
	cmp	dword ptr [rdx + 0x2c], 0
	jle	.label_247
	cmp	dword ptr [rdx + 0x30], 0
	jle	.label_247
	nop	word ptr [rax + rax]
.label_318:
	inc	ecx
.label_247:
	cmp	dword ptr [rdx + 0x50], 2
	jb	.label_268
	test	bl, 1
	jne	.label_326
	cmp	dword ptr [rdx + 0x6c], 0
	jle	.label_326
	cmp	dword ptr [rdx + 0x70], 0
	jle	.label_326
	nop	dword ptr [rax]
.label_268:
	inc	ecx
.label_326:
	sub	rdx, -0x80
	add	edi, 2
	jne	.label_330
.label_311:
	test	esi, esi
	je	.label_168
	cmp	dword ptr [rdx + 0x10], 2
	jb	.label_332
	test	bl, 1
	jne	.label_168
	cmp	dword ptr [rdx + 0x2c], 0
	jle	.label_168
	cmp	dword ptr [rdx + 0x30], 0
	jle	.label_168
.label_332:
	inc	ecx
.label_168:
	test	ecx, ecx
	jne	.label_120
.label_309:
	mov	al, byte ptr [rip + extremities]
	test	al, al
	jne	.label_121
.label_120:
	test	r15b, 1
	je	.label_127
	mov	al, byte ptr [rip + double_space]
	xor	al, 1
	test	al, 1
	jne	.label_127
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_132
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_150:
	dec	r14d
.label_127:
	test	r14d, r14d
	jle	.label_121
	mov	eax, dword ptr [rip + columns]
	test	eax, eax
	jne	.label_142
	jmp	.label_146
.label_132:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_150
.label_300:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_153
	nop	word ptr [rax + rax]
.label_121:
	test	r14d, r14d
	jne	.label_146
	mov	esi, dword ptr [rip + columns]
	xor	r14d, r14d
	test	esi, esi
	jle	.label_146
	mov	rax, qword ptr [rip + column_vector]
	lea	edx, [rsi - 1]
	mov	ecx, esi
	and	ecx, 3
	cmp	edx, 3
	jb	.label_164
	mov	edx, ecx
	sub	edx, esi
	nop	word ptr cs:[rax + rax]
.label_182:
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_169
	mov	byte ptr [rax + 0x39], 1
.label_169:
	cmp	dword ptr [rax + 0x50], 0
	jne	.label_171
	mov	byte ptr [rax + 0x79], 1
.label_171:
	cmp	dword ptr [rax + 0x90], 0
	jne	.label_175
	mov	byte ptr [rax + 0xb9], 1
.label_175:
	cmp	dword ptr [rax + 0xd0], 0
	jne	.label_178
	mov	byte ptr [rax + 0xf9], 1
.label_178:
	add	rax, 0x100
	add	edx, 4
	jne	.label_182
.label_164:
	test	ecx, ecx
	je	.label_146
	add	rax, 0x39
	neg	ecx
	nop	dword ptr [rax]
.label_269:
	cmp	dword ptr [rax - 0x29], 0
	jne	.label_236
	mov	byte ptr [rax], 1
.label_236:
	add	rax, 0x40
	inc	ecx
	jne	.label_269
	nop	word ptr cs:[rax + rax]
.label_146:
	and	r15b, 1
	mov	byte ptr [rip + pad_vertically],  r15b
	je	.label_293
	mov	al, byte ptr [rip + extremities]
	test	al, al
	je	.label_307
.label_293:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_195
	cmp	byte ptr [rip + print_a_FF],  1
	jne	.label_195
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_141
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
.label_274:
	mov	byte ptr [rip + print_a_FF],  0
	jmp	.label_195
	nop	word ptr [rax + rax]
.label_307:
	mov	al, byte ptr [rip + use_form_feed]
	test	al, al
	je	.label_211
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_215
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_195
	nop	dword ptr [rax]
.label_211:
	mov	eax, r14d
	add	eax, 5
	je	.label_195
	mov	ebx, 0xfffffffb
	sub	ebx, r14d
	jmp	.label_225
.label_231:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_201
	nop	
.label_225:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_231
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_201:
	inc	ebx
	jne	.label_225
.label_195:
	mov	rax, qword ptr [rip + last_page_number]
	mov	rcx, qword ptr [rip + page_number]
	inc	rcx
	mov	qword ptr [rip + page_number],  rcx
	cmp	rax, rcx
	jb	.label_117
	mov	eax, dword ptr [rip + columns]
	mov	r12, qword ptr [rip + column_vector]
	test	eax, eax
	je	.label_243
	mov	edx, eax
	and	edx, 1
	cmp	eax, 1
	mov	rcx, r12
	je	.label_249
	mov	esi, edx
	sub	esi, eax
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_261:
	cmp	dword ptr [rcx + 0x10], 2
	jne	.label_310
	mov	dword ptr [rcx + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_310:
	cmp	dword ptr [rcx + 0x50], 2
	jne	.label_256
	mov	dword ptr [rcx + 0x50], 0
	inc	dword ptr [rip + files_ready_to_read]
.label_256:
	sub	rcx, -0x80
	add	esi, 2
	jne	.label_261
.label_249:
	test	edx, edx
	je	.label_243
	cmp	dword ptr [rcx + 0x10], 2
	jne	.label_243
	mov	dword ptr [rcx + 0x10], 0
	inc	dword ptr [rip + files_ready_to_read]
	nop	word ptr cs:[rax + rax]
.label_243:
	mov	cl, byte ptr [rip + storing_columns]
	test	cl, cl
	je	.label_324
	jmp	.label_253
.label_141:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_274
.label_215:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_195
.label_117:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_197:
	call	xalloc_die
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_160:
	call	integer_overflow
	nop	
	.section	.text
	.align	32
	#Procedure 0x404310

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_339
	cmp	byte ptr [r14 + 1], 0
	je	.label_343
.label_339:
	mov	qword ptr [rbx + 8], r14
	mov	esi, OFFSET FLAT:label_345
	mov	rdi, r14
	call	fopen_safer
	mov	qword ptr [rbx], rax
	jmp	.label_342
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rbx], rax
	mov	byte ptr [rip + have_read_stdin],  1
.label_342:
	test	rax, rax
	je	.label_344
	mov	esi, 2
	mov	rdi, rax
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [rip + total_files]
	mov	bl, 1
	jmp	.label_340
.label_344:
	mov	byte ptr [rip + failed_opens],  1
	mov	al, byte ptr [rip + ignore_failed_opens]
	test	al, al
	je	.label_346
	xor	ebx, ebx
	jmp	.label_340
.label_346:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_340:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r13, rdi
	movzx	ecx, byte ptr [r13]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_350
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_350:
	cmp	eax, 1
	sbb	r15d, r15d
	or	r15d, esi
	js	.label_354
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	je	.label_348
.label_354:
	cmp	qword ptr [rip + init_header.timespec],  0
	jne	.label_349
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_349:
	movdqu	xmm0, xmmword ptr [rip + init_header.timespec]
	movdqa	xmmword ptr [rsp], xmm0
	mov	r14, qword ptr [rsp + 8]
	lea	rsi, [rsp]
	jmp	.label_352
.label_348:
	movdqu	xmm0, xmmword ptr [rsp + 0xc0]
	lea	rsi, [rsp]
	movdqa	xmmword ptr [rsp], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r14, xmm0
.label_352:
	mov	rdi, qword ptr [rip + localtz]
	lea	rdx, [rsp + 0x30]
	call	localtime_rz
	test	rax, rax
	je	.label_353
	mov	rdx, qword ptr [rip + date_format]
	mov	r8, qword ptr [rip + localtz]
	lea	r12, [rsp + 0x30]
	xor	edi, edi
	mov	rsi, -1
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rax
	mov	rdx, qword ptr [rip + date_format]
	mov	r8, qword ptr [rip + localtz]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	jmp	.label_347
.label_353:
	mov	edi, 0x21
	call	xmalloc
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	imaxtostr
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_351
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	mov	r9d, r14d
	call	__sprintf_chk
.label_347:
	mov	rdi, qword ptr [rip + date_text]
	call	free
	mov	qword ptr [rip + date_text],  rbp
	mov	rax, qword ptr [rip + custom_header]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:label_17
	cmovs	r13, rcx
	test	rax, rax
	cmovne	r13, rax
	mov	qword ptr [rip + file_text],  r13
	mov	ebx, dword ptr [rip + chars_per_line]
	xor	esi, esi
	mov	rdi, rbp
	call	gnu_mbswidth
	sub	ebx, eax
	mov	rdi, qword ptr [rip + file_text]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	dword ptr [rip + header_width_available],  ebx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045c0

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	rbx, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_368
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_362:
	cmp	ebp, 0xc
	jne	.label_358
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_358
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_379
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_367:
	cmp	ebp, 0xa
	jne	.label_358
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_360
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_358:
	mov	al, byte ptr [rip + last_line]
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_366
	nop	
.label_375:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_366:
	cmp	eax, -1
	je	.label_371
	cmp	eax, 0xa
	je	.label_372
	cmp	eax, 0xc
	je	.label_374
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_375
	mov	rdi, rbx
	call	__uflow
	jmp	.label_366
.label_371:
	mov	rdi, r15
	call	close_file
	jmp	.label_372
.label_374:
	cmp	byte ptr [rip + last_line],  1
	jne	.label_356
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_355
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_356
.label_355:
	mov	esi, dword ptr [rip + columns]
	test	esi, esi
	je	.label_356
	mov	rax, qword ptr [rip + column_vector]
	lea	edx, [rsi - 1]
	mov	ecx, esi
	and	ecx, 7
	cmp	edx, 7
	jb	.label_365
	mov	edx, ecx
	sub	edx, esi
	nop	word ptr cs:[rax + rax]
.label_376:
	mov	byte ptr [rax + 0x39], 0
	mov	byte ptr [rax + 0x79], 0
	mov	byte ptr [rax + 0xb9], 0
	mov	byte ptr [rax + 0xf9], 0
	mov	byte ptr [rax + 0x139], 0
	mov	byte ptr [rax + 0x179], 0
	mov	byte ptr [rax + 0x1b9], 0
	mov	byte ptr [rax + 0x1f9], 0
	add	rax, 0x200
	add	edx, 8
	jne	.label_376
.label_365:
	test	ecx, ecx
	je	.label_356
	add	rax, 0x39
	neg	ecx
	nop	word ptr [rax + rax]
.label_369:
	mov	byte ptr [rax], 0
	add	rax, 0x40
	inc	ecx
	jne	.label_369
.label_356:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_364
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_359:
	cmp	edi, 0xa
	je	.label_361
	mov	rsi, rbx
	call	ungetc
.label_361:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_373
	mov	dword ptr [r15 + 0x10], 2
	jmp	.label_370
.label_373:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_370
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_377
	mov	esi, edx
	sub	esi, edi
.label_357:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_357
.label_377:
	test	edx, edx
	je	.label_370
	add	rax, 0x10
	neg	edx
	nop	
.label_363:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_363
.label_370:
	mov	dword ptr [r15 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_372:
	mov	al, byte ptr [rip + skip_count]
	test	al, al
	jne	.label_378
	cmp	r14d, 1
	setne	al
	cmp	ebp, 0xc
	je	.label_378
	and	al, byte ptr [rip + parallel_files]
	jne	.label_378
	inc	dword ptr [rip + line_count]
.label_378:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_368:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_362
.label_364:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_359
.label_379:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_367
.label_360:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_358
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x10], 3
	je	.label_385
	mov	rdi, qword ptr [rbx]
	test	byte ptr [rdi], 0x20
	jne	.label_382
	call	fileno
	test	eax, eax
	je	.label_380
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_382
.label_380:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_384
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_381
.label_384:
	mov	esi, dword ptr [rip + columns]
	test	esi, esi
	je	.label_381
	mov	rax, qword ptr [rip + column_vector]
	mov	ecx, esi
	and	ecx, 1
	cmp	esi, 1
	je	.label_388
	mov	edx, ecx
	sub	edx, esi
	nop	
.label_387:
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_383
	mov	dword ptr [rax + 0x30], 0
.label_383:
	mov	dword ptr [rax + 0x50], 3
	cmp	dword ptr [rax + 0x6c], 0
	jne	.label_386
	mov	dword ptr [rax + 0x70], 0
.label_386:
	sub	rax, -0x80
	add	edx, 2
	jne	.label_387
.label_388:
	test	ecx, ecx
	je	.label_381
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_381
	mov	dword ptr [rax + 0x30], 0
.label_381:
	dec	dword ptr [rip + files_ready_to_read]
.label_385:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_382:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404960

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	ebx, edi
	mov	ecx, dword ptr [rip + buff_current]
	cmp	rcx, qword ptr [rip + buff_allocated]
	mov	rax, qword ptr [rip + buff]
	jb	.label_389
	mov	esi, OFFSET FLAT:buff_allocated
	mov	rdi, rax
	call	x2realloc
	mov	qword ptr [rip + buff],  rax
	mov	ecx, dword ptr [rip + buff_current]
.label_389:
	lea	edx, [rcx + 1]
	mov	dword ptr [rip + buff_current],  edx
	mov	ecx, ecx
	mov	byte ptr [rax + rcx], bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b0

	.globl print_stored
	.type print_stored, @function
print_stored:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rax, [r14 + 1]
	mov	dword ptr [r15 + 0x28], eax
	mov	rax, qword ptr [rip + line_vector]
	movsxd	rbp, dword ptr [rax + r14*4]
	mov	rbx, qword ptr [rip + buff]
	add	rbx, rbp
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_404
	call	print_header
.label_404:
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_405
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	mov	rax, qword ptr [rip + column_vector]
	jle	.label_392
	lea	edx, [rdi - 1]
	mov	ecx, edi
	and	ecx, 7
	cmp	edx, 7
	mov	rdx, rax
	jb	.label_398
	mov	esi, ecx
	sub	esi, edi
	mov	rdx, rax
.label_402:
	mov	dword ptr [rdx + 0x10], 2
	mov	dword ptr [rdx + 0x50], 2
	mov	dword ptr [rdx + 0x90], 2
	mov	dword ptr [rdx + 0xd0], 2
	mov	dword ptr [rdx + 0x110], 2
	mov	dword ptr [rdx + 0x150], 2
	mov	dword ptr [rdx + 0x190], 2
	mov	dword ptr [rdx + 0x1d0], 2
	add	rdx, 0x200
	add	esi, 8
	jne	.label_402
.label_398:
	test	ecx, ecx
	je	.label_392
	add	rdx, 0x10
	neg	ecx
.label_406:
	mov	dword ptr [rdx], 2
	add	rdx, 0x40
	inc	ecx
	jne	.label_406
.label_392:
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_400
.label_405:
	mov	qword ptr [rsp], rbp
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, dword ptr [rip + padding_not_printed]
	mov	r13d, ebp
	sub	r13d, eax
	jle	.label_401
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_390
	sub	r13d, ecx
	mov	dword ptr [rip + spaces_not_printed],  r13d
	jmp	.label_396
.label_390:
	cmp	r13d, ecx
	jle	.label_399
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_394
.label_400:
	cmp	byte ptr [rip + extremities],  1
	jne	.label_397
	mov	byte ptr [rip + pad_vertically],  0
	jmp	.label_397
.label_407:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_393
	nop	dword ptr [rax]
.label_394:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_407
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_393:
	dec	ebp
	jne	.label_394
.label_399:
	mov	dword ptr [rip + output_position],  r13d
.label_396:
	mov	dword ptr [rip + padding_not_printed],  0
.label_401:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_391
	call	print_sep_string
.label_391:
	mov	rax, qword ptr [rsp]
	cmp	eax, r12d
	je	.label_395
	sub	r12, rax
	nop	dword ptr [rax + rax]
.label_403:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	jne	.label_403
.label_395:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jne	.label_397
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax, qword ptr [rip + end_vector]
	mov	eax, dword ptr [rax + r14*4]
	add	eax, edx
	mov	dword ptr [rip + output_position],  eax
	mov	ecx, dword ptr [rip + col_sep_length]
	sub	edx, ecx
	cmp	edx, dword ptr [rip + chars_per_margin]
	jne	.label_397
	sub	eax, ecx
	mov	dword ptr [rip + output_position],  eax
.label_397:
	mov	al, 1
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl print_char
	.type print_char, @function
print_char:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	byte ptr [rip + tabify_output],  1
	jne	.label_408
	mov	eax, dword ptr [rip + spaces_not_printed]
	cmp	bl, 0x20
	jne	.label_413
	inc	eax
	mov	dword ptr [rip + spaces_not_printed],  eax
	jmp	.label_412
.label_413:
	test	eax, eax
	jle	.label_409
	call	print_white_space
.label_409:
	movzx	r14d, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_411
	cmp	bl, 8
	jne	.label_408
	dec	dword ptr [rip + output_position]
	jmp	.label_408
.label_411:
	inc	dword ptr [rip + output_position]
.label_408:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_410
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_412:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_410:
	movzx	esi, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl read_line
	.type read_line, @function
read_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdi
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_439
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_470:
	mov	ebp, dword ptr [rip + input_position]
	cmp	ebx, 0xc
	jne	.label_421
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_446
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_451
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_428:
	cmp	ebx, 0xa
	jne	.label_421
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_458
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_421:
	mov	byte ptr [r13 + 0x39], 0
	cmp	ebx, -1
	je	.label_465
	cmp	ebx, 0xa
	je	.label_469
	cmp	ebx, 0xc
	je	.label_471
	movsx	edi, bl
	call	char_to_clump
	mov	r12d, eax
.label_469:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_414
	mov	eax, dword ptr [rip + input_position]
	cmp	eax, dword ptr [rip + chars_per_column]
	jle	.label_414
	mov	dword ptr [rip + input_position],  ebp
	xor	r15d, r15d
	jmp	.label_420
.label_414:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_423
	mov	byte ptr [rip + pad_vertically],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_416
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_416
	call	print_header
.label_416:
	cmp	byte ptr [rip + parallel_files],  1
	jne	.label_437
	cmp	byte ptr [rip + align_empty_cols],  1
	jne	.label_437
	mov	dword ptr [rsp], ebx
	mov	eax, dword ptr [rip + separators_not_printed]
	mov	dword ptr [rip + separators_not_printed],  0
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jle	.label_442
	mov	ebx, 1
	mov	rbp, qword ptr [rip + column_vector]
	nop	
.label_432:
	mov	r15d, dword ptr [rbp + 0x34]
	mov	dword ptr [rip + padding_not_printed],  r15d
	mov	eax, dword ptr [rip + col_sep_length]
	mov	r14d, r15d
	sub	r14d, eax
	jle	.label_450
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_475
	sub	r14d, ecx
	mov	dword ptr [rip + spaces_not_printed],  r14d
	jmp	.label_460
	nop	word ptr cs:[rax + rax]
.label_475:
	cmp	r14d, ecx
	jle	.label_467
	sub	r15d, ecx
	sub	r15d, eax
	jmp	.label_419
.label_474:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_447
	nop	dword ptr [rax]
.label_419:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_474
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_447:
	dec	r15d
	jne	.label_419
.label_467:
	mov	dword ptr [rip + output_position],  r14d
.label_460:
	mov	dword ptr [rip + padding_not_printed],  0
.label_450:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_425
	call	print_sep_string
.label_425:
	cmp	byte ptr [rbp + 0x38], 0
	je	.label_430
	mov	rdi, rbp
	call	add_line_number
.label_430:
	inc	dword ptr [rip + separators_not_printed]
	add	rbp, 0x40
	cmp	ebx, dword ptr [rsp + 4]
	lea	eax, [rbx + 1]
	mov	ebx, eax
	jne	.label_432
.label_442:
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [rip + padding_not_printed],  eax
	mov	al, byte ptr [rip + truncate_lines]
	xor	ecx, ecx
	test	al, al
	cmovne	ecx, dword ptr [rip + chars_per_column]
	mov	dword ptr [rip + spaces_not_printed],  ecx
	mov	byte ptr [rip + align_empty_cols],  0
	mov	ebx, dword ptr [rsp]
.label_437:
	mov	eax, dword ptr [rip + col_sep_length]
	mov	ebp, dword ptr [rip + padding_not_printed]
	mov	r14d, ebp
	sub	r14d, eax
	jle	.label_445
	mov	ecx, dword ptr [rip + output_position]
	mov	dl, byte ptr [rip + tabify_output]
	test	dl, dl
	je	.label_452
	sub	r14d, ecx
	mov	dword ptr [rip + spaces_not_printed],  r14d
	jmp	.label_457
.label_465:
	mov	rdi, r13
	call	close_file
	jmp	.label_463
.label_446:
	mov	byte ptr [r13 + 0x39], 0
.label_471:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_464
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_461:
	cmp	edi, 0xa
	je	.label_448
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_448:
	mov	byte ptr [rip + FF_only],  1
	cmp	byte ptr [rip + print_a_header],  1
	jne	.label_418
	cmp	byte ptr [rip + storing_columns],  1
	jne	.label_418
	mov	byte ptr [rip + pad_vertically],  1
	call	print_header
	jmp	.label_424
.label_418:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_424
	mov	byte ptr [rip + print_a_FF],  1
.label_424:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_427
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_435
.label_427:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_435
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_438
	mov	esi, edx
	sub	esi, edi
.label_431:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_431
.label_438:
	test	edx, edx
	je	.label_435
	add	rax, 0x10
	neg	edx
	nop	
.label_426:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_426
.label_435:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_463:
	mov	r15b, 1
	jmp	.label_420
.label_452:
	cmp	r14d, ecx
	jle	.label_472
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_422
.label_439:
	call	__uflow
	mov	ebx, eax
	jmp	.label_470
.label_415:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_454
	nop	word ptr cs:[rax + rax]
.label_422:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_415
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_454:
	dec	ebp
	jne	.label_422
.label_472:
	mov	dword ptr [rip + output_position],  r14d
.label_457:
	mov	dword ptr [rip + padding_not_printed],  0
.label_445:
	cmp	byte ptr [rip + use_col_separator],  1
	jne	.label_423
	call	print_sep_string
.label_423:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_433
	mov	rdi, r13
	call	add_line_number
.label_433:
	mov	byte ptr [rip + empty_line],  0
	mov	r15b, 1
	cmp	ebx, 0xa
	je	.label_420
	test	r12d, r12d
	je	.label_441
	mov	rbp, qword ptr [rip + clump_buff]
	nop	dword ptr [rax]
.label_444:
	movsx	edi, byte ptr [rbp]
	inc	rbp
	call	qword ptr [r13 + 0x20]
	dec	r12d
	jne	.label_444
	jmp	.label_441
	nop	word ptr cs:[rax + rax]
.label_417:
	test	ebp, ebp
	je	.label_441
	mov	rbx, qword ptr [rip + clump_buff]
	nop	dword ptr [rax + rax]
.label_455:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r13 + 0x20]
	dec	ebp
	jne	.label_455
	jmp	.label_441
.label_462:
	call	__uflow
	jmp	.label_459
	nop	word ptr [rax + rax]
.label_441:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_462
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	eax, byte ptr [rax]
.label_459:
	cmp	eax, -1
	je	.label_468
	cmp	eax, 0xa
	je	.label_420
	cmp	eax, 0xc
	je	.label_473
	mov	ebx, dword ptr [rip + input_position]
	movsx	edi, al
	call	char_to_clump
	mov	ebp, eax
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_417
	mov	eax, dword ptr [rip + input_position]
	cmp	eax, dword ptr [rip + chars_per_column]
	jle	.label_417
	mov	dword ptr [rip + input_position],  ebx
	xor	r15d, r15d
	jmp	.label_420
.label_468:
	mov	rdi, r13
	call	close_file
	jmp	.label_420
.label_473:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_429
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_434:
	cmp	edi, 0xa
	je	.label_466
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_466:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_440
	mov	byte ptr [rip + print_a_FF],  1
.label_440:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_443
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_436
.label_443:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_436
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_449
	mov	esi, edx
	sub	esi, edi
.label_456:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_456
.label_449:
	test	edx, edx
	je	.label_436
	add	rax, 0x10
	neg	edx
	nop	dword ptr [rax + rax]
.label_453:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_453
.label_436:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_420:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_464:
	call	__uflow
	mov	edi, eax
	jmp	.label_461
.label_451:
	call	__uflow
	mov	ebx, eax
	jmp	.label_428
.label_458:
	call	__uflow
	mov	ebx, eax
	jmp	.label_421
.label_429:
	call	__uflow
	mov	edi, eax
	jmp	.label_434
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x118
	mov	dword ptr [rip + output_position],  0
	mov	ebx, dword ptr [rip + chars_per_margin]
	mov	al, byte ptr [rip + tabify_output]
	test	al, al
	je	.label_480
	mov	dword ptr [rip + spaces_not_printed],  ebx
	jmp	.label_482
.label_480:
	test	ebx, ebx
	jle	.label_485
	mov	ebp, ebx
	jmp	.label_477
.label_476:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_483
	nop	word ptr cs:[rax + rax]
.label_477:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_476
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_483:
	dec	ebp
	jne	.label_477
.label_485:
	mov	dword ptr [rip + output_position],  ebx
.label_482:
	call	print_white_space
	cmp	qword ptr [rip + page_number],  0
	je	.label_478
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rip + page_number]
	lea	r15, [rsp]
	mov	esi, 1
	mov	edx, 0x114
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	ebx, dword ptr [rip + header_width_available]
	xor	esi, esi
	mov	rdi, r15
	call	gnu_mbswidth
	sub	ebx, eax
	cmovs	ebx, r14d
	mov	r9d, ebx
	sar	r9d, 1
	sub	ebx, r9d
	mov	edx, dword ptr [rip + chars_per_margin]
	mov	r8, qword ptr [rip + date_text]
	sub	rsp, 8
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_481
	mov	ecx, OFFSET FLAT:label_17
	mov	eax, 0
	push	r15
	push	OFFSET FLAT:label_147
	push	rbx
	push	qword ptr [rip + file_text]
	push	OFFSET FLAT:label_147
	call	__printf_chk
	add	rsp, 0x30
	mov	byte ptr [rip + print_a_header],  0
	mov	dword ptr [rip + output_position],  0
	add	rsp, 0x118
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_478:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	cmp	dword ptr [rip + separators_not_printed],  0
	jle	.label_486
	mov	r12d, dword ptr [rip + col_sep_length]
	mov	r14, qword ptr [rip + col_sep_string]
	nop	word ptr cs:[rax + rax]
.label_489:
	lea	eax, [r12 - 1]
	test	r12d, r12d
	jle	.label_496
	mov	r15d, eax
	mov	rbx, r14
	jmp	.label_490
	nop	word ptr cs:[rax + rax]
.label_496:
	mov	r12d, eax
	jmp	.label_491
.label_488:
	movzx	esi, al
	call	__overflow
	jmp	.label_495
	nop	
.label_490:
	movzx	eax, byte ptr [rbx]
	mov	ecx, dword ptr [rip + spaces_not_printed]
	cmp	al, 0x20
	jne	.label_492
	inc	ecx
	mov	dword ptr [rip + spaces_not_printed],  ecx
	jmp	.label_494
	nop	word ptr [rax + rax]
.label_492:
	test	ecx, ecx
	jle	.label_487
	call	print_white_space
	movzx	eax, byte ptr [rbx]
.label_487:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_488
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_495:
	inc	dword ptr [rip + output_position]
.label_494:
	inc	rbx
	dec	r12d
	jg	.label_490
	lea	r14, [r14 + r15 + 1]
	mov	r12d, 0xffffffff
.label_491:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_493
	call	print_white_space
.label_493:
	mov	eax, dword ptr [rip + separators_not_printed]
	lea	ecx, [rax - 1]
	mov	dword ptr [rip + separators_not_printed],  ecx
	cmp	eax, 1
	jg	.label_489
.label_497:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_486:
	cmp	dword ptr [rip + spaces_not_printed],  0
	jle	.label_497
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	print_white_space
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	push	r14
	push	rbx
	mov	ebx, dword ptr [rip + output_position]
	mov	eax, dword ptr [rip + spaces_not_printed]
	lea	r14d, [rax + rbx]
	cmp	eax, 2
	jge	.label_504
	mov	ecx, ebx
	jmp	.label_501
	nop	dword ptr [rax]
.label_503:
	movzx	eax, byte ptr [rip + output_tab_char]
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_498
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_499:
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_504
	jmp	.label_501
.label_498:
	movzx	esi, al
	call	__overflow
	jmp	.label_499
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	ecx, ebx
	mov	ebx, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r14d
	sub	ebp, ebx
	jge	.label_503
.label_501:
	cmp	ecx, r14d
	jge	.label_500
	mov	ebx, r14d
	sub	ebx, ecx
	nop	word ptr cs:[rax + rax]
.label_502:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebx
	jne	.label_502
.label_500:
	mov	dword ptr [rip + output_position],  r14d
	mov	dword ptr [rip + spaces_not_printed],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	mov	r14, qword ptr [rip + clump_buff]
	mov	al, byte ptr [rip + input_tab_char]
	cmp	al, bl
	mov	ecx, 8
	cmove	ecx, dword ptr [rip + chars_per_input_tab]
	cmp	bl, 9
	je	.label_508
	cmp	al, bl
	je	.label_508
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_505
	cmp	byte ptr [rip + use_esc_sequence],  1
	je	.label_509
	cmp	byte ptr [rip + use_cntrl_prefix],  1
	jne	.label_513
	test	bl, bl
	js	.label_509
	mov	byte ptr [r14], 0x5e
	xor	bl, 0x40
	mov	byte ptr [r14 + 1], bl
	mov	ebp, 2
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, 2
	jmp	.label_506
.label_508:
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, r15d
	cdq	
	idiv	ecx
	mov	ebp, ecx
	sub	ebp, edx
	cmp	byte ptr [rip + untabify_input],  1
	jne	.label_510
	xor	eax, eax
	test	ebp, ebp
	je	.label_515
	dec	ecx
	sub	ecx, edx
	inc	rcx
	mov	esi, 0x20
	mov	rdi, r14
	mov	rdx, rcx
	call	memset
	mov	eax, ebp
	jmp	.label_507
.label_505:
	mov	byte ptr [r14], bl
	mov	ebp, 1
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, 1
	jmp	.label_506
.label_510:
	mov	byte ptr [r14], bl
	mov	eax, 1
.label_507:
	test	ebp, ebp
	jns	.label_511
	test	r15d, r15d
	jne	.label_511
	mov	dword ptr [rip + input_position],  0
	xor	eax, eax
	jmp	.label_512
.label_511:
	test	ebp, ebp
	setns	cl
	mov	edx, ebp
	neg	edx
	cmp	r15d, edx
	jg	.label_506
	test	cl, cl
	jne	.label_506
	mov	dword ptr [rip + input_position],  0
	jmp	.label_512
.label_509:
	mov	byte ptr [r14], 0x5c
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:label_514
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
	mov	al, byte ptr [rsp + 4]
	mov	byte ptr [r14 + 1], al
	mov	al, byte ptr [rsp + 5]
	mov	byte ptr [r14 + 2], al
	mov	al, byte ptr [rsp + 6]
	mov	byte ptr [r14 + 3], al
	mov	ebp, 4
	mov	r15d, dword ptr [rip + input_position]
	mov	eax, 4
	jmp	.label_506
.label_515:
	xor	ebp, ebp
.label_506:
	add	ebp, r15d
	mov	dword ptr [rip + input_position],  ebp
.label_512:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_513:
	mov	byte ptr [r14], bl
	xor	eax, eax
	cmp	bl, 8
	mov	ebp, 0xffffffff
	cmovne	ebp, eax
	mov	eax, 1
	mov	r15d, dword ptr [rip + input_position]
	jmp	.label_507
	nop	
	.section	.text
	.align	32
	#Procedure 0x405730

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [rip + number_buff]
	mov	r8d, dword ptr [rip + chars_per_number]
	mov	r9d, dword ptr [rip + line_number]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_521
	xor	eax, eax
	call	__sprintf_chk
	inc	dword ptr [rip + line_number]
	mov	ebp, dword ptr [rip + chars_per_number]
	test	ebp, ebp
	jle	.label_518
	sub	eax, ebp
	movsxd	rbx, eax
	add	rbx, qword ptr [rip + number_buff]
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_523:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_523
.label_518:
	cmp	dword ptr [rip + columns],  2
	jl	.label_519
	mov	al, byte ptr [rip + number_separator]
	cmp	al, 9
	jne	.label_520
	mov	ebx, dword ptr [rip + number_width]
	mov	eax, dword ptr [rip + chars_per_number]
	cmp	ebx, eax
	jle	.label_516
	inc	ebx
	sub	ebx, eax
	nop	dword ptr [rax + rax]
.label_522:
	mov	edi, 0x20
	call	qword ptr [r14 + 0x20]
	dec	ebx
	cmp	ebx, 1
	jg	.label_522
	jmp	.label_516
.label_519:
	movsx	edi, byte ptr [rip + number_separator]
	call	qword ptr [r14 + 0x20]
	cmp	byte ptr [rip + number_separator],  9
	jne	.label_516
	mov	ecx, dword ptr [rip + output_position]
	mov	esi, dword ptr [rip + chars_per_output_tab]
	mov	eax, ecx
	cdq	
	idiv	esi
	add	esi, ecx
	sub	esi, edx
	mov	dword ptr [rip + output_position],  esi
	jmp	.label_516
.label_520:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_516:
	cmp	byte ptr [rip + truncate_lines],  1
	jne	.label_517
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	jne	.label_517
	mov	eax, dword ptr [rip + number_width]
	add	dword ptr [rip + input_position],  eax
.label_517:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	jmp	.label_524
.label_530:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_529
	nop	word ptr cs:[rax + rax]
.label_524:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_530
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_529:
	cmp	eax, -1
	je	.label_533
	cmp	eax, 0xa
	je	.label_535
	cmp	eax, 0xc
	jne	.label_524
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_527
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_534:
	cmp	edi, 0xa
	je	.label_531
	mov	rsi, rbx
	call	ungetc
.label_531:
	cmp	byte ptr [rip + keep_FF],  1
	jne	.label_532
	mov	byte ptr [rip + print_a_FF],  1
.label_532:
	mov	al, byte ptr [rip + parallel_files]
	test	al, al
	je	.label_537
	mov	dword ptr [r14 + 0x10], 2
	jmp	.label_525
.label_533:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	close_file
.label_537:
	mov	edi, dword ptr [rip + columns]
	test	edi, edi
	je	.label_525
	mov	rax, qword ptr [rip + column_vector]
	movzx	ecx, byte ptr [rip + storing_columns]
	inc	ecx
	lea	esi, [rdi - 1]
	mov	edx, edi
	and	edx, 7
	cmp	esi, 7
	jb	.label_536
	mov	esi, edx
	sub	esi, edi
	nop	
.label_528:
	mov	dword ptr [rax + 0x10], ecx
	mov	dword ptr [rax + 0x50], ecx
	mov	dword ptr [rax + 0x90], ecx
	mov	dword ptr [rax + 0xd0], ecx
	mov	dword ptr [rax + 0x110], ecx
	mov	dword ptr [rax + 0x150], ecx
	mov	dword ptr [rax + 0x190], ecx
	mov	dword ptr [rax + 0x1d0], ecx
	add	rax, 0x200
	add	esi, 8
	jne	.label_528
.label_536:
	test	edx, edx
	je	.label_525
	add	rax, 0x10
	neg	edx
	nop	
.label_526:
	mov	dword ptr [rax], ecx
	add	rax, 0x40
	inc	edx
	jne	.label_526
.label_525:
	mov	dword ptr [r14 + 0x30], 0
	dec	dword ptr [rip + files_ready_to_read]
.label_535:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_527:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_534
	nop	
	.section	.text
	.align	32
	#Procedure 0x405980
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405990
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_543
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_539
	cmp	dword ptr [rbp], 0x20
	jne	.label_539
.label_543:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_541
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_538
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_540
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_541:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_540:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_542
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a60
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_544
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_544:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a90

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_546
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_548
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_549
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_545
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_546
.label_545:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_547
.label_548:
	mov	rax, rbx
	jmp	.label_546
.label_549:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_547:
	xor	eax, eax
.label_546:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b30
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_551
	cmp	byte ptr [rax], 0x43
	jne	.label_553
	cmp	byte ptr [rax + 1], 0
	je	.label_550
.label_553:
	mov	esi, OFFSET FLAT:label_552
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_551
.label_550:
	xor	ebx, ebx
.label_551:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_554
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_555:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_555
	jmp	.label_557
.label_554:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_556:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_556
	mov	byte ptr [rsi], 0x2d
.label_557:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c50

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	mov	edx, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c70

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_560
	xor	ebp, ebp
	test	r15, r15
	jle	.label_563
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 4], eax
	and	r14d, 1
	mov	eax, r14d
	xor	eax, 1
	mov	dword ptr [rsp + 0xc], eax
	lea	eax, [r14*4]
	xor	eax, 5
	mov	dword ptr [rsp + 8], eax
	xor	ebp, ebp
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_576:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_572
	jmp	qword ptr [(rax * 8) + label_574]
.label_1342:
	inc	rbx
	inc	ebp
.label_577:
	cmp	rbx, r12
	jb	.label_576
	jmp	.label_563
.label_572:
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr [rax + rax]
.label_575:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp]
	mov	rsi, rbx
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	r13, rax
	cmp	r13, -2
	je	.label_565
	test	r13, r13
	je	.label_566
	cmp	r13, -1
	jne	.label_568
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_561
	inc	rbx
	inc	ebp
	mov	ecx, 5
	jmp	.label_561
	nop	word ptr cs:[rax + rax]
.label_565:
	add	ebp, dword ptr [rsp + 0xc]
	test	r14d, r14d
	cmove	rbx, r12
	mov	ecx, dword ptr [rsp + 8]
	jmp	.label_561
	nop	word ptr cs:[rax + rax]
.label_566:
	mov	r13d, 1
.label_568:
	mov	edi, dword ptr [rsp]
	call	wcwidth
	test	eax, eax
	js	.label_559
	mov	edx, 0x7fffffff
	sub	edx, ebp
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_561
	add	ebp, eax
	jmp	.label_564
.label_559:
	mov	ecx, 1
	cmp	dword ptr [rsp + 4], 0
	jne	.label_561
	mov	edi, dword ptr [rsp]
	call	iswcntrl
	test	eax, eax
	jne	.label_564
	cmp	ebp, 0x7fffffff
	jne	.label_569
	mov	ecx, 7
	mov	ebp, 0x7fffffff
	jmp	.label_561
.label_569:
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_564:
	add	rbx, r13
	xor	ecx, ecx
.label_561:
	and	cl, 7
	jne	.label_573
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_575
	jmp	.label_577
.label_573:
	cmp	cl, 5
	je	.label_577
	cmp	cl, 7
	mov	ecx, 0x7fffffff
	mov	eax, 0xffffffff
	cmove	eax, ecx
	jmp	.label_558
.label_560:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_562
.label_571:
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_562:
	cmp	rbx, r12
	jae	.label_567
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_570
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_563
	test	al, 2
	jne	.label_562
.label_570:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_571
	jmp	.label_563
.label_567:
	mov	ebp, r15d
.label_563:
	mov	eax, ebp
.label_558:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405e80

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_17
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_718
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_606
.label_718:
	xor	r8d, r8d
	jmp	.label_736
.label_703:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_765:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_765
.label_708:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_691
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_756:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_756
.label_691:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_719
.label_742:
	mov	esi, 0x20
.label_745:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_737:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_735:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_578
.label_762:
	mov	edi, 3
	jmp	.label_586
	nop	
.label_606:
	cmp	al, 0x25
	jne	.label_590
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1238:
	mov	ebx, eax
	mov	al, r12b
.label_612:
	mov	r12b, al
	inc	rbp
	jmp	.label_597
	nop	word ptr cs:[rax + rax]
.label_610:
	inc	rbp
	mov	r9d, edx
.label_597:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_604
	jmp	qword ptr [(rsi * 8) + label_607]
	nop	dword ptr [rax]
.label_604:
	cmp	edx, 0x5f
	je	.label_610
	cmp	edx, 0x5e
	je	.label_612
.label_1239:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_613
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_626:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_618
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_621
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_618
.label_621:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_618:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_626
.label_613:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_631
	cmp	r8d, 0x45
	jne	.label_633
.label_631:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_637
	nop	dword ptr [rax]
.label_590:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_643
	test	r10, r10
	mov	edx, 0
	je	.label_652
	cmp	ecx, 2
	jb	.label_677
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_677:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_652:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_643:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_587:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_578
	jmp	.label_688
.label_633:
	xor	r8d, r8d
.label_637:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_585
	mov	r15d, OFFSET FLAT:label_674
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_675]
.label_1256:
	cmp	r8d, 0x45
	je	.label_585
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_681
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_661
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_661:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_713
.label_1270:
	test	bl, bl
	je	.label_721
	mov	r12b, 1
.label_721:
	cmp	r8d, 0x45
	jne	.label_722
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_585
.label_1248:
	dec	rbp
	jmp	.label_585
.label_1249:
	test	r8d, r8d
	jne	.label_585
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_602
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_735
	cmp	eax, 2
	jb	.label_737
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_739
	cmp	r9d, 0x2b
	jne	.label_742
.label_739:
	mov	esi, 0x30
	jmp	.label_745
.label_1250:
	mov	edx, 1
	jmp	.label_747
	nop	word ptr [rax + rax]
.label_749:
	inc	rdx
.label_747:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_749
	cmp	bl, 0x7a
	jne	.label_585
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1287:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_752
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_725
	test	r9d, r9d
	je	.label_628
	xor	esi, esi
	jmp	.label_725
.label_1251:
	test	r8d, r8d
	jne	.label_585
	test	bl, bl
	je	.label_764
	mov	r12b, 1
.label_764:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_579
.label_1252:
	cmp	r8d, 0x45
	je	.label_585
	test	bl, bl
	je	.label_767
	mov	r12b, 1
.label_767:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_579
.label_1253:
	cmp	r8d, 0x45
	jne	.label_582
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_579
.label_1254:
	test	r8d, r8d
	jne	.label_585
	mov	r15d, OFFSET FLAT:label_592
	mov	r10d, 0xffffffff
	jmp	.label_593
.label_1255:
	test	r8d, r8d
	jne	.label_585
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_600
	test	ecx, ecx
	jns	.label_600
	mov	r15d, OFFSET FLAT:label_605
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_593
.label_1257:
	cmp	r8d, 0x45
	je	.label_585
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_614
.label_1258:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_585
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_580
.label_1259:
	cmp	r8d, 0x45
	je	.label_585
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_614
.label_1260:
	cmp	r8d, 0x45
	je	.label_585
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_627
	cmp	r11d, 8
	jg	.label_750
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_635
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_649:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_649
.label_635:
	test	edx, edx
	je	.label_655
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_748:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_748
.label_655:
	mov	edi, r11d
	jmp	.label_638
.label_1261:
	mov	dil, 1
.label_1279:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_664
	mov	r12d, 0
.label_664:
	je	.label_667
	mov	dil, 1
.label_667:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_660
.label_1262:
	cmp	r8d, 0x45
	je	.label_585
	mov	r13d, dword ptr [r11]
	jmp	.label_614
.label_1263:
	mov	r15d, OFFSET FLAT:label_671
.label_593:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_602
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_695
	cmp	rbx, rax
	jae	.label_697
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_699
	cmp	eax, 0x2b
	jne	.label_702
.label_699:
	mov	esi, 0x30
	jmp	.label_704
.label_1264:
	cmp	r8d, 0x45
	je	.label_585
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_710
.label_1265:
	cmp	r8d, 0x45
	je	.label_585
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_710:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_614
.label_1266:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_585
	mov	dl, 0x58
	jmp	.label_724
.label_1267:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_726
	cmp	r8d, 0x4f
	je	.label_585
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	sil
	add	r13d, 0x76c
	mov	r15d, 4
	jmp	.label_603
.label_1268:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_602
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_719
	cmp	r10, rax
	jae	.label_751
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_758
	cmp	r15d, 0x2b
	jne	.label_755
.label_758:
	mov	esi, 0x30
	jmp	.label_757
.label_1269:
	test	r8d, r8d
	jne	.label_585
	test	bl, bl
	je	.label_760
	mov	r12b, 1
.label_760:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_579
.label_1271:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_585
	mov	dl, 0x63
	jmp	.label_724
.label_1272:
	cmp	r8d, 0x45
	je	.label_585
	mov	r13d, dword ptr [r11 + 0xc]
.label_614:
	mov	edi, 2
	jmp	.label_580
.label_1273:
	cmp	r8d, 0x45
	je	.label_585
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_588
.label_1274:
	cmp	r8d, 0x45
	je	.label_585
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 3
	jmp	.label_594
.label_1275:
	cmp	r8d, 0x45
	je	.label_585
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_588
.label_1276:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_585
.label_588:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_580
.label_1277:
	cmp	r8d, 0x45
	je	.label_585
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 2
.label_594:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_620
.label_1278:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_602
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_634
	cmp	eax, 2
	jb	.label_639
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_672
	cmp	r9d, 0x2b
	jne	.label_644
.label_672:
	mov	esi, 0x30
	jmp	.label_645
.label_1280:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	esi, esi
.label_620:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_583
.label_1281:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_694:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_694
	xor	edx, edx
	mov	r8, r14
	mov	r10, r15
	mov	ebx, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_689
.label_1282:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_602
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_634
	cmp	eax, 2
	jb	.label_707
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_709
	cmp	r9d, 0x2b
	jne	.label_711
.label_709:
	mov	esi, 0x30
	jmp	.label_712
.label_1283:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_714
.label_1284:
	cmp	r8d, 0x45
	je	.label_585
	mov	r13d, dword ptr [r11 + 0x18]
.label_714:
	mov	edi, 1
.label_580:
	mov	r11, qword ptr [rsp + 8]
.label_666:
	mov	r10, qword ptr [rsp + 0x10]
.label_638:
	mov	esi, r13d
	shr	esi, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_583
.label_1285:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_585
	mov	dl, 0x78
	jmp	.label_724
.label_1286:
	cmp	r8d, 0x45
	jne	.label_729
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_579
.label_722:
	xor	eax, eax
	mov	edx, ecx
.label_579:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_660
.label_697:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_731
.label_681:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_741
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_741:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_713:
	cmp	esi, 0x47
	je	.label_759
	cmp	esi, 0x67
	jne	.label_761
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	r15d, 2
	jns	.label_763
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, esi
.label_763:
	xor	esi, esi
	jmp	.label_596
.label_752:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_578
.label_582:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	r15d, 2
	jmp	.label_603
.label_729:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	r15d, 2
	jns	.label_619
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, esi
.label_619:
	xor	esi, esi
.label_603:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_641
.label_759:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	sil
	lea	r13d, [r11 + rax + 0x76c]
	mov	r15d, 4
.label_596:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_641:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_648
	cmp	r15d, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	setb	bl
	cmp	r15d, r11d
	setl	dl
	or	dl, bl
.label_648:
	mov	rdi, r15
.label_583:
	cmp	r8d, 0x4f
	jne	.label_659
	test	sil, sil
	jne	.label_659
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_660
.label_659:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	sil, sil
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rbx, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	
.label_676:
	test	r14b, 1
	je	.label_662
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_662:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_676
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_676
	xor	eax, eax
.label_689:
	cmp	ebx, r11d
	cmovl	ebx, r11d
	test	dl, dl
	je	.label_682
	mov	dl, 0x2b
.label_682:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_684
	mov	esi, edx
.label_684:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_754
	test	sil, sil
	je	.label_647
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_602
	xor	ecx, ecx
	test	r10, r10
	je	.label_609
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_581
	test	al, al
	jne	.label_581
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_581
.label_754:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	r13, r13
	add	r13, rcx
	add	r13, rax
	test	r13d, r13d
	jle	.label_717
	cmp	r9d, 0x5f
	jne	.label_720
	movsxd	r14, r13d
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_602
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_723
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r8, rbx
	add	r15, r14
.label_723:
	add	r8, r14
	sub	r11d, r13d
	cmovg	edx, r11d
	test	sil, sil
	je	.label_732
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_602
	xor	r10d, r10d
	test	r15, r15
	je	.label_743
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_746
	test	al, al
	jne	.label_746
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	sil, byte ptr [rsp + 0x50]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_746:
	mov	byte ptr [r15], sil
	inc	r15
	mov	r10, r15
.label_743:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_647
.label_717:
	test	sil, sil
	je	.label_647
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_602
	xor	ecx, ecx
	test	r10, r10
	je	.label_609
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_581
	test	al, al
	jne	.label_581
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	mov	byte ptr [rsp + 0x50], sil
	je	.label_589
	cmp	eax, 0x2b
	jne	.label_595
.label_589:
	mov	esi, 0x30
	jmp	.label_599
.label_720:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_602
	test	sil, sil
	je	.label_693
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_602
	xor	ecx, ecx
	test	r10, r10
	je	.label_616
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_608
	test	al, al
	jne	.label_608
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	byte ptr [rsp + 0x50], sil
	je	.label_623
	cmp	eax, 0x2b
	jne	.label_686
.label_623:
	mov	esi, 0x30
	jmp	.label_624
.label_761:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_638
.label_732:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_647
.label_726:
	mov	dl, 0x59
.label_724:
	xor	eax, eax
.label_660:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_651
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_651:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_665
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_602
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_673
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_679
	test	al, al
	jne	.label_679
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_680
	cmp	eax, 0x2b
	jne	.label_685
.label_680:
	mov	esi, 0x30
	jmp	.label_687
.label_665:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_578
.label_679:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_692
.label_685:
	mov	esi, 0x20
.label_687:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_692:
	test	al, 1
	jne	.label_700
	test	r15b, 1
	jne	.label_701
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_706
.label_700:
	test	r10, r10
	je	.label_706
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_715
	lea	r8, [r9 + 1]
	nop	
.label_656:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_656
	dec	rbx
	mov	rsi, rbx
.label_715:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_706
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_653:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_653
	jmp	.label_706
.label_701:
	test	r10, r10
	je	.label_706
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_625
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_678:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_678
	dec	rbx
	mov	rsi, rbx
.label_625:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_706
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_744:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_744
.label_706:
	add	rdi, r10
	mov	rcx, rdi
.label_673:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_598
.label_751:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_601
.label_702:
	mov	esi, 0x20
.label_704:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_731:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_695:
	add	r8, r14
	jmp	.label_630
.label_628:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_725:
	cmp	r10, 3
	ja	.label_632
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_636]
.label_1356:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_586:
	xor	r14d, r14d
	jmp	.label_658
.label_600:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_605
	jmp	.label_593
.label_627:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_666
.label_632:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_669
.label_1359:
	test	r9d, r9d
	je	.label_670
.label_1358:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_658
.label_750:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_666
.label_755:
	mov	esi, 0x20
.label_757:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_601:
	test	bl, bl
	je	.label_690
	test	r10, r10
	je	.label_691
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_615
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_696
.label_690:
	test	al, al
	je	.label_698
	test	r10, r10
	je	.label_691
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_703
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_708
.label_615:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_716:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_716
.label_696:
	test	rcx, rcx
	je	.label_691
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_727:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_727
	jmp	.label_691
.label_644:
	mov	esi, 0x20
.label_645:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_639:
	mov	byte ptr [rdi], 0xa
	jmp	.label_734
.label_711:
	mov	esi, 0x20
.label_712:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_707:
	mov	byte ptr [rdi], 9
.label_734:
	inc	rdi
	mov	rcx, rdi
.label_634:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_578
.label_595:
	mov	esi, 0x20
.label_599:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_581:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_609:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_647
.label_698:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_691
.label_670:
	test	edi, edi
	je	.label_762
.label_1357:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_658:
	mov	r15d, 0x21
.label_669:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_766
	mov	dl, 1
	cmp	bl, 0x21
	je	.label_583
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_587
.label_766:
	mov	qword ptr [rsp + 0x20], rdi
.label_585:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
.label_683:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_683
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_602
	test	rdi, rdi
	mov	ecx, 0
	je	.label_622
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_629
	cmp	r12d, eax
	jae	.label_629
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_646
	cmp	r9d, 0x2b
	jne	.label_640
.label_646:
	mov	esi, 0x30
	jmp	.label_642
.label_640:
	mov	esi, 0x20
.label_642:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_629:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_650
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_654
.label_650:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_657
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_668:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_668
.label_657:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_654
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_753:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_753
.label_654:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_622:
	add	r8, rsi
.label_630:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_578
.label_686:
	mov	esi, 0x20
.label_624:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r10, rbx
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_608:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_616:
	add	r8, r15
	mov	r10, rcx
.label_693:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, r13d
	mov	eax, 0
	je	.label_705
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_705:
	add	r8, r15
	mov	r10, rax
.label_647:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_602
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_719
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_663
	test	al, al
	jne	.label_663
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_617
	cmp	eax, 0x2b
	jne	.label_728
.label_617:
	mov	esi, 0x30
	jmp	.label_730
.label_728:
	mov	esi, 0x20
.label_730:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_663:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_733
	test	r15, r15
	je	.label_591
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_740
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	word ptr [rax + rax]
.label_738:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_738
	sub	rdx, r12
.label_740:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_591
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_584:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_584
	jmp	.label_591
.label_733:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_591:
	add	r10, r15
	mov	rcx, r10
.label_719:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_598:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_578:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_606
.label_736:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_611
	test	r10, r10
	je	.label_611
	mov	byte ptr [r10], 0
.label_611:
	mov	qword ptr [rsp + 0x70], r8
.label_688:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_602:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_688
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407cb0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_771
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_773
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_768
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_773
	mov	esi, OFFSET FLAT:label_770
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_769
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_769:
	mov	rbx, r14
.label_773:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_771:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_772
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d60
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407da0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407db0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407dc0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e00
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e20
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_774
	test	rdx, rdx
	je	.label_774
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_774:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e50
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_873:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_871
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_856]
.label_1368:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_878
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_817
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1369:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_886
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_886
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_782:
	cmp	r14, r11
	jae	.label_778
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_778:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_782
.label_886:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_791
.label_1361:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_791
.label_1364:
	mov	al, 1
.label_1362:
	mov	r12b, 1
.label_1365:
	test	r12b, 1
	mov	cl, 1
	je	.label_807
	mov	ecx, eax
.label_807:
	mov	al, cl
.label_1363:
	test	r12b, 1
	jne	.label_810
	test	r11, r11
	je	.label_858
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_858:
	mov	r14d, 1
	jmp	.label_813
.label_810:
	xor	r14d, r14d
.label_813:
	mov	ecx, OFFSET FLAT:label_817
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_791
.label_1366:
	test	r12b, 1
	jne	.label_825
	test	r11, r11
	je	.label_827
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_827:
	mov	r14d, 1
	jmp	.label_830
.label_1367:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_831
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_791
.label_825:
	xor	r14d, r14d
.label_830:
	mov	eax, OFFSET FLAT:label_831
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_791:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_850
	nop	dword ptr [rax]
.label_784:
	inc	rsi
.label_850:
	cmp	rbp, -1
	je	.label_888
	cmp	rsi, rbp
	jne	.label_890
	jmp	.label_891
	nop	word ptr cs:[rax + rax]
.label_888:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_894
.label_890:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_895
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_835
	cmp	rbp, -1
	jne	.label_835
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_835:
	cmp	rbx, rbp
	jbe	.label_793
.label_895:
	xor	r8d, r8d
.label_822:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_795
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_799]
.label_1391:
	test	rsi, rsi
	jne	.label_786
	jmp	.label_805
	nop	word ptr cs:[rax + rax]
.label_793:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_818
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_822
	jmp	.label_829
.label_818:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_822
.label_1395:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_839
	test	rsi, rsi
	jne	.label_843
	cmp	rbp, 1
	je	.label_805
	xor	r13d, r13d
	jmp	.label_781
.label_1384:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_848
	cmp	byte ptr [rsp + 6], 0
	jne	.label_840
	cmp	r12d, 2
	jne	.label_855
	mov	eax, r9d
	and	al, 1
	jne	.label_855
	cmp	r14, r11
	jae	.label_859
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_859:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_863
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_863:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_881
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_881:
	add	r14, 3
	mov	r9b, 1
.label_855:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_874
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_874:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_876
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_876
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_876
	cmp	r14, r11
	jae	.label_811
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_811:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_792
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_792:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_781
.label_1385:
	mov	bl, 0x62
	jmp	.label_775
.label_1386:
	mov	cl, 0x74
	jmp	.label_797
.label_1387:
	mov	bl, 0x76
	jmp	.label_775
.label_1388:
	mov	bl, 0x66
	jmp	.label_775
.label_1389:
	mov	cl, 0x72
	jmp	.label_797
.label_1392:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_779
	cmp	byte ptr [rsp + 6], 0
	jne	.label_785
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_788
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_788:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_803
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_803:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_808
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_808:
	add	r14, 3
	xor	r9d, r9d
.label_779:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_781
.label_1393:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_815
	cmp	r12d, 2
	jne	.label_786
	cmp	byte ptr [rsp + 6], 0
	je	.label_786
	jmp	.label_785
.label_1394:
	cmp	r12d, 2
	jne	.label_826
	cmp	byte ptr [rsp + 6], 0
	jne	.label_785
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_780
.label_795:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_834
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_776:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_853
	test	r8b, r8b
	je	.label_853
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_781
.label_839:
	test	rsi, rsi
	jne	.label_842
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_842
.label_805:
	mov	dl, 1
.label_1390:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_785
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_781:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_879
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_882
	jmp	.label_887
	nop	word ptr cs:[rax + rax]
.label_879:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_887
.label_882:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_892
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_780
	jmp	.label_777
	nop	dword ptr [rax]
.label_887:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_777
	jmp	.label_780
.label_892:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_777
.label_848:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_784
	xor	r15d, r15d
	jmp	.label_786
.label_826:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_797
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_780
.label_797:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_785
.label_775:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_781
	nop	word ptr cs:[rax + rax]
.label_777:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_840
	cmp	r12d, 2
	jne	.label_812
	mov	eax, r9d
	and	al, 1
	jne	.label_812
	cmp	r14, r11
	jae	.label_875
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_875:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_820
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_820:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_801
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_801:
	add	r14, 3
	mov	r9b, 1
.label_812:
	cmp	r14, r11
	jae	.label_838
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_838:
	inc	r14
	jmp	.label_814
.label_834:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_836
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_836:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_883:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_862
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_866
	cmp	rbp, -2
	je	.label_870
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_828
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_819:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_864
	bt	rsi, rdx
	jb	.label_885
.label_864:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_819
.label_828:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_809
	xor	r13d, r13d
.label_809:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_883
	jmp	.label_776
.label_876:
	xor	r13d, r13d
	jmp	.label_781
.label_842:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_781
.label_815:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_786
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_786
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_786
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_798
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_851
	cmp	byte ptr [rsp + 6], 0
	jne	.label_783
	cmp	r14, r11
	jae	.label_849
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_849:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_867
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_867:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_816
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_816:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_790
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_790:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_781
.label_786:
	xor	eax, eax
.label_843:
	xor	r13d, r13d
	jmp	.label_781
.label_853:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_833
	nop	word ptr cs:[rax + rax]
.label_787:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_833:
	test	r8b, r8b
	je	.label_844
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_845
	cmp	r14, r11
	jae	.label_880
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_880:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_845
	nop	dword ptr [rax]
.label_844:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_829
	cmp	r12d, 2
	jne	.label_861
	mov	eax, r9d
	and	al, 1
	jne	.label_861
	cmp	r14, r11
	jae	.label_865
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_865:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_868
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_868:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_872
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_872:
	add	r14, 3
	mov	r9b, 1
.label_861:
	cmp	r14, r11
	jae	.label_860
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_860:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_889
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_889:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_884
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_884:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_845:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_780
	test	r9b, 1
	je	.label_841
	mov	ebx, eax
	and	bl, 1
	jne	.label_841
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_896
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_896:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_789
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_789:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_841:
	cmp	r14, r11
	jae	.label_787
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_787
	nop	word ptr cs:[rax + rax]
.label_780:
	test	r9b, 1
	je	.label_800
	and	al, 1
	jne	.label_800
	cmp	r14, r11
	jae	.label_802
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_802:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_806
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_806:
	add	r14, 2
	xor	r9d, r9d
.label_800:
	mov	ebx, r15d
.label_814:
	cmp	r14, r11
	jae	.label_846
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_846:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_784
.label_866:
	xor	r13d, r13d
.label_862:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_776
.label_870:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_824
	mov	rsi, qword ptr [rsp + 0x58]
.label_794:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_854
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_794
	xor	r13d, r13d
	jmp	.label_776
.label_824:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_776
.label_854:
	xor	r13d, r13d
	jmp	.label_776
.label_798:
	xor	r13d, r13d
	jmp	.label_781
.label_851:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_781
	nop	dword ptr [rax + rax]
.label_891:
	mov	rcx, rsi
.label_894:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_847
	or	al, dl
	je	.label_852
.label_847:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_857
	or	al, dl
	jne	.label_857
	test	r10b, 1
	jne	.label_869
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_857
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_873
.label_857:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_877
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_796
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_796
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_893:
	cmp	r14, r11
	jae	.label_832
	mov	byte ptr [rcx + r14], al
.label_832:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_893
	jmp	.label_796
.label_840:
	mov	qword ptr [rsp + 0x20], rbp
.label_829:
	mov	rdx, rdi
	jmp	.label_804
.label_785:
	mov	qword ptr [rsp + 0x20], rbp
.label_885:
	mov	rdx, rdi
	mov	eax, 2
.label_837:
	mov	qword ptr [rsp + 0x38], rax
.label_804:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_821:
	mov	r14, rax
.label_823:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_852:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_804
.label_869:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_821
.label_877:
	mov	rcx, qword ptr [rsp + 8]
.label_796:
	cmp	r14, r11
	jae	.label_823
	mov	byte ptr [rcx + r14], 0
	jmp	.label_823
.label_783:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_837
.label_871:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ce0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_897
	mov	qword ptr [rax], rbx
.label_897:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ea0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_898
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_900:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_900
.label_898:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_901
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_902], OFFSET FLAT:slot0
.label_901:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_899
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_899:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f40
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f50

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_906
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_909
	cmp	r12d, 0x7fffffff
	je	.label_904
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_907
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_907:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_909:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_905
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_908
.label_905:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_903
	mov	rdi, r14
	call	free
.label_903:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_908:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_906:
	call	abort
.label_904:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409110
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409120
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409140
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409160
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_910
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_910:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4091d0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_911
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_911:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409240
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_912
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_912:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092b0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_913
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_913:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409320
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409390
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409400

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409460
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094c0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_917
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_917:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409560
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_918
	test	rdx, rdx
	je	.label_918
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_918:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4095d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_919
	test	rdx, rdx
	je	.label_919
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_919:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409640
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_920
	test	rsi, rsi
	je	.label_920
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_920:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4096b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_914]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_915]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_916]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_921
	test	rsi, rsi
	je	.label_921
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_921:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409720
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409730
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409750
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409770

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409790

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_926
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_930
	cmp	ecx, 0x55
	jne	.label_922
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_922
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_922
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_922
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_922
	cmp	byte ptr [rax + 5], 0
	jne	.label_922
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_928
	mov	eax, OFFSET FLAT:label_929
	jmp	.label_925
.label_930:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_922
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_922
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_922
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_922
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_922
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_922
	cmp	byte ptr [rax + 7], 0
	je	.label_927
.label_922:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_831
	mov	eax, OFFSET FLAT:label_817
.label_925:
	cmove	rax, rcx
.label_926:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_927:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_923
	mov	eax, OFFSET FLAT:label_924
	jmp	.label_925
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x409870

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_941
	mov	edx, OFFSET FLAT:label_936
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_943
.label_941:
	mov	edx, OFFSET FLAT:label_944
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_943:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_949
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_945
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_932
	jmp	qword ptr [(r12 * 8) + label_933]
.label_1374:
	add	rsp, 8
	jmp	.label_931
.label_932:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_940
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_931
.label_1375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_946
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_947
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_938
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_934
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_931
.label_1379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_937
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_931
.label_1380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_935
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_931
.label_1381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_939
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_931
.label_1383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_942
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_931
.label_1382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_948
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_931:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_950:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_950
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_951
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_953
.label_951:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_953:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_954
	cmp	r10d, 0x29
	jae	.label_963
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_952
.label_963:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_952:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_954
	cmp	r10d, 0x29
	jae	.label_961
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_962
.label_961:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_962:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_954
	cmp	r10d, 0x29
	jae	.label_959
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_960
.label_959:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_960:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_954
	cmp	r10d, 0x29
	jae	.label_957
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_958
.label_957:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_958:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_954
	cmp	r10d, 0x29
	jae	.label_955
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_956
.label_955:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_956:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_954
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_954
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_954
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_954
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_954:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409df0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_964
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_964:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_965
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_966
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_968
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_88
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_967
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_969
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_970
	test	rax, rax
	je	.label_969
.label_970:
	pop	rbx
	ret	
.label_969:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_971
	test	rax, rax
	je	.label_972
.label_971:
	pop	rbx
	ret	
.label_972:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f60
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_973
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_974
	test	rbx, rbx
	jne	.label_974
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_974:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_975
	test	rax, rax
	je	.label_973
.label_975:
	pop	rbx
	ret	
.label_973:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fb0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_976
	test	rbx, rbx
	jne	.label_976
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_976:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_978
	test	rax, rax
	je	.label_977
.label_978:
	pop	rbx
	ret	
.label_977:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409fe0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_979
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_982
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_980
.label_979:
	test	rcx, rcx
	jne	.label_985
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_985:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_981
.label_980:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_984
	test	rbx, rbx
	jne	.label_984
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_984:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_983
	test	rax, rax
	je	.label_982
.label_983:
	pop	rbx
	ret	
.label_982:
	call	xalloc_die
.label_981:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a080
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_986
	test	rax, rax
	je	.label_987
.label_986:
	pop	rbx
	ret	
.label_987:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0a0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_988
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_991
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_992
	call	free
	xor	eax, eax
	jmp	.label_989
.label_988:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_990
	mov	qword ptr [rsi], rbx
.label_992:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_989
	test	rax, rax
	je	.label_990
.label_989:
	pop	rbx
	ret	
.label_990:
	call	xalloc_die
.label_991:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a110
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_994
	test	r14, r14
	je	.label_993
.label_994:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_993:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a150
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_995
	call	rpl_calloc
	test	rax, rax
	je	.label_995
	pop	rcx
	ret	
.label_995:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a180

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_996
	test	r15, r15
	je	.label_997
.label_996:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_997:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1c0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_999
	test	r15, r15
	je	.label_998
.label_999:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_998:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a210

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1000
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_341
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a240

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r15, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	test	eax, eax
	je	.label_1003
	cmp	eax, 1
	je	.label_1006
	cmp	eax, 3
	jne	.label_1008
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1005
.label_1003:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_1001
	cmp	rbx, r12
	jle	.label_1004
.label_1001:
	cmp	rbx, 0x40000000
	jl	.label_1007
.label_1006:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1005
.label_1008:
	call	__errno_location
.label_1005:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r15
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_542
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_1004:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1007:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_1002
	mov	dword ptr [rax], 0x4b
	jmp	.label_1005
.label_1002:
	mov	dword ptr [rax], 0x22
	jmp	.label_1005
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a320

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a350

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_1058
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_1047
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1043
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_1041
	mov	r13d, 1
.label_1043:
	test	r14, r14
	je	.label_1050
	mov	r15d, r13d
	jmp	.label_1055
.label_1047:
	mov	r13d, 4
	test	r14, r14
	je	.label_1041
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1041
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_1041
.label_1055:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1012
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1018
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1021
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1021
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_1021
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_1033
	cmp	eax, 0x44
	je	.label_1033
	cmp	eax, 0x69
	jne	.label_1021
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_1021
.label_1050:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_1041
.label_1033:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_1021:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1018
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_1051]
.label_1303:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_1059
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_1059:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1016
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1016:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_1023
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1023:
	or	ecx, r14d
	jmp	.label_1014
.label_1018:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_1049
.label_1304:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_1014
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_1014
.label_1305:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_1053
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_1053:
	cmp	rsi, rdi
	jl	.label_1009
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1009:
	or	ecx, r11d
	jmp	.label_1014
.label_1307:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_1019
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_1019:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_1030
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_1030:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_1038
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_1038:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_1045
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1045:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_1014
.label_1301:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_1044
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1048
.label_1302:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_1035
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_1035:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_1061
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_1061:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_1034
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1034:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1040
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1040:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_1052
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_1052:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_1062
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1062:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_1014
.label_1306:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_1020
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_1020:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_1032
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_1032:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_1039
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1039:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_1046
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_1046:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_1060
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1060:
	or	ecx, r14d
	jmp	.label_1014
.label_1308:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1015
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_1015:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1028
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1028:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1037
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1037:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1042
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_1042:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_1054
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_1054:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_1011
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_1011:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_1010
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_1010:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_1017
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_1024
.label_1309:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1036
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_1036:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1029
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1029:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1057
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1057:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1013
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_1013:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_1022
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_1022:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_1031
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_1031:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_1017
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_1024:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_1017:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_1014
.label_1310:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_1044
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1048
.label_1311:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_1056
.label_1044:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_1014
.label_1056:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_1048:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_1014:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_1012:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_1049:
	mov	r13d, r15d
.label_1041:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1058:
	mov	edi, OFFSET FLAT:label_1025
	mov	esi, OFFSET FLAT:label_1026
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1027
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac70

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_1095
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_1101
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_1105
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_1067
	mov	ebp, 1
.label_1105:
	test	r14, r14
	je	.label_1109
	mov	ebx, ebp
	jmp	.label_1087
.label_1101:
	mov	ebp, 4
	test	r14, r14
	je	.label_1067
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_1067
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	r12d, 1
	test	rax, rax
	je	.label_1067
.label_1087:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1070
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1093
	mov	edi, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1078
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1078
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	edi, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_1078
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	edi, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_1092
	cmp	eax, 0x44
	je	.label_1092
	cmp	eax, 0x69
	jne	.label_1078
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rdi, [rax + rax + 1]
	mov	r8d, 0x400
	jmp	.label_1078
.label_1109:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	jmp	.label_1067
.label_1092:
	mov	edi, 2
	mov	r8d, 0x3e8
.label_1078:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1093
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r14, r12
	jmp	qword ptr [(r13 * 8) + label_1113]
.label_1314:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_1065
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_1065:
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_1077
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rbp, r9
.label_1077:
	or	r11d, ecx
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_1084
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1084:
	or	ecx, r11d
	jmp	.label_1064
.label_1093:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	ebx, 2
	jmp	.label_1094
.label_1315:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	cmp	r12, rax
	mov	ecx, 1
	jl	.label_1064
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, r12
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
	jmp	.label_1064
.label_1316:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	rbp, rax
	cmp	r12, rbp
	mov	ecx, 1
	mov	rsi, r14
	mov	r10d, 1
	jl	.label_1099
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	r10d, r10d
	cmp	rax, r12
	setl	r10b
	cmovl	rsi, r9
.label_1099:
	cmp	rsi, rbp
	jl	.label_1071
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1071:
	or	ecx, r10d
	jmp	.label_1064
.label_1318:
	mov	r13, rdi
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_1079
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_1079:
	cmp	rsi, r10
	mov	rdi, r14
	jl	.label_1091
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rdi, r9
.label_1091:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1097
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_1097:
	or	ebp, r11d
	cmp	rsi, r10
	jl	.label_1111
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1111:
	or	ecx, ebp
	mov	rdi, r13
	jmp	.label_1064
.label_1312:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_1066
	mov	r14, r12
	shl	r14, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1068
.label_1313:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_1075
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_1075:
	mov	qword ptr [rsp + 0x18], rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_1086
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_1086:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_1096
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_1096:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_1108
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_1108:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	mov	rdi, r14
	mov	r12d, 1
	jl	.label_1115
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rbp
	imul	rdi, r8
	xor	r12d, r12d
	cmp	rax, rbp
	setl	r12b
	cmovl	rdi, r9
.label_1115:
	or	r12d, r11d
	cmp	rdi, r10
	jl	.label_1073
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1073:
	or	ecx, r12d
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1064
.label_1317:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_1082
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_1082:
	mov	r12, rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_1088
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_1088:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_1106
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_1106:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_1114
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_1114:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_1069
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1069:
	or	ecx, r11d
	mov	rdi, r12
	jmp	.label_1064
.label_1319:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1080
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_1080:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_1085
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_1085:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1098
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1098:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_1112
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_1112:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_1100
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_1100:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_1076
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_1076:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	r11d, 1
	jl	.label_1083
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbp
	imul	rsi, r8
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_1083:
	or	r11d, r12d
	cmp	rsi, r10
	jl	.label_1089
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1089:
	or	ecx, r11d
	jmp	.label_1064
.label_1320:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1107
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_1107:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_1063
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_1063:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_1072
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_1072:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_1081
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_1081:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_1090
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_1090:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_1102
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_1102:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_1110
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_1110:
	or	ecx, r12d
	jmp	.label_1064
.label_1321:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_1066
	mov	r14, r12
	shl	r14, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1068
.label_1322:
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_1074
.label_1066:
	inc	r9
	mov	ecx, 1
	mov	r14, r9
	jmp	.label_1064
.label_1074:
	lea	r14, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_1068:
	xor	ecx, ecx
	cmp	r12, rax
	setg	cl
	cmovg	r14, r9
.label_1064:
	or	ecx, ebx
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + rdi]
	mov	qword ptr [r15], rax
	lea	ebx, [rcx + 2]
	cmp	byte ptr [rdx + rdi], 0
	cmove	ebx, ecx
	mov	r12, r14
.label_1070:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_1094:
	mov	ebp, ebx
.label_1067:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1095:
	mov	edi, OFFSET FLAT:label_1025
	mov	esi, OFFSET FLAT:label_1103
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1104
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b5c0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, r8
	mov	eax, esi
	mov	ebp, dword ptr [rip + exit_failure]
	dec	edi
	cmp	edi, 4
	jae	.label_1116
	movsxd	rsi, edi
	mov	rsi, qword ptr [(rsi * 8) + label_1118]
	cdqe	
	test	eax, eax
	jns	.label_1119
	lea	r14, [rsp + 6]
	mov	ebx, OFFSET FLAT:label_1117
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	jmp	.label_1120
.label_1119:
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	mov	ebx, OFFSET FLAT:label_1117
.label_1120:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	call	error
.label_1116:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b640

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1131
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1124:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1124
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_1122
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_1133
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1138
	cmp	eax, 0x22
	jne	.label_1122
	mov	ebp, 1
.label_1138:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_1126
	jmp	.label_1128
.label_1133:
	test	r14, r14
	je	.label_1122
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1122
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_1122
.label_1126:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1128
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1134
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1123
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1123
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1123
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1125
	cmp	eax, 0x44
	je	.label_1125
	cmp	eax, 0x69
	jne	.label_1123
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_1123
.label_1125:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1123:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1134
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_1139]
.label_1410:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1140
.label_1134:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_1132
.label_1411:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_1135
.label_1412:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1129
.label_1414:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_1130
.label_1408:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_1127
.label_1409:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_1129
.label_1413:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_1130:
	or	dl, r10b
.label_1140:
	or	dl, bl
.label_1129:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_1121
.label_1415:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_1136
.label_1416:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_1136:
	movzx	eax, dl
.label_1135:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_1121
.label_1417:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_1127:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_1121
.label_1418:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_1121:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_1128:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_1132:
	mov	r13d, r15d
.label_1122:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1131:
	mov	edi, OFFSET FLAT:label_1025
	mov	esi, OFFSET FLAT:label_1026
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1137
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1141
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1142
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1142
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1141:
	mov	ecx, 1
.label_1142:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bcd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1143
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1145
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1143
.label_1145:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1143
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1144
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1144:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1143:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd50

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1161
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1161:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_1150
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1162
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1151
	test	esi, esi
	jne	.label_1150
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1165
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1166
.label_1150:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1146
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1151
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1153
.label_1162:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1156
.label_1151:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1157
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1159
.label_1157:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1159:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1160:
	call	fcntl
.label_1156:
	mov	ebp, eax
.label_1147:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1153:
	cmp	eax, 6
	jne	.label_1146
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1149
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1163
.label_1146:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1152
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1155
.label_1165:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1166:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1160
.label_1149:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1163:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1164
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1148
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1148
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1147
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1154
.label_1148:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1147
.label_1152:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1155:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1156
.label_1164:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1154:
	test	al, al
	je	.label_1147
	test	ebp, ebp
	js	.label_1147
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1158
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1147
.label_1158:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1147
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bff0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1167
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1167
	test	byte ptr [rbx + 1], 1
	je	.label_1167
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1167:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c030

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1168
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1168
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1169
.label_1168:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1169:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1170
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1170:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c0a0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_1171
	cmp	r15, -2
	jb	.label_1171
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1171
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1171:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c100

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1172
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1172:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1173
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1173
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1173:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c180
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_1174
	nop	word ptr [rax + rax]
.label_1175:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1175
.label_1174:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1b0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1179
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1178
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_1176
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_1176:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_1177
.label_1179:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1178:
	xor	eax, eax
.label_1177:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c240

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:label_28
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_1185
	test	bl, bl
	je	.label_1187
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_1181
.label_1187:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_1182
.label_1185:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_1181
.label_1182:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1181
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_1184
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_1184:
	test	bl, bl
	je	.label_1180
	add	r14, 9
	mov	edi, OFFSET FLAT:label_28
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_1186
.label_1180:
	mov	edi, OFFSET FLAT:label_28
	call	unsetenv
.label_1186:
	test	eax, eax
	je	.label_1189
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_1188
	nop	dword ptr [rax]
.label_1183:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_1183
.label_1188:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1181
.label_1189:
	call	tzset
	mov	rax, r13
.label_1181:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c380

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_1190
	cmp	r15, rbx
	ja	.label_1199
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1190
.label_1199:
	mov	ebp, OFFSET FLAT:label_17
	cmp	byte ptr [rbx], 0
	je	.label_1192
	lea	rbp, [r12 + 9]
	jmp	.label_1191
.label_1198:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1191:
	lea	r13, [r12 + 9]
.label_1195:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1192
	cmp	byte ptr [rbp], 0
	jne	.label_1194
	cmp	rbp, r13
	jne	.label_1201
	cmp	byte ptr [r12 + 8], 0
	je	.label_1202
.label_1194:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_1195
	jmp	.label_1198
.label_1202:
	mov	rbp, r13
.label_1201:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1200
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1197:
	xor	r14d, r14d
	jmp	.label_1190
.label_1200:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1196
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_1192
.label_1196:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1193
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_1192:
	mov	qword ptr [r15 + 0x30], rbp
.label_1190:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1193:
	mov	qword ptr [r12], 0
	jmp	.label_1197
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4f0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_1205
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_1204
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:label_28
	mov	edx, 1
	call	setenv
	jmp	.label_1203
.label_1204:
	mov	edi, OFFSET FLAT:label_28
	call	unsetenv
.label_1203:
	test	eax, eax
	je	.label_1207
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_1208
.label_1207:
	call	tzset
	mov	r12b, 1
.label_1208:
	cmp	rbp, 2
	jb	.label_1206
	nop	
.label_1209:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1209
.label_1206:
	mov	dword ptr [r14], r15d
.label_1205:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c580

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1210
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1211
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1213
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_1212
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x28]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_1212
.label_1213:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1212
	mov	qword ptr [rsp], -1
.label_1212:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1211
	mov	rax, qword ptr [rsp]
	jmp	.label_1214
.label_1211:
	mov	rax, -1
.label_1214:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1210:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c680

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_1216
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1215
	test	cl, cl
	jne	.label_1215
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1215
.label_1216:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1215
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1215:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_17
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1217
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x40c710

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
