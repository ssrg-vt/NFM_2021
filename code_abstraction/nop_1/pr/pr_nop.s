	.section	.text
	.align	16
	#Procedure 0x401bd0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x48
	mov	r14, rsi
	mov	r15d, edi
	nop	
	mov	qword ptr [rsp + 0x40], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.1
	mov	esi, OFFSET FLAT:.str.2
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rbp, rbp
	xor	ebx, ebx
	cmp	r15d, 2
	lea	rdi, [rdi]
	jl	.label_26
	lea	eax, [r15 - 1]
	movsxd	rdi, eax
	mov	esi, 8
	call	xnmalloc
	mov	rbx, rax
.label_26:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	lea	r8, [rsp + 0x3c]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	nop	
	je	.label_34
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], r14
	lea	rdi, [rdi]
	xor	r14d, r14d
	xor	r12d, r12d
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_8
	nop	dword ptr [rax]
.label_38:
	cmp	r13d, 0x43
	lea	rsi, [rsi]
	jle	.label_48
	add	r13d, -0x44
	mov	rsp, rsp
	cmp	r13d, 0x3d
	nop	
	ja	.label_18
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_51]]
.label_1059:
	nop	
	mov	byte ptr [byte ptr [rip + use_form_feed]],  1
	xor	r15d, r15d
	nop	
	jmp	.label_11
.label_48:
	cmp	r13d, 1
	lea	rdi, [rdi]
	jne	.label_9
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	nop	
	jne	.label_12
	nop	
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdx]
	nop	
	cmp	eax, 0x2b
	jne	.label_12
	inc	rdx
	mov	rsp, rsp
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	test	al, al
	jne	.label_23
.label_12:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	ecx, ebp
	inc	ebp
	mov	qword ptr [rbx + rcx*8], rax
.label_23:
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_11
.label_1058:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + date_format]],  rax
	xor	r15d, r15d
	jmp	.label_11
.label_1060:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_1061:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + skip_count]],  1
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	esi, 0x80000000
	nop	
	mov	edx, OFFSET FLAT:start_line_num
	jmp	.label_33
.label_1062:
	nop	
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str_0
	mov	dword ptr [dword ptr [rip + col_sep_length]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	nop	
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_49
	call	separator_string
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	jmp	.label_11
.label_1063:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + extremities]],  1
	nop	
	mov	byte ptr [byte ptr [rip + keep_FF]],  0
	xor	r15d, r15d
	jmp	.label_11
.label_1064:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	nop	
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	nop	
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:chars_per_line
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_11
.label_1065:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_across_flag]],  1
	jmp	.label_36
.label_1066:
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_11
.label_1067:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + use_cntrl_prefix]],  1
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_11
.label_1068:
	mov	byte ptr [byte ptr [rip + double_space]],  1
	nop	
	xor	r15d, r15d
	jmp	.label_11
.label_1069:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	nop	
	je	.label_47
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_47:
	mov	byte ptr [byte ptr [rip + untabify_input]],  1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_11
.label_1070:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + custom_header]],  rax
	xor	r15d, r15d
	jmp	.label_11
.label_1071:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_44
	nop	
	mov	esi, 0x69
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_44:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_11
.label_1072:
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:lines_per_page
	mov	rsp, rsp
	jmp	.label_33
.label_1073:
	mov	byte ptr [byte ptr [rip + parallel_files]],  1
.label_36:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_11
.label_1074:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + numbered_lines]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	r15d, r15d
	test	rdi, rdi
	nop	
	je	.label_11
	mov	esi, 0x6e
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_11
.label_1075:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	nop	
	xor	esi, esi
	mov	edx, OFFSET FLAT:chars_per_margin
.label_33:
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	jmp	.label_11
.label_1076:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + ignore_failed_opens]],  1
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_11
.label_1077:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	mov	al, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	je	.label_19
	mov	dword ptr [rsp + 0x14], eax
	nop	
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rsp, rsp
	xor	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	je	.label_24
	nop	
	call	separator_string
	xor	r15d, r15d
	nop	
	jmp	.label_24
.label_1078:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_1079:
	mov	byte ptr [byte ptr [rip + use_esc_sequence]],  1
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_11
.label_1080:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	lea	rdx, [rsp + 0x38]
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rax
	call	getoptnum
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_20
	mov	eax, dword ptr [rsp + 0x38]
	nop	
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
.label_20:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	nop	
	jmp	.label_11
.label_1081:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	parse_column_count
	mov	rdi, r12
	call	free
	mov	qword ptr [rsp + 0x40], 0
	xor	r12d, r12d
	nop	
	xor	r15d, r15d
	nop	
	jmp	.label_11
.label_1082:
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_21
	mov	edi, dword ptr [rsp + 0x3c]
	xor	r15d, r15d
	nop	
	xor	esi, esi
	mov	rsp, rsp
	call	first_last_page
	test	al, al
	jne	.label_11
	mov	rsp, rsp
	jmp	.label_32
.label_49:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_11
.label_19:
	mov	dword ptr [rsp + 0x14], eax
.label_24:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_11
	nop	word ptr [rax + rax]
.label_8:
	lea	rdi, [rdi]
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_38
	lea	r15, [r14 + 1]
	cmp	r15, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jb	.label_43
	mov	rdi, r12
	mov	rbp, rbp
	lea	rsi, [rsp + 0x40]
	call	x2realloc
	lea	rsi, [rsi]
	mov	r12, rax
.label_43:
	mov	byte ptr [r12 + r14], r13b
	lea	rdi, [rdi]
	mov	byte ptr [r12 + r14 + 1], 0
.label_11:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	lea	r8, [rsp + 0x3c]
	call	getopt_long
	mov	r13d, eax
	lea	rdi, [rdi]
	cmp	r13d, -1
	mov	r14, r15
	jne	.label_8
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_28
	mov	rbp, rbp
	mov	rdi, r12
	call	parse_column_count
	mov	rdi, r12
	mov	rbp, rbp
	call	free
.label_28:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	jmp	.label_41
.label_34:
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	mov	rsp, rsp
	xor	ebp, ebp
.label_41:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + date_format]],  0
	lea	rsi, [rsi]
	jne	.label_31
	mov	edi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	call	getenv
	nop	
	mov	ecx, OFFSET FLAT:.str.16
	test	rax, rax
	nop	
	je	.label_37
	nop	
	mov	edi, 2
	mov	rbp, rbp
	call	hard_locale
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.15
	test	al, al
	cmovne	rcx, rdx
.label_37:
	nop	
	mov	qword ptr [word ptr [rip + date_format]],  rcx
.label_31:
	nop	
	mov	edi, OFFSET FLAT:.str
	call	getenv
	mov	rdi, rax
	mov	rsp, rsp
	call	tzalloc
	nop	
	mov	qword ptr [word ptr [rip + localtz]],  rax
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	mov	rbp, rbp
	jne	.label_52
	mov	qword ptr [word ptr [rip + first_page_number]],  1
.label_52:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_16
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_10
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_16
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + print_across_flag]]
	and	eax, 1
	cmp	eax, 1
	je	.label_40
.label_16:
	mov	rsp, rsp
	test	r13b, 1
	mov	rsp, rsp
	je	.label_22
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_27
	test	r12b, 1
	je	.label_22
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [rip + use_col_separator]],  1
	lea	rsi, [rsi]
	jne	.label_22
	nop	
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	jne	.label_35
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_22
.label_35:
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	mov	rsp, rsp
	and	al, 1
	nop	
	jne	.label_42
	nop	
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  0
	lea	rdi, [rdi]
	jg	.label_42
	jmp	.label_22
.label_27:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_45
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_50
.label_45:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	lea	rsi, [rsi]
	test	r12b, 1
	mov	rsp, rsp
	je	.label_22
.label_42:
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	lea	rdi, [rdi]
	jmp	.label_22
.label_50:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + join_lines]],  1
.label_22:
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	ecx, r15d
	mov	rsp, rsp
	jge	.label_14
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
.label_17:
	nop	
	movsxd	rcx, ecx
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	edx, ebp
	lea	rdi, [rdi]
	inc	ebp
	mov	rsp, rsp
	mov	qword ptr [rbx + rdx*8], rcx
	inc	eax
	nop	
	cmp	eax, r15d
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	jl	.label_17
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_14:
	test	ebp, ebp
	je	.label_29
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_30
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	print_files
	lea	rsi, [rsi]
	jmp	.label_13
	nop	dword ptr [rax + rax]
.label_30:
	mov	edi, 1
	mov	rsi, rbx
	call	print_files
	mov	rbp, rbp
	add	rbx, 8
	dec	ebp
	nop	
	jne	.label_30
	jmp	.label_13
.label_29:
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	call	print_files
.label_13:
	call	cleanup
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_46
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, -1
	je	.label_39
.label_46:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + failed_opens]]
	lea	rdi, [rdi]
	and	eax, 1
	nop	
	add	rsp, 0x48
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_9:
	cmp	r13d, 0xffffff7d
	nop	
	je	.label_15
	cmp	r13d, 0xffffff7e
	jne	.label_18
	nop	
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_15:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	r9d, OFFSET FLAT:.str.13
	xor	eax, eax
	call	version_etc
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_18:
	nop	
	mov	edi, 1
	nop	
	call	usage
.label_10:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	jmp	.label_25
.label_39:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	jmp	.label_25
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	nop	
	call	error
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
.label_25:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r15d, esi
	mov	rsp, rsp
	mov	r14d, edi
	mov	qword ptr [rsp], -1
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	call	xstrtoumax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_54
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rbp, rbx
	je	.label_53
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_53
	movzx	eax, byte ptr [rbp]
	mov	rsp, rsp
	cmp	eax, 0x3a
	jne	.label_57
	mov	rsp, rsp
	inc	rbp
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	nop	
	mov	rdi, rbp
	call	xstrtoumax
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_54
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_56
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	cmp	rax, qword ptr [rsp + 8]
	jae	.label_57
	xor	eax, eax
	jmp	.label_53
.label_57:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax], 0
	je	.label_55
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_53
.label_55:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [word ptr [rip + first_page_number]],  rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [word ptr [rip + last_page_number]],  rax
	mov	al, 1
	jmp	.label_53
.label_56:
	mov	rbp, rbp
	xor	eax, eax
.label_53:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_54:
	movsx	edx, r15b
	nop	
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	r8, rbx
	call	xstrtol_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbx
	nop	
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:columns
	nop	
	mov	rdi, rbx
	mov	rcx, rax
	call	getoptnum
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	r14d, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	lea	ecx, [rax - 0x30]
	nop	
	cmp	ecx, 0xa
	jb	.label_60
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	byte ptr [rdx], al
.label_60:
	cmp	byte ptr [rbx], 0
	je	.label_59
	nop	
	lea	rcx, [rsp + 8]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xstrtol
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_61
	mov	rsp, rsp
	lea	rax, [rcx - 1]
	lea	rsi, [rsi]
	cmp	rax, 0x7fffffff
	nop	
	jae	.label_61
	mov	dword ptr [rbp], ecx
.label_59:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_61:
	nop	
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	jg	.label_58
	call	__errno_location
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
.label_58:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r12, rax
	movsx	ebp, r14b
	mov	rdi, rbx
	call	quote
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	mov	ecx, ebp
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402910

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbx, rdx
	lea	rsi, [rsi]
	movsxd	rsi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rbx], eax
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402950

	.globl separator_string
	.type separator_string, @function
separator_string:
	push	rbx
	nop	
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rsi]
	test	rax, -0x80000000
	jne	.label_62
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbx
	mov	rbp, rbp
	pop	rbx
	ret	
.label_62:
	mov	rbp, rbp
	call	integer_overflow
	nop	
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebp, edi
	nop	
	test	ebp, ebp
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	call	emit_stdin_note
	nop	
	call	emit_mandatory_arg_note
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.25
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
.label_63:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x402cb0

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	rbx, rsi
	mov	ebp, edi
	call	init_parameters
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	init_fps
	mov	rsp, rsp
	test	al, al
	je	.label_65
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_67
	call	init_store_cols
.label_67:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + first_page_number]]
	mov	eax, 1
	mov	rsp, rsp
	cmp	rdi, 2
	jb	.label_66
	call	skip_to_page
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_65
	mov	rax,  qword ptr [word ptr [rip + first_page_number]]
.label_66:
	mov	qword ptr [word ptr [rip + page_number]],  rax
	call	init_funcs
	mov	eax,  dword ptr [dword ptr [rip + line_count]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + line_number]],  eax
	nop	word ptr cs:[rax + rax]
.label_64:
	call	print_page
	test	al, al
	mov	rbp, rbp
	jne	.label_64
.label_65:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d60

	.globl cleanup
	.type cleanup, @function
cleanup:
	lea	rdi, [rdi]
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	nop	
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	nop	
	pop	rax
	lea	rsi, [rsi]
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	pop	rax
	mov	rsp, rsp
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.83
	nop	word ptr [rax + rax]
.label_70:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_68
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	add	rbx, 0x10
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_70
.label_68:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.10
	cmovne	rbx, rax
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	nop	
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_69
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.93
	lea	rsi, [rsi]
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	nop	
	je	.label_69
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
.label_69:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.95
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10
	nop	
	xor	eax, eax
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	nop	
	mov	eax, OFFSET FLAT:.str.97
	mov	ecx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	cmove	rcx, rax
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	jmp	__printf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rax
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + lines_per_page]]
	add	eax, -0xa
	mov	dword ptr [dword ptr [rip + lines_per_body]],  eax
	jle	.label_94
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_81
	jmp	.label_88
.label_94:
	nop	
	mov	byte ptr [byte ptr [rip + extremities]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
.label_88:
	mov	eax,  dword ptr [dword ptr [rip + lines_per_page]]
	mov	dword ptr [dword ptr [rip + lines_per_body]],  eax
.label_81:
	movzx	eax,  byte ptr [byte ptr [rip + double_space]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_93
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	ecx, eax
	lea	rsi, [rsi]
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
.label_93:
	test	edi, edi
	mov	rbp, rbp
	je	.label_76
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	nop	
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_74
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + columns]],  edi
	jmp	.label_74
.label_76:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + parallel_files]],  0
.label_74:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_89
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
.label_89:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_91
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + join_lines]]
	je	.label_96
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  1
	nop	
	jne	.label_72
	lea	rsi, [rsi]
	xor	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	je	.label_72
	mov	rax,  qword ptr [word ptr [rip + col_sep_string]]
	movzx	eax, byte ptr [rax]
	mov	rbp, rbp
	cmp	eax, 9
	nop	
	jne	.label_72
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str.70
	nop	
	jmp	.label_72
.label_91:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	jmp	.label_84
.label_96:
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.70
	test	al, 1
	cmovne	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + col_sep_string]],  rdx
	mov	dword ptr [dword ptr [rip + col_sep_length]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
.label_72:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
.label_84:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + join_lines]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_71
	mov	byte ptr [byte ptr [rip + truncate_lines]],  0
.label_71:
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + numbered_lines]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_79
	mov	eax,  dword ptr [dword ptr [rip + start_line_num]]
	mov	dword ptr [dword ptr [rip + line_count]],  eax
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + chars_per_number]]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rip + number_separator]]
	cmp	ecx, 9
	mov	rbp, rbp
	jne	.label_87
	mov	ecx, eax
	sar	ecx, 0x1f
	lea	rdi, [rdi]
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	mov	edx, eax
	sub	edx, ecx
	nop	
	neg	edx
	mov	rsp, rsp
	lea	eax, [rax + rdx + 8]
	mov	rbp, rbp
	jmp	.label_92
.label_87:
	inc	eax
.label_92:
	mov	dword ptr [dword ptr [rip + number_width]],  eax
	nop	
	mov	cl,  byte ptr [byte ptr [rip + parallel_files]]
	xor	r8d, r8d
	and	cl, 1
	mov	rsp, rsp
	cmovne	r8d, eax
.label_79:
	mov	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	test	edi, edi
	nop	
	js	.label_80
	je	.label_73
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	mov	rsp, rsp
	jle	.label_83
	dec	ecx
	mov	rsp, rsp
	mov	esi, 0x7fffffff
	nop	
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	xor	edx, edx
	nop	
	idiv	edi
	lea	rdi, [rdi]
	jmp	.label_78
.label_80:
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	jle	.label_95
	cmp	edi, -1
	je	.label_73
	dec	ecx
	mov	eax, 0x80000000
	cdq	
	mov	rbp, rbp
	idiv	edi
	mov	rsp, rsp
	mov	esi, 0x7fffffff
.label_78:
	cmp	eax, ecx
	jl	.label_85
	nop	
	jmp	.label_73
.label_83:
	mov	eax, 0x80000000
	cdq	
	mov	rbp, rbp
	idiv	edi
	mov	esi, 0x7fffffff
	lea	rsi, [rsi]
	jmp	.label_75
.label_95:
	mov	rsp, rsp
	mov	esi, 0x7fffffff
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	xor	edx, edx
	idiv	edi
.label_75:
	cmp	ecx, eax
	jle	.label_85
.label_73:
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	dec	esi
	imul	esi,  dword ptr [dword ptr [rip + col_sep_length]]
	test	esi, esi
	js	.label_86
.label_85:
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	rbp, rbp
	sub	ecx, r8d
	mov	edx, esi
	xor	edx, 0x80000000
	lea	rsi, [rsi]
	jmp	.label_90
.label_86:
	lea	ecx, [rsi + 0x7fffffff]
	mov	edx,  dword ptr [dword ptr [rip + chars_per_line]]
	sub	edx, r8d
.label_90:
	nop	
	xor	eax, eax
	cmp	ecx, edx
	jl	.label_97
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + chars_per_line]]
	lea	rsi, [rsi]
	add	esi, r8d
	nop	
	sub	eax, esi
.label_97:
	cdq	
	idiv	dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + chars_per_column]],  eax
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jle	.label_77
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + numbered_lines]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_82
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + chars_per_number]]
	lea	rsi, [rsi]
	cmp	rax, 0xb
	mov	edi, 0xb
	mov	rbp, rbp
	cmova	rdi, rax
	nop	
	inc	rdi
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [word ptr [rip + number_buff]],  rax
.label_82:
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	mov	rsp, rsp
	call	free
	nop	
	mov	eax,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	lea	rdi, [rdi]
	cmp	eax, 8
	nop	
	mov	ecx, 8
	cmovge	ecx, eax
	movsxd	rdi, ecx
	mov	rbp, rbp
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + clump_buff]],  rax
	pop	rax
	ret	
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033f0

	.globl init_fps
	.type init_fps, @function
init_fps:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	nop	
	push	rbx
	mov	r14, rsi
	nop	
	mov	ebp, edi
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + total_files]],  0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	mov	rsp, rsp
	call	free
	movsxd	rdi,  dword ptr [dword ptr [rip + columns]]
	mov	esi, 0x40
	call	xnmalloc
	mov	rbp, rbp
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + column_vector]],  rbx
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	je	.label_104
	test	ebp, ebp
	jle	.label_101
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	open_file
	test	al, al
	je	.label_105
	mov	rbp, qword ptr [r14]
	nop	
	mov	rdi, qword ptr [rbx]
	call	fileno
	nop	
	mov	rdi, rbp
	mov	esi, eax
	mov	rbp, rbp
	jmp	.label_107
	nop	dword ptr [rax + rax]
.label_106:
	add	rbx, 0x40
	add	r14, 8
.label_104:
	mov	rsp, rsp
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_103
	dec	ebp
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	open_file
	lea	rsi, [rsi]
	test	al, al
	jne	.label_106
	nop	
	add	rbx, -0x40
	lea	rdi, [rdi]
	dec	dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	jmp	.label_106
.label_103:
	nop	
	cmp	dword ptr [dword ptr [rip + columns]],  0
	je	.label_99
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	call	init_header
	lea	rdi, [rdi]
	jmp	.label_102
.label_101:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	dword ptr [rbx + 0x10], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [dword ptr [rip + total_files]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
.label_107:
	call	init_header
	mov	dword ptr [rbx + 0x2c], 0
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	cmp	esi, 1
	mov	rbp, rbp
	je	.label_102
	mov	rbp, rbp
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	add	rbx, 0x40
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	sub	edx, esi
	nop	dword ptr [rax + rax]
.label_100:
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 0x10], 0
	nop	
	mov	byte ptr [rbx + 0x39], 0
	mov	dword ptr [rbx + 0x2c], 0
	add	rbx, 0x40
	inc	edx
	lea	rsi, [rsi]
	jne	.label_100
.label_102:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + total_files]]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	nop	
	mov	al, 1
	jmp	.label_98
.label_99:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_98
.label_105:
	lea	rsi, [rsi]
	xor	eax, eax
.label_98:
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	push	rbx
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	nop	
	test	ecx, ecx
	js	.label_119
	je	.label_109
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	js	.label_110
	nop	
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_114
.label_119:
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	test	esi, esi
	lea	rsi, [rsi]
	js	.label_115
	lea	rsi, [rsi]
	cmp	ecx, -1
	je	.label_109
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	cdq	
.label_114:
	nop	
	idiv	ecx
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_109
	jmp	.label_112
.label_110:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	cdq	
	jmp	.label_113
.label_115:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_113:
	idiv	ecx
	mov	rsp, rsp
	cmp	esi, eax
	jl	.label_112
.label_109:
	mov	rbp, rbp
	mov	ebx,  dword ptr [dword ptr [rip + columns]]
	imul	ebx,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	rdi, [rdi]
	cmp	ebx, 0x7fffffff
	je	.label_112
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	cmp	ebp, 0x7fffffff
	nop	
	je	.label_112
	mov	rbp, rbp
	inc	ebp
	js	.label_116
	test	ebp, ebp
	je	.label_111
	test	ebx, ebx
	nop	
	js	.label_118
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_108
.label_116:
	mov	rbp, rbp
	test	ebx, ebx
	mov	rbp, rbp
	js	.label_120
	mov	rbp, rbp
	cmp	ebp, -1
	nop	
	je	.label_111
	mov	eax, 0x80000000
	cdq	
.label_108:
	mov	rbp, rbp
	idiv	ebp
	cmp	eax, ebx
	nop	
	jge	.label_111
	mov	rbp, rbp
	jmp	.label_112
.label_118:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	cdq	
	nop	
	jmp	.label_117
.label_120:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_117:
	idiv	ebp
	lea	rdi, [rdi]
	cmp	ebx, eax
	jl	.label_112
.label_111:
	lea	rdi, [rdi]
	lea	r14d, [rbx + 1]
	mov	rsp, rsp
	imul	ebp, ebx
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	movsxd	rdi, r14d
	lea	rdi, [rdi]
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [word ptr [rip + line_vector]],  rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	nop	
	movsxd	rdi, ebx
	nop	
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [word ptr [rip + end_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	call	free
	movsxd	rbx, ebp
	movzx	esi,  byte ptr [byte ptr [rip + use_col_separator]]
	and	esi, 1
	lea	rdi, [rdi]
	inc	rsi
	mov	rdi, rbx
	call	xnmalloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + buff]],  rax
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	inc	rax
	imul	rax, rbx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + buff_allocated]],  rax
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_112:
	call	integer_overflow
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037c0

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	r14, rdi
	mov	r15d, 1
	mov	rbp, rbp
	cmp	r14, 2
	jb	.label_121
	nop	word ptr [rax + rax]
.label_128:
	mov	r12d, 1
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + lines_per_body]],  1
	jle	.label_133
	nop	word ptr cs:[rax + rax]
.label_130:
	nop	
	cmp	dword ptr [dword ptr [rip + columns]],  0
	lea	rsi, [rsi]
	jle	.label_124
	nop	
	xor	ebp, ebp
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr [rax + rax]
.label_123:
	nop	
	inc	ebp
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_125
	mov	rdi, rbx
	mov	esi, ebp
	mov	rbp, rbp
	call	skip_read
.label_125:
	lea	rdi, [rdi]
	add	rbx, 0x40
	mov	rbp, rbp
	cmp	ebp,  dword ptr [dword ptr [rip + columns]]
	jl	.label_123
.label_124:
	mov	rsp, rsp
	inc	r12d
	lea	rdi, [rdi]
	cmp	r12d,  dword ptr [dword ptr [rip + lines_per_body]]
	jl	.label_130
.label_133:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + last_line]],  1
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + columns]],  0
	jle	.label_132
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	
.label_131:
	mov	rbp, rbp
	inc	ebp
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_129
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	mov	rsp, rsp
	call	skip_read
.label_129:
	mov	rbp, rbp
	add	rbx, 0x40
	cmp	ebp,  dword ptr [dword ptr [rip + columns]]
	lea	rsi, [rsi]
	jl	.label_131
.label_132:
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_122
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	jle	.label_122
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rax, 0x10
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_126:
	cmp	dword ptr [rax], 3
	je	.label_134
	nop	
	mov	dword ptr [rax], 2
.label_134:
	inc	edx
	lea	rdi, [rdi]
	add	rax, 0x40
	mov	rsp, rsp
	cmp	edx, ecx
	mov	rbp, rbp
	jl	.label_126
.label_122:
	lea	rsi, [rsi]
	call	reset_status
	nop	
	mov	byte ptr [byte ptr [rip + last_line]],  0
	cmp	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	mov	rsp, rsp
	jle	.label_127
	lea	rsi, [rsi]
	inc	r15
	lea	rdi, [rdi]
	cmp	r15, r14
	mov	rsp, rsp
	jb	.label_128
	jmp	.label_121
.label_127:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, r14
	mov	r8, r15
	lea	rdi, [rdi]
	call	error
.label_121:
	cmp	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	setg	al
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	mov	eax,  dword ptr [dword ptr [rip + chars_per_margin]]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rip + truncate_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_143
	movzx	ecx,  byte ptr [byte ptr [rip + parallel_files]]
	and	ecx, 1
	nop	
	cmp	ecx, 1
	jne	.label_139
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	lea	rdi, [rdi]
	and	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_139
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [rip + chars_per_column]]
	lea	rdi, [rdi]
	add	esi, eax
	add	esi,  dword ptr [dword ptr [rip + number_width]]
	jmp	.label_143
.label_139:
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [rip + chars_per_column]]
	add	esi, eax
.label_143:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	add	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	edx, 1
	mov	bl,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + columns]],  2
	mov	rbp, rbp
	jl	.label_137
	mov	r10b,  byte ptr [byte ptr [rip + numbered_lines]]
	mov	r8b,  byte ptr [byte ptr [rip + parallel_files]]
	xor	r8b, 1
	mov	r9b,  byte ptr [byte ptr [rip + truncate_lines]]
	mov	r11d,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + chars_per_column]]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	r14b,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rbp, rbp
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_140:
	lea	rsi, [rsi]
	test	bl, 1
	je	.label_135
	mov	rsp, rsp
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:print_char
	mov	rbp, rbp
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:read_line
	jmp	.label_138
.label_135:
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:store_char
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:print_stored
.label_138:
	test	r10b, 1
	lea	rdi, [rdi]
	je	.label_145
	cmp	edx, 1
	sete	bl
	nop	
	or	bl, r8b
	jmp	.label_146
	nop	word ptr cs:[rax + rax]
.label_145:
	mov	rsp, rsp
	xor	ebx, ebx
.label_146:
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x38], bl
	mov	dword ptr [rcx + 0x34], eax
	add	esi, r11d
	lea	rsi, [rsi]
	mov	eax, esi
	nop	
	lea	esi, [rsi + rdi]
	mov	bl, r9b
	and	bl, 1
	cmove	eax, ebp
	lea	rsi, [rsi]
	test	bl, bl
	cmove	esi, ebp
	add	rcx, 0x40
	inc	edx
	cmp	edx,  dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	mov	bl, r14b
	jl	.label_140
	mov	rsp, rsp
	mov	bl, r14b
.label_137:
	lea	rdi, [rdi]
	test	bl, 1
	mov	rsp, rsp
	pop	rbx
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	jne	.label_141
	movzx	esi,  byte ptr [byte ptr [rip + balance_columns]]
	and	esi, 1
	cmp	esi, 1
	mov	rbp, rbp
	jne	.label_141
	mov	rsp, rsp
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:store_char
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:print_stored
	nop	
	jmp	.label_136
.label_141:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:print_char
	mov	rsp, rsp
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:read_line
.label_136:
	nop	
	movzx	esi,  byte ptr [byte ptr [rip + numbered_lines]]
	and	esi, 1
	lea	rdi, [rdi]
	cmp	esi, 1
	jne	.label_144
	mov	sil,  byte ptr [byte ptr [rip + parallel_files]]
	cmp	edx, 1
	lea	rsi, [rsi]
	sete	dl
	nop	
	xor	sil, 1
	mov	rsp, rsp
	or	sil, dl
	jmp	.label_142
.label_144:
	xor	esi, esi
.label_142:
	lea	rsi, [rsi]
	and	sil, 1
	mov	byte ptr [rcx + 0x38], sil
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x34], eax
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	push	r15
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rsp, rsp
	call	init_page
	call	cols_ready_to_print
	mov	rsp, rsp
	test	eax, eax
	je	.label_163
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	jne	.label_167
	mov	byte ptr [byte ptr [rip + print_a_header]],  1
.label_167:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rip + double_space]]
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	shl	r14d, cl
	xor	r15d, r15d
	nop	
	jmp	.label_168
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	edi, 0xa
	call	putchar_unlocked
	dec	r14d
.label_168:
	mov	rbp, rbp
	test	r14d, r14d
	jle	.label_159
	lea	rdi, [rdi]
	call	cols_ready_to_print
	test	eax, eax
	mov	rbp, rbp
	je	.label_156
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + empty_line]],  1
	cmp	dword ptr [dword ptr [rip + columns]],  0
	nop	
	jle	.label_152
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	dword ptr [rax + rax]
.label_171:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	cmp	dword ptr [rbx + 0x30], 0
	lea	rdi, [rdi]
	jg	.label_147
	mov	rsp, rsp
	cmp	dword ptr [rbx + 0x10], 1
	lea	rsi, [rsi]
	jne	.label_162
.label_147:
	mov	byte ptr [byte ptr [rip + FF_only]],  0
	mov	rbp, rbp
	mov	eax, dword ptr [rbx + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	al, al
	jne	.label_172
	mov	rdi, rbx
	call	read_rest_of_line
.label_172:
	mov	rbp, rbp
	and	r15b, 1
	or	r15b,  byte ptr [byte ptr [rip + pad_vertically]]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	lea	ecx, [rax - 1]
	mov	dword ptr [rbx + 0x30], ecx
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jg	.label_150
	call	cols_ready_to_print
	test	eax, eax
	nop	
	je	.label_157
.label_150:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_148
	mov	rbp, rbp
	mov	eax, dword ptr [rbx + 0x10]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_148
	movzx	ecx,  byte ptr [byte ptr [rip + empty_line]]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 1
	je	.label_169
	nop	
	cmp	eax, 3
	je	.label_151
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_148
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + FF_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_148
	jmp	.label_151
.label_162:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rbp, rbp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_148
	movzx	eax,  byte ptr [byte ptr [rip + empty_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_151
.label_169:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_148
.label_151:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	align_column
.label_148:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_166
	nop	
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
.label_166:
	lea	rsi, [rsi]
	add	rbx, 0x40
	inc	ebp
	cmp	ebp,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	jl	.label_171
.label_157:
	cmp	byte ptr [byte ptr [rip + pad_vertically]],  0
	lea	rsi, [rsi]
	je	.label_152
	nop	
	mov	edi, 0xa
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rsp, rsp
	dec	r14d
.label_152:
	lea	rsi, [rsi]
	call	cols_ready_to_print
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_160
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	nop	
	and	al, 1
	jne	.label_159
.label_160:
	lea	rdi, [rdi]
	test	r15b, 1
	nop	
	je	.label_168
	mov	al,  byte ptr [byte ptr [rip + double_space]]
	xor	al, 1
	test	al, 1
	je	.label_165
	jmp	.label_168
.label_159:
	test	r14d, r14d
	jne	.label_156
	cmp	dword ptr [dword ptr [rip + columns]],  0
	lea	rdi, [rdi]
	jle	.label_170
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rax, 0x39
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_155:
	mov	rbp, rbp
	cmp	dword ptr [rax - 0x29], 0
	jne	.label_153
	mov	rbp, rbp
	mov	byte ptr [rax], 1
.label_153:
	add	rax, 0x40
	inc	edx
	cmp	edx, ecx
	nop	
	jl	.label_155
	jmp	.label_156
.label_163:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_158
.label_170:
	mov	rsp, rsp
	xor	r14d, r14d
.label_156:
	and	r15b, 1
	nop	
	mov	byte ptr [byte ptr [rip + pad_vertically]],  r15b
	nop	
	je	.label_161
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	je	.label_164
.label_161:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_149
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_a_FF]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_149
	mov	rbp, rbp
	mov	edi, 0xc
	mov	rsp, rsp
	call	putchar_unlocked
	mov	byte ptr [byte ptr [rip + print_a_FF]],  0
	jmp	.label_149
.label_164:
	add	r14d, 5
	mov	rbp, rbp
	mov	edi, r14d
	lea	rdi, [rdi]
	call	pad_down
.label_149:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + last_page_number]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + page_number]]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [word ptr [rip + page_number]],  rcx
	cmp	rax, rcx
	jae	.label_154
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_158
.label_154:
	nop	
	call	reset_status
	mov	al, 1
.label_158:
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f90

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_177
	cmp	byte ptr [r14 + 1], 0
	je	.label_175
.label_177:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], r14
	nop	
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r14
	mov	rbp, rbp
	call	fopen_safer
	nop	
	mov	qword ptr [rbx], rax
	jmp	.label_174
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbx], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
.label_174:
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	nop	
	je	.label_173
	mov	esi, 2
	mov	rbp, rbp
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	lea	rdi, [rdi]
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	rsp, rsp
	mov	bl, 1
	lea	rdi, [rdi]
	jmp	.label_176
.label_173:
	mov	byte ptr [byte ptr [rip + failed_opens]],  1
	mov	al,  byte ptr [byte ptr [rip + ignore_failed_opens]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	je	.label_178
	nop	
	xor	ebx, ebx
	nop	
	jmp	.label_176
.label_178:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	nop	
	call	error
.label_176:
	mov	al, bl
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0xf8
	mov	rsp, rsp
	mov	r13, rdi
	movzx	ecx, byte ptr [r13]
	mov	rbp, rbp
	mov	eax, 0x2d
	sub	eax, ecx
	mov	rsp, rsp
	jne	.label_183
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_183:
	cmp	eax, 1
	nop	
	sbb	r15d, r15d
	lea	rdi, [rdi]
	or	r15d, esi
	mov	rbp, rbp
	js	.label_182
	lea	rsi, [rsp + 0x68]
	lea	rdi, [rdi]
	mov	edi, r15d
	mov	rbp, rbp
	call	__fstat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_180
.label_182:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + init_header.timespec]],  0
	lea	rsi, [rsi]
	jne	.label_181
	mov	edi, OFFSET FLAT:init_header.timespec
	mov	rsp, rsp
	call	gettime
.label_181:
	movups	xmm0,  xmmword ptr [word ptr [rip + init_header.timespec]]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	jmp	.label_184
.label_180:
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsi]
	call	get_stat_mtime
	nop	
	mov	qword ptr [rsp + 0x50], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdx
.label_184:
	mov	r14d, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + localtz]]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x18]
	lea	rdi, [rdi]
	call	localtime_rz
	test	rax, rax
	je	.label_179
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	lea	rsi, [rsi]
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	lea	r12, [rsp + 0x18]
	xor	edi, edi
	nop	
	mov	rsi, -1
	nop	
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, r14d
	call	nstrftime
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	inc	rbx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	jmp	.label_185
.label_179:
	mov	rbp, rbp
	mov	edi, 0x21
	call	xmalloc
	nop	
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rbp, rbp
	call	timetostr
	mov	rbx, rax
	mov	esi, 1
	nop	
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	r8, rbx
	mov	rbp, rbp
	mov	r9d, r14d
	lea	rdi, [rdi]
	call	__sprintf_chk
.label_185:
	mov	rdi,  qword ptr [word ptr [rip + date_text]]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + date_text]],  rbp
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + custom_header]]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:.str_0
	cmovs	r13, rcx
	test	rax, rax
	cmovne	r13, rax
	mov	qword ptr [word ptr [rip + file_text]],  r13
	mov	rbp, rbp
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + date_text]]
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	call	gnu_mbswidth
	sub	ebx, eax
	mov	rdi,  qword ptr [word ptr [rip + file_text]]
	lea	rsi, [rsi]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	dword ptr [dword ptr [rip + header_width_available]],  ebx
	add	rsp, 0xf8
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042f0

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	rsp, rsp
	jmp	imaxtostr
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	getc_unlocked
	nop	
	mov	ebp, eax
	cmp	ebp, 0xc
	mov	rbp, rbp
	jne	.label_188
	mov	rbp, rbp
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	nop	
	je	.label_188
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	getc_unlocked
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_188
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
.label_188:
	mov	al,  byte ptr [byte ptr [rip + last_line]]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_192
	nop	word ptr cs:[rax + rax]
.label_193:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	getc_unlocked
.label_192:
	mov	rsp, rsp
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_189
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_190
	cmp	eax, 0xc
	lea	rsi, [rsi]
	jne	.label_193
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + last_line]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_187
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_195
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_187
.label_189:
	mov	rdi, r15
	call	close_file
	nop	
	jmp	.label_190
.label_195:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_187
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	add	rcx, 0x39
	nop	word ptr cs:[rax + rax]
.label_194:
	mov	rbp, rbp
	mov	byte ptr [rcx], 0
	add	rcx, 0x40
	dec	eax
	jne	.label_194
.label_187:
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	getc_unlocked
	mov	rbp, rbp
	cmp	eax, 0xa
	je	.label_191
	mov	edi, eax
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	ungetc
.label_191:
	mov	rdi, r15
	call	hold_file
.label_190:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + skip_count]]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_186
	cmp	r14d, 1
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	cmp	ebp, 0xc
	mov	rsp, rsp
	je	.label_186
	mov	rbp, rbp
	and	al,  byte ptr [byte ptr [rip + parallel_files]]
	nop	
	jne	.label_186
	inc	dword ptr [dword ptr [rip + line_count]]
.label_186:
	add	rsp, 8
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490

	.globl reset_status
	.type reset_status, @function
reset_status:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_196
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	add	rcx, 0x10
	nop	dword ptr [rax + rax]
.label_198:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 2
	mov	rbp, rbp
	jne	.label_197
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 0
	nop	
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_197:
	add	rcx, 0x40
	mov	rsp, rsp
	dec	eax
	jne	.label_198
.label_196:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_199
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_200
	nop	
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	lea	rdi, [rdi]
	ret	
.label_200:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  1
.label_199:
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520

	.globl hold_file
	.type hold_file, @function
hold_file:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_201
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x10], 2
	mov	rsp, rsp
	jmp	.label_203
.label_201:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	mov	rbp, rbp
	je	.label_203
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	add	rcx, 0x10
.label_202:
	lea	rdi, [rdi]
	mov	dword ptr [rcx], edx
	add	rcx, 0x40
	dec	eax
	lea	rsi, [rsi]
	jne	.label_202
.label_203:
	mov	dword ptr [rdi + 0x30], 0
	lea	rsi, [rsi]
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl close_file
	.type close_file, @function
close_file:
	mov	rsp, rsp
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	dword ptr [rbx + 0x10], 3
	lea	rdi, [rdi]
	je	.label_210
	mov	r14, qword ptr [rbx]
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	mov	rsp, rsp
	jne	.label_205
	mov	rdi, r14
	call	fileno
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_209
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	rpl_fclose
	mov	rsp, rsp
	test	eax, eax
	jne	.label_205
.label_209:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_208
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_206
.label_208:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_206
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	rdi, [rdi]
	add	rcx, 0x30
	nop	dword ptr [rax]
.label_207:
	mov	dword ptr [rcx - 0x20], 3
	cmp	dword ptr [rcx - 4], 0
	jne	.label_204
	mov	rsp, rsp
	mov	dword ptr [rcx], 0
.label_204:
	add	rcx, 0x40
	lea	rsi, [rsi]
	dec	eax
	jne	.label_207
.label_206:
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_210:
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
.label_205:
	call	__errno_location
	mov	rsp, rsp
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	rsp, rsp
	mov	ebx, edi
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [rip + buff_allocated]]
	jb	.label_211
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:buff_allocated
	nop	
	call	x2realloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + buff]],  rax
.label_211:
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	mov	rsp, rsp
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + buff_current]],  ecx
	nop	
	mov	rcx,  qword ptr [word ptr [rip + buff]]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], bl
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404700

	.globl print_stored
	.type print_stored, @function
print_stored:
	nop
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	push	rbx
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rax, [r14 + 1]
	mov	dword ptr [r15 + 0x28], eax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	lea	rsi, [rsi]
	movsxd	r13, dword ptr [rax + r14*4]
	mov	rbx,  qword ptr [word ptr [rip + buff]]
	add	rbx, r13
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	jne	.label_212
	lea	rdi, [rdi]
	call	print_header
.label_212:
	nop	
	cmp	dword ptr [r15 + 0x10], 1
	nop	
	jne	.label_217
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + columns]],  0
	jle	.label_220
	nop	
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rax, 0x10
	mov	rsp, rsp
	xor	edx, edx
	nop	
.label_213:
	nop	
	mov	dword ptr [rax], 2
	lea	rdi, [rdi]
	inc	edx
	lea	rsi, [rsi]
	add	rax, 0x40
	cmp	edx, ecx
	lea	rsi, [rsi]
	jl	.label_213
.label_220:
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	cmp	dword ptr [rax + 0x30], 0
	mov	rbp, rbp
	jle	.label_219
.label_217:
	nop	
	mov	edi,  dword ptr [dword ptr [rip + padding_not_printed]]
	sub	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rbp, rbp
	jle	.label_221
	call	pad_across_to
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_221:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_216
	call	print_sep_string
.label_216:
	cmp	r13d, r12d
	je	.label_214
	nop	
	sub	r12, r13
	nop	word ptr cs:[rax + rax]
.label_215:
	nop	
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	lea	rsi, [rsi]
	jne	.label_215
.label_214:
	nop	
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	jne	.label_218
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0x34]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + end_vector]]
	nop	
	mov	eax, dword ptr [rax + r14*4]
	lea	rsi, [rsi]
	add	eax, edx
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rbp, rbp
	sub	edx, ecx
	mov	rbp, rbp
	cmp	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	jne	.label_218
	nop	
	sub	eax, ecx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	mov	rbp, rbp
	jmp	.label_218
.label_219:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	nop	
	jne	.label_218
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
.label_218:
	mov	rbp, rbp
	mov	al, 1
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048b0

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	ebx, edi
	movzx	eax,  byte ptr [byte ptr [rip + tabify_output]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_222
	movzx	ebp, bl
	cmp	ebp, 0x20
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	lea	rdi, [rdi]
	jne	.label_223
	lea	rdi, [rdi]
	inc	eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	rbp
	ret	
.label_223:
	test	eax, eax
	jle	.label_225
	call	print_white_space
.label_225:
	lea	rsi, [rsi]
	movsx	edi, bl
	call	to_uchar
	movzx	r14d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	test	byte ptr [rax + r14*2 + 1], 0x40
	nop	
	jne	.label_224
	lea	rdi, [rdi]
	cmp	ebp, 8
	jne	.label_222
	nop	
	dec	dword ptr [dword ptr [rip + output_position]]
	lea	rsi, [rsi]
	jmp	.label_222
.label_224:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_222:
	lea	rdi, [rdi]
	movsx	edi, bl
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	rbp
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960

	.globl read_line
	.type read_line, @function
read_line:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r13, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r13]
	lea	rdi, [rdi]
	call	getc_unlocked
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp,  dword ptr [dword ptr [rip + input_position]]
	lea	rsi, [rsi]
	cmp	r12d, 0xc
	jne	.label_236
	mov	rbp, rbp
	cmp	byte ptr [r13 + 0x39], 0
	lea	rdi, [rdi]
	je	.label_232
	mov	rbp, rbp
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	rbp, rbp
	mov	r12d, eax
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	jne	.label_236
	nop	
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	call	getc_unlocked
	lea	rdi, [rdi]
	mov	r12d, eax
.label_236:
	mov	rbp, rbp
	mov	byte ptr [r13 + 0x39], 0
	cmp	r12d, -1
	lea	rdi, [rdi]
	je	.label_242
	cmp	r12d, 0xa
	je	.label_246
	cmp	r12d, 0xc
	nop	
	je	.label_248
	lea	rdi, [rdi]
	movsx	edi, r12b
	call	char_to_clump
	mov	r14d, eax
.label_246:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_230
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	rbp, rbp
	jle	.label_230
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
	xor	r15d, r15d
	nop	
	jmp	.label_228
.label_230:
	mov	eax, OFFSET FLAT:store_char
	mov	rbp, rbp
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_240
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_239
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_239
	call	print_header
.label_239:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_229
	movzx	eax,  byte ptr [byte ptr [rip + align_empty_cols]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_229
	mov	rsp, rsp
	mov	ebx,  dword ptr [dword ptr [rip + separators_not_printed]]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	test	ebx, ebx
	lea	rdi, [rdi]
	jle	.label_235
	mov	rbp,  qword ptr [word ptr [rip + column_vector]]
	nop	dword ptr [rax]
.label_227:
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	align_column
	nop	
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
	lea	rdi, [rdi]
	add	rbp, 0x40
	dec	ebx
	mov	rbp, rbp
	jne	.label_227
.label_235:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	and	al, 1
	cmovne	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
.label_229:
	mov	edi,  dword ptr [dword ptr [rip + padding_not_printed]]
	sub	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rsp, rsp
	jle	.label_234
	call	pad_across_to
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_234:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_240
	call	print_sep_string
.label_240:
	cmp	byte ptr [r13 + 0x38], 0
	lea	rsi, [rsi]
	je	.label_247
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	call	add_line_number
.label_247:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + empty_line]],  0
	mov	r15b, 1
	mov	rsp, rsp
	cmp	r12d, 0xa
	mov	rsp, rsp
	je	.label_228
	mov	rdx,  qword ptr [word ptr [rip + clump_buff]]
	mov	rdi, r13
	mov	esi, r14d
	jmp	.label_233
	nop	word ptr [rax + rax]
.label_231:
	nop	
	mov	rdx,  qword ptr [word ptr [rip + clump_buff]]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	esi, eax
.label_233:
	call	print_clump
	nop	
	mov	rdi, qword ptr [r13]
	nop	
	call	getc_unlocked
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_243
	lea	rdi, [rdi]
	cmp	eax, 0xa
	je	.label_228
	cmp	eax, 0xc
	je	.label_249
	mov	rbp, rbp
	mov	ebx,  dword ptr [dword ptr [rip + input_position]]
	movsx	edi, al
	call	char_to_clump
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + truncate_lines]]
	lea	rdi, [rdi]
	and	ecx, 1
	cmp	ecx, 1
	mov	rbp, rbp
	jne	.label_231
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	cmp	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_231
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + input_position]],  ebx
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_228
.label_242:
	mov	rdi, r13
	call	close_file
	nop	
	jmp	.label_241
.label_232:
	mov	byte ptr [r13 + 0x39], 0
.label_248:
	mov	rsp, rsp
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_245
	mov	rsi, qword ptr [r13]
	mov	edi, eax
	call	ungetc
.label_245:
	mov	byte ptr [byte ptr [rip + FF_only]],  1
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	nop	
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_226
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_226
	nop	
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	call	print_header
	nop	
	jmp	.label_238
.label_226:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_238
	nop	
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_238:
	lea	rdi, [rdi]
	mov	rdi, r13
	call	hold_file
.label_241:
	mov	r15b, 1
.label_228:
	mov	rbp, rbp
	mov	al, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_243:
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	close_file
	jmp	.label_228
.label_249:
	mov	rsp, rsp
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	mov	rbp, rbp
	je	.label_244
	mov	rsi, qword ptr [r13]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rsi, [rsi]
	call	ungetc
.label_244:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_237
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_237:
	mov	rdi, r13
	call	hold_file
	jmp	.label_228
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d70

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x150
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	edi,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	rbp, rbp
	call	pad_across_to
	mov	rsp, rsp
	call	print_white_space
	cmp	qword ptr [word ptr [rip + page_number]],  0
	je	.label_250
	xor	r14d, r14d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	r8,  qword ptr [word ptr [rip + page_number]]
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x30]
	mov	esi, 1
	nop	
	mov	edx, 0x114
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	call	__sprintf_chk
	mov	ebp,  dword ptr [dword ptr [rip + header_width_available]]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	gnu_mbswidth
	sub	ebp, eax
	cmovs	ebp, r14d
	lea	rdi, [rdi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	sar	r9d, 1
	lea	rsi, [rsi]
	sub	ebp, r9d
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	r8,  qword ptr [word ptr [rip + date_text]]
	mov	rax,  qword ptr [word ptr [rip + file_text]]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.70
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.70
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + print_a_header]],  0
	mov	dword ptr [dword ptr [rip + output_position]],  0
	add	rsp, 0x150
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_250:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	ebx, edi
	nop	
	mov	eax,  dword ptr [dword ptr [rip + output_position]]
	nop	
	mov	cl,  byte ptr [byte ptr [rip + tabify_output]]
	and	cl, 1
	nop	
	je	.label_251
	sub	ebx, eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ebx
	jmp	.label_254
.label_251:
	lea	rdi, [rdi]
	cmp	eax, ebx
	lea	rdi, [rdi]
	jge	.label_253
	lea	rdi, [rdi]
	mov	ebp, ebx
	sub	ebp, eax
	nop	dword ptr [rax]
.label_252:
	mov	edi, 0x20
	call	putchar_unlocked
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_252
.label_253:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + output_position]],  ebx
.label_254:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + separators_not_printed]],  0
	jle	.label_260
	mov	r14,  qword ptr [word ptr [rip + col_sep_string]]
	mov	r12d,  dword ptr [dword ptr [rip + col_sep_length]]
	nop	dword ptr [rax]
.label_263:
	test	r12d, r12d
	lea	rsi, [rsi]
	jle	.label_255
	lea	r15d, [r12 - 1]
	mov	rsp, rsp
	mov	rbx, r14
	nop	word ptr [rax + rax]
.label_259:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x20
	lea	rsi, [rsi]
	jne	.label_256
	lea	rsi, [rsi]
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	lea	rdi, [rdi]
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_256:
	test	eax, eax
	mov	rbp, rbp
	jle	.label_257
	call	print_white_space
.label_257:
	movsx	edi, byte ptr [rbx]
	mov	rsp, rsp
	call	putchar_unlocked
	inc	dword ptr [dword ptr [rip + output_position]]
.label_261:
	lea	rsi, [rsi]
	inc	rbx
	dec	r12d
	mov	rbp, rbp
	jg	.label_259
	lea	r14, [r14 + r15 + 1]
	mov	rsp, rsp
	mov	r12d, 0xffffffff
	jmp	.label_264
	nop	dword ptr [rax + rax]
.label_255:
	nop	
	dec	r12d
.label_264:
	nop	
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	rbp, rbp
	jle	.label_262
	lea	rsi, [rsi]
	call	print_white_space
.label_262:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	lea	rsi, [rsi]
	lea	ecx, [rax - 1]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  ecx
	cmp	eax, 1
	mov	rsp, rsp
	jg	.label_263
	jmp	.label_258
.label_260:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	jle	.label_258
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	print_white_space
.label_258:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	push	r14
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + output_position]]
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	lea	r14d, [rax + rbx]
	cmp	eax, 2
	lea	rdi, [rdi]
	jl	.label_265
	nop	
.label_268:
	lea	rsi, [rsi]
	mov	ecx, ebx
	mov	rbp, rbp
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	idiv	ebx
	sub	ebx, edx
	nop	
	add	ebx, ecx
	mov	ebp, r14d
	sub	ebp, ebx
	lea	rdi, [rdi]
	jl	.label_267
	movsx	edi,  byte ptr [byte ptr [rip + output_tab_char]]
	call	putchar_unlocked
	nop	
	cmp	ebp, 1
	mov	ecx, ebx
	lea	rdi, [rdi]
	jg	.label_268
	nop	
	jmp	.label_267
.label_265:
	nop	
	mov	ecx, ebx
.label_267:
	mov	rbp, rbp
	cmp	ecx, r14d
	lea	rsi, [rsi]
	jge	.label_266
	mov	ebx, r14d
	sub	ebx, ecx
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	edi, 0x20
	nop	
	call	putchar_unlocked
	dec	ebx
	mov	rsp, rsp
	jne	.label_269
.label_266:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	nop	
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	rbp, rbp
	movzx	eax, dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	ebp, edi
	mov	r14,  qword ptr [word ptr [rip + clump_buff]]
	movzx	eax,  byte ptr [byte ptr [rip + input_tab_char]]
	lea	rsi, [rsi]
	movzx	ebx, bpl
	cmp	eax, ebx
	mov	ecx, 8
	mov	rsp, rsp
	cmove	ecx,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	lea	rsi, [rsi]
	cmp	ebx, 9
	mov	rsp, rsp
	je	.label_270
	movzx	eax, al
	nop	
	cmp	eax, ebx
	lea	rdi, [rdi]
	je	.label_270
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	jne	.label_275
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + use_esc_sequence]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_280
	mov	rsp, rsp
	mov	byte ptr [r14], 0x5c
	xor	ebp, ebp
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	esi, 1
	nop	
	mov	edx, 4
	mov	ecx, OFFSET FLAT:.str.79
	xor	eax, eax
	nop	
	mov	r8d, ebx
	call	__sprintf_chk
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rbp, rbp
	mov	al, byte ptr [rsp + rbp + 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + rbp + 1], al
	inc	rbp
	mov	rbp, rbp
	mov	ebx, 4
	nop	
	cmp	rbp, 3
	lea	rsi, [rsi]
	jne	.label_273
	jmp	.label_271
.label_270:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	lea	rsi, [rsi]
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	ebx, ecx
	sub	ebx, edx
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + untabify_input]]
	and	al, 1
	lea	rdi, [rdi]
	je	.label_278
	lea	rdi, [rdi]
	dec	ecx
	mov	rbp, rbp
	sub	ecx, edx
	mov	rbp, rbp
	inc	rcx
	mov	esi, 0x20
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, rcx
	mov	rbp, rbp
	call	memset
	mov	eax, ebx
	jmp	.label_274
.label_275:
	mov	byte ptr [r14], bpl
	mov	ebx, 1
.label_271:
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, ebx
.label_276:
	lea	rdi, [rdi]
	add	ebx, ecx
	mov	dword ptr [dword ptr [rip + input_position]],  ebx
	jmp	.label_272
.label_278:
	mov	byte ptr [r14], bpl
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_274
.label_280:
	movzx	eax,  byte ptr [byte ptr [rip + use_cntrl_prefix]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_279
	test	bpl, bpl
	lea	rsi, [rsi]
	js	.label_282
	mov	rsp, rsp
	mov	byte ptr [r14], 0x5e
	xor	bpl, 0x40
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 1], bpl
	mov	ebx, 2
	lea	rdi, [rdi]
	jmp	.label_271
.label_279:
	mov	rsp, rsp
	mov	byte ptr [r14], bpl
	xor	eax, eax
	mov	rbp, rbp
	cmp	ebx, 8
	mov	ebx, 0xffffffff
	cmovne	ebx, eax
	lea	rdi, [rdi]
	mov	eax, 1
.label_274:
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	nop	
	test	ebx, ebx
	lea	rdi, [rdi]
	jns	.label_281
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_281
	mov	dword ptr [dword ptr [rip + input_position]],  0
	xor	eax, eax
	jmp	.label_272
.label_281:
	mov	rsp, rsp
	test	ebx, ebx
	lea	rsi, [rsi]
	setns	dl
	mov	rsp, rsp
	mov	esi, ebx
	neg	esi
	mov	rbp, rbp
	cmp	ecx, esi
	jg	.label_276
	test	dl, dl
	lea	rsi, [rsi]
	jne	.label_276
	mov	dword ptr [dword ptr [rip + input_position]],  0
.label_272:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_282:
	lea	rsi, [rsi]
	mov	byte ptr [r14], 0x5c
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	lea	rdi, [rsp + 0xc]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, 4
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r8d, ebx
	call	__sprintf_chk
	nop	
.label_277:
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + rbp + 0xc]
	mov	byte ptr [r14 + rbp + 1], al
	inc	rbp
	lea	rdi, [rdi]
	mov	ebx, 4
	cmp	rbp, 3
	mov	rsp, rsp
	jne	.label_277
	lea	rsi, [rsi]
	jmp	.label_271
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053d0

	.globl align_column
	.type align_column, @function
align_column:
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 0x34]
	nop	
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  edi
	lea	rdi, [rdi]
	sub	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	jle	.label_283
	lea	rsi, [rsi]
	call	pad_across_to
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_283:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_284
	mov	rsp, rsp
	call	print_sep_string
.label_284:
	cmp	byte ptr [rbx + 0x38], 0
	lea	rsi, [rsi]
	je	.label_285
	mov	rdi, rbx
	pop	rbx
	jmp	add_line_number
.label_285:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405440

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	mov	r14, rdi
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	mov	r8d,  dword ptr [dword ptr [rip + chars_per_number]]
	mov	r9d,  dword ptr [dword ptr [rip + line_number]]
	mov	esi, 1
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.80
	nop	
	xor	eax, eax
	call	__sprintf_chk
	inc	dword ptr [dword ptr [rip + line_number]]
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_number]]
	mov	rsp, rsp
	test	ebp, ebp
	lea	rsi, [rsi]
	jle	.label_292
	sub	eax, ebp
	movsxd	rbx, eax
	lea	rdi, [rdi]
	add	rbx,  qword ptr [word ptr [rip + number_buff]]
	mov	rbp, rbp
	inc	ebp
	nop	dword ptr [rax]
.label_291:
	movsx	edi, byte ptr [rbx]
	nop	
	inc	rbx
	mov	rbp, rbp
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_291
.label_292:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_288
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	lea	rsi, [rsi]
	cmp	eax, 9
	jne	.label_289
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	mov	eax,  dword ptr [dword ptr [rip + chars_per_number]]
	lea	rdi, [rdi]
	cmp	ebx, eax
	mov	rsp, rsp
	jle	.label_286
	mov	rbp, rbp
	inc	ebx
	sub	ebx, eax
	nop	
.label_290:
	mov	edi, 0x20
	nop	
	call	qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	dec	ebx
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	rbp, rbp
	jg	.label_290
	jmp	.label_286
.label_288:
	movsx	edi,  byte ptr [byte ptr [rip + number_separator]]
	mov	rbp, rbp
	call	qword ptr [r14 + 0x20]
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	mov	rbp, rbp
	cmp	eax, 9
	jne	.label_286
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	nop	
	mov	esi,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	lea	rdi, [rdi]
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rbp, rbp
	add	esi, ecx
	sub	esi, edx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + output_position]],  esi
	nop	
	jmp	.label_286
.label_289:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_286:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_287
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	mov	rbp, rbp
	jne	.label_287
	mov	eax,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsi]
	add	dword ptr [dword ptr [rip + input_position]],  eax
.label_287:
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl print_clump
	.type print_clump, @function
print_clump:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	rbx, rdx
	nop	
	mov	ebp, esi
	nop	
	mov	r14, rdi
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	je	.label_293
	nop	dword ptr [rax + rax]
.label_294:
	movsx	edi, byte ptr [rbx]
	mov	rbp, rbp
	inc	rbx
	mov	rbp, rbp
	call	qword ptr [r14 + 0x20]
	dec	ebp
	mov	rbp, rbp
	jne	.label_294
.label_293:
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl init_page
	.type init_page, @function
init_page:
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	je	.label_295
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	nop	
	je	.label_301
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	edx,  dword ptr [dword ptr [rip + lines_per_body]]
	add	rcx, 0x30
	nop	dword ptr [rax]
.label_302:
	cmp	dword ptr [rcx - 0x20], 0
	nop	
	mov	esi, edx
	mov	rsp, rsp
	je	.label_299
	xor	esi, esi
.label_299:
	mov	dword ptr [rcx], esi
	add	rcx, 0x40
	nop	
	dec	eax
	jne	.label_302
.label_301:
	ret	
.label_295:
	nop	
	push	rax
	lea	rsi, [rsi]
	call	store_columns
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	nop	
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	cmp	esi, 1
	mov	rsp, rsp
	lea	rsp, [rsp + 8]
	je	.label_300
	lea	ecx, [rsi - 2]
	inc	rcx
	mov	edx, 1
	lea	rsi, [rsi]
	sub	edx, esi
	lea	rsi, [rsi]
	lea	rsi, [rax + 0x30]
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	edi, dword ptr [rsi - 4]
	mov	rsp, rsp
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	edx
	jne	.label_296
	shl	rcx, 6
	add	rax, rcx
.label_300:
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [rip + balance_columns]]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_297
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rax + 0x30], ecx
	mov	rbp, rbp
	ret	
.label_297:
	cmp	dword ptr [rax + 0x10], 0
	je	.label_298
	mov	dword ptr [rax + 0x30], 0
	ret	
.label_298:
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	dword ptr [rax + 0x30], ecx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056f0

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + columns]],  0
	mov	rsp, rsp
	je	.label_303
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	mov	sil,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	add	rcx, 0x30
	xor	eax, eax
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_306:
	cmp	dword ptr [rcx - 0x20], 2
	lea	rsi, [rsi]
	jb	.label_304
	lea	rdi, [rdi]
	test	sil, 1
	jne	.label_305
	lea	rsi, [rsi]
	cmp	dword ptr [rcx - 4], 0
	jle	.label_305
	cmp	dword ptr [rcx], 0
	jle	.label_305
.label_304:
	inc	eax
.label_305:
	mov	rsp, rsp
	inc	edi
	lea	rdi, [rdi]
	add	rcx, 0x40
	cmp	edi, edx
	mov	rsp, rsp
	jb	.label_306
.label_303:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r14]
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	rbp, rbp
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_311
	nop	
	cmp	eax, 0xa
	nop	
	je	.label_307
	cmp	eax, 0xc
	jne	.label_309
	mov	rdi, rbx
	call	getc_unlocked
	nop	
	cmp	eax, 0xa
	je	.label_310
	mov	edi, eax
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	ungetc
.label_310:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_308
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_308:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	hold_file
.label_311:
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	jmp	close_file
.label_307:
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbx
	nop	
	mov	ebx, edi
	mov	al,  byte ptr [byte ptr [rip + use_form_feed]]
	and	al, 1
	je	.label_312
	mov	edi, 0xc
	pop	rbx
	lea	rsi, [rsi]
	jmp	putchar_unlocked
.label_312:
	nop	
	test	ebx, ebx
	nop	
	je	.label_314
	nop	word ptr cs:[rax + rax]
.label_313:
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	dec	ebx
	lea	rdi, [rdi]
	jne	.label_313
.label_314:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405870

	.globl store_columns
	.type store_columns, @function
store_columns:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	dword ptr [dword ptr [rip + buff_current]],  0
	mov	dl,  byte ptr [byte ptr [rip + balance_columns]]
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	nop	
	mov	cl, dl
	not	cl
	mov	rsp, rsp
	movzx	ecx, cl
	nop	
	and	ecx, 1
	lea	rdi, [rdi]
	mov	r15d, eax
	sub	r15d, ecx
	nop	
	xor	r14d, r14d
	test	r15d, r15d
	jle	.label_321
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	add	rcx, 0x2c
	lea	rsi, [rsi]
	inc	dl
	movzx	edx, dl
	lea	rdi, [rdi]
	and	edx, 1
	sub	eax, edx
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	dword ptr [rcx], 0
	add	rcx, 0x40
	dec	eax
	mov	rsp, rsp
	jne	.label_323
	test	r15d, r15d
	mov	rbp, rbp
	jle	.label_316
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	eax, eax
	mov	r13d, 0
	je	.label_317
	nop	
	mov	r12d, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	xor	r13d, r13d
	nop	
.label_322:
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x28], r13d
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_315
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	mov	rbp, rbp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_315
	mov	rsp, rsp
	mov	ebp, 1
	sub	ebp, eax
	nop	dword ptr [rax]
.label_318:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_324
	nop	
	mov	dword ptr [dword ptr [rip + input_position]],  0
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	read_line
	mov	rbp, rbp
	test	al, al
	nop	
	jne	.label_320
	mov	rdi, rbx
	mov	rsp, rsp
	call	read_rest_of_line
.label_320:
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x10], 0
	je	.label_325
	mov	rsp, rsp
	cmp	r14d,  dword ptr [dword ptr [rip + buff_current]]
	je	.label_324
.label_325:
	nop	
	inc	dword ptr [rbx + 0x2c]
	nop	
	mov	eax, r13d
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rcx + rax*4], r14d
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	inc	r13d
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + end_vector]]
	nop	
	mov	dword ptr [rdx + rax*4], ecx
	mov	r14d,  dword ptr [dword ptr [rip + buff_current]]
	nop	
.label_324:
	test	ebp, ebp
	je	.label_315
	mov	eax,  dword ptr [dword ptr [rip + files_ready_to_read]]
	lea	rsi, [rsi]
	inc	ebp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_318
.label_315:
	mov	rbp, rbp
	cmp	r12d, r15d
	lea	rsi, [rsi]
	jge	.label_317
	inc	r12d
	mov	rsp, rsp
	add	rbx, 0x40
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	eax, eax
	jne	.label_322
	nop	
	jmp	.label_317
.label_321:
	xor	r13d, r13d
	jmp	.label_317
.label_316:
	mov	rbp, rbp
	xor	r13d, r13d
.label_317:
	nop	
	mov	eax, r13d
	mov	rcx,  qword ptr [word ptr [rip + line_vector]]
	nop	
	mov	dword ptr [rcx + rax*4], r14d
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + balance_columns]]
	nop	
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_319
	mov	rbp, rbp
	mov	edi, r13d
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	balance
.label_319:
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ab0

	.globl balance
	.type balance, @function
balance:
	mov	r8d, edi
	mov	r9d,  dword ptr [dword ptr [rip + columns]]
	test	r9d, r9d
	jle	.label_326
	mov	rsi,  qword ptr [word ptr [rip + column_vector]]
	add	rsi, 0x2c
	xor	edi, edi
	xor	ecx, ecx
	nop	
.label_327:
	mov	rbp, rbp
	mov	eax, r8d
	cdq	
	idiv	r9d
	lea	rsi, [rsi]
	inc	edi
	cmp	edi, edx
	setle	dl
	mov	rsp, rsp
	movzx	edx, dl
	lea	rdi, [rdi]
	add	edx, eax
	mov	dword ptr [rsi], edx
	mov	dword ptr [rsi - 4], ecx
	add	ecx, edx
	mov	r9d,  dword ptr [dword ptr [rip + columns]]
	add	rsi, 0x40
	cmp	edi, r9d
	lea	rdi, [rdi]
	jl	.label_327
.label_326:
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_329
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_328
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_328
.label_329:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_331
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_330
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_331:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_330:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c30

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c40

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_332
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_332:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_333
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_334
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_337
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_336
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_333
.label_336:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_335
.label_334:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_333
.label_337:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_335:
	xor	eax, eax
.label_333:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x405d60
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	call	gettime
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_339
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_338
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_340
.label_338:
	nop	
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_339
.label_340:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_339:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405de0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_343
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_342:
	lea	rdi, [rdi]
	mov	rax, rcx
	imul	r8
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	rdi, [rdi]
	lea	r9d, [rdi + rdi*4]
	nop	
	mov	edi, ecx
	sub	edi, r9d
	lea	rsi, [rsi]
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rbp, rbp
	mov	rcx, rdx
	ja	.label_342
	mov	rbp, rbp
	jmp	.label_344
.label_343:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
.label_341:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	nop	
	sar	rdx, 2
	lea	edi, [rdx + r10]
	lea	rdi, [rdi]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	nop	
	mov	byte ptr [rsi], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_341
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x2d
.label_344:
	mov	rsp, rsp
	mov	rax, rsi
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rax
	mov	edx, ebp
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_350
	xor	ebp, ebp
	test	r15, r15
	jle	.label_348
	mov	rsp, rsp
	mov	eax, r14d
	nop	
	and	eax, 2
	nop	
	mov	dword ptr [rsp + 8], eax
	lea	rsi, [rsi]
	and	r14d, 1
	mov	rbp, rbp
	mov	edx, r14d
	xor	edx, 1
	lea	esi, [r14*4]
	xor	esi, 5
	xor	r15d, r15d
	mov	rbp, rbp
	lea	r13, [rsp + 0x10]
	mov	ebp, 0x7fffffff
	nop	word ptr [rax + rax]
.label_349:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	add	eax, -0x20
	mov	rbp, rbp
	cmp	eax, 0x5e
	mov	rbp, rbp
	ja	.label_362
	jmp	qword ptr [word ptr [+ (rax * 8) + label_346]]
.label_948:
	lea	rsi, [rsi]
	inc	rbx
	inc	r15d
.label_347:
	nop	
	cmp	rbx, r12
	jb	.label_349
	jmp	.label_352
.label_362:
	mov	dword ptr [rsp], esi
	mov	dword ptr [rsp + 4], edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	rsp, rsp
	mov	rdx, r12
	sub	rdx, rbx
	mov	rsp, rsp
	lea	rdi, [rsp + 0xc]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rsp, rsp
	test	r13, r13
	je	.label_359
	cmp	r13, -2
	je	.label_360
	cmp	r13, -1
	lea	rdi, [rdi]
	jne	.label_363
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
.label_359:
	lea	rsi, [rsi]
	mov	r13d, 1
.label_363:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_353
	mov	edx, 0x7fffffff
	mov	rbp, rbp
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	lea	rsi, [rsi]
	jg	.label_354
	add	r15d, eax
	jmp	.label_361
	nop	dword ptr [rax]
.label_353:
	mov	ecx, 1
	cmp	dword ptr [rsp + 8], 0
	jne	.label_354
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	jne	.label_361
	mov	ecx, 7
	mov	rbp, rbp
	cmp	r15d, 0x7fffffff
	nop	
	je	.label_354
	mov	rsp, rsp
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_361:
	add	rbx, r13
	mov	rbp, rbp
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	call	mbsinit
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	rax, rbx
	je	.label_355
	jmp	.label_356
.label_360:
	mov	rsp, rsp
	add	r15d, dword ptr [rsp + 4]
	test	r14d, r14d
	lea	rdi, [rdi]
	mov	rax, r12
	mov	ecx, dword ptr [rsp]
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x10]
	nop	
	jne	.label_357
	lea	rdi, [rdi]
	jmp	.label_356
.label_345:
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_354
	inc	rbx
	mov	rbp, rbp
	inc	r15d
	mov	rsp, rsp
	mov	rax, rbx
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x10]
.label_356:
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	jmp	.label_347
.label_354:
	lea	r13, [rsp + 0x10]
.label_357:
	test	ecx, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_347
	mov	r15d, 0xffffffff
	lea	rdi, [rdi]
	cmp	ecx, 7
	nop	
	jne	.label_352
	jmp	.label_348
.label_350:
	mov	rsp, rsp
	and	r14d, 2
	nop	
	xor	r15d, r15d
	nop	
	jmp	.label_351
.label_358:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_351:
	mov	rsp, rsp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jae	.label_352
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_364
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	test	r14d, r14d
	jne	.label_348
	mov	rbp, rbp
	test	al, 2
	jne	.label_351
.label_364:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_358
	mov	rsp, rsp
	jmp	.label_348
.label_352:
	mov	ebp, r15d
.label_348:
	mov	eax, ebp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r9d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	nop	
	xor	r8d, r8d
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	call	__strftime_internal
	add	rsp, 0x18
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x44], r8d
	mov	rbp, rbp
	mov	r8, rcx
	mov	qword ptr [rsp + 0x58], r8
	mov	rbp, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [r8 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x30]
	test	rcx, rcx
	nop	
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	rbp, rbp
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	rsp, rsp
	cmp	byte ptr [rbp], 0
	lea	rsi, [rsi]
	je	.label_452
	mov	dword ptr [rsp + 0x28], esi
	mov	qword ptr [rsp + 0x30], rdx
	mov	dword ptr [rsp + 0x2c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r13, 0x1000000000002500
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_439
.label_452:
	xor	esi, esi
	nop	
	jmp	.label_470
.label_426:
	mov	rbp, rbp
	mov	ecx, 3
	jmp	.label_472
	nop	dword ptr [rax]
.label_439:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	xor	r12d, r12d
	cmp	eax, 0x25
	jne	.label_474
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x44]
	nop	
	mov	bl, al
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rdi, [rdi]
	mov	bl, al
	nop	
	jmp	.label_476
	nop	dword ptr [rax + rax]
.label_478:
	mov	rbp, rbp
	movsx	r15d, byte ptr [rbp]
.label_476:
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbp]
	nop	
	lea	edx, [rcx - 0x23]
	nop	
	cmp	edx, 0x3c
	lea	rdi, [rdi]
	ja	.label_481
	bt	r13, rdx
	nop	
	jb	.label_478
	lea	rdi, [rdi]
	mov	al, 1
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_483
	mov	rbp, rbp
	cmp	rdx, 0x3b
	mov	rsp, rsp
	jne	.label_481
	nop	
	mov	bl, al
	mov	rsp, rsp
	jmp	.label_476
.label_483:
	lea	rsi, [rsi]
	mov	r12b, 1
	mov	rsp, rsp
	mov	al, bl
	nop	
	jmp	.label_476
.label_474:
	lea	rsi, [rsi]
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	nop	
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	lea	rsi, [rsi]
	cmovbe	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rsp, rsp
	jae	.label_382
	test	rdi, rdi
	mov	ecx, 0
	nop	
	je	.label_496
	lea	rdi, [rdi]
	cmp	eax, 2
	mov	rsp, rsp
	jb	.label_498
	nop	
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	nop	
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r15, r8
	call	memset
	lea	rsi, [rsi]
	mov	r8, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r14 - 1]
.label_498:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp]
	nop	
	mov	byte ptr [rdi], al
	mov	rbp, rbp
	inc	rdi
	mov	rbp, rbp
	mov	rcx, rdi
.label_496:
	lea	rsi, [rsi]
	add	rsi, rbx
.label_458:
	lea	rdi, [rdi]
	mov	rdi, rcx
	jmp	.label_365
	nop	dword ptr [rax + rax]
.label_481:
	nop	
	add	ecx, -0x30
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_370
	nop	word ptr cs:[rax + rax]
.label_391:
	nop	
	mov	r14d, 0x7fffffff
	lea	rsi, [rsi]
	cmp	eax, 0xccccccc
	mov	rbp, rbp
	jg	.label_378
	lea	rdi, [rdi]
	jne	.label_384
	movsx	ecx, byte ptr [rbp]
	add	ecx, -0x30
	cmp	ecx, 7
	mov	rsp, rsp
	jg	.label_378
.label_384:
	lea	rdi, [rdi]
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [rbp]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_378:
	movsx	eax, byte ptr [rbp + 1]
	lea	rsi, [rsi]
	inc	rbp
	nop	
	add	eax, -0x30
	cmp	eax, 0xa
	mov	rbp, rbp
	mov	eax, r14d
	mov	rbp, rbp
	jb	.label_391
.label_370:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 0x4f
	mov	rbp, rbp
	je	.label_395
	cmp	eax, 0x45
	lea	rsi, [rsi]
	jne	.label_397
.label_395:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], rsi
	movsx	eax, byte ptr [rbp]
	mov	dword ptr [rsp + 0x68], eax
	nop	
	inc	rbp
	lea	rdi, [rdi]
	jmp	.label_499
.label_397:
	mov	dword ptr [rsp + 0x68], 0
	nop	
	mov	qword ptr [rsp + 0x78], rsi
.label_499:
	mov	r8b, byte ptr [rbp]
	mov	r9d, OFFSET FLAT:.str.3_0
	movsx	eax, r8b
	xor	r11d, r11d
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	lea	esi, [rax - 0x25]
	lea	rsi, [rsi]
	cmp	esi, 0x55
	lea	rsi, [rsi]
	ja	.label_398
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rdi
	nop	
	mov	qword ptr [rsp + 0x50], rbx
	mov	al, 0x72
	lea	rdi, [rdi]
	mov	r10d, 0xffffffff
	mov	rsp, rsp
	xor	edi, edi
	xor	edx, edx
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_414]]
.label_1006:
	mov	eax, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	cmp	eax, 0x45
	je	.label_376
	mov	byte ptr [rsp + 0x38], r8b
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x14]
	mov	rsp, rsp
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	nop	
	sar	ecx, 0x1f
	lea	rsi, [rsi]
	and	ecx, 0x190
	mov	rbp, rbp
	lea	ebx, [rax + rcx - 0x64]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	dword ptr [rsp + 0x48], edi
	mov	rbp, rbp
	call	iso_week_days
	mov	r12d, eax
	test	r12d, r12d
	js	.label_428
	mov	rbp, rbp
	mov	eax, 0x16d
	test	bl, 3
	lea	rsi, [rsi]
	jne	.label_431
	movsxd	rax, ebx
	mov	rsp, rsp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	nop	
	imul	ecx, ecx, 0x64
	nop	
	sar	rax, 0x27
	mov	rbp, rbp
	add	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0x190
	lea	rdi, [rdi]
	cmp	ebx, eax
	sete	al
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	add	edx, 0x16d
	cmp	ebx, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_431:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x48]
	sub	edi, eax
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ecx, eax
	nop	
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	r12d, eax
	jmp	.label_442
	nop	word ptr cs:[rax + rax]
.label_450:
	lea	rsi, [rsi]
	inc	rcx
.label_1000:
	nop	
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3a
	nop	
	je	.label_450
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	mov	rbp, rbp
	jne	.label_376
	lea	rsi, [rsi]
	add	rbp, rcx
	mov	rsp, rsp
	mov	r11, rcx
.label_1037:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	dword ptr [rax + 0x20], 0
	mov	rbp, rbp
	js	.label_457
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	nop	
	test	r8d, r8d
	js	.label_460
	mov	rbp, rbp
	test	r8d, r8d
	je	.label_463
	lea	rsi, [rsi]
	xor	esi, esi
	jmp	.label_460
.label_1020:
	test	r12b, r12b
	je	.label_465
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_465:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	eax, dword ptr [rsp + 0x68]
	nop	
	cmp	eax, 0x45
	je	.label_376
	mov	al, r8b
	jmp	.label_389
.label_398:
	mov	qword ptr [rsp + 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	mov	rsp, rsp
	test	eax, eax
	jne	.label_376
	nop	
	dec	rbp
	mov	rsp, rsp
	jmp	.label_376
.label_999:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_376
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	rsp, rsp
	mov	ebx, 1
	lea	rsi, [rsi]
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_382
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	je	.label_441
	cmp	eax, 2
	mov	rsp, rsp
	jb	.label_484
	nop	
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_485
	nop	
	cmp	r15d, 0x2b
	jne	.label_487
.label_485:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_489
.label_1001:
	mov	eax, dword ptr [rsp + 0x68]
	test	eax, eax
	jne	.label_376
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_490
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_490:
	xor	edi, edi
	mov	al, 0x41
	mov	rsp, rsp
	jmp	.label_389
.label_1002:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_376
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_495
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_495:
	xor	edi, edi
	mov	rsp, rsp
	mov	al, 0x42
	jmp	.label_389
.label_1003:
	mov	ebx, dword ptr [rsp + 0x68]
	nop	
	cmp	ebx, 0x45
	jne	.label_500
	xor	edi, edi
	nop	
	mov	al, 0x43
	jmp	.label_389
.label_1004:
	cmp	dword ptr [rsp + 0x68], 0
	lea	rdi, [rdi]
	jne	.label_376
	mov	r9d, OFFSET FLAT:.str.1_1
	mov	r10d, 0xffffffff
	nop	
	jmp	.label_371
.label_1005:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_376
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_367
	mov	rsp, rsp
	test	r14d, r14d
	jns	.label_367
	mov	r9d, OFFSET FLAT:.str.2_0
	mov	r15d, 0x2b
	nop	
	mov	r10d, 4
	nop	
	jmp	.label_371
.label_1007:
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_376
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_383
.label_1008:
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	je	.label_376
	mov	byte ptr [rsp + 0x38], r8b
	mov	rbp, rbp
	mov	eax, 2
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_390
.label_1009:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_376
	mov	byte ptr [rsp + 0x38], r8b
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	eax, dword ptr [rax + 4]
	jmp	.label_383
.label_1010:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_376
	cmp	r14d, -1
	lea	rsi, [rsi]
	je	.label_404
	mov	byte ptr [rsp + 0x38], r8b
	mov	ecx, 9
	lea	rsi, [rsi]
	cmp	r14d, 8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x4f0]
	jg	.label_480
	nop	dword ptr [rax + rax]
.label_413:
	cdqe	
	imul	rax, rax, 0x66666667
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x22
	add	eax, edx
	lea	rsi, [rsi]
	dec	ecx
	cmp	r14d, ecx
	jne	.label_413
	mov	ecx, r14d
	nop	
	jmp	.label_394
.label_1011:
	lea	rdi, [rdi]
	mov	dl, 1
.label_1029:
	nop	
	xor	r11d, r11d
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_417
	mov	rbp, rbp
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
.label_417:
	je	.label_420
	mov	dl, 1
.label_420:
	lea	rdi, [rdi]
	mov	al, 0x70
	mov	dil, dl
	jmp	.label_494
.label_1012:
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_376
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_383
.label_1013:
	mov	r9d, OFFSET FLAT:.str.4_0
.label_371:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x68], r10d
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	mov	rsp, rsp
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	mov	rbp, rbp
	xor	r12d, r12d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, -1
	mov	rsp, rsp
	mov	rbx, r9
	mov	rdx, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9d, r15d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x60]
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	r12d, r14d
	nop	
	movsxd	rdx, r12d
	cmp	rax, rdx
	mov	r13, rax
	lea	rdi, [rdi]
	cmovb	r13, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	lea	rdi, [rdi]
	cmp	r13, r12
	mov	rbp, rbp
	jae	.label_382
	mov	rsp, rsp
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_453
	cmp	rax, rdx
	nop	
	jae	.label_455
	mov	rbp, rbp
	movsxd	rcx, r14d
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rax
	cmp	r15d, 0x30
	je	.label_456
	mov	rbp, rbp
	cmp	r15d, 0x2b
	lea	rdi, [rdi]
	jne	.label_403
.label_456:
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_462
.label_1014:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rsi, [rsi]
	je	.label_376
	mov	byte ptr [rsp + 0x38], r8b
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	cdqe	
	jmp	.label_467
.label_1015:
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	cmp	ebx, 0x45
	je	.label_376
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x38], r8b
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	lea	edx, [rax + 6]
	mov	rbp, rbp
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	shr	esi, 0x1f
	sar	eax, 2
	nop	
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	lea	rsi, [rsi]
	sub	edx, esi
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rbp, rbp
	sub	ecx, edx
	movsxd	rax, ecx
.label_467:
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	nop	
	add	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	lea	rsi, [rsi]
	add	eax, ecx
	jmp	.label_383
.label_1016:
	mov	eax, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	cmp	eax, 0x4f
	lea	rsi, [rsi]
	je	.label_376
	xor	edi, edi
	mov	al, 0x58
	lea	rsi, [rsi]
	jmp	.label_389
.label_1017:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_510
	mov	rsp, rsp
	cmp	ebx, 0x4f
	je	.label_376
	mov	byte ptr [rsp + 0x38], r8b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x14]
	mov	rsp, rsp
	cmp	eax, 0xfffff894
	setl	sil
	lea	rdi, [rdi]
	add	eax, 0x76c
	mov	rsp, rsp
	mov	ecx, 4
	jmp	.label_454
.label_1018:
	mov	r13, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	r14d, r14d
	cmovns	ecx, r14d
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	cmovb	rbx, rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	nop	
	jae	.label_382
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	je	.label_514
	cmp	rax, rdx
	jae	.label_366
	movsxd	r14, r14d
	sub	r14, rax
	mov	qword ptr [rsp + 0x68], rax
	mov	rsp, rsp
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_369
	cmp	r15d, 0x2b
	jne	.label_501
.label_369:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_377
.label_1019:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x68]
	mov	rsp, rsp
	test	eax, eax
	jne	.label_376
	mov	rbp, rbp
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_385
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x50], rax
.label_385:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	al, 0x61
	lea	rsi, [rsi]
	jmp	.label_389
.label_1021:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	lea	rsi, [rsi]
	je	.label_376
	xor	edi, edi
	lea	rdi, [rdi]
	mov	al, 0x63
	jmp	.label_389
.label_1022:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rsi, [rsi]
	je	.label_376
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jmp	.label_383
.label_1023:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_376
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_406
.label_1024:
	nop	
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_376
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax + 0x1c]
	nop	
	cmp	eax, -1
	lea	rsi, [rsi]
	setl	sil
	inc	eax
	mov	rbp, rbp
	mov	ecx, 3
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_410
.label_1025:
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	mov	rsp, rsp
	je	.label_376
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_406
.label_1026:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	mov	eax, dword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_376
.label_406:
	mov	byte ptr [rsp + 0x38], r8b
	test	r15d, r15d
	nop	
	mov	ecx, 0x5f
	nop	
	cmove	r15d, ecx
	jmp	.label_383
.label_1027:
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	nop	
	je	.label_376
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x10]
	nop	
	cmp	eax, -1
	lea	rdi, [rdi]
	setl	sil
	inc	eax
	mov	ecx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rcx
	lea	rdi, [rdi]
	jmp	.label_410
.label_1028:
	mov	rbp, rbp
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	ebx, 1
	lea	rsi, [rsi]
	cmova	rbx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_382
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_441
	nop	
	cmp	eax, 2
	nop	
	jb	.label_444
	movsxd	r14, r14d
	lea	rdi, [rdi]
	dec	r14
	mov	rsp, rsp
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_446
	cmp	r15d, 0x2b
	jne	.label_451
.label_446:
	mov	esi, 0x30
	jmp	.label_407
.label_1030:
	mov	byte ptr [rsp + 0x38], r8b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	ecx, 1
	nop	
	mov	qword ptr [rsp + 0x48], rcx
	xor	edx, edx
	xor	r8d, r8d
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	jmp	.label_430
.label_1031:
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rsp, rsp
	lea	rsi, [rsp + 0x80]
	nop	
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	rsi, rcx
	shr	rsi, 0x3f
	mov	rbp, rbp
	lea	r12, [rsp + 0x4a7]
	nop	
.label_475:
	lea	rsi, [rsi]
	movabs	rdx, 0x6666666666666667
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	imul	rdx
	mov	rsp, rsp
	mov	rax, rdx
	shr	rax, 0x3f
	mov	rbp, rbp
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	mov	rsp, rsp
	lea	edi, [rdi + rdi*4]
	lea	rsi, [rsi]
	mov	ebx, ecx
	mov	rbp, rbp
	sub	ebx, edi
	lea	rdi, [rdi]
	add	rdx, rax
	mov	eax, ebx
	lea	rdi, [rdi]
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	lea	rdi, [rdi]
	add	rcx, 9
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_475
	lea	rdi, [rdi]
	mov	eax, 1
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rdi, r13
	lea	rdi, [rdi]
	jmp	.label_488
.label_1032:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rbp, rbp
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jae	.label_382
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_441
	cmp	eax, 2
	jb	.label_505
	lea	rsi, [rsi]
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_507
	nop	
	cmp	r15d, 0x2b
	jne	.label_511
.label_507:
	mov	esi, 0x30
	jmp	.label_513
.label_1033:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	lea	eax, [rcx + 6]
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	mov	rbp, rbp
	shr	rdx, 0x20
	lea	rsi, [rsi]
	lea	ecx, [rdx + rcx + 6]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	inc	eax
	nop	
	mov	ecx, 1
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	jmp	.label_390
.label_1034:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_376
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x18]
	mov	ecx, 1
	lea	rsi, [rsi]
	jmp	.label_394
.label_1035:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	cmp	eax, 0x4f
	mov	rsp, rsp
	je	.label_376
	xor	edi, edi
	mov	rbp, rbp
	mov	al, 0x78
	lea	rdi, [rdi]
	jmp	.label_389
.label_1036:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	jne	.label_401
	xor	edi, edi
	lea	rdi, [rdi]
	mov	al, 0x79
	lea	rsi, [rsi]
	jmp	.label_389
.label_455:
	nop	
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_409
.label_428:
	dec	ebx
	mov	edi, 0x16d
	test	bl, 3
	jne	.label_411
	mov	rsp, rsp
	movsxd	rax, ebx
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	mov	rbp, rbp
	add	ecx, edx
	mov	rbp, rbp
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	lea	rsi, [rsi]
	cmp	ebx, eax
	sete	al
	movzx	eax, al
	nop	
	add	eax, 0x16d
	cmp	ebx, ecx
	mov	edi, 0x16e
	lea	rsi, [rsi]
	cmove	edi, eax
.label_411:
	add	edi, dword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x18]
	mov	rsp, rsp
	call	iso_week_days
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	ecx, 0xffffffff
.label_442:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp]
	cmp	eax, 0x47
	je	.label_424
	nop	
	cmp	eax, 0x67
	nop	
	jne	.label_432
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rax + 0x14]
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	mov	rbp, rbp
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	lea	rdi, [rdi]
	mov	esi, edx
	nop	
	sub	esi, eax
	lea	rdi, [rdi]
	add	esi, ecx
	lea	rsi, [rsi]
	movsxd	rax, esi
	nop	
	imul	rsi, rax, 0x51eb851f
	mov	rdi, rsi
	nop	
	shr	rdi, 0x3f
	sar	rsi, 0x25
	lea	rdi, [rdi]
	add	esi, edi
	imul	esi, esi, 0x64
	mov	rbp, rbp
	sub	eax, esi
	jns	.label_433
	mov	rbp, rbp
	mov	esi, 2
	mov	qword ptr [rsp + 0x48], rsi
	mov	esi, 0xfffff894
	lea	rdi, [rdi]
	sub	esi, ecx
	nop	
	mov	ecx, eax
	neg	ecx
	add	eax, 0x64
	cmp	edx, esi
	cmovl	eax, ecx
	mov	rsp, rsp
	xor	esi, esi
	jmp	.label_419
.label_457:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	r8, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	nop	
	jmp	.label_365
.label_500:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rcx, dword ptr [rax + 0x14]
	cmp	rcx, -0x76c
	setl	sil
	setg	dl
	imul	rax, rcx, 0x51eb851f
	mov	rdi, rax
	nop	
	shr	rdi, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x25
	add	eax, edi
	imul	edi, eax, 0x64
	mov	rsp, rsp
	cmp	ecx, edi
	sets	cl
	and	cl, dl
	nop	
	movzx	ecx, cl
	sub	eax, ecx
	add	eax, 0x13
	mov	ecx, 2
	jmp	.label_454
.label_401:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rax + 0x14]
	imul	rax, rcx, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	edx, eax, 0x64
	mov	rbp, rbp
	mov	eax, ecx
	mov	rsp, rsp
	sub	eax, edx
	js	.label_466
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x38], r8b
.label_433:
	mov	rsp, rsp
	mov	ecx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rcx
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_419
.label_424:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	setl	sil
	mov	rsp, rsp
	lea	eax, [rcx + rax + 0x76c]
	lea	rdi, [rdi]
	mov	ecx, 4
.label_454:
	nop	
	mov	qword ptr [rsp + 0x48], rcx
.label_419:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x2c]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	cmp	r15d, 0x2b
	lea	rsi, [rsi]
	mov	r8d, 0
	jne	.label_430
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	ecx, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, eax
	setb	dil
	cmp	ecx, r14d
	mov	rbp, rbp
	setl	r8b
	mov	rsp, rsp
	or	r8b, dil
	jmp	.label_430
.label_432:
	mov	rsp, rsp
	movsxd	rax, r12d
	lea	rdi, [rdi]
	imul	rcx, rax, -0x6db6db6d
	nop	
	shr	rcx, 0x20
	lea	rsi, [rsi]
	add	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	mov	rsp, rsp
	lea	eax, [rcx + rax + 1]
.label_383:
	lea	rdi, [rdi]
	mov	ecx, 2
.label_394:
	mov	qword ptr [rsp + 0x48], rcx
.label_390:
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	shr	esi, 0x1f
.label_410:
	lea	rdi, [rdi]
	xor	edx, edx
	xor	r8d, r8d
.label_430:
	cmp	ebx, 0x4f
	mov	rbp, rbp
	jne	.label_497
	test	sil, sil
	jne	.label_497
	mov	dword ptr [rsp + 0x68], ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	nop	
	jmp	.label_494
.label_497:
	lea	rdi, [rdi]
	mov	ecx, eax
	neg	ecx
	test	sil, sil
	cmove	ecx, eax
	lea	r12, [rsp + 0x4a7]
	nop	word ptr cs:[rax + rax]
.label_373:
	lea	rsi, [rsi]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_512
	mov	byte ptr [r12 - 1], 0x3a
	nop	
	dec	r12
.label_512:
	sar	edx, 1
	mov	ebx, ecx
	lea	rsi, [rsi]
	mov	eax, 0xcccccccd
	mov	rsp, rsp
	imul	rax, rbx
	shr	rax, 0x23
	lea	ebx, [rax + rax]
	mov	rsp, rsp
	lea	ebx, [rbx + rbx*4]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, ebx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	mov	rsp, rsp
	cmp	ecx, 9
	mov	ecx, eax
	ja	.label_373
	test	edx, edx
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	jne	.label_373
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
.label_488:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	eax, r14d
	cmovl	eax, r14d
	lea	rsi, [rsi]
	test	r8b, r8b
	je	.label_386
	mov	r8b, 0x2b
.label_386:
	test	sil, sil
	mov	r9b, 0x2d
	lea	rsi, [rsi]
	jne	.label_392
	lea	rdi, [rdi]
	mov	r9b, r8b
.label_392:
	nop	
	cmp	r15d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_479
	nop	
	test	r9b, r9b
	mov	r8, rax
	je	.label_381
	nop	
	xor	eax, eax
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	eax, r14d
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	jae	.label_382
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_416
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	setb	al
	test	r8d, r8d
	jne	.label_412
	lea	rsi, [rsi]
	test	al, al
	jne	.label_412
	movsxd	r13, r14d
	mov	rbp, rbp
	lea	rdx, [r13 - 1]
	mov	rbp, rbp
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x60], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r8
	lea	rsi, [rsi]
	call	memset
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r13 - 1]
	lea	rdi, [rdi]
	jmp	.label_412
.label_479:
	mov	r8, rax
	mov	rsp, rsp
	movsxd	rax, r8d
	mov	rbp, rbp
	mov	rcx, r12
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x4a7]
	mov	rsp, rsp
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	mov	rsp, rsp
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	mov	rsp, rsp
	jle	.label_422
	mov	rbp, rbp
	cmp	r15d, 0x5f
	jne	.label_434
	lea	rdi, [rdi]
	movsxd	rdx, ebx
	nop	
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_382
	xor	r11d, r11d
	test	rdi, rdi
	mov	r13d, 0
	je	.label_436
	mov	esi, 0x20
	nop	
	mov	byte ptr [rsp + 0x68], r9b
	mov	r13, rdi
	mov	qword ptr [rsp + 0x48], r8
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	call	memset
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	add	r13, rdx
.label_436:
	mov	rsp, rsp
	add	rsi, rdx
	sub	r14d, ebx
	mov	rbp, rbp
	cmovg	r11d, r14d
	test	r9b, r9b
	lea	rdi, [rdi]
	je	.label_448
	xor	eax, eax
	mov	rbp, rbp
	test	r11d, r11d
	nop	
	cmovns	eax, r11d
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	lea	rdi, [rdi]
	jae	.label_382
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	test	r13, r13
	je	.label_461
	cmp	eax, 2
	lea	rsi, [rsi]
	setb	al
	test	r8d, r8d
	jne	.label_464
	mov	rbp, rbp
	test	al, al
	jne	.label_464
	mov	byte ptr [rsp + 0x68], r9b
	nop	
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x78], rsi
	mov	rsp, rsp
	movsxd	r14, r11d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r11
	dec	r14
	cmp	r15d, 0x30
	je	.label_468
	cmp	r15d, 0x2b
	jne	.label_379
.label_468:
	lea	rdi, [rdi]
	mov	esi, 0x30
	nop	
	jmp	.label_473
.label_422:
	lea	rdi, [rdi]
	test	r9b, r9b
	mov	rsp, rsp
	je	.label_381
	mov	rbp, rbp
	xor	eax, eax
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	lea	rdi, [rdi]
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jae	.label_382
	xor	ecx, ecx
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_416
	nop	
	cmp	eax, 2
	nop	
	setb	al
	nop	
	test	r8d, r8d
	nop	
	jne	.label_412
	mov	rsp, rsp
	test	al, al
	jne	.label_412
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	nop	
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	je	.label_486
	cmp	r15d, 0x2b
	mov	rbp, rbp
	jne	.label_368
.label_486:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	jmp	.label_491
.label_434:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_382
	mov	rbp, rbp
	test	r9b, r9b
	lea	rsi, [rsi]
	je	.label_493
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	mov	rsp, rsp
	cmovns	eax, r14d
	movsxd	rdx, eax
	lea	rsi, [rsi]
	cmp	edx, 1
	lea	rdi, [rdi]
	mov	r13d, 1
	nop	
	cmova	r13, rdx
	mov	rbp, rbp
	cmp	r13, rcx
	lea	rsi, [rsi]
	jae	.label_382
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_506
	mov	rsp, rsp
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	mov	rbp, rbp
	jne	.label_508
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_508
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	lea	rdi, [rdi]
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	mov	rsp, rsp
	je	.label_515
	cmp	r15d, 0x2b
	lea	rdi, [rdi]
	jne	.label_372
.label_515:
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_375
.label_448:
	mov	rbp, rbp
	mov	rdi, r13
	mov	r14d, r11d
	mov	rbp, rbp
	jmp	.label_381
.label_510:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	al, 0x59
.label_389:
	xor	r11d, r11d
.label_494:
	mov	dword ptr [rsp + 0x38], edi
	nop	
	mov	qword ptr [rsp + 0x48], r11
	mov	word ptr [rsp + 0x48b], 0x2520
	nop	
	mov	r11d, dword ptr [rsp + 0x68]
	test	r11d, r11d
	mov	rbp, rbp
	lea	rcx, [rsp + 0x48d]
	je	.label_387
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x48d], r11b
	lea	rcx, [rsp + 0x48e]
.label_387:
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x48b]
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x58]
	call	strftime
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	je	.label_405
	mov	rbp, rbp
	dec	rbx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	
	sub	rcx, rsi
	nop	
	cmp	r12, rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x48]
	jae	.label_382
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x58]
	je	.label_503
	cmp	rbx, rax
	lea	rdi, [rdi]
	setae	al
	lea	rdi, [rdi]
	test	edx, edx
	lea	rsi, [rsi]
	jne	.label_418
	test	al, al
	mov	rbp, rbp
	jne	.label_418
	mov	r13, rsi
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_421
	lea	rsi, [rsi]
	cmp	r15d, 0x2b
	jne	.label_423
.label_421:
	lea	rsi, [rsi]
	mov	esi, 0x30
	nop	
	jmp	.label_427
.label_405:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	jmp	.label_365
.label_423:
	mov	rsp, rsp
	mov	esi, 0x20
.label_427:
	mov	rdx, r14
	mov	r15, rdi
	nop	
	call	memset
	mov	rbp, rbp
	add	r15, r14
	mov	rsp, rsp
	mov	rsi, r13
	movabs	r13, 0x1000000000002500
	mov	rbp, rbp
	mov	rdi, r15
	mov	r8, qword ptr [rsp + 0x58]
.label_418:
	mov	qword ptr [rsp + 0x78], rsi
	mov	r14, r8
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x38]
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_437
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x81]
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	mov	r15, rdi
	test	al, 1
	nop	
	jne	.label_438
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_408
.label_437:
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x81]
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	mov	r15, rdi
	mov	rbp, rbp
	call	memcpy_lowcase
	jmp	.label_408
.label_438:
	lea	rdi, [rdi]
	call	memcpy_uppcase
.label_408:
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, r14
	mov	rbp, rbp
	add	rcx, rbx
.label_503:
	add	rsi, r12
	mov	rbp, rbp
	jmp	.label_458
.label_366:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	jmp	.label_459
.label_403:
	mov	rsp, rsp
	mov	esi, 0x20
.label_462:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rdi, r14
.label_409:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x68]
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	setne	al
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	nop	
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	nop	
	movzx	r8d, al
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	mov	r9d, r15d
	mov	rbx, rdi
	mov	rsp, rsp
	call	__strftime_internal
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	add	rax, rbx
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x78]
.label_453:
	mov	rsp, rsp
	add	rsi, r13
	mov	rdi, rcx
	jmp	.label_477
.label_463:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	sete	sil
.label_460:
	mov	rsp, rsp
	cmp	r11, 3
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	ja	.label_376
	nop	
	movsxd	rax, r8d
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, r8d
	lea	rdi, [rdi]
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	lea	rsi, [rsi]
	imul	rax, rax, -0x6e5d4c3b
	lea	rsi, [rsi]
	shr	rax, 0x20
	add	eax, r8d
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 0xb
	add	eax, edi
	movsxd	rdx, edx
	nop	
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, edx
	lea	rdi, [rdi]
	mov	ecx, edi
	nop	
	shr	ecx, 0x1f
	sar	edi, 5
	add	edi, ecx
	imul	edi, edi, 0x3c
	imul	ecx, edx, 0x3c
	sub	edx, edi
	nop	
	sub	r8d, ecx
	jmp	qword ptr [word ptr [+ (r11 * 8) + label_482]]
.label_961:
	imul	eax, eax, 0x64
	add	eax, edx
	mov	ecx, 5
.label_472:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	jmp	.label_430
.label_376:
	xor	r13d, r13d
	xor	ebx, ebx
	movabs	rcx, 0x100000000
	nop	dword ptr [rax]
.label_502:
	lea	rsi, [rsi]
	add	rbx, rcx
	movzx	eax, byte ptr [rbp + r13]
	dec	r13
	cmp	eax, 0x25
	lea	rsi, [rsi]
	jne	.label_502
	nop	
	mov	rax, r13
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	lea	rdi, [rdi]
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	rbp, rbp
	mov	edx, ecx
	cmova	edx, eax
	nop	
	movsxd	r12, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	sub	rdx, rsi
	mov	rsp, rsp
	cmp	r12, rdx
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	jae	.label_382
	test	rdi, rdi
	mov	rbp, rbp
	mov	edx, 0
	je	.label_374
	sar	rbx, 0x20
	mov	rbp, rbp
	cmp	eax, ecx
	jae	.label_380
	mov	rsp, rsp
	movsxd	r14, r14d
	mov	rsp, rsp
	sub	r14, rbx
	cmp	r15d, 0x30
	mov	rbp, rbp
	je	.label_492
	lea	rsi, [rsi]
	cmp	r15d, 0x2b
	jne	.label_447
.label_492:
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_388
.label_380:
	mov	r15, rsi
	jmp	.label_393
.label_447:
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_388:
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memset
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	add	rdi, r14
.label_393:
	lea	rsi, [rbp + r13 + 1]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r14, rdi
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_425
	lea	rsi, [rsi]
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_402
.label_425:
	mov	rbp, rbp
	call	memcpy_uppcase
.label_402:
	mov	rdx, r14
	mov	rsi, r15
	mov	rbp, rbp
	add	rdx, rbx
.label_374:
	mov	rbp, rbp
	add	rsi, r12
	mov	rbp, rbp
	mov	rdi, rdx
.label_477:
	nop	
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r13, 0x1000000000002500
	jmp	.label_365
.label_367:
	xor	eax, eax
	mov	r10d, r14d
	nop	
	add	r10d, -6
	mov	rbp, rbp
	cmovs	r10d, eax
	mov	rbp, rbp
	mov	r9d, OFFSET FLAT:.str.2_0
	jmp	.label_371
.label_404:
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	mov	eax, 9
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	r14d, 9
	jmp	.label_390
.label_466:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x38], r8b
	lea	rdi, [rdi]
	mov	edx, 2
	mov	qword ptr [rsp + 0x48], rdx
	mov	edx, eax
	mov	rbp, rbp
	neg	edx
	add	eax, 0x64
	cmp	ecx, 0xfffff894
	lea	rdi, [rdi]
	cmovl	eax, edx
	lea	rdi, [rdi]
	xor	esi, esi
	jmp	.label_419
.label_964:
	lea	rdi, [rdi]
	test	r8d, r8d
	je	.label_429
.label_963:
	imul	eax, eax, 0x2710
	mov	rsp, rsp
	imul	edx, edx, 0x64
	add	eax, r8d
	add	eax, edx
	lea	rsi, [rsi]
	mov	ecx, 9
	nop	
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	r8b, 1
	mov	edx, 0x14
	mov	rbp, rbp
	jmp	.label_430
.label_480:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	rsp, rsp
	mov	ecx, r14d
	nop	
	jmp	.label_394
.label_501:
	mov	esi, 0x20
.label_377:
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r15, rdi
	call	memset
	add	r15, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rax, qword ptr [rsp + 0x68]
.label_459:
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_440
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	call	memcpy_lowcase
	jmp	.label_449
.label_440:
	lea	rsi, [rsi]
	setne	dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	je	.label_443
	test	dl, dl
	jne	.label_443
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsp, rsp
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	jmp	.label_449
.label_443:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	call	memcpy
.label_449:
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x78]
	add	rcx, r15
.label_514:
	lea	rsi, [rsi]
	add	rsi, rbx
	mov	rdi, rcx
	nop	
	mov	r8, r13
	movabs	r13, 0x1000000000002500
	mov	rsp, rsp
	jmp	.label_365
.label_451:
	mov	esi, 0x20
.label_407:
	mov	rdx, r14
	mov	r15, rdi
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	add	r15, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	
	mov	rdi, r15
.label_444:
	lea	rsi, [rsi]
	mov	byte ptr [rdi], 0xa
	jmp	.label_471
.label_511:
	nop	
	mov	esi, 0x20
.label_513:
	mov	rdx, r14
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	rdi, r15
.label_505:
	mov	byte ptr [rdi], 9
	jmp	.label_471
.label_368:
	mov	esi, 0x20
.label_491:
	mov	rdx, rax
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	mov	r13, rdi
	call	memset
	add	r13, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r9b, byte ptr [rsp + 0x68]
.label_412:
	mov	rsp, rsp
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_416:
	mov	rsp, rsp
	add	rsi, rbx
	nop	
	mov	rdi, rcx
	mov	rbp, rbp
	jmp	.label_381
.label_379:
	mov	esi, 0x20
.label_473:
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rsp, rsp
	add	r13, r14
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r9b, byte ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
.label_464:
	mov	byte ptr [r13], r9b
	lea	rdi, [rdi]
	inc	r13
	lea	rdi, [rdi]
	mov	rdi, r13
.label_461:
	add	rsi, rbx
	mov	r14d, r11d
	jmp	.label_381
.label_372:
	mov	esi, 0x20
.label_375:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	r14, rdi
	lea	rsi, [rsi]
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
.label_508:
	mov	rsp, rsp
	mov	byte ptr [rdi], r9b
	lea	rdi, [rdi]
	inc	rdi
	mov	rsp, rsp
	mov	rcx, rdi
.label_506:
	lea	rsi, [rsi]
	add	rsi, r13
	lea	rsi, [rsi]
	mov	rdi, rcx
.label_493:
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	r13d, 0
	lea	rdi, [rdi]
	je	.label_509
	lea	rsi, [rsi]
	movsxd	rdx, ebx
	nop	
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	r13, rdi
	nop	
	mov	qword ptr [rsp + 0x48], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	add	r13, qword ptr [rsp + 0x68]
.label_509:
	movsxd	rcx, ebx
	add	rsi, rcx
	mov	rdi, r13
.label_381:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	nop	
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	nop	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_382
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	movabs	r13, 0x1000000000002500
	je	.label_469
	cmp	rbx, rax
	setae	al
	test	r8d, r8d
	nop	
	jne	.label_396
	lea	rdi, [rdi]
	test	al, al
	jne	.label_396
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	nop	
	je	.label_399
	lea	rsi, [rsi]
	cmp	r15d, 0x2b
	lea	rdi, [rdi]
	jne	.label_400
.label_399:
	mov	qword ptr [rsp + 0x78], rsi
	mov	rbp, rbp
	mov	esi, 0x30
	jmp	.label_435
.label_400:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_435:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	r15, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	add	rdi, r14
.label_396:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rdx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r15, rdi
	test	al, al
	lea	rsi, [rsi]
	je	.label_415
	lea	rdi, [rdi]
	call	memcpy_uppcase
	jmp	.label_504
.label_415:
	mov	rsp, rsp
	call	memcpy
.label_504:
	mov	rcx, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	add	rcx, rbx
.label_469:
	mov	rsp, rsp
	add	rsi, rdx
	nop	
	mov	rdi, rcx
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_365
.label_429:
	test	edx, edx
	je	.label_426
.label_962:
	imul	eax, eax, 0x64
	nop	
	add	eax, edx
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rbp, rbp
	mov	r8b, 1
	mov	edx, 4
	jmp	.label_430
.label_487:
	mov	esi, 0x20
.label_489:
	mov	rdx, r14
	mov	rbp, rbp
	mov	r15, rdi
	lea	rdi, [rdi]
	call	memset
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	add	rdi, r14
.label_484:
	nop	
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	mov	byte ptr [rdi], al
.label_471:
	inc	rdi
	lea	rdi, [rdi]
	mov	rcx, rdi
.label_441:
	lea	rsi, [rsi]
	add	rsi, rbx
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	r8, r13
	lea	rsi, [rsi]
	mov	r13, r12
	nop	dword ptr [rax]
.label_365:
	mov	r14d, 0xffffffff
	cmp	byte ptr [rbp + 1], 0
	lea	rbp, [rbp + 1]
	jne	.label_439
.label_470:
	cmp	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	je	.label_445
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_445
	mov	byte ptr [rdi], 0
	jmp	.label_445
.label_382:
	mov	rsp, rsp
	xor	esi, esi
.label_445:
	mov	rbp, rbp
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408230

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	test	rbx, rbx
	je	.label_516
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	nop	
.label_517:
	mov	rbp, rbp
	movzx	ecx, byte ptr [r14 + rbx - 1]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	mov	rsp, rsp
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_517
.label_516:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408280

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_518
	mov	rsp, rsp
	call	__ctype_toupper_loc
	nop	dword ptr [rax]
.label_519:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_519
.label_518:
	mov	rsp, rsp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082e0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	lea	eax, [rdi + 0x17e]
	nop	
	sub	eax, esi
	cdqe	
	lea	rdi, [rdi]
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	lea	rdi, [rdi]
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	rsi, [rsi]
	lea	edx, [rcx*8]
	lea	rsi, [rsi]
	sub	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408330

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_520
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_522
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_522
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_521
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_521:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_522:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_520:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408420
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408470
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408490
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084b0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408520
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408540

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_523
	test	rdx, rdx
	nop	
	je	.label_523
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_523:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408580
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408620

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_612:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_593
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_601]]
.label_922:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_923:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_584
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_584
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_542:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_524
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_524:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_542
.label_584:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_545
.label_915:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_545
.label_918:
	mov	rsp, rsp
	mov	al, 1
.label_916:
	mov	r15b, 1
.label_919:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_581
	mov	cl, al
.label_581:
	lea	rdi, [rdi]
	mov	al, cl
.label_917:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_587
	test	r10, r10
	je	.label_645
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_594
.label_587:
	xor	ecx, ecx
	jmp	.label_594
.label_920:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_602
	test	r10, r10
	je	.label_606
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_609
.label_921:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_545
.label_645:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_594:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_545
.label_602:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_609
.label_606:
	mov	rbp, rbp
	mov	eax, 1
.label_609:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_545:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_540
	nop	word ptr [rax + rax]
.label_539:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_540:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_597
	cmp	rsi, rbp
	jne	.label_599
	jmp	.label_600
	nop	word ptr cs:[rax + rax]
.label_597:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_600
.label_599:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_607
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_611
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_611
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_611:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_639
.label_607:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_573:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_643
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_525]]
.label_909:
	test	rsi, rsi
	jne	.label_538
	jmp	.label_541
	nop	word ptr [rax + rax]
.label_639:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_557
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_573
	mov	rsp, rsp
	jmp	.label_546
.label_557:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_573
.label_913:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_586
	test	rsi, rsi
	nop	
	jne	.label_569
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_541
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_531
.label_902:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_580
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_546
	cmp	edi, 2
	nop	
	jne	.label_629
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_610
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_614
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_614:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_626
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_626:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_638
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_638:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_633
.label_903:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_527
.label_904:
	mov	cl, 0x74
	jmp	.label_529
.label_905:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_527
.label_906:
	mov	bl, 0x66
	jmp	.label_527
.label_907:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_529
.label_910:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_534
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_547
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_556
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_556:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_566
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_566:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_575
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_575:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_588
.label_911:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_592
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_598
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_547
.label_598:
	mov	rdi, r14
	jmp	.label_538
.label_912:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_605
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_547
	mov	rdi, r14
	jmp	.label_613
.label_643:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_616
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_561:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_526
	test	dl, dl
	mov	rsp, rsp
	je	.label_526
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_531
.label_586:
	test	rsi, rsi
	jne	.label_535
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_535
.label_541:
	mov	rbp, rbp
	mov	dl, 1
.label_908:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_546
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_531
.label_580:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_538
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_540
.label_534:
	mov	rdi, r14
.label_588:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_531
.label_605:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_529
.label_613:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_543
.label_529:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_546
.label_527:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_531
	lea	rsi, [rsi]
	jmp	.label_552
.label_616:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_579
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_579:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_553:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_618
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_622
	cmp	rbp, -2
	nop	
	je	.label_635
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_558
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_533:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_571
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_528
.label_571:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_533
.label_558:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_637
	xor	r15d, r15d
.label_637:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_553
	jmp	.label_561
.label_535:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_531
.label_592:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_538
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_538
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_538
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_576
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_583
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_546
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_551
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_551:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_563
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_563:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_604
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_604:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_585
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_585:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_531
.label_538:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_531:
	test	r12b, r12b
	je	.label_640
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_642
	jmp	.label_632
	nop	word ptr cs:[rax + rax]
.label_640:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_632
.label_642:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_567
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_543
	jmp	.label_552
	nop	word ptr cs:[rax + rax]
.label_632:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_552
	jmp	.label_543
.label_567:
	mov	bl, r13b
	mov	rsi, r14
.label_552:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_546
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_560
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_560
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_623
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_623:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_572
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_572:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_582
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_582:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_560:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_595
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_595:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_603
.label_569:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_531
.label_526:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_636
	nop	word ptr cs:[rax + rax]
.label_564:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_636:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_621
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_625
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_630
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_630:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_625
	nop	dword ptr [rax]
.label_621:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_547
	cmp	r14d, 2
	jne	.label_530
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_530
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_537
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_537:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_619
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_619:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_555
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_555:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_530:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_568
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_568:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_578
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_578:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_589
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_589:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_625:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_543
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_615
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_559
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_620
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_620:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_631
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_631:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_559
	nop	word ptr cs:[rax + rax]
.label_615:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_559:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_564
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_564
	nop	word ptr cs:[rax + rax]
.label_543:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_549
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_549
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_624
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_624:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_554
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_554:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_603
	nop	word ptr cs:[rax + rax]
.label_549:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_603:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_539
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_539
.label_629:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_633
.label_610:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_633:
	cmp	rcx, r10
	jae	.label_590
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_590:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_596
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_570
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_608
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_532
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_532:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_628
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_628:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_531
.label_596:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_531
.label_570:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_531
.label_608:
	xor	r15d, r15d
	jmp	.label_531
.label_618:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_565
.label_622:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_562
.label_635:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_544
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_550:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_548
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_550
	xor	r15d, r15d
	nop	
	jmp	.label_565
.label_544:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_562:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_565:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_561
.label_548:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_565
.label_576:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_531
.label_583:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_531
	nop	word ptr cs:[rax + rax]
.label_600:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_577
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_547
.label_577:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_536
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_536
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_617
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_536
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_612
.label_536:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_627
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_627
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_627
	inc	rdx
	nop	dword ptr [rax + rax]
.label_641:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_634
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_634:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_641
.label_627:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_644
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_644
.label_546:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_574:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_591:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_644:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_528:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_574
.label_547:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_574
.label_617:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_591
.label_593:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d70
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d90

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_646
	mov	qword ptr [rax], rbx
.label_646:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ee0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_647
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_651:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_651
.label_647:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_650
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_648]], OFFSET FLAT:slot0
.label_650:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_649
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_649:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fa0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x409fb0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_658
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_653
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_655
.label_653:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_656
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_657
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_657:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_655:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_654
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_652
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_652:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_654:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_658:
	lea	rdi, [rdi]
	call	abort
.label_656:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a220

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a230
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a250
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a270

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_659
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_659:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a340

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a3a0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3c0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3e0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_660]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_661]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a480

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4c0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a530

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a540

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_660]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_661]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a600
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a630

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a640
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a660

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a670

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40a680

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_663
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_664
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_663
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_663
.label_664:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_665
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_663
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_663
.label_665:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_663:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7b0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_668
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_666
	jmp	.label_667
.label_668:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_667
.label_666:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_667
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_667:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a870

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_671
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_670
	lea	rsi, [rsi]
	jmp	.label_669
.label_671:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_669
.label_670:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_669
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_669:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a960

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_674
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_673
	jmp	.label_672
.label_674:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_672
.label_673:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_672
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_672:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa30

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_677
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_676
	jmp	.label_675
.label_677:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_675
.label_676:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_675
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_675:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40aad0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_680
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_679
	nop	
	jmp	.label_678
.label_680:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_678
.label_679:
	mov	eax, 1
	test	bpl, bpl
	je	.label_678
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_678:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab70

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_683
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_682
	lea	rsi, [rsi]
	jmp	.label_681
.label_683:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_681
.label_682:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_681
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_681:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac00

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_686
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_685
	jmp	.label_684
.label_686:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_684
.label_685:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_684
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_684:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ac70

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_687
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_689
	mov	rbp, rbp
	jmp	.label_688
.label_687:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_688
.label_689:
	xor	eax, eax
.label_688:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acc0
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x50]
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acd0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ace0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acf0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad00
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x50]
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad20
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad30

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad40
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	mov	rax, -1
	mov	rsp, rsp
	mov	rdx, -1
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad60
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	mov	eax, edi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad70

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ad90

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_695
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_694
.label_695:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_694:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_697
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_698]]
.label_990:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_697:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_693
.label_991:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_992:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_993:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_691
.label_994:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_690
.label_995:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_699
.label_996:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_699:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_690:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_691:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_696
.label_998:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_693:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_692
.label_997:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_692:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_696:
	mov	rbp, rbp
	call	__fprintf_chk
.label_989:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b180
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_700:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_700
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b1b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_704:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_701
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_703
	nop	word ptr cs:[rax + rax]
.label_701:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_703:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_702
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_704
.label_702:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b240

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_705
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_705:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b380

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_706
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_706:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_707
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_708
.label_707:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_708:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_709
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_709:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b430

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_710
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_710
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_710:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_711
	test	rax, rax
	nop	
	je	.label_712
.label_711:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_712:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b480

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_713
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_714
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_715
.label_713:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_716
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_716:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_717
.label_715:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_714:
	call	xalloc_die
.label_717:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b520

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b530

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b540
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b580
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_718
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_718
	pop	rcx
	ret	
.label_718:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b5b0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b600
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b620

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b670

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	eax, esi
	mov	r13, rdi
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	call	xstrtoimax
	mov	rsp, rsp
	cmp	eax, 3
	je	.label_723
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_725
	mov	rbp, rbp
	test	eax, eax
	jne	.label_721
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jl	.label_722
	lea	rsi, [rsi]
	cmp	rbx, r15
	jle	.label_724
.label_722:
	nop	
	cmp	rbx, 0x40000000
	jl	.label_719
.label_725:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x4b
	lea	rsi, [rsi]
	jmp	.label_721
.label_723:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_721:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x40]
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ebx, 0x16
	lea	rsi, [rsi]
	cmove	ebx, eax
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	call	quote
	mov	r8, rax
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	mov	rsp, rsp
	call	error
.label_724:
	mov	rax, qword ptr [rsp]
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_719:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_720
	mov	rsp, rsp
	mov	dword ptr [rax], 0x4b
	jmp	.label_721
.label_720:
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	jmp	.label_721
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b7c0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	rsp, rsp
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b800

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_726
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x10]
	lea	rdi, [rdi]
	cmovne	r13, rsi
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	lea	rdi, [rdi]
	call	strtoimax
	nop	
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_744
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_746
	lea	rsi, [rsi]
	mov	r12d, 4
	mov	rbp, rbp
	cmp	eax, 0x22
	mov	rbp, rbp
	jne	.label_732
	lea	rsi, [rsi]
	mov	r12d, 1
.label_746:
	test	r15, r15
	mov	rsp, rsp
	jne	.label_738
	jmp	.label_731
.label_744:
	nop	
	mov	r12d, 4
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_732
	mov	rbp, rbp
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_732
	lea	rsi, [rsi]
	mov	rdi, r15
	nop	
	call	strchr
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_732
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 1
	mov	rsp, rsp
	xor	r12d, r12d
.label_738:
	mov	rsp, rsp
	mov	rax, qword ptr [r13]
	lea	rdi, [rdi]
	movsx	ebx, byte ptr [rax]
	nop	
	test	ebx, ebx
	je	.label_731
	mov	rdi, r15
	nop	
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_735
	mov	esi, 0x400
	mov	rsp, rsp
	mov	ebp, 1
	add	ebx, -0x45
	lea	rdi, [rdi]
	cmp	ebx, 0x2f
	ja	.label_737
	lea	rsi, [rsi]
	movabs	rax, 0x814400308945
	bt	rax, rbx
	mov	rsp, rsp
	jae	.label_737
	mov	rsp, rsp
	mov	esi, 0x30
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_729
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	ebp, 1
	cmp	ecx, 0x42
	lea	rdi, [rdi]
	je	.label_734
	mov	rbp, rbp
	cmp	ecx, 0x44
	lea	rdi, [rdi]
	je	.label_734
	cmp	ecx, 0x69
	jne	.label_742
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + 2]
	mov	rsp, rsp
	mov	ebp, 3
	cmp	eax, 0x42
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rbp, rbp
	je	.label_737
	mov	ebp, 1
	lea	rdi, [rdi]
	jmp	.label_737
.label_729:
	mov	esi, 0x400
	nop	
	jmp	.label_737
.label_734:
	mov	esi, 0x3e8
	mov	ebp, 2
	nop	
	jmp	.label_737
.label_742:
	mov	esi, 0x400
.label_737:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_730
	lea	ecx, [rax - 0x42]
	mov	rbp, rbp
	cmp	ecx, 0xe
	lea	rsi, [rsi]
	ja	.label_743
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_736]]
.label_953:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_741
.label_730:
	mov	rsp, rsp
	cmp	eax, 0x73
	jg	.label_739
	lea	ecx, [rax - 0x62]
	lea	rdi, [rdi]
	cmp	ecx, 0xb
	ja	.label_745
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_740]]
.label_929:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x200
	nop	
	jmp	.label_741
.label_743:
	cmp	eax, 0x54
	je	.label_733
	lea	rsi, [rsi]
	cmp	eax, 0x59
	jne	.label_735
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_728
.label_739:
	cmp	eax, 0x74
	mov	rsp, rsp
	je	.label_733
	lea	rdi, [rdi]
	cmp	eax, 0x77
	jne	.label_735
	lea	rdi, [rsp + 8]
	nop	
	mov	esi, 2
.label_741:
	call	bkm_scale
	jmp	.label_728
.label_930:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	jmp	.label_728
.label_931:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_728
.label_932:
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 2
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_728
.label_733:
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 4
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	jmp	.label_728
.label_745:
	mov	rsp, rsp
	cmp	eax, 0x5a
	mov	rsp, rsp
	jne	.label_735
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 7
	nop	
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_728
.label_735:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	or	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_732
.label_954:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	mov	rsp, rsp
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	jmp	.label_728
.label_955:
	nop	
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_728:
	or	eax, r12d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13]
	mov	rsp, rsp
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	mov	rsp, rsp
	cmp	byte ptr [rcx + rbp], 0
	je	.label_727
	lea	rsi, [rsi]
	or	eax, 2
.label_727:
	mov	rsp, rsp
	mov	r12d, eax
.label_731:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
.label_732:
	mov	eax, r12d
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_726:
	mov	edi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc00

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	nop	
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	lea	rdi, [rdi]
	mov	rax, rsi
	cqo	
	nop	
	idiv	r9
	lea	rsi, [rsi]
	cmp	rcx, rax
	jge	.label_747
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_747:
	mov	rax, r8
	lea	rsi, [rsi]
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_748
	mov	rbp, rbp
	mov	qword ptr [rdi], r8
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_748:
	lea	rdi, [rdi]
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc70

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebp, edx
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rbp, rbp
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_749
	nop	
.label_750:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	nop	
	or	ebx, eax
	dec	ebp
	jne	.label_750
.label_749:
	mov	rbp, rbp
	mov	eax, ebx
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcc0

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	mov	rbp, rbp
	mov	r12, rdi
	nop	
	cmp	ebp, 0x25
	jae	.label_763
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x10]
	nop	
	cmovne	r13, rsi
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	call	strtol
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	nop	
	je	.label_758
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_761
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_753
	lea	rdi, [rdi]
	mov	r12d, 1
.label_761:
	test	r15, r15
	lea	rsi, [rsi]
	jne	.label_768
	mov	rbp, rbp
	jmp	.label_757
.label_758:
	mov	r12d, 4
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_753
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_753
	mov	rdi, r15
	call	strchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_753
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_768:
	mov	rsp, rsp
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_757
	mov	rdi, r15
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	je	.label_765
	mov	rsp, rsp
	mov	esi, 0x400
	mov	ebp, 1
	mov	rbp, rbp
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_751
	movabs	rax, 0x814400308945
	nop	
	bt	rax, rbx
	jae	.label_751
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strchr
	mov	ebp, 1
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_759
	nop	
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rsp, rsp
	cmp	ecx, 0x42
	mov	rsp, rsp
	je	.label_762
	lea	rdi, [rdi]
	cmp	ecx, 0x44
	lea	rsi, [rsi]
	je	.label_762
	cmp	ecx, 0x69
	jne	.label_767
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	lea	rdi, [rdi]
	mov	esi, 0x400
	je	.label_751
	mov	rbp, rbp
	mov	ebp, 1
	jmp	.label_751
.label_759:
	mov	esi, 0x400
	jmp	.label_751
.label_762:
	lea	rdi, [rdi]
	mov	esi, 0x3e8
	lea	rdi, [rdi]
	mov	ebp, 2
	lea	rdi, [rdi]
	jmp	.label_751
.label_767:
	mov	esi, 0x400
.label_751:
	nop	
	mov	rax, qword ptr [r13]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax]
	mov	rbp, rbp
	cmp	eax, 0x59
	jg	.label_754
	nop	
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	lea	rsi, [rsi]
	ja	.label_764
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_766]]
.label_892:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	esi, 0x400
	jmp	.label_752
.label_754:
	cmp	eax, 0x73
	lea	rdi, [rdi]
	jg	.label_769
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_770
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_771]]
.label_1042:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_752
.label_764:
	cmp	eax, 0x54
	nop	
	je	.label_755
	cmp	eax, 0x59
	jne	.label_765
	lea	rdi, [rsp + 8]
	mov	edx, 8
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	jmp	.label_756
.label_769:
	mov	rsp, rsp
	cmp	eax, 0x74
	je	.label_755
	cmp	eax, 0x77
	jne	.label_765
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	esi, 2
.label_752:
	lea	rsi, [rsi]
	call	bkm_scale_0
	jmp	.label_756
.label_894:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power_0
	lea	rdi, [rdi]
	jmp	.label_756
.label_895:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 1
	call	bkm_scale_by_power_0
	lea	rdi, [rdi]
	jmp	.label_756
.label_896:
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 2
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	nop	
	jmp	.label_756
.label_755:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	edx, 4
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	lea	rdi, [rdi]
	jmp	.label_756
.label_770:
	cmp	eax, 0x5a
	lea	rdi, [rdi]
	jne	.label_765
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 7
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	rsp, rsp
	jmp	.label_756
.label_765:
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
	or	r12d, 2
	mov	rbp, rbp
	jmp	.label_753
.label_893:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	jmp	.label_756
.label_897:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	bkm_scale_by_power_0
.label_756:
	or	eax, r12d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13]
	mov	rsp, rsp
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	mov	rbp, rbp
	cmp	byte ptr [rcx + rbp], 0
	lea	rsi, [rsi]
	je	.label_760
	lea	rdi, [rdi]
	or	eax, 2
.label_760:
	lea	rsi, [rsi]
	mov	r12d, eax
.label_757:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_753:
	lea	rdi, [rdi]
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_763:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c0b0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	lea	rsi, [rsi]
	movabs	r8, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi]
	mov	rbp, rbp
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_772
	mov	qword ptr [rdi], rsi
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_772:
	mov	rax, r8
	nop	
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_773
	lea	rdi, [rdi]
	mov	qword ptr [rdi], r8
	mov	eax, 1
	mov	rsp, rsp
	ret	
.label_773:
	lea	rsi, [rsi]
	imul	rcx, r9
	nop	
	mov	qword ptr [rdi], rcx
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c120

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edx
	lea	rdi, [rdi]
	mov	r14d, esi
	mov	r15, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_774
	nop	word ptr [rax + rax]
.label_775:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	nop	
	or	ebx, eax
	dec	ebp
	lea	rsi, [rsi]
	jne	.label_775
.label_774:
	mov	eax, ebx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c180

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c1a0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	push	r15
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rdi, [rdi]
	mov	r15d, r9d
	mov	r14, r8
	mov	rsp, rsp
	mov	eax, esi
	dec	edi
	lea	rdi, [rdi]
	cmp	edi, 4
	jae	.label_776
	movsxd	rsi, edi
	nop	
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_778]]
	lea	rsi, [rsi]
	cdqe	
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_779
	lea	rsi, [rsi]
	shl	rax, 5
	nop	
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:.str_7
	jmp	.label_777
.label_779:
	nop	
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:.str_7
	sub	rbp, rax
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 6], dl
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 7], 0
.label_777:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, r15d
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, rbp
	nop	
	mov	r8, rbx
	mov	r9, r14
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_776:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c270

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_802
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_793:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_793
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_780
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_786
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_788
	cmp	eax, 0x22
	jne	.label_780
	lea	rsi, [rsi]
	mov	r12d, 1
.label_788:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_799
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_800
.label_786:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_780
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_780
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_780
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_799:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_791
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_784
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_804
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_785
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_783
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_796
	cmp	ecx, 0x44
	je	.label_796
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_783
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_783
	mov	r14d, 1
	jmp	.label_783
.label_796:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_783:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_797
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_787
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_790]]
.label_973:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_792
.label_797:
	cmp	eax, 0x73
	jg	.label_795
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_798
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_801]]
.label_984:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_792
.label_787:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_782
	nop	
	cmp	eax, 0x59
	jne	.label_784
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_781
.label_795:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_782
	cmp	eax, 0x77
	nop	
	jne	.label_784
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_792:
	nop	
	call	bkm_scale_1
	jmp	.label_794
.label_975:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_781
.label_976:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_781
.label_977:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_781
.label_782:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_781
.label_798:
	cmp	eax, 0x5a
	jne	.label_784
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_781
.label_784:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_789
.label_974:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_781
.label_978:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_781:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power_1
.label_794:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_803
	lea	rdi, [rdi]
	or	eax, 2
.label_803:
	mov	r12d, eax
.label_791:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_800:
	mov	qword ptr [rcx], rax
.label_789:
	mov	r15d, r12d
.label_780:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_804:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_783
.label_785:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_783
.label_802:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40c680

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c6c0

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_805
	nop	word ptr [rax + rax]
.label_806:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale_1
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_806
.label_805:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c730

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_807
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_808
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_808
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_807:
	mov	ecx, 1
.label_808:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_809
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_810
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_809
.label_810:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_809
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_811
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_811:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_809:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c860

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_821
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_821:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_823
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_814
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_815
	mov	rbp, rbp
	test	esi, esi
	jne	.label_823
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_825
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_819
.label_823:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_816
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_815
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_820
.label_814:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_815:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_824
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_813
.label_824:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_813:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_820:
	nop	
	cmp	eax, 6
	jne	.label_816
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_818
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_822
.label_816:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_812
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_817
.label_825:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_819:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_818:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_822:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_812:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_817:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb00

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb20

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_826
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_827
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_827
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_828
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_829
.label_827:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_829
.label_826:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_829:
	test	ebx, ebx
	js	.label_828
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_828
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_830
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_828
.label_830:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_828:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_831
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_831
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_831:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cc60

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_832
	mov	rbp, rbp
	ret	
.label_832:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cc80

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_833
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_833
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_835
.label_833:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_835:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_834
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_834:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd30

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_836
	nop	
	cmp	r15, -2
	jb	.label_836
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_836
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_836:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdc0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_837
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	mov	rbp, rbp
	mov	r15, rax
	inc	r15
.label_837:
	nop	
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	lea	rdi, [rdi]
	cmp	r15, 0x77
	nop	
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_838
	mov	qword ptr [rbx], 0
	test	r14, r14
	mov	rsp, rsp
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	lea	rdi, [rdi]
	je	.label_838
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	add	rdi, 9
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	call	extend_abbrs
.label_838:
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce60

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	lea	rsi, [rsi]
	mov	byte ptr [rbx + r14], 0
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ce90

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_839
	nop	dword ptr [rax]
.label_840:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_840
.label_839:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cec0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_841
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_843
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_842
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_842:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	revert_tz
	mov	rbp, rbp
	xor	ecx, ecx
	xor	al, 1
	mov	rbp, rbp
	cmovne	r15, rcx
	nop	
	test	bpl, bpl
	lea	rsi, [rsi]
	cmovne	r15, rcx
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_844
.label_841:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_843:
	xor	eax, eax
.label_844:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cfa0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_848
	test	cl, cl
	je	.label_846
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_846
	jmp	.label_847
.label_848:
	mov	eax, 1
	mov	rsp, rsp
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_847
.label_846:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_847
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	change_env
	test	al, al
	nop	
	je	.label_845
	nop	
	mov	rax, rbx
	mov	rbp, rbp
	jmp	.label_847
.label_845:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	tzfree
	mov	rsp, rsp
	mov	dword ptr [r14], ebp
	nop	
	xor	eax, eax
.label_847:
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d060

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	mov	r13b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_854
	cmp	r15, rbx
	ja	.label_856
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_854
.label_856:
	mov	r14d, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_850
	lea	r14, [r12 + 9]
	jmp	.label_860
.label_853:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_860:
	lea	r13, [r12 + 9]
	nop	word ptr cs:[rax + rax]
.label_859:
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_849
	cmp	byte ptr [r14], 0
	mov	rsp, rsp
	jne	.label_852
	lea	rsi, [rsi]
	mov	rbp, r14
	sub	rbp, r13
	lea	rdi, [rdi]
	jne	.label_855
	cmp	byte ptr [r12 + 8], 0
	mov	rbp, rbp
	je	.label_855
.label_852:
	mov	rdi, r14
	nop	
	call	strlen
	lea	rsi, [rsi]
	lea	rcx, [rax + r14 + 1]
	cmp	byte ptr [rax + r14 + 1], 0
	mov	r14, rcx
	lea	rdi, [rdi]
	jne	.label_859
	lea	rdi, [rdi]
	jmp	.label_853
.label_849:
	mov	r13b, 1
.label_850:
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r14
.label_854:
	mov	al, r13b
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_855:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rbp, rbp
	mov	rcx, rbp
	not	rcx
	nop	
	cmp	rax, rcx
	mov	r13b, 1
	lea	rdi, [rdi]
	jbe	.label_851
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_854
.label_851:
	add	rbp, rax
	lea	rdi, [rdi]
	cmp	rbp, 0x76
	lea	rsi, [rsi]
	ja	.label_857
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	mov	rsp, rsp
	call	extend_abbrs
	mov	rbp, rbp
	jmp	.label_850
.label_857:
	mov	rdi, rbx
	nop	
	call	tzalloc
	mov	r14, rax
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_858
	mov	rsp, rsp
	mov	byte ptr [r14 + 8], 0
	lea	rsi, [rsi]
	add	r14, 9
	jmp	.label_850
.label_858:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_854
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d220

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_861
	nop	
	call	__errno_location
	mov	r15, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsi]
	mov	rdi, r14
	call	change_env
	mov	bl, al
	test	bl, bl
	jne	.label_862
	mov	ebp, dword ptr [r15]
.label_862:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_861:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d280

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_863
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_866
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_865
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_864
	mov	rsp, rsp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	equal_tm
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_864
.label_865:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	jne	.label_864
	mov	qword ptr [rsp + 0x38], -1
.label_864:
	mov	rdi, r14
	call	revert_tz
	lea	rsi, [rsi]
	test	al, al
	je	.label_866
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_867
.label_866:
	nop	
	mov	rax, -1
.label_867:
	lea	rdi, [rdi]
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_863:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d380

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	nop	
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	nop	
	or	edx, eax
	or	edx, ecx
	mov	rbp, rbp
	mov	eax, dword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsi + 0x14]
	lea	rsi, [rsi]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	nop	
	or	ebx, edx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rdi + 0x20]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	call	isdst_differ
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	or	eax, ebx
	sete	al
	nop	
	movzx	eax, al
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d3f0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str
	jmp	getenv
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d400

	.globl change_env
	.type change_env, @function
change_env:
	cmp	byte ptr [rdi + 8], 0
	je	.label_868
	add	rdi, 9
	nop	
	jmp	.label_869
.label_868:
	mov	rsp, rsp
	xor	edi, edi
.label_869:
	push	rax
	call	setenv_TZ
	mov	rbp, rbp
	test	eax, eax
	je	.label_870
	xor	eax, eax
	pop	rcx
	ret	
.label_870:
	call	tzset
	mov	al, 1
	nop	
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d430

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	edi, OFFSET FLAT:.str
	mov	rbp, rbp
	test	rax, rax
	je	.label_871
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	setenv
.label_871:
	lea	rdi, [rdi]
	jmp	unsetenv
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d460

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	nop	
	test	edi, edi
	nop	
	sete	al
	lea	rsi, [rsi]
	test	esi, esi
	nop	
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d480
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_872
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_872
.label_873:
	ret	
.label_872:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_873
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4b0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_874
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_874:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d4d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4e0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d4f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_875
.label_876:
	ret	
.label_875:
	cmp	edi, 0x7f
	je	.label_876
	xor	eax, eax
	jmp	.label_876
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d510
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d520
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d530
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d540
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d550
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_877
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_877
.label_878:
	ret	
.label_877:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_878
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d580
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_879
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_879:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5a0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d5b0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_880
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_880:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d5d0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5e0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5f0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_882
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_881
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_881
.label_882:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_881
	test	cl, cl
	jne	.label_881
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_881:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d690

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_883
	nop	
	mov	rax, rcx
.label_883:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6d0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x40d7a0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
