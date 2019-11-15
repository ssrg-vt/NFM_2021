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
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r14, rsi
	mov	r15d, edi
	mov	qword ptr [rsp + 0x40], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.1
	mov	esi, OFFSET FLAT:.str.2
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.1
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
	cmp	r15d, 2
	jl	.label_15
	lea	eax, [r15 - 1]
	movsxd	rdi, eax
	mov	esi, 8
	call	xnmalloc
	mov	rbx, rax
.label_15:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	lea	r8, [rsp + 0x3c]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	je	.label_24
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x30], r14
	xor	r14d, r14d
	xor	r12d, r12d
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_27
	nop	
.label_33:
	cmp	r13d, 0x43
	jle	.label_39
	add	r13d, -0x44
	cmp	r13d, 0x3d
	ja	.label_41
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_43]]
.label_970:
	mov	byte ptr [byte ptr [rip + use_form_feed]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_39:
	cmp	r13d, 1
	jne	.label_44
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_46
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2b
	jne	.label_46
	inc	rdx
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	test	al, al
	jne	.label_8
.label_46:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	ecx, ebp
	inc	ebp
	mov	qword ptr [rbx + rcx*8], rax
.label_8:
	xor	r15d, r15d
	jmp	.label_11
.label_969:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + date_format]],  rax
	xor	r15d, r15d
	jmp	.label_11
.label_971:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_972:
	mov	byte ptr [byte ptr [rip + skip_count]],  1
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	esi, 0x80000000
	mov	edx, OFFSET FLAT:start_line_num
	jmp	.label_22
.label_973:
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str_0
	mov	dword ptr [dword ptr [rip + col_sep_length]],  0
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_49
	call	separator_string
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	jmp	.label_11
.label_974:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  0
	xor	r15d, r15d
	jmp	.label_11
.label_975:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:chars_per_line
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	xor	r15d, r15d
	jmp	.label_11
.label_976:
	mov	byte ptr [byte ptr [rip + print_across_flag]],  1
	jmp	.label_12
.label_977:
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_978:
	mov	byte ptr [byte ptr [rip + use_cntrl_prefix]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_979:
	mov	byte ptr [byte ptr [rip + double_space]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_980:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_21
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_21:
	mov	byte ptr [byte ptr [rip + untabify_input]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_981:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + custom_header]],  rax
	xor	r15d, r15d
	jmp	.label_11
.label_982:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_32
	mov	esi, 0x69
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_32:
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_983:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:lines_per_page
	jmp	.label_22
.label_984:
	mov	byte ptr [byte ptr [rip + parallel_files]],  1
.label_12:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_985:
	mov	byte ptr [byte ptr [rip + numbered_lines]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_11
	mov	esi, 0x6e
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	xor	r15d, r15d
	jmp	.label_11
.label_986:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, OFFSET FLAT:chars_per_margin
.label_22:
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	jmp	.label_11
.label_987:
	mov	byte ptr [byte ptr [rip + ignore_failed_opens]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_988:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	mov	al, 1
	test	rdi, rdi
	je	.label_26
	mov	dword ptr [rsp + 0x14], eax
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	xor	al, 1
	test	al, 1
	je	.label_31
	call	separator_string
	xor	r15d, r15d
	jmp	.label_31
.label_989:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_990:
	mov	byte ptr [byte ptr [rip + use_esc_sequence]],  1
	xor	r15d, r15d
	jmp	.label_11
.label_991:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	lea	rdx, [rsp + 0x38]
	mov	esi, 1
	mov	rdi, r13
	mov	rcx, rax
	call	getoptnum
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	and	al, 1
	jne	.label_51
	mov	eax, dword ptr [rsp + 0x38]
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
.label_51:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	r15d, r15d
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_11
.label_992:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	parse_column_count
	mov	rdi, r12
	call	free
	mov	qword ptr [rsp + 0x40], 0
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_11
.label_993:
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	test	rdx, rdx
	je	.label_20
	mov	edi, dword ptr [rsp + 0x3c]
	xor	r15d, r15d
	xor	esi, esi
	call	first_last_page
	test	al, al
	jne	.label_11
	jmp	.label_52
.label_49:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_11
.label_26:
	mov	dword ptr [rsp + 0x14], eax
.label_31:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_27:
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_33
	lea	r15, [r14 + 1]
	cmp	r15, qword ptr [rsp + 0x40]
	jb	.label_36
	mov	rdi, r12
	lea	rsi, [rsp + 0x40]
	call	x2realloc
	mov	r12, rax
.label_36:
	mov	byte ptr [r12 + r14], r13b
	mov	byte ptr [r12 + r14 + 1], 0
.label_11:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r8, [rsp + 0x3c]
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, -1
	mov	r14, r15
	jne	.label_27
	test	r12, r12
	je	.label_50
	mov	rdi, r12
	call	parse_column_count
	mov	rdi, r12
	call	free
.label_50:
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x18]
	mov	r13d, dword ptr [rsp + 0x14]
	jmp	.label_10
.label_24:
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	xor	ebp, ebp
.label_10:
	cmp	qword ptr [word ptr [rip + date_format]],  0
	jne	.label_16
	mov	edi, OFFSET FLAT:.str.14
	call	getenv
	mov	ecx, OFFSET FLAT:.str.16
	test	rax, rax
	je	.label_19
	mov	edi, 2
	call	hard_locale
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.15
	test	al, al
	cmovne	rcx, rdx
.label_19:
	mov	qword ptr [word ptr [rip + date_format]],  rcx
.label_16:
	mov	edi, OFFSET FLAT:.str
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + localtz]],  rax
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_29
	mov	qword ptr [word ptr [rip + first_page_number]],  1
.label_29:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_35
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	je	.label_42
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_35
	movzx	eax,  byte ptr [byte ptr [rip + print_across_flag]]
	and	eax, 1
	cmp	eax, 1
	je	.label_45
.label_35:
	test	r13b, 1
	je	.label_17
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_48
	test	r12b, 1
	je	.label_17
	test	byte ptr [byte ptr [rip + use_col_separator]],  1
	jne	.label_17
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	jne	.label_9
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_17
.label_9:
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	and	al, 1
	jne	.label_13
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  0
	jg	.label_13
	jmp	.label_17
.label_48:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	jne	.label_18
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_34
.label_18:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	test	r12b, 1
	je	.label_17
.label_13:
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	jmp	.label_17
.label_34:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
.label_17:
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, r15d
	jge	.label_25
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	dword ptr [rax]
.label_30:
	movsxd	rcx, ecx
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	edx, ebp
	inc	ebp
	mov	qword ptr [rbx + rdx*8], rcx
	inc	eax
	cmp	eax, r15d
	mov	ecx, eax
	jl	.label_30
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_25:
	test	ebp, ebp
	je	.label_37
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_40
	mov	edi, ebp
	mov	rsi, rbx
	call	print_files
	jmp	.label_23
	nop	dword ptr [rax]
.label_40:
	mov	edi, 1
	mov	rsi, rbx
	call	print_files
	add	rbx, 8
	dec	ebp
	jne	.label_40
	jmp	.label_23
.label_37:
	xor	edi, edi
	xor	esi, esi
	call	print_files
.label_23:
	call	cleanup
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_47
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_38
.label_47:
	movzx	eax,  byte ptr [byte ptr [rip + failed_opens]]
	and	eax, 1
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_44:
	cmp	r13d, 0xffffff7d
	je	.label_14
	cmp	r13d, 0xffffff7e
	jne	.label_41
	xor	edi, edi
	call	usage
.label_14:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	mov	r9d, OFFSET FLAT:.str.13
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_41:
	mov	edi, 1
	call	usage
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	jmp	.label_28
.label_38:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	jmp	.label_28
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
.label_28:
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
	.align	16
	#Procedure 0x402420

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
	mov	qword ptr [rsp], -1
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_53
	mov	rbp, qword ptr [rsp + 0x10]
	xor	eax, eax
	cmp	rbp, rbx
	je	.label_54
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_54
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x3a
	jne	.label_55
	inc	rbp
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbp
	call	xstrtoumax
	test	eax, eax
	jne	.label_53
	cmp	rbp, qword ptr [rsp + 0x10]
	je	.label_56
	mov	rax, qword ptr [rsp]
	cmp	rax, qword ptr [rsp + 8]
	jae	.label_55
	xor	eax, eax
	jmp	.label_54
.label_55:
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax], 0
	je	.label_57
	xor	eax, eax
	jmp	.label_54
.label_57:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [word ptr [rip + first_page_number]],  rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [word ptr [rip + last_page_number]],  rax
	mov	al, 1
	jmp	.label_54
.label_56:
	xor	eax, eax
.label_54:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_53:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402510

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, OFFSET FLAT:columns
	mov	rdi, rbx
	mov	rcx, rax
	call	getoptnum
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

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
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jb	.label_58
	inc	rbx
	mov	byte ptr [rdx], al
.label_58:
	cmp	byte ptr [rbx], 0
	je	.label_60
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_59
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_59
	mov	dword ptr [rbp], ecx
.label_60:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	jg	.label_61
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
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
	.align	16
	#Procedure 0x402620

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	push	rbx
	mov	rax, rcx
	mov	rbx, rdx
	movsxd	rsi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rbx], eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650

	.globl separator_string
	.type separator_string, @function
separator_string:
	push	rbx
	mov	rbx, rdi
	call	strlen
	test	rax, -0x80000000
	jne	.label_62
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbx
	pop	rbx
	ret	
.label_62:
	call	integer_overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402680

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_63:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402910

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	call	init_parameters
	mov	edi, ebp
	mov	rsi, rbx
	call	init_fps
	test	al, al
	je	.label_65
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_66
	call	init_store_cols
.label_66:
	mov	rdi,  qword ptr [word ptr [rip + first_page_number]]
	mov	eax, 1
	cmp	rdi, 2
	jb	.label_67
	call	skip_to_page
	test	al, al
	je	.label_65
	mov	rax,  qword ptr [word ptr [rip + first_page_number]]
.label_67:
	mov	qword ptr [word ptr [rip + page_number]],  rax
	call	init_funcs
	mov	eax,  dword ptr [dword ptr [rip + line_count]]
	mov	dword ptr [dword ptr [rip + line_number]],  eax
	nop	word ptr cs:[rax + rax]
.label_64:
	call	print_page
	test	al, al
	jne	.label_64
.label_65:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	pop	rax
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.83
	nop	
.label_70:
	mov	edi, OFFSET FLAT:.str.10
	call	strcmp
	test	eax, eax
	je	.label_69
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_70
.label_69:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.10
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_68
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_68
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.97
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
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
	.align	16
	#Procedure 0x402b90

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rax
	mov	eax,  dword ptr [dword ptr [rip + lines_per_page]]
	add	eax, -0xa
	mov	dword ptr [dword ptr [rip + lines_per_body]],  eax
	jle	.label_74
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	jmp	.label_83
.label_74:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
.label_83:
	mov	eax,  dword ptr [dword ptr [rip + lines_per_page]]
	mov	dword ptr [dword ptr [rip + lines_per_body]],  eax
.label_78:
	movzx	eax,  byte ptr [byte ptr [rip + double_space]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_89
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	ecx, eax
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
.label_89:
	test	edi, edi
	je	.label_97
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_71
	mov	dword ptr [dword ptr [rip + columns]],  edi
	jmp	.label_71
.label_97:
	mov	byte ptr [byte ptr [rip + parallel_files]],  0
.label_71:
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_75
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
.label_75:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_79
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	and	al, 1
	mov	al,  byte ptr [byte ptr [rip + join_lines]]
	je	.label_82
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  1
	jne	.label_80
	xor	al, 1
	test	al, 1
	je	.label_80
	mov	rax,  qword ptr [word ptr [rip + col_sep_string]]
	movzx	eax, byte ptr [rax]
	cmp	eax, 9
	jne	.label_80
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str.70
	jmp	.label_80
.label_79:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	jmp	.label_93
.label_82:
	mov	ecx, OFFSET FLAT:.str.69
	mov	edx, OFFSET FLAT:.str.70
	test	al, 1
	cmovne	rdx, rcx
	mov	qword ptr [word ptr [rip + col_sep_string]],  rdx
	mov	dword ptr [dword ptr [rip + col_sep_length]],  1
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
.label_80:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
.label_93:
	movzx	eax,  byte ptr [byte ptr [rip + join_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_95
	mov	byte ptr [byte ptr [rip + truncate_lines]],  0
.label_95:
	xor	r8d, r8d
	movzx	eax,  byte ptr [byte ptr [rip + numbered_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_86
	mov	eax,  dword ptr [dword ptr [rip + start_line_num]]
	mov	dword ptr [dword ptr [rip + line_count]],  eax
	mov	eax,  dword ptr [dword ptr [rip + chars_per_number]]
	movzx	ecx,  byte ptr [byte ptr [rip + number_separator]]
	cmp	ecx, 9
	jne	.label_90
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	mov	edx, eax
	sub	edx, ecx
	neg	edx
	lea	eax, [rax + rdx + 8]
	jmp	.label_96
.label_90:
	inc	eax
.label_96:
	mov	dword ptr [dword ptr [rip + number_width]],  eax
	mov	cl,  byte ptr [byte ptr [rip + parallel_files]]
	xor	r8d, r8d
	and	cl, 1
	cmovne	r8d, eax
.label_86:
	mov	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	test	edi, edi
	js	.label_85
	je	.label_77
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	jle	.label_81
	dec	ecx
	mov	esi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	edi
	jmp	.label_84
.label_85:
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	jle	.label_88
	cmp	edi, -1
	je	.label_77
	dec	ecx
	mov	eax, 0x80000000
	cdq	
	idiv	edi
	mov	esi, 0x7fffffff
.label_84:
	cmp	eax, ecx
	jl	.label_72
	jmp	.label_77
.label_81:
	mov	eax, 0x80000000
	cdq	
	idiv	edi
	mov	esi, 0x7fffffff
	jmp	.label_94
.label_88:
	mov	esi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	edi
.label_94:
	cmp	ecx, eax
	jle	.label_72
.label_77:
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	dec	esi
	imul	esi,  dword ptr [dword ptr [rip + col_sep_length]]
	test	esi, esi
	js	.label_73
.label_72:
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	sub	ecx, r8d
	mov	edx, esi
	xor	edx, 0x80000000
	jmp	.label_76
.label_73:
	lea	ecx, [rsi + 0x7fffffff]
	mov	edx,  dword ptr [dword ptr [rip + chars_per_line]]
	sub	edx, r8d
.label_76:
	xor	eax, eax
	cmp	ecx, edx
	jl	.label_87
	mov	eax,  dword ptr [dword ptr [rip + chars_per_line]]
	add	esi, r8d
	sub	eax, esi
.label_87:
	cdq	
	idiv	dword ptr [dword ptr [rip + columns]]
	mov	dword ptr [dword ptr [rip + chars_per_column]],  eax
	test	eax, eax
	jle	.label_91
	movzx	eax,  byte ptr [byte ptr [rip + numbered_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_92
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	call	free
	movsxd	rax,  dword ptr [dword ptr [rip + chars_per_number]]
	cmp	rax, 0xb
	mov	edi, 0xb
	cmova	rdi, rax
	inc	rdi
	call	xmalloc
	mov	qword ptr [word ptr [rip + number_buff]],  rax
.label_92:
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	call	free
	mov	eax,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	cmp	eax, 8
	mov	ecx, 8
	cmovge	ecx, eax
	movsxd	rdi, ecx
	call	xmalloc
	mov	qword ptr [word ptr [rip + clump_buff]],  rax
	pop	rax
	ret	
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
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
	.align	16
	#Procedure 0x402e80

	.globl init_fps
	.type init_fps, @function
init_fps:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebp, edi
	mov	dword ptr [dword ptr [rip + total_files]],  0
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	call	free
	movsxd	rdi,  dword ptr [dword ptr [rip + columns]]
	mov	esi, 0x40
	call	xnmalloc
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + column_vector]],  rbx
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	je	.label_107
	test	ebp, ebp
	jle	.label_101
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	open_file
	test	al, al
	je	.label_102
	mov	rbp, qword ptr [r14]
	mov	rdi, qword ptr [rbx]
	call	fileno
	mov	rdi, rbp
	mov	esi, eax
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_103:
	add	rbx, 0x40
	add	r14, 8
.label_107:
	test	ebp, ebp
	je	.label_100
	dec	ebp
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	open_file
	test	al, al
	jne	.label_103
	add	rbx, -0x40
	dec	dword ptr [dword ptr [rip + columns]]
	jmp	.label_103
.label_100:
	cmp	dword ptr [dword ptr [rip + columns]],  0
	je	.label_105
	mov	edi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_99
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbx], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	edi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
.label_106:
	call	init_header
	mov	dword ptr [rbx + 0x2c], 0
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	cmp	esi, 1
	je	.label_99
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	add	rbx, 0x40
	mov	edx, 1
	sub	edx, esi
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	mov	dword ptr [rbx + 0x2c], 0
	add	rbx, 0x40
	inc	edx
	jne	.label_98
.label_99:
	mov	eax,  dword ptr [dword ptr [rip + total_files]]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	mov	al, 1
	jmp	.label_104
.label_105:
	xor	eax, eax
	jmp	.label_104
.label_102:
	xor	eax, eax
.label_104:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403000

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	push	r14
	push	rbx
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	js	.label_108
	je	.label_112
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	test	esi, esi
	js	.label_113
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_116
.label_108:
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	test	esi, esi
	js	.label_114
	cmp	ecx, -1
	je	.label_112
	mov	eax, 0x80000000
	cdq	
.label_116:
	idiv	ecx
	cmp	eax, esi
	jge	.label_112
	jmp	.label_110
.label_113:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_109
.label_114:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_109:
	idiv	ecx
	cmp	esi, eax
	jl	.label_110
.label_112:
	mov	ebx,  dword ptr [dword ptr [rip + columns]]
	imul	ebx,  dword ptr [dword ptr [rip + lines_per_body]]
	cmp	ebx, 0x7fffffff
	je	.label_110
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	cmp	ebp, 0x7fffffff
	je	.label_110
	inc	ebp
	js	.label_111
	test	ebp, ebp
	je	.label_115
	test	ebx, ebx
	js	.label_117
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_119
.label_111:
	test	ebx, ebx
	js	.label_118
	cmp	ebp, -1
	je	.label_115
	mov	eax, 0x80000000
	cdq	
.label_119:
	idiv	ebp
	cmp	eax, ebx
	jge	.label_115
	jmp	.label_110
.label_117:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_120
.label_118:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_120:
	idiv	ebp
	cmp	ebx, eax
	jl	.label_110
.label_115:
	lea	r14d, [rbx + 1]
	imul	ebp, ebx
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	call	free
	movsxd	rdi, r14d
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [word ptr [rip + line_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	movsxd	rdi, ebx
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [word ptr [rip + end_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	call	free
	movsxd	rbx, ebp
	movzx	esi,  byte ptr [byte ptr [rip + use_col_separator]]
	and	esi, 1
	inc	rsi
	mov	rdi, rbx
	call	xnmalloc
	mov	qword ptr [word ptr [rip + buff]],  rax
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	inc	rax
	imul	rax, rbx
	mov	qword ptr [word ptr [rip + buff_allocated]],  rax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_110:
	call	integer_overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15d, 1
	cmp	r14, 2
	jb	.label_125
	nop	dword ptr [rax + rax]
.label_122:
	mov	r12d, 1
	cmp	dword ptr [dword ptr [rip + lines_per_body]],  1
	jle	.label_123
	nop	
.label_128:
	cmp	dword ptr [dword ptr [rip + columns]],  0
	jle	.label_129
	xor	ebp, ebp
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr cs:[rax + rax]
.label_124:
	inc	ebp
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_121
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
.label_121:
	add	rbx, 0x40
	cmp	ebp,  dword ptr [dword ptr [rip + columns]]
	jl	.label_124
.label_129:
	inc	r12d
	cmp	r12d,  dword ptr [dword ptr [rip + lines_per_body]]
	jl	.label_128
.label_123:
	mov	byte ptr [byte ptr [rip + last_line]],  1
	cmp	dword ptr [dword ptr [rip + columns]],  0
	jle	.label_132
	xor	ebp, ebp
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr cs:[rax + rax]
.label_131:
	inc	ebp
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_130
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
.label_130:
	add	rbx, 0x40
	cmp	ebp,  dword ptr [dword ptr [rip + columns]]
	jl	.label_131
.label_132:
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_134
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	jle	.label_134
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rax, 0x10
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_133:
	cmp	dword ptr [rax], 3
	je	.label_126
	mov	dword ptr [rax], 2
.label_126:
	inc	edx
	add	rax, 0x40
	cmp	edx, ecx
	jl	.label_133
.label_134:
	call	reset_status
	mov	byte ptr [byte ptr [rip + last_line]],  0
	cmp	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	jle	.label_127
	inc	r15
	cmp	r15, r14
	jb	.label_122
	jmp	.label_125
.label_127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
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
.label_125:
	cmp	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	setg	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	mov	eax,  dword ptr [dword ptr [rip + chars_per_margin]]
	xor	esi, esi
	movzx	ecx,  byte ptr [byte ptr [rip + truncate_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_140
	movzx	ecx,  byte ptr [byte ptr [rip + parallel_files]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_136
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_136
	mov	esi,  dword ptr [dword ptr [rip + chars_per_column]]
	add	esi, eax
	add	esi,  dword ptr [dword ptr [rip + number_width]]
	jmp	.label_140
.label_136:
	mov	esi,  dword ptr [dword ptr [rip + chars_per_column]]
	add	esi, eax
.label_140:
	push	rbp
	push	r14
	push	rbx
	add	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	edx, 1
	mov	bl,  byte ptr [byte ptr [rip + storing_columns]]
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_144
	mov	r10b,  byte ptr [byte ptr [rip + numbered_lines]]
	mov	r8b,  byte ptr [byte ptr [rip + parallel_files]]
	xor	r8b, 1
	mov	r9b,  byte ptr [byte ptr [rip + truncate_lines]]
	mov	r11d,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	edi,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	edx, 1
	mov	r14b,  byte ptr [byte ptr [rip + storing_columns]]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_143:
	test	bl, 1
	je	.label_138
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:print_char
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:read_line
	jmp	.label_146
	nop	word ptr [rax + rax]
.label_138:
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:store_char
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:print_stored
.label_146:
	test	r10b, 1
	je	.label_135
	cmp	edx, 1
	sete	bl
	or	bl, r8b
	jmp	.label_141
	nop	word ptr cs:[rax + rax]
.label_135:
	xor	ebx, ebx
.label_141:
	and	bl, 1
	mov	byte ptr [rcx + 0x38], bl
	mov	dword ptr [rcx + 0x34], eax
	add	esi, r11d
	mov	eax, esi
	lea	esi, [rsi + rdi]
	mov	bl, r9b
	and	bl, 1
	cmove	eax, ebp
	test	bl, bl
	cmove	esi, ebp
	add	rcx, 0x40
	inc	edx
	cmp	edx,  dword ptr [dword ptr [rip + columns]]
	mov	bl, r14b
	jl	.label_143
	mov	bl, r14b
.label_144:
	test	bl, 1
	pop	rbx
	pop	r14
	pop	rbp
	jne	.label_142
	movzx	esi,  byte ptr [byte ptr [rip + balance_columns]]
	and	esi, 1
	cmp	esi, 1
	jne	.label_142
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:store_char
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:print_stored
	jmp	.label_145
.label_142:
	mov	qword ptr [word ptr [rcx + 32]], OFFSET FLAT:print_char
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:read_line
.label_145:
	movzx	esi,  byte ptr [byte ptr [rip + numbered_lines]]
	and	esi, 1
	cmp	esi, 1
	jne	.label_139
	mov	sil,  byte ptr [byte ptr [rip + parallel_files]]
	cmp	edx, 1
	sete	dl
	xor	sil, 1
	or	sil, dl
	jmp	.label_137
.label_139:
	xor	esi, esi
.label_137:
	and	sil, 1
	mov	byte ptr [rcx + 0x38], sil
	mov	dword ptr [rcx + 0x34], eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	init_page
	call	cols_ready_to_print
	test	eax, eax
	je	.label_156
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	jne	.label_157
	mov	byte ptr [byte ptr [rip + print_a_header]],  1
.label_157:
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	cl,  byte ptr [byte ptr [rip + double_space]]
	and	cl, 1
	shl	r14d, cl
	xor	r15d, r15d
	jmp	.label_147
	nop	dword ptr [rax]
.label_152:
	mov	edi, 0xa
	call	putchar_unlocked
	dec	r14d
.label_147:
	test	r14d, r14d
	jle	.label_170
	call	cols_ready_to_print
	test	eax, eax
	je	.label_155
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	byte ptr [byte ptr [rip + empty_line]],  1
	cmp	dword ptr [dword ptr [rip + columns]],  0
	jle	.label_150
	xor	ebp, ebp
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	dword ptr [rax]
.label_164:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	cmp	dword ptr [rbx + 0x30], 0
	jg	.label_165
	cmp	dword ptr [rbx + 0x10], 1
	jne	.label_168
.label_165:
	mov	byte ptr [byte ptr [rip + FF_only]],  0
	mov	eax, dword ptr [rbx + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	mov	rdi, rbx
	call	qword ptr [rbx + 0x18]
	test	al, al
	jne	.label_148
	mov	rdi, rbx
	call	read_rest_of_line
.label_148:
	and	r15b, 1
	or	r15b,  byte ptr [byte ptr [rip + pad_vertically]]
	mov	eax, dword ptr [rbx + 0x30]
	lea	ecx, [rax - 1]
	mov	dword ptr [rbx + 0x30], ecx
	cmp	eax, 1
	jg	.label_153
	call	cols_ready_to_print
	test	eax, eax
	je	.label_158
.label_153:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_154
	mov	eax, dword ptr [rbx + 0x10]
	test	eax, eax
	je	.label_154
	movzx	ecx,  byte ptr [byte ptr [rip + empty_line]]
	and	ecx, 1
	cmp	ecx, 1
	je	.label_161
	cmp	eax, 3
	je	.label_151
	cmp	eax, 2
	jne	.label_154
	movzx	eax,  byte ptr [byte ptr [rip + FF_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_154
	jmp	.label_151
.label_168:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_154
	movzx	eax,  byte ptr [byte ptr [rip + empty_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_151
.label_161:
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_154
.label_151:
	mov	rdi, rbx
	call	align_column
	nop	word ptr cs:[rax + rax]
.label_154:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_166
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
.label_166:
	add	rbx, 0x40
	inc	ebp
	cmp	ebp,  dword ptr [dword ptr [rip + columns]]
	jl	.label_164
.label_158:
	cmp	byte ptr [byte ptr [rip + pad_vertically]],  0
	je	.label_150
	mov	edi, 0xa
	call	putchar_unlocked
	dec	r14d
.label_150:
	call	cols_ready_to_print
	test	eax, eax
	jne	.label_171
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	jne	.label_170
.label_171:
	test	r15b, 1
	je	.label_147
	mov	al,  byte ptr [byte ptr [rip + double_space]]
	xor	al, 1
	test	al, 1
	je	.label_152
	jmp	.label_147
.label_170:
	test	r14d, r14d
	jne	.label_155
	cmp	dword ptr [dword ptr [rip + columns]],  0
	jle	.label_172
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rax, 0x39
	xor	edx, edx
.label_162:
	cmp	dword ptr [rax - 0x29], 0
	jne	.label_160
	mov	byte ptr [rax], 1
.label_160:
	add	rax, 0x40
	inc	edx
	cmp	edx, ecx
	jl	.label_162
	jmp	.label_155
.label_156:
	xor	eax, eax
	jmp	.label_163
.label_172:
	xor	r14d, r14d
.label_155:
	and	r15b, 1
	mov	byte ptr [byte ptr [rip + pad_vertically]],  r15b
	je	.label_167
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	je	.label_169
.label_167:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_149
	movzx	eax,  byte ptr [byte ptr [rip + print_a_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_149
	mov	edi, 0xc
	call	putchar_unlocked
	mov	byte ptr [byte ptr [rip + print_a_FF]],  0
	jmp	.label_149
.label_169:
	add	r14d, 5
	mov	edi, r14d
	call	pad_down
.label_149:
	mov	rax,  qword ptr [word ptr [rip + last_page_number]]
	mov	rcx,  qword ptr [word ptr [rip + page_number]]
	inc	rcx
	mov	qword ptr [word ptr [rip + page_number]],  rcx
	cmp	rax, rcx
	jae	.label_159
	xor	eax, eax
	jmp	.label_163
.label_159:
	call	reset_status
	mov	al, 1
.label_163:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_176
	cmp	byte ptr [r14 + 1], 0
	je	.label_173
.label_176:
	mov	qword ptr [rbx + 8], r14
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r14
	call	fopen_safer
	mov	qword ptr [rbx], rax
	jmp	.label_178
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbx], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
.label_178:
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_174
	mov	esi, 2
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	bl, 1
	jmp	.label_177
.label_174:
	mov	byte ptr [byte ptr [rip + failed_opens]],  1
	mov	al,  byte ptr [byte ptr [rip + ignore_failed_opens]]
	and	al, 1
	je	.label_175
	xor	ebx, ebx
	jmp	.label_177
.label_175:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_177:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840

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
	jne	.label_179
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_179:
	cmp	eax, 1
	sbb	r15d, r15d
	or	r15d, esi
	js	.label_184
	lea	rsi, [rsp + 0x68]
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	je	.label_180
.label_184:
	cmp	qword ptr [word ptr [rip + init_header.timespec]],  0
	jne	.label_181
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_181:
	movups	xmm0,  xmmword ptr [word ptr [rip + init_header.timespec]]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	jmp	.label_183
.label_180:
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rdx
.label_183:
	mov	r14d, dword ptr [rsp + 0x58]
	mov	rdi,  qword ptr [word ptr [rip + localtz]]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x18]
	call	localtime_rz
	test	rax, rax
	je	.label_182
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	lea	r12, [rsp + 0x18]
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
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, r12
	mov	r9d, r14d
	call	nstrftime
	jmp	.label_185
.label_182:
	mov	edi, 0x21
	call	xmalloc
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsp]
	call	timetostr
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	mov	r9d, r14d
	call	__sprintf_chk
.label_185:
	mov	rdi,  qword ptr [word ptr [rip + date_text]]
	call	free
	mov	qword ptr [word ptr [rip + date_text]],  rbp
	mov	rax,  qword ptr [word ptr [rip + custom_header]]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:.str_0
	cmovs	r13, rcx
	test	rax, rax
	cmovne	r13, rax
	mov	qword ptr [word ptr [rip + file_text]],  r13
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	rdi,  qword ptr [word ptr [rip + date_text]]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	rdi,  qword ptr [word ptr [rip + file_text]]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	dword ptr [dword ptr [rip + header_width_available]],  ebx
	add	rsp, 0xf8
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
	#Procedure 0x4039f0

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a00

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
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, 0xc
	jne	.label_191
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_191
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, 0xa
	jne	.label_191
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
.label_191:
	mov	al,  byte ptr [byte ptr [rip + last_line]]
	and	al, 1
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_195:
	mov	rdi, rbx
	call	getc_unlocked
.label_187:
	cmp	eax, -1
	je	.label_193
	cmp	eax, 0xa
	je	.label_194
	cmp	eax, 0xc
	jne	.label_195
	movzx	eax,  byte ptr [byte ptr [rip + last_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_189
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_188
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_189
.label_193:
	mov	rdi, r15
	call	close_file
	jmp	.label_194
.label_188:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_189
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	add	rcx, 0x39
	nop	word ptr cs:[rax + rax]
.label_192:
	mov	byte ptr [rcx], 0
	add	rcx, 0x40
	dec	eax
	jne	.label_192
.label_189:
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_190
	mov	edi, eax
	mov	rsi, rbx
	call	ungetc
.label_190:
	mov	rdi, r15
	call	hold_file
.label_194:
	mov	al,  byte ptr [byte ptr [rip + skip_count]]
	and	al, 1
	jne	.label_186
	cmp	r14d, 1
	setne	al
	cmp	ebp, 0xc
	je	.label_186
	and	al,  byte ptr [byte ptr [rip + parallel_files]]
	jne	.label_186
	inc	dword ptr [dword ptr [rip + line_count]]
.label_186:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b20

	.globl reset_status
	.type reset_status, @function
reset_status:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_196
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	add	rcx, 0x10
	nop	word ptr cs:[rax + rax]
.label_199:
	cmp	dword ptr [rcx], 2
	jne	.label_197
	mov	dword ptr [rcx], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_197:
	add	rcx, 0x40
	dec	eax
	jne	.label_199
.label_196:
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_200
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_198
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	ret	
.label_198:
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  1
.label_200:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl hold_file
	.type hold_file, @function
hold_file:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_201
	mov	dword ptr [rdi + 0x10], 2
	jmp	.label_203
.label_201:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_203
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	add	rcx, 0x10
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	dword ptr [rcx], edx
	add	rcx, 0x40
	dec	eax
	jne	.label_202
.label_203:
	mov	dword ptr [rdi + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bf0

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x10], 3
	je	.label_209
	mov	r14, qword ptr [rbx]
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	jne	.label_207
	mov	rdi, r14
	call	fileno
	test	eax, eax
	je	.label_210
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_207
.label_210:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_208
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_205
.label_208:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_205
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	add	rcx, 0x30
	nop	word ptr [rax + rax]
.label_206:
	mov	dword ptr [rcx - 0x20], 3
	cmp	dword ptr [rcx - 4], 0
	jne	.label_204
	mov	dword ptr [rcx], 0
.label_204:
	add	rcx, 0x40
	dec	eax
	jne	.label_206
.label_205:
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_209:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_207:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	ebx, edi
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	cmp	rax,  qword ptr [word ptr [rip + buff_allocated]]
	jb	.label_211
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	mov	esi, OFFSET FLAT:buff_allocated
	call	x2realloc
	mov	qword ptr [word ptr [rip + buff]],  rax
.label_211:
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + buff_current]],  ecx
	mov	rcx,  qword ptr [word ptr [rip + buff]]
	mov	byte ptr [rcx + rax], bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl print_stored
	.type print_stored, @function
print_stored:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rax, [r14 + 1]
	mov	dword ptr [r15 + 0x28], eax
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	movsxd	r13, dword ptr [rax + r14*4]
	mov	rbx,  qword ptr [word ptr [rip + buff]]
	add	rbx, r13
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_213
	call	print_header
.label_213:
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_215
	cmp	dword ptr [dword ptr [rip + columns]],  0
	jle	.label_218
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rax, 0x10
	xor	edx, edx
.label_212:
	mov	dword ptr [rax], 2
	inc	edx
	add	rax, 0x40
	cmp	edx, ecx
	jl	.label_212
.label_218:
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_214
.label_215:
	mov	edi,  dword ptr [dword ptr [rip + padding_not_printed]]
	sub	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	jle	.label_217
	call	pad_across_to
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_217:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_221
	call	print_sep_string
.label_221:
	cmp	r13d, r12d
	je	.label_216
	sub	r12, r13
	nop	word ptr [rax + rax]
.label_220:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	jne	.label_220
.label_216:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	jne	.label_219
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax,  qword ptr [word ptr [rip + end_vector]]
	mov	eax, dword ptr [rax + r14*4]
	add	eax, edx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	mov	ecx,  dword ptr [dword ptr [rip + col_sep_length]]
	sub	edx, ecx
	cmp	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	jne	.label_219
	sub	eax, ecx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	jmp	.label_219
.label_214:
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_219
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
.label_219:
	mov	al, 1
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e50

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	push	r14
	push	rbx
	mov	ebx, edi
	movzx	eax,  byte ptr [byte ptr [rip + tabify_output]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_224
	movzx	ebp, bl
	cmp	ebp, 0x20
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	jne	.label_223
	inc	eax
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_223:
	test	eax, eax
	jle	.label_222
	call	print_white_space
.label_222:
	movsx	edi, bl
	call	to_uchar
	movzx	r14d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_225
	cmp	ebp, 8
	jne	.label_224
	dec	dword ptr [dword ptr [rip + output_position]]
	jmp	.label_224
.label_225:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_224:
	movsx	edi, bl
	pop	rbx
	pop	r14
	pop	rbp
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

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
	call	getc_unlocked
	mov	r12d, eax
	mov	ebp,  dword ptr [dword ptr [rip + input_position]]
	cmp	r12d, 0xc
	jne	.label_229
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_248
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
	cmp	r12d, 0xa
	jne	.label_229
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	mov	r12d, eax
.label_229:
	mov	byte ptr [r13 + 0x39], 0
	cmp	r12d, -1
	je	.label_232
	cmp	r12d, 0xa
	je	.label_244
	cmp	r12d, 0xc
	je	.label_237
	movsx	edi, r12b
	call	char_to_clump
	mov	r14d, eax
.label_244:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_240
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_240
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
	xor	r15d, r15d
	jmp	.label_226
.label_240:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_241
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_231
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_231
	call	print_header
.label_231:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_235
	movzx	eax,  byte ptr [byte ptr [rip + align_empty_cols]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_235
	mov	ebx,  dword ptr [dword ptr [rip + separators_not_printed]]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	test	ebx, ebx
	jle	.label_242
	mov	rbp,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr [rax + rax]
.label_249:
	mov	rdi, rbp
	call	align_column
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
	add	rbp, 0x40
	dec	ebx
	jne	.label_249
.label_242:
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	xor	ecx, ecx
	and	al, 1
	cmovne	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
.label_235:
	mov	edi,  dword ptr [dword ptr [rip + padding_not_printed]]
	sub	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	jle	.label_239
	call	pad_across_to
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_239:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_241
	call	print_sep_string
.label_241:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_243
	mov	rdi, r13
	call	add_line_number
.label_243:
	mov	byte ptr [byte ptr [rip + empty_line]],  0
	mov	r15b, 1
	cmp	r12d, 0xa
	je	.label_226
	mov	rdx,  qword ptr [word ptr [rip + clump_buff]]
	mov	rdi, r13
	mov	esi, r14d
	jmp	.label_227
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	rdx,  qword ptr [word ptr [rip + clump_buff]]
	mov	rdi, r13
	mov	esi, eax
.label_227:
	call	print_clump
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, -1
	je	.label_238
	cmp	eax, 0xa
	je	.label_226
	cmp	eax, 0xc
	je	.label_247
	mov	ebx,  dword ptr [dword ptr [rip + input_position]]
	movsx	edi, al
	call	char_to_clump
	movzx	ecx,  byte ptr [byte ptr [rip + truncate_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_234
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	cmp	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_234
	mov	dword ptr [dword ptr [rip + input_position]],  ebx
	xor	r15d, r15d
	jmp	.label_226
.label_232:
	mov	rdi, r13
	call	close_file
	jmp	.label_230
.label_248:
	mov	byte ptr [r13 + 0x39], 0
.label_237:
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_233
	mov	rsi, qword ptr [r13]
	mov	edi, eax
	call	ungetc
.label_233:
	mov	byte ptr [byte ptr [rip + FF_only]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_236
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_236
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	call	print_header
	jmp	.label_245
.label_236:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_245
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_245:
	mov	rdi, r13
	call	hold_file
.label_230:
	mov	r15b, 1
.label_226:
	mov	al, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_238:
	mov	rdi, r13
	call	close_file
	jmp	.label_226
.label_247:
	mov	rdi, qword ptr [r13]
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_228
	mov	rsi, qword ptr [r13]
	mov	edi, eax
	call	ungetc
.label_228:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_246
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_246:
	mov	rdi, r13
	call	hold_file
	jmp	.label_226
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x150
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	edi,  dword ptr [dword ptr [rip + chars_per_margin]]
	call	pad_across_to
	call	print_white_space
	cmp	qword ptr [word ptr [rip + page_number]],  0
	je	.label_250
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8,  qword ptr [word ptr [rip + page_number]]
	lea	rbx, [rsp + 0x30]
	mov	esi, 1
	mov	edx, 0x114
	xor	eax, eax
	mov	rdi, rbx
	call	__sprintf_chk
	mov	ebp,  dword ptr [dword ptr [rip + header_width_available]]
	xor	esi, esi
	mov	rdi, rbx
	call	gnu_mbswidth
	sub	ebp, eax
	cmovs	ebp, r14d
	mov	r9d, ebp
	sar	r9d, 1
	sub	ebp, r9d
	mov	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	r8,  qword ptr [word ptr [rip + date_text]]
	mov	rax,  qword ptr [word ptr [rip + file_text]]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.70
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.70
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.78
	mov	ecx, OFFSET FLAT:.str_0
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + print_a_header]],  0
	mov	dword ptr [dword ptr [rip + output_position]],  0
	add	rsp, 0x150
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
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
	.align	16
	#Procedure 0x404300

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	eax,  dword ptr [dword ptr [rip + output_position]]
	mov	cl,  byte ptr [byte ptr [rip + tabify_output]]
	and	cl, 1
	je	.label_251
	sub	ebx, eax
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ebx
	jmp	.label_253
.label_251:
	cmp	eax, ebx
	jge	.label_252
	mov	ebp, ebx
	sub	ebp, eax
	nop	dword ptr [rax + rax]
.label_254:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebp
	jne	.label_254
.label_252:
	mov	dword ptr [dword ptr [rip + output_position]],  ebx
.label_253:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	cmp	dword ptr [dword ptr [rip + separators_not_printed]],  0
	jle	.label_260
	mov	r14,  qword ptr [word ptr [rip + col_sep_string]]
	mov	r12d,  dword ptr [dword ptr [rip + col_sep_length]]
	nop	word ptr cs:[rax + rax]
.label_261:
	test	r12d, r12d
	jle	.label_255
	lea	r15d, [r12 - 1]
	mov	rbx, r14
	nop	dword ptr [rax]
.label_263:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x20
	jne	.label_256
	inc	eax
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	jmp	.label_264
	nop	dword ptr [rax + rax]
.label_256:
	test	eax, eax
	jle	.label_262
	call	print_white_space
.label_262:
	movsx	edi, byte ptr [rbx]
	call	putchar_unlocked
	inc	dword ptr [dword ptr [rip + output_position]]
.label_264:
	inc	rbx
	dec	r12d
	jg	.label_263
	lea	r14, [r14 + r15 + 1]
	mov	r12d, 0xffffffff
	jmp	.label_259
	nop	dword ptr [rax]
.label_255:
	dec	r12d
.label_259:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	jle	.label_257
	call	print_white_space
.label_257:
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	lea	ecx, [rax - 1]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  ecx
	cmp	eax, 1
	jg	.label_261
	jmp	.label_258
.label_260:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	jle	.label_258
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	print_white_space
.label_258:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404430

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	push	r14
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + output_position]]
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	lea	r14d, [rax + rbx]
	cmp	eax, 2
	jl	.label_266
	nop	dword ptr [rax]
.label_267:
	mov	ecx, ebx
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r14d
	sub	ebp, ebx
	jl	.label_265
	movsx	edi,  byte ptr [byte ptr [rip + output_tab_char]]
	call	putchar_unlocked
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_267
	jmp	.label_265
.label_266:
	mov	ecx, ebx
.label_265:
	cmp	ecx, r14d
	jge	.label_269
	mov	ebx, r14d
	sub	ebx, ecx
	nop	dword ptr [rax]
.label_268:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	ebx
	jne	.label_268
.label_269:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	ebp, edi
	mov	r14,  qword ptr [word ptr [rip + clump_buff]]
	movzx	eax,  byte ptr [byte ptr [rip + input_tab_char]]
	movzx	ebx, bpl
	cmp	eax, ebx
	mov	ecx, 8
	cmove	ecx,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	cmp	ebx, 9
	je	.label_274
	movzx	eax, al
	cmp	eax, ebx
	je	.label_274
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	jne	.label_272
	movzx	eax,  byte ptr [byte ptr [rip + use_esc_sequence]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_277
	mov	byte ptr [r14], 0x5c
	xor	ebp, ebp
	lea	rdi, [rsp + 0xc]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:.str.79
	xor	eax, eax
	mov	r8d, ebx
	call	__sprintf_chk
.label_280:
	mov	al, byte ptr [rsp + rbp + 0xc]
	mov	byte ptr [r14 + rbp + 1], al
	inc	rbp
	mov	ebx, 4
	cmp	rbp, 3
	jne	.label_280
	jmp	.label_275
.label_274:
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cdq	
	idiv	ecx
	mov	ebx, ecx
	sub	ebx, edx
	mov	al,  byte ptr [byte ptr [rip + untabify_input]]
	and	al, 1
	je	.label_281
	dec	ecx
	sub	ecx, edx
	inc	rcx
	mov	esi, 0x20
	mov	rdi, r14
	mov	rdx, rcx
	call	memset
	mov	eax, ebx
	jmp	.label_278
.label_272:
	mov	byte ptr [r14], bpl
	mov	ebx, 1
.label_275:
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, ebx
.label_276:
	add	ebx, ecx
	mov	dword ptr [dword ptr [rip + input_position]],  ebx
	jmp	.label_271
.label_281:
	mov	byte ptr [r14], bpl
	mov	eax, 1
	jmp	.label_278
.label_277:
	movzx	eax,  byte ptr [byte ptr [rip + use_cntrl_prefix]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_282
	test	bpl, bpl
	js	.label_273
	mov	byte ptr [r14], 0x5e
	xor	bpl, 0x40
	mov	byte ptr [r14 + 1], bpl
	mov	ebx, 2
	jmp	.label_275
.label_282:
	mov	byte ptr [r14], bpl
	xor	eax, eax
	cmp	ebx, 8
	mov	ebx, 0xffffffff
	cmovne	ebx, eax
	mov	eax, 1
.label_278:
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	test	ebx, ebx
	jns	.label_270
	test	ecx, ecx
	jne	.label_270
	mov	dword ptr [dword ptr [rip + input_position]],  0
	xor	eax, eax
	jmp	.label_271
.label_270:
	test	ebx, ebx
	setns	dl
	mov	esi, ebx
	neg	esi
	cmp	ecx, esi
	jg	.label_276
	test	dl, dl
	jne	.label_276
	mov	dword ptr [dword ptr [rip + input_position]],  0
.label_271:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_273:
	mov	byte ptr [r14], 0x5c
	xor	ebp, ebp
	lea	rdi, [rsp + 0xc]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:.str.79
	xor	eax, eax
	mov	r8d, ebx
	call	__sprintf_chk
	nop	
.label_279:
	mov	al, byte ptr [rsp + rbp + 0xc]
	mov	byte ptr [r14 + rbp + 1], al
	inc	rbp
	mov	ebx, 4
	cmp	rbp, 3
	jne	.label_279
	jmp	.label_275
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404680

	.globl align_column
	.type align_column, @function
align_column:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  edi
	sub	edi,  dword ptr [dword ptr [rip + col_sep_length]]
	jle	.label_283
	call	pad_across_to
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_283:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_284
	call	print_sep_string
.label_284:
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_285
	mov	rdi, rbx
	pop	rbx
	jmp	add_line_number
.label_285:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	mov	r8d,  dword ptr [dword ptr [rip + chars_per_number]]
	mov	r9d,  dword ptr [dword ptr [rip + line_number]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.80
	xor	eax, eax
	call	__sprintf_chk
	inc	dword ptr [dword ptr [rip + line_number]]
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_number]]
	test	ebp, ebp
	jle	.label_287
	sub	eax, ebp
	movsxd	rbx, eax
	add	rbx,  qword ptr [word ptr [rip + number_buff]]
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_292:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_292
.label_287:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_288
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	cmp	eax, 9
	jne	.label_289
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	mov	eax,  dword ptr [dword ptr [rip + chars_per_number]]
	cmp	ebx, eax
	jle	.label_286
	inc	ebx
	sub	ebx, eax
	nop	word ptr [rax + rax]
.label_291:
	mov	edi, 0x20
	call	qword ptr [r14 + 0x20]
	dec	ebx
	cmp	ebx, 1
	jg	.label_291
	jmp	.label_286
.label_288:
	movsx	edi,  byte ptr [byte ptr [rip + number_separator]]
	call	qword ptr [r14 + 0x20]
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	cmp	eax, 9
	jne	.label_286
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	esi,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	esi
	add	esi, ecx
	sub	esi, edx
	mov	dword ptr [dword ptr [rip + output_position]],  esi
	jmp	.label_286
.label_289:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_286:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_290
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	jne	.label_290
	mov	eax,  dword ptr [dword ptr [rip + number_width]]
	add	dword ptr [dword ptr [rip + input_position]],  eax
.label_290:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047f0

	.globl print_clump
	.type print_clump, @function
print_clump:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14, rdi
	test	ebp, ebp
	je	.label_293
.label_294:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	jne	.label_294
.label_293:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404820

	.globl init_page
	.type init_page, @function
init_page:
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	je	.label_295
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_297
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	edx,  dword ptr [dword ptr [rip + lines_per_body]]
	add	rcx, 0x30
	nop	word ptr cs:[rax + rax]
.label_301:
	cmp	dword ptr [rcx - 0x20], 0
	mov	esi, edx
	je	.label_299
	xor	esi, esi
.label_299:
	mov	dword ptr [rcx], esi
	add	rcx, 0x40
	dec	eax
	jne	.label_301
.label_297:
	ret	
.label_295:
	push	rax
	call	store_columns
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	cmp	esi, 1
	lea	rsp, [rsp + 8]
	je	.label_298
	lea	ecx, [rsi - 2]
	inc	rcx
	mov	edx, 1
	sub	edx, esi
	lea	rsi, [rax + 0x30]
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	edi, dword ptr [rsi - 4]
	mov	dword ptr [rsi], edi
	add	rsi, 0x40
	inc	edx
	jne	.label_296
	shl	rcx, 6
	add	rax, rcx
.label_298:
	movzx	ecx,  byte ptr [byte ptr [rip + balance_columns]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_300
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rax + 0x30], ecx
	ret	
.label_300:
	cmp	dword ptr [rax + 0x10], 0
	je	.label_302
	mov	dword ptr [rax + 0x30], 0
	ret	
.label_302:
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	dword ptr [rax + 0x30], ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	xor	eax, eax
	cmp	dword ptr [dword ptr [rip + columns]],  0
	je	.label_303
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	mov	sil,  byte ptr [byte ptr [rip + storing_columns]]
	add	rcx, 0x30
	xor	eax, eax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_305:
	cmp	dword ptr [rcx - 0x20], 2
	jb	.label_304
	test	sil, 1
	jne	.label_306
	cmp	dword ptr [rcx - 4], 0
	jle	.label_306
	cmp	dword ptr [rcx], 0
	jle	.label_306
	nop	word ptr [rax + rax]
.label_304:
	inc	eax
.label_306:
	inc	edi
	add	rcx, 0x40
	cmp	edi, edx
	jb	.label_305
.label_303:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	nop	word ptr [rax + rax]
.label_310:
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, -1
	je	.label_307
	cmp	eax, 0xa
	je	.label_308
	cmp	eax, 0xc
	jne	.label_310
	mov	rdi, rbx
	call	getc_unlocked
	cmp	eax, 0xa
	je	.label_311
	mov	edi, eax
	mov	rsi, rbx
	call	ungetc
.label_311:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_309
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_309:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	hold_file
.label_307:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	close_file
.label_308:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbx
	mov	ebx, edi
	mov	al,  byte ptr [byte ptr [rip + use_form_feed]]
	and	al, 1
	je	.label_312
	mov	edi, 0xc
	pop	rbx
	jmp	putchar_unlocked
.label_312:
	test	ebx, ebx
	je	.label_313
	nop	dword ptr [rax]
.label_314:
	mov	edi, 0xa
	call	putchar_unlocked
	dec	ebx
	jne	.label_314
.label_313:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl store_columns
	.type store_columns, @function
store_columns:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [dword ptr [rip + buff_current]],  0
	mov	dl,  byte ptr [byte ptr [rip + balance_columns]]
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	cl, dl
	not	cl
	movzx	ecx, cl
	and	ecx, 1
	mov	r15d, eax
	sub	r15d, ecx
	xor	r14d, r14d
	test	r15d, r15d
	jle	.label_315
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	add	rcx, 0x2c
	inc	dl
	movzx	edx, dl
	and	edx, 1
	sub	eax, edx
	nop	word ptr cs:[rax + rax]
.label_320:
	mov	dword ptr [rcx], 0
	add	rcx, 0x40
	dec	eax
	jne	.label_320
	test	r15d, r15d
	jle	.label_323
	mov	eax,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	eax, eax
	mov	r13d, 0
	je	.label_318
	mov	r12d, 1
	xor	r14d, r14d
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	xor	r13d, r13d
	nop	
.label_316:
	mov	dword ptr [rbx + 0x28], r13d
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	test	eax, eax
	je	.label_319
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ecx, ecx
	je	.label_319
	mov	ebp, 1
	sub	ebp, eax
	nop	word ptr [rax + rax]
.label_324:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_317
	mov	dword ptr [dword ptr [rip + input_position]],  0
	mov	rdi, rbx
	call	read_line
	test	al, al
	jne	.label_322
	mov	rdi, rbx
	call	read_rest_of_line
.label_322:
	cmp	dword ptr [rbx + 0x10], 0
	je	.label_325
	cmp	r14d,  dword ptr [dword ptr [rip + buff_current]]
	je	.label_317
.label_325:
	inc	dword ptr [rbx + 0x2c]
	mov	eax, r13d
	mov	rcx,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rcx + rax*4], r14d
	mov	ecx,  dword ptr [dword ptr [rip + input_position]]
	inc	r13d
	mov	rdx,  qword ptr [word ptr [rip + end_vector]]
	mov	dword ptr [rdx + rax*4], ecx
	mov	r14d,  dword ptr [dword ptr [rip + buff_current]]
	nop	
.label_317:
	test	ebp, ebp
	je	.label_319
	mov	eax,  dword ptr [dword ptr [rip + files_ready_to_read]]
	inc	ebp
	test	eax, eax
	jne	.label_324
.label_319:
	cmp	r12d, r15d
	jge	.label_318
	inc	r12d
	add	rbx, 0x40
	mov	eax,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	eax, eax
	jne	.label_316
	jmp	.label_318
.label_315:
	xor	r13d, r13d
	jmp	.label_318
.label_323:
	xor	r13d, r13d
.label_318:
	mov	eax, r13d
	mov	rcx,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rcx + rax*4], r14d
	movzx	eax,  byte ptr [byte ptr [rip + balance_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_321
	mov	edi, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	balance
.label_321:
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
	.align	16
	#Procedure 0x404bb0

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
	mov	eax, r8d
	cdq	
	idiv	r9d
	inc	edi
	cmp	edi, edx
	setle	dl
	movzx	edx, dl
	add	edx, eax
	mov	dword ptr [rsi], edx
	mov	dword ptr [rsi - 4], ecx
	add	ecx, edx
	mov	r9d,  dword ptr [dword ptr [rip + columns]]
	add	rsi, 0x40
	cmp	edi, r9d
	jl	.label_327
.label_326:
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c00
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_330
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_328
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_328
.label_330:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_331
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_329
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_331:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_329:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_332
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_332:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

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
	je	.label_334
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_336
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_337
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_333
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_334
.label_333:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_335
.label_336:
	mov	rax, rbx
	jmp	.label_334
.label_337:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_335:
	xor	eax, eax
.label_334:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404db0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_339
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_340
	cmp	byte ptr [rax + 1], 0
	je	.label_338
.label_340:
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_339
.label_338:
	xor	ebx, ebx
.label_339:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_341
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_342:
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
	ja	.label_342
	jmp	.label_343
.label_341:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_344:
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
	ja	.label_344
	mov	byte ptr [rsi], 0x2d
.label_343:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

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
	.align	16
	#Procedure 0x404ef0

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
	jbe	.label_347
	xor	ebp, ebp
	test	r15, r15
	jle	.label_348
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	and	r14d, 1
	mov	edx, r14d
	xor	edx, 1
	lea	esi, [r14*4]
	xor	esi, 5
	xor	r15d, r15d
	lea	r13, [rsp + 0x10]
	mov	ebp, 0x7fffffff
	nop	word ptr cs:[rax + rax]
.label_363:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_359
	jmp	qword ptr [word ptr [+ (rax * 8) + label_361]]
.label_951:
	inc	rbx
	inc	r15d
.label_346:
	cmp	rbx, r12
	jb	.label_363
	jmp	.label_350
.label_359:
	mov	dword ptr [rsp], esi
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	r13, rax
	test	r13, r13
	je	.label_351
	cmp	r13, -2
	je	.label_353
	cmp	r13, -1
	jne	.label_354
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
.label_351:
	mov	r13d, 1
.label_354:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	test	eax, eax
	js	.label_362
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_349
	add	r15d, eax
	jmp	.label_345
	nop	dword ptr [rax]
.label_362:
	mov	ecx, 1
	cmp	dword ptr [rsp + 8], 0
	jne	.label_349
	mov	edi, dword ptr [rsp + 0xc]
	call	iswcntrl
	test	eax, eax
	jne	.label_345
	mov	ecx, 7
	cmp	r15d, 0x7fffffff
	je	.label_349
	inc	r15d
	nop	word ptr [rax + rax]
.label_345:
	add	rbx, r13
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	mov	rax, rbx
	je	.label_360
	jmp	.label_357
.label_353:
	add	r15d, dword ptr [rsp + 4]
	test	r14d, r14d
	mov	rax, r12
	mov	ecx, dword ptr [rsp]
	lea	r13, [rsp + 0x10]
	jne	.label_358
	jmp	.label_357
.label_356:
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_349
	inc	rbx
	inc	r15d
	mov	rax, rbx
	lea	r13, [rsp + 0x10]
.label_357:
	mov	rbx, rax
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	jmp	.label_346
.label_349:
	lea	r13, [rsp + 0x10]
.label_358:
	test	ecx, ecx
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	je	.label_346
	mov	r15d, 0xffffffff
	cmp	ecx, 7
	jne	.label_350
	jmp	.label_348
.label_347:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_352
.label_364:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_352:
	cmp	rbx, r12
	jae	.label_350
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_355
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_348
	test	al, 2
	jne	.label_352
.label_355:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_364
	jmp	.label_348
.label_350:
	mov	ebp, r15d
.label_348:
	mov	eax, ebp
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
	.align	16
	#Procedure 0x405120

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], r9d
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	xor	r8d, r8d
	xor	r9d, r9d
	call	__strftime_internal
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x44], r8d
	mov	r8, rcx
	mov	qword ptr [rsp + 0x58], r8
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [r8 + 8]
	mov	rcx, qword ptr [r8 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	cmp	byte ptr [rbp], 0
	je	.label_514
	mov	dword ptr [rsp + 0x28], esi
	mov	qword ptr [rsp + 0x30], rdx
	mov	dword ptr [rsp + 0x2c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r13, 0x1000000000002500
	xor	esi, esi
	jmp	.label_421
.label_514:
	xor	esi, esi
	jmp	.label_441
.label_401:
	mov	ecx, 3
	jmp	.label_443
	nop	dword ptr [rax + rax]
.label_421:
	movzx	eax, byte ptr [rbp]
	xor	r12d, r12d
	cmp	eax, 0x25
	jne	.label_448
	mov	eax, dword ptr [rsp + 0x44]
	mov	bl, al
	xor	r15d, r15d
	mov	bl, al
	jmp	.label_451
	nop	dword ptr [rax]
.label_457:
	movsx	r15d, byte ptr [rbp]
.label_451:
	inc	rbp
	movsx	ecx, byte ptr [rbp]
	lea	edx, [rcx - 0x23]
	cmp	edx, 0x3c
	ja	.label_455
	bt	r13, rdx
	jb	.label_457
	mov	al, 1
	test	rdx, rdx
	je	.label_459
	cmp	rdx, 0x3b
	jne	.label_455
	mov	bl, al
	jmp	.label_451
.label_459:
	mov	r12b, 1
	mov	al, bl
	jmp	.label_451
	nop	word ptr [rax + rax]
.label_448:
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_366
	test	rdi, rdi
	mov	ecx, 0
	je	.label_472
	cmp	eax, 2
	jb	.label_392
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	r12, rdi
	mov	r15, r8
	call	memset
	mov	r8, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r14 - 1]
.label_392:
	mov	al, byte ptr [rbp]
	mov	byte ptr [rdi], al
	inc	rdi
	mov	rcx, rdi
.label_472:
	add	rsi, rbx
.label_499:
	mov	rdi, rcx
	jmp	.label_398
	nop	
.label_455:
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_478
	nop	word ptr [rax + rax]
.label_442:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_480
	jne	.label_482
	movsx	ecx, byte ptr [rbp]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_480
.label_482:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [rbp]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_480:
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_442
.label_478:
	movsx	eax, byte ptr [rbp]
	cmp	eax, 0x4f
	je	.label_484
	cmp	eax, 0x45
	jne	.label_486
.label_484:
	mov	qword ptr [rsp + 0x78], rsi
	movsx	eax, byte ptr [rbp]
	mov	dword ptr [rsp + 0x68], eax
	inc	rbp
	jmp	.label_488
.label_486:
	mov	dword ptr [rsp + 0x68], 0
	mov	qword ptr [rsp + 0x78], rsi
.label_488:
	mov	r8b, byte ptr [rbp]
	mov	r9d, OFFSET FLAT:.str.3_0
	movsx	eax, r8b
	xor	r11d, r11d
	mov	ecx, 1
	lea	esi, [rax - 0x25]
	cmp	esi, 0x55
	ja	.label_493
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x50], rbx
	mov	al, 0x72
	mov	r10d, 0xffffffff
	xor	edi, edi
	xor	edx, edx
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_495]]
.label_1046:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rdx, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebx, [rax + rcx - 0x64]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	dword ptr [rsp + 0x48], edi
	call	iso_week_days
	mov	r12d, eax
	test	r12d, r12d
	js	.label_503
	mov	eax, 0x16d
	test	bl, 3
	jne	.label_507
	movsxd	rax, ebx
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebx, eax
	sete	al
	movzx	edx, al
	add	edx, 0x16d
	cmp	ebx, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_507:
	mov	edi, dword ptr [rsp + 0x48]
	sub	edi, eax
	mov	rax, qword ptr [rsp + 0x58]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	r12d, eax
	jmp	.label_369
	nop	word ptr [rax + rax]
.label_373:
	inc	rcx
.label_1040:
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3a
	je	.label_373
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_367
	add	rbp, rcx
	mov	r11, rcx
.label_1077:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_446
	mov	byte ptr [rsp + 0x38], r8b
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	test	r8d, r8d
	js	.label_383
	test	r8d, r8d
	je	.label_386
	xor	esi, esi
	jmp	.label_383
.label_1060:
	test	r12b, r12b
	je	.label_387
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_387:
	xor	edi, edi
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_367
	mov	al, r8b
	jmp	.label_375
.label_493:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x50], rbx
	test	eax, eax
	jne	.label_367
	dec	rbp
	jmp	.label_367
.label_1039:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_367
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_380
	cmp	eax, 2
	jb	.label_415
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_416
	cmp	r15d, 0x2b
	jne	.label_418
.label_416:
	mov	esi, 0x30
	jmp	.label_489
.label_1041:
	mov	eax, dword ptr [rsp + 0x68]
	test	eax, eax
	jne	.label_367
	test	r12b, r12b
	je	.label_425
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_425:
	xor	edi, edi
	mov	al, 0x41
	jmp	.label_375
.label_1042:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_367
	test	r12b, r12b
	je	.label_431
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_431:
	xor	edi, edi
	mov	al, 0x42
	jmp	.label_375
.label_1043:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	jne	.label_434
	xor	edi, edi
	mov	al, 0x43
	jmp	.label_375
.label_1044:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_367
	mov	r9d, OFFSET FLAT:.str.1_1
	mov	r10d, 0xffffffff
	jmp	.label_437
.label_1045:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_367
	test	r15d, r15d
	jne	.label_440
	test	r14d, r14d
	jns	.label_440
	mov	r9d, OFFSET FLAT:.str.2_0
	mov	r15d, 0x2b
	mov	r10d, 4
	jmp	.label_437
.label_1047:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_368
.label_1048:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	eax, 2
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	jmp	.label_381
.label_1049:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 4]
	jmp	.label_368
.label_1050:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	cmp	r14d, -1
	je	.label_462
	mov	byte ptr [rsp + 0x38], r8b
	mov	ecx, 9
	cmp	r14d, 8
	mov	eax, dword ptr [rsp + 0x4f0]
	jg	.label_465
	nop	dword ptr [rax + rax]
.label_470:
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	dec	ecx
	cmp	r14d, ecx
	jne	.label_470
	mov	ecx, r14d
	jmp	.label_374
.label_1051:
	mov	dl, 1
.label_1069:
	xor	r11d, r11d
	test	r12b, r12b
	je	.label_475
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
.label_475:
	je	.label_379
	mov	dl, 1
.label_379:
	mov	al, 0x70
	mov	dil, dl
	jmp	.label_476
.label_1052:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax]
	jmp	.label_368
.label_1053:
	mov	r9d, OFFSET FLAT:.str.4_0
.label_437:
	mov	dword ptr [rsp + 0x68], r10d
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	r12d, r12d
	xor	edi, edi
	mov	rsi, -1
	mov	rbx, r9
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9d, r15d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x60]
	test	r14d, r14d
	cmovns	r12d, r14d
	movsxd	rdx, r12d
	cmp	rax, rdx
	mov	r13, rax
	cmovb	r13, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	cmp	r13, r12
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_497
	cmp	rax, rdx
	jae	.label_498
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x48], rax
	cmp	r15d, 0x30
	je	.label_500
	cmp	r15d, 0x2b
	jne	.label_502
.label_500:
	mov	esi, 0x30
	jmp	.label_438
.label_1054:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rcx, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	cdqe	
	jmp	.label_504
.label_1055:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rcx, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	movsxd	rax, ecx
.label_504:
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	jmp	.label_368
.label_1056:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	je	.label_367
	xor	edi, edi
	mov	al, 0x58
	jmp	.label_375
.label_1057:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_377
	cmp	ebx, 0x4f
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x14]
	cmp	eax, 0xfffff894
	setl	sil
	add	eax, 0x76c
	mov	ecx, 4
	jmp	.label_435
.label_1058:
	mov	r13, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
	mov	rdi, qword ptr [rsp + 0x60]
	xor	ecx, ecx
	test	r14d, r14d
	cmovns	ecx, r14d
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_389
	cmp	rax, rdx
	jae	.label_399
	movsxd	r14, r14d
	sub	r14, rax
	mov	qword ptr [rsp + 0x68], rax
	cmp	r15d, 0x30
	je	.label_400
	cmp	r15d, 0x2b
	jne	.label_405
.label_400:
	mov	esi, 0x30
	jmp	.label_408
.label_1059:
	mov	eax, dword ptr [rsp + 0x68]
	test	eax, eax
	jne	.label_367
	test	r12b, r12b
	je	.label_413
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_413:
	xor	edi, edi
	mov	al, 0x61
	jmp	.label_375
.label_1061:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	je	.label_367
	xor	edi, edi
	mov	al, 0x63
	jmp	.label_375
.label_1062:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_368
.label_1063:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_428
.label_1064:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	ecx, 3
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_433
.label_1065:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_428
.label_1066:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	mov	eax, dword ptr [rsp + 0x28]
	je	.label_367
.label_428:
	mov	byte ptr [rsp + 0x38], r8b
	test	r15d, r15d
	mov	ecx, 0x5f
	cmove	r15d, ecx
	jmp	.label_368
.label_1067:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	ecx, 2
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_433
.label_1068:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_380
	cmp	eax, 2
	jb	.label_461
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_463
	cmp	r15d, 0x2b
	jne	.label_468
.label_463:
	mov	esi, 0x30
	jmp	.label_508
.label_1070:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	ecx, 1
	mov	qword ptr [rsp + 0x48], rcx
	xor	edx, edx
	xor	r8d, r8d
	xor	esi, esi
	mov	ebx, dword ptr [rsp + 0x68]
	jmp	.label_426
.label_1071:
	mov	r13, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	word ptr cs:[rax + rax]
.label_485:
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
	ja	.label_485
	mov	eax, 1
	mov	qword ptr [rsp + 0x48], rax
	xor	r8d, r8d
	mov	rdi, r13
	jmp	.label_496
.label_1072:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_380
	cmp	eax, 2
	jb	.label_506
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_510
	cmp	r15d, 0x2b
	jne	.label_511
.label_510:
	mov	esi, 0x30
	jmp	.label_512
.label_1073:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	ecx, dword ptr [rax + 0x18]
	lea	eax, [rcx + 6]
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	lea	ecx, [rdx + rcx + 6]
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	inc	eax
	mov	ecx, 1
	mov	qword ptr [rsp + 0x48], rcx
	mov	ebx, dword ptr [rsp + 0x68]
	jmp	.label_381
.label_1074:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_367
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_374
.label_1075:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	je	.label_367
	xor	edi, edi
	mov	al, 0x78
	jmp	.label_375
.label_1076:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	jne	.label_467
	xor	edi, edi
	mov	al, 0x79
	jmp	.label_375
.label_498:
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_427
.label_503:
	dec	ebx
	mov	edi, 0x16d
	test	bl, 3
	jne	.label_388
	movsxd	rax, ebx
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebx, eax
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	ebx, ecx
	mov	edi, 0x16e
	cmove	edi, eax
.label_388:
	add	edi, dword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x58]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	r12d, eax
	mov	ecx, 0xffffffff
.label_369:
	mov	ebx, dword ptr [rsp + 0x68]
	movsx	eax, byte ptr [rbp]
	cmp	eax, 0x47
	je	.label_406
	cmp	eax, 0x67
	jne	.label_411
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rdx, dword ptr [rax + 0x14]
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	mov	esi, edx
	sub	esi, eax
	add	esi, ecx
	movsxd	rax, esi
	imul	rsi, rax, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	sub	eax, esi
	jns	.label_412
	mov	esi, 2
	mov	qword ptr [rsp + 0x48], rsi
	mov	esi, 0xfffff894
	sub	esi, ecx
	mov	ecx, eax
	neg	ecx
	add	eax, 0x64
	cmp	edx, esi
	cmovl	eax, ecx
	xor	esi, esi
	jmp	.label_453
.label_446:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, rax
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_398
.label_434:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rcx, dword ptr [rax + 0x14]
	cmp	rcx, -0x76c
	setl	sil
	setg	dl
	imul	rax, rcx, 0x51eb851f
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x25
	add	eax, edi
	imul	edi, eax, 0x64
	cmp	ecx, edi
	sets	cl
	and	cl, dl
	movzx	ecx, cl
	sub	eax, ecx
	add	eax, 0x13
	mov	ecx, 2
	jmp	.label_435
.label_467:
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rcx, dword ptr [rax + 0x14]
	imul	rax, rcx, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	edx, eax, 0x64
	mov	eax, ecx
	sub	eax, edx
	js	.label_396
	mov	byte ptr [rsp + 0x38], r8b
.label_412:
	mov	ecx, 2
	mov	qword ptr [rsp + 0x48], rcx
	xor	esi, esi
	jmp	.label_453
.label_406:
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	eax, [rcx + rax + 0x76c]
	mov	ecx, 4
.label_435:
	mov	qword ptr [rsp + 0x48], rcx
.label_453:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x2c]
	xor	edx, edx
	cmp	r15d, 0x2b
	mov	r8d, 0
	jne	.label_426
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	ecx, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, eax
	setb	dil
	cmp	ecx, r14d
	setl	r8b
	or	r8b, dil
	jmp	.label_426
.label_411:
	movsxd	rax, r12d
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	eax, [rcx + rax + 1]
.label_368:
	mov	ecx, 2
.label_374:
	mov	qword ptr [rsp + 0x48], rcx
.label_381:
	mov	esi, eax
	shr	esi, 0x1f
.label_433:
	xor	edx, edx
	xor	r8d, r8d
.label_426:
	cmp	ebx, 0x4f
	jne	.label_473
	test	sil, sil
	jne	.label_473
	mov	dword ptr [rsp + 0x68], ebx
	xor	edi, edi
	mov	al, byte ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_476
.label_473:
	mov	ecx, eax
	neg	ecx
	test	sil, sil
	cmove	ecx, eax
	lea	r12, [rsp + 0x4a7]
	nop	
.label_483:
	test	dl, 1
	je	.label_403
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_403:
	sar	edx, 1
	mov	ebx, ecx
	mov	eax, 0xcccccccd
	imul	rax, rbx
	shr	rax, 0x23
	lea	ebx, [rax + rax]
	lea	ebx, [rbx + rbx*4]
	mov	edi, ecx
	sub	edi, ebx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	ecx, 9
	mov	ecx, eax
	ja	.label_483
	test	edx, edx
	mov	ecx, eax
	jne	.label_483
	mov	rdi, qword ptr [rsp + 0x60]
.label_496:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	eax, r14d
	cmovl	eax, r14d
	test	r8b, r8b
	je	.label_487
	mov	r8b, 0x2b
.label_487:
	test	sil, sil
	mov	r9b, 0x2d
	jne	.label_490
	mov	r9b, r8b
.label_490:
	cmp	r15d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_492
	test	r9b, r9b
	mov	r8, rax
	je	.label_454
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_447
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_422
	test	al, al
	jne	.label_422
	movsxd	r13, r14d
	lea	rdx, [r13 - 1]
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x48], r8
	call	memset
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r13 - 1]
	jmp	.label_422
.label_492:
	mov	r8, rax
	movsxd	rax, r8d
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_513
	cmp	r15d, 0x5f
	jne	.label_365
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_366
	xor	r11d, r11d
	test	rdi, rdi
	mov	r13d, 0
	je	.label_371
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x68], r9b
	mov	r13, rdi
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x38], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x38]
	xor	r11d, r11d
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x78]
	add	r13, rdx
.label_371:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r11d, r14d
	test	r9b, r9b
	je	.label_385
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_366
	xor	edi, edi
	test	r13, r13
	je	.label_391
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_393
	test	al, al
	jne	.label_393
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x78], rsi
	movsxd	r14, r11d
	mov	qword ptr [rsp + 0x60], r11
	dec	r14
	cmp	r15d, 0x30
	je	.label_397
	cmp	r15d, 0x2b
	jne	.label_404
.label_397:
	mov	esi, 0x30
	jmp	.label_407
.label_513:
	test	r9b, r9b
	je	.label_454
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_447
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_422
	test	al, al
	jne	.label_422
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	je	.label_445
	cmp	r15d, 0x2b
	jne	.label_430
.label_445:
	mov	esi, 0x30
	jmp	.label_432
.label_365:
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_366
	test	r9b, r9b
	je	.label_436
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r13d, 1
	cmova	r13, rdx
	cmp	r13, rcx
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_439
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_402
	test	al, al
	jne	.label_402
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	je	.label_444
	cmp	r15d, 0x2b
	jne	.label_450
.label_444:
	mov	esi, 0x30
	jmp	.label_452
.label_385:
	mov	rdi, r13
	mov	r14d, r11d
	jmp	.label_454
.label_377:
	xor	edi, edi
	mov	al, 0x59
.label_375:
	xor	r11d, r11d
.label_476:
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0x48], r11
	mov	word ptr [rsp + 0x48b], 0x2520
	mov	r11d, dword ptr [rsp + 0x68]
	test	r11d, r11d
	lea	rcx, [rsp + 0x48d]
	je	.label_456
	mov	byte ptr [rsp + 0x48d], r11b
	lea	rcx, [rsp + 0x48e]
.label_456:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x58]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_469
	dec	rbx
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	r12, rcx
	mov	rdx, qword ptr [rsp + 0x48]
	jae	.label_366
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	mov	r8, qword ptr [rsp + 0x58]
	je	.label_474
	cmp	rbx, rax
	setae	al
	test	edx, edx
	jne	.label_477
	test	al, al
	jne	.label_477
	mov	r13, rsi
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_479
	cmp	r15d, 0x2b
	jne	.label_481
.label_479:
	mov	esi, 0x30
	jmp	.label_420
.label_469:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_398
.label_481:
	mov	esi, 0x20
.label_420:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, r13
	movabs	r13, 0x1000000000002500
	mov	rdi, r15
	mov	r8, qword ptr [rsp + 0x58]
.label_477:
	mov	qword ptr [rsp + 0x78], rsi
	mov	r14, r8
	mov	eax, dword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_509
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	mov	r15, rdi
	test	al, 1
	jne	.label_491
	call	memcpy
	jmp	.label_494
.label_509:
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	mov	r15, rdi
	call	memcpy_lowcase
	jmp	.label_494
.label_491:
	call	memcpy_uppcase
.label_494:
	mov	rcx, r15
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, r14
	add	rcx, rbx
.label_474:
	add	rsi, r12
	jmp	.label_499
.label_399:
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_501
.label_502:
	mov	esi, 0x20
.label_438:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x38], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rdi, r14
.label_427:
	mov	edx, dword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9d, r15d
	mov	rbx, rdi
	call	__strftime_internal
	mov	rax, qword ptr [rsp + 0x48]
	add	rax, rbx
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x78]
.label_497:
	add	rsi, r13
	mov	rdi, rcx
	jmp	.label_515
.label_386:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	sete	sil
.label_383:
	cmp	r11, 3
	mov	ebx, dword ptr [rsp + 0x68]
	ja	.label_367
	movsxd	rax, r8d
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, r8d
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rax, rax, -0x6e5d4c3b
	shr	rax, 0x20
	add	eax, r8d
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 0xb
	add	eax, edi
	movsxd	rdx, edx
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, edx
	mov	ecx, edi
	shr	ecx, 0x1f
	sar	edi, 5
	add	edi, ecx
	imul	edi, edi, 0x3c
	imul	ecx, edx, 0x3c
	sub	edx, edi
	sub	r8d, ecx
	jmp	qword ptr [word ptr [+ (r11 * 8) + label_370]]
.label_935:
	imul	eax, eax, 0x64
	add	eax, edx
	mov	ecx, 5
.label_443:
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	xor	edx, edx
	jmp	.label_426
.label_367:
	xor	r13d, r13d
	xor	ebx, ebx
	movabs	rcx, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_394:
	add	rbx, rcx
	movzx	eax, byte ptr [rbp + r13]
	dec	r13
	cmp	eax, 0x25
	jne	.label_394
	mov	rax, r13
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	r12, edx
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rdx, rsi
	cmp	r12, rdx
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_366
	test	rdi, rdi
	mov	edx, 0
	je	.label_410
	sar	rbx, 0x20
	cmp	eax, ecx
	jae	.label_458
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_414
	cmp	r15d, 0x2b
	jne	.label_471
.label_414:
	mov	r15, rsi
	mov	esi, 0x30
	jmp	.label_417
.label_458:
	mov	r15, rsi
	jmp	.label_419
.label_471:
	mov	r15, rsi
	mov	esi, 0x20
.label_417:
	mov	rdx, r14
	call	memset
	mov	rdi, qword ptr [rsp + 0x60]
	add	rdi, r14
.label_419:
	lea	rsi, [rbp + r13 + 1]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rdx, rbx
	mov	r14, rdi
	test	al, 1
	jne	.label_424
	call	memcpy
	jmp	.label_429
.label_424:
	call	memcpy_uppcase
.label_429:
	mov	rdx, r14
	mov	rsi, r15
	add	rdx, rbx
.label_410:
	add	rsi, r12
	mov	rdi, rdx
.label_515:
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r13, 0x1000000000002500
	jmp	.label_398
.label_440:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	r9d, OFFSET FLAT:.str.2_0
	jmp	.label_437
.label_462:
	mov	byte ptr [rsp + 0x38], r8b
	mov	eax, 9
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	r14d, 9
	jmp	.label_381
.label_396:
	mov	byte ptr [rsp + 0x38], r8b
	mov	edx, 2
	mov	qword ptr [rsp + 0x48], rdx
	mov	edx, eax
	neg	edx
	add	eax, 0x64
	cmp	ecx, 0xfffff894
	cmovl	eax, edx
	xor	esi, esi
	jmp	.label_453
.label_938:
	test	r8d, r8d
	je	.label_449
.label_937:
	imul	eax, eax, 0x2710
	imul	edx, edx, 0x64
	add	eax, r8d
	add	eax, edx
	mov	ecx, 9
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	mov	edx, 0x14
	jmp	.label_426
.label_465:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ecx, r14d
	jmp	.label_374
.label_405:
	mov	esi, 0x20
.label_408:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rax, qword ptr [rsp + 0x68]
.label_501:
	test	r12b, r12b
	je	.label_460
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	call	memcpy_lowcase
	jmp	.label_464
.label_460:
	setne	dl
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	je	.label_466
	test	dl, dl
	jne	.label_466
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	call	memcpy_uppcase
	jmp	.label_464
.label_466:
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	call	memcpy
.label_464:
	mov	rcx, r14
	mov	rsi, qword ptr [rsp + 0x78]
	add	rcx, r15
.label_389:
	add	rsi, rbx
	mov	rdi, rcx
	mov	r8, r13
	movabs	r13, 0x1000000000002500
	jmp	.label_398
.label_468:
	mov	esi, 0x20
.label_508:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r15
.label_461:
	mov	byte ptr [rdi], 0xa
	jmp	.label_409
.label_511:
	mov	esi, 0x20
.label_512:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r15
.label_506:
	mov	byte ptr [rdi], 9
	jmp	.label_409
.label_430:
	mov	esi, 0x20
.label_432:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	r13, rdi
	call	memset
	add	r13, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
.label_422:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_447:
	add	rsi, rbx
	mov	rdi, rcx
	jmp	.label_454
.label_404:
	mov	esi, 0x20
.label_407:
	mov	rdi, r13
	mov	rdx, r14
	call	memset
	add	r13, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r11, qword ptr [rsp + 0x60]
.label_393:
	mov	byte ptr [r13], r9b
	inc	r13
	mov	rdi, r13
.label_391:
	add	rsi, rbx
	mov	r14d, r11d
	jmp	.label_454
.label_450:
	mov	esi, 0x20
.label_452:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r14
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
.label_402:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_439:
	add	rsi, r13
	mov	rdi, rcx
.label_436:
	xor	r14d, r14d
	test	rdi, rdi
	mov	r13d, 0
	je	.label_505
	movsxd	rdx, ebx
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	r13, rdi
	mov	qword ptr [rsp + 0x48], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x78]
	add	r13, qword ptr [rsp + 0x68]
.label_505:
	movsxd	rcx, ebx
	add	rsi, rcx
	mov	rdi, r13
.label_454:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_366
	xor	ecx, ecx
	test	rdi, rdi
	movabs	r13, 0x1000000000002500
	je	.label_372
	cmp	rbx, rax
	setae	al
	test	r8d, r8d
	jne	.label_376
	test	al, al
	jne	.label_376
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_378
	cmp	r15d, 0x2b
	jne	.label_382
.label_378:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	jmp	.label_384
.label_382:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_384:
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	add	rdi, r14
.label_376:
	mov	qword ptr [rsp + 0x68], rdx
	mov	r14, rsi
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsi, r12
	mov	rdx, rbx
	mov	r15, rdi
	test	al, al
	je	.label_390
	call	memcpy_uppcase
	jmp	.label_395
.label_390:
	call	memcpy
.label_395:
	mov	rcx, r15
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x68]
	add	rcx, rbx
.label_372:
	add	rsi, rdx
	mov	rdi, rcx
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_398
.label_449:
	test	edx, edx
	je	.label_401
.label_936:
	imul	eax, eax, 0x64
	add	eax, edx
	mov	ecx, 6
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	mov	edx, 4
	jmp	.label_426
.label_418:
	mov	esi, 0x20
.label_489:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	add	rdi, r14
.label_415:
	mov	al, byte ptr [rbp]
	mov	byte ptr [rdi], al
.label_409:
	inc	rdi
	mov	rcx, rdi
.label_380:
	add	rsi, rbx
	mov	rdi, rcx
	mov	r8, r13
	mov	r13, r12
	nop	
.label_398:
	mov	r14d, 0xffffffff
	cmp	byte ptr [rbp + 1], 0
	lea	rbp, [rbp + 1]
	jne	.label_421
.label_441:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_423
	test	rdi, rdi
	je	.label_423
	mov	byte ptr [rdi], 0
	jmp	.label_423
.label_366:
	xor	esi, esi
.label_423:
	mov	rax, rsi
	add	rsp, 0x4a8
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
	#Procedure 0x406970

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_516
	call	__ctype_tolower_loc
	nop	dword ptr [rax + rax]
.label_517:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_517
.label_516:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069b0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_518
	call	__ctype_toupper_loc
	nop	dword ptr [rax + rax]
.label_519:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_519
.label_518:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069f0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_522
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_520
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_520
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_521
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_521:
	mov	rbx, r14
.label_520:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_522:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ae0
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
	.align	16
	#Procedure 0x406b20
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
	.align	16
	#Procedure 0x406b30
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
	.align	16
	#Procedure 0x406b40

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	.align	16
	#Procedure 0x406b80
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
	.align	16
	#Procedure 0x406ba0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_523
	test	rdx, rdx
	je	.label_523
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_523:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bd0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_543:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_642
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_596]]
.label_1028:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_1029:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_616
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_616
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_637:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_627
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_627:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_637
.label_616:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_528
.label_1021:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_528
.label_1024:
	mov	al, 1
.label_1022:
	mov	r15b, 1
.label_1025:
	test	r15b, 1
	mov	cl, 1
	je	.label_578
	mov	cl, al
.label_578:
	mov	al, cl
.label_1023:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_562
	test	r10, r10
	je	.label_558
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_559
.label_562:
	xor	ecx, ecx
	jmp	.label_559
.label_1026:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_563
	test	r10, r10
	je	.label_572
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_575
.label_1027:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_528
.label_558:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_528
.label_563:
	xor	eax, eax
	jmp	.label_575
.label_572:
	mov	eax, 1
.label_575:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_528:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_548
	nop	dword ptr [rax + rax]
.label_573:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_548:
	cmp	rbp, -1
	je	.label_534
	cmp	rsi, rbp
	jne	.label_536
	jmp	.label_539
	nop	dword ptr [rax]
.label_534:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_539
.label_536:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_545
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_547
	cmp	rbp, -1
	jne	.label_547
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_547:
	cmp	rbx, rbp
	jbe	.label_626
.label_545:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_604:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_576
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_579]]
.label_925:
	test	rsi, rsi
	jne	.label_527
	jmp	.label_582
	nop	word ptr cs:[rax + rax]
.label_626:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_601
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_604
	jmp	.label_549
.label_601:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_604
.label_929:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_621
	test	rsi, rsi
	jne	.label_624
	cmp	rbp, 1
	je	.label_582
	xor	r15d, r15d
	jmp	.label_526
.label_918:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_544
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_549
	cmp	edi, 2
	jne	.label_631
	mov	al, r11b
	and	al, 1
	jne	.label_636
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_638
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_638:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_633
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_633:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_535
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_535:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_571
.label_919:
	mov	bl, 0x62
	jmp	.label_551
.label_920:
	mov	cl, 0x74
	jmp	.label_553
.label_921:
	mov	bl, 0x76
	jmp	.label_551
.label_922:
	mov	bl, 0x66
	jmp	.label_551
.label_923:
	mov	cl, 0x72
	jmp	.label_553
.label_926:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_557
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_555
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_566
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_566:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_583
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_583:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_589
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_589:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_599
.label_927:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_603
	cmp	r14d, 2
	jne	.label_606
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_555
.label_606:
	mov	rdi, r14
	jmp	.label_527
.label_928:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_612
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_555
	mov	rdi, r14
	jmp	.label_614
.label_576:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_618
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_538:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_629
	test	dl, dl
	je	.label_629
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_526
.label_621:
	test	rsi, rsi
	jne	.label_530
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_530
.label_582:
	mov	dl, 1
.label_924:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_549
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_526
.label_544:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_527
	mov	r14, rdi
	inc	rsi
	jmp	.label_548
.label_557:
	mov	rdi, r14
.label_599:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_526
.label_612:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_553
.label_614:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_556
.label_553:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_549
.label_551:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_526
	jmp	.label_568
.label_618:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_570
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_570:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_577:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_560
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_600
	cmp	rbp, -2
	je	.label_610
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_611
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_622:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_619
	bt	rsi, rdx
	jb	.label_609
.label_619:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_622
.label_611:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_644
	xor	r15d, r15d
.label_644:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_577
	jmp	.label_538
.label_530:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_526
.label_603:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_527
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_527
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_527
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_537
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_542
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_549
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_552
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_552:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_592
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_592:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_564
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_564:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_540
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_540:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_526
.label_527:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_526:
	test	r12b, r12b
	je	.label_625
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_586
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
.label_625:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_524
.label_586:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_597
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_556
	jmp	.label_568
	nop	word ptr cs:[rax + rax]
.label_524:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_568
	jmp	.label_556
.label_597:
	mov	bl, r13b
	mov	rsi, r14
.label_568:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_549
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_620
	mov	al, r11b
	and	al, 1
	jne	.label_620
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_623
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_623:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_587
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_587:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_632
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_632:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_620:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_643
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_643:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_533
.label_624:
	xor	r15d, r15d
	jmp	.label_526
.label_629:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_541
	nop	word ptr cs:[rax + rax]
.label_605:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_541:
	test	dl, dl
	je	.label_640
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_554
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_565
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_565:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_554
	nop	word ptr [rax + rax]
.label_640:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_555
	cmp	r14d, 2
	jne	.label_531
	mov	al, r11b
	and	al, 1
	jne	.label_531
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_580
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_580:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_585
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_585:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_590
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_590:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_531:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_595
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_595:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_630
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_630:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_615
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_615:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_554:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_556
	test	r11b, 1
	je	.label_574
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_532
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_635
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_635:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_584
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_584:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_532
	nop	word ptr cs:[rax + rax]
.label_574:
	mov	r14, rdi
.label_532:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_605
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_605
.label_556:
	test	r11b, 1
	je	.label_546
	and	al, 1
	jne	.label_546
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_617
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_617:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_561
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_561:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_533
	nop	dword ptr [rax + rax]
.label_546:
	mov	bl, r13b
	mov	r14, rdi
.label_533:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_573
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_573
.label_631:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_571
.label_636:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_571:
	cmp	rcx, r10
	jae	.label_588
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_588:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_593
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_602
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_608
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_613
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_613:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_607
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_607:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_526
.label_593:
	xor	r15d, r15d
	jmp	.label_526
.label_602:
	xor	r15d, r15d
	jmp	.label_526
.label_608:
	xor	r15d, r15d
	jmp	.label_526
.label_560:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_529
.label_600:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_628
.label_610:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_634
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_645:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_641
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_645
	xor	r15d, r15d
	jmp	.label_529
.label_634:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_628:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_529:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_538
.label_641:
	xor	r15d, r15d
	jmp	.label_529
.label_537:
	xor	r15d, r15d
	jmp	.label_526
.label_542:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_526
	nop	dword ptr [rax + rax]
.label_539:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_550
	or	dl, al
	je	.label_555
.label_550:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_567
	or	dl, al
	jne	.label_567
	test	r8b, 1
	jne	.label_569
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_567
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_543
.label_567:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_581
	test	cl, cl
	jne	.label_581
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_581
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_598:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_639
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_639:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_598
.label_581:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_594
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_594
.label_549:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_591:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_525:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_594:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_609:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_591
.label_555:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_591
.label_569:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_525
.label_642:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e70

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_646
	mov	qword ptr [rax], rbx
.label_646:
	mov	rax, r14
	add	rsp, 0x48
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
	#Procedure 0x407f70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_647
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_650:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_650
.label_647:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_651
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_648]], OFFSET FLAT:slot0
.label_651:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_649
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_649:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408010

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x408020

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_652
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_655
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_658
.label_655:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_654
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_653
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_653:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_658:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_656
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_657
	mov	rdi, rbx
	call	free
.label_657:
	mov	rdi, r14
	call	xcharalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_656:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_652:
	call	abort
.label_654:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081f0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408200
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408210
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	16
	#Procedure 0x408220

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408260

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_659
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_659:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082c0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408300
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408320
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408340

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_660]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_661]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083e0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408430

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408440

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_660]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_661]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4084d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084f0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408500
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x408510

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408520

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408530

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_664
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_663
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_664
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_664
.label_663:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_665
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_664
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_664
.label_665:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_664:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408610

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_667
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_668
	jmp	.label_666
.label_667:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_666
.label_668:
	mov	eax, 1
	test	bpl, bpl
	je	.label_666
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_666:
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
	.align	16
	#Procedure 0x4086a0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_671
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_669
	jmp	.label_670
.label_671:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_670
.label_669:
	mov	eax, 1
	test	bpl, bpl
	je	.label_670
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_670:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_673
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_674
	jmp	.label_672
.label_673:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_672
.label_674:
	mov	eax, 1
	test	bpl, bpl
	je	.label_672
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_672:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4087b0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_677
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_676
	jmp	.label_675
.label_677:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_675
.label_676:
	mov	eax, 1
	test	bpl, bpl
	je	.label_675
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
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
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408820

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_680
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_678
	jmp	.label_679
.label_680:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_679
.label_678:
	mov	eax, 1
	test	bpl, bpl
	je	.label_679
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_679:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408890

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_682
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_683
	jmp	.label_681
.label_682:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_681
.label_683:
	mov	eax, 1
	test	bpl, bpl
	je	.label_681
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_681:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4088e0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_686
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_685
	jmp	.label_684
.label_686:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_684
.label_685:
	mov	eax, 1
	test	bpl, bpl
	je	.label_684
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_684:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408930

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_689
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_688
	jmp	.label_687
.label_689:
	mov	eax, 1
	test	cl, cl
	je	.label_687
.label_688:
	xor	eax, eax
.label_687:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408960
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408970
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408980
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408990
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089a0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089b0
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089c0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089d0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4089e0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a00

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_690
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_699
.label_690:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_693
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_695]]
.label_996:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_693:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_692
.label_997:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_998:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_999:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_696
.label_1000:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_691
.label_1001:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_698
.label_1002:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_698:
	mov	qword ptr [rsp + 0x10], rdi
.label_691:
	mov	qword ptr [rsp + 8], rsi
.label_696:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_694
.label_1004:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_692:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_697
.label_1003:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_697:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_694:
	call	__fprintf_chk
.label_995:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cf0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_700:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_700
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_702:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_701
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_703
	nop	dword ptr [rax]
.label_701:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_703:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_704
	inc	r9
	cmp	r9, 0xa
	jb	.label_702
.label_704:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408d80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_705
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_705:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408e90

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_706
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_706:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ec0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_707
	test	rax, rax
	je	.label_708
.label_707:
	pop	rbx
	ret	
.label_708:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ee0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_709
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_709:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_710
	test	rbx, rbx
	jne	.label_710
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_710:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_712
	test	rax, rax
	je	.label_711
.label_712:
	pop	rbx
	ret	
.label_711:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408f40

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_713
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_716
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_714
.label_713:
	test	rcx, rcx
	jne	.label_717
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_717:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_715
.label_714:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_716:
	call	xalloc_die
.label_715:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fc0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fd0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fe0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409010
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_718
	call	rpl_calloc
	test	rax, rax
	je	.label_718
	pop	rcx
	ret	
.label_718:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409040

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409070
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409090

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4090c0

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
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	cmp	eax, 3
	je	.label_722
	cmp	eax, 1
	je	.label_725
	test	eax, eax
	jne	.label_719
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jl	.label_724
	cmp	rbx, r15
	jle	.label_723
.label_724:
	cmp	rbx, 0x40000000
	jl	.label_720
.label_725:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_719
.label_722:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_719:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_723:
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_720:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_721
	mov	dword ptr [rax], 0x4b
	jmp	.label_719
.label_721:
	mov	dword ptr [rax], 0x22
	jmp	.label_719
	nop	
	.section	.text
	.align	16
	#Procedure 0x409190

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091c0

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
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_739
	test	rsi, rsi
	lea	r13, [rsp + 0x10]
	cmovne	r13, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	call	strtoimax
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	je	.label_729
	mov	eax, dword ptr [rbx]
	xor	r12d, r12d
	test	eax, eax
	je	.label_733
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_728
	mov	r12d, 1
.label_733:
	test	r15, r15
	jne	.label_738
	jmp	.label_744
.label_729:
	mov	r12d, 4
	test	r15, r15
	je	.label_728
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_728
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_728
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_738:
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_744
	mov	rdi, r15
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_732
	mov	esi, 0x400
	mov	ebp, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_726
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_726
	mov	esi, 0x30
	mov	rdi, r15
	call	strchr
	mov	ebp, 1
	test	rax, rax
	je	.label_741
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebp, 1
	cmp	ecx, 0x42
	je	.label_743
	cmp	ecx, 0x44
	je	.label_743
	cmp	ecx, 0x69
	jne	.label_746
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	mov	esi, 0x400
	je	.label_726
	mov	ebp, 1
	jmp	.label_726
.label_741:
	mov	esi, 0x400
	jmp	.label_726
.label_743:
	mov	esi, 0x3e8
	mov	ebp, 2
	jmp	.label_726
.label_746:
	mov	esi, 0x400
.label_726:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_734
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_735
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_736]]
.label_952:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_745
.label_734:
	cmp	eax, 0x73
	jg	.label_740
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_742
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_730]]
.label_940:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_745
.label_735:
	cmp	eax, 0x54
	je	.label_731
	cmp	eax, 0x59
	jne	.label_732
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_727
.label_740:
	cmp	eax, 0x74
	je	.label_731
	cmp	eax, 0x77
	jne	.label_732
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_745:
	call	bkm_scale
	jmp	.label_727
.label_941:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_727
.label_942:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_727
.label_943:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_727
.label_731:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_727
.label_742:
	cmp	eax, 0x5a
	jne	.label_732
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_727
.label_732:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_728
.label_953:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_727
.label_954:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_727:
	or	eax, r12d
	mov	rcx, qword ptr [r13]
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	cmp	byte ptr [rcx + rbp], 0
	je	.label_737
	or	eax, 2
.label_737:
	mov	r12d, eax
.label_744:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_728:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_739:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409490

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_747
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_747:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_748
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_748:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094e0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_749
	nop	word ptr cs:[rax + rax]
.label_750:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_750
.label_749:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409520

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_759
	test	rsi, rsi
	lea	r13, [rsp + 0x10]
	cmovne	r13, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	call	strtol
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	je	.label_769
	mov	eax, dword ptr [rbx]
	xor	r12d, r12d
	test	eax, eax
	je	.label_770
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_751
	mov	r12d, 1
.label_770:
	test	r15, r15
	jne	.label_757
	jmp	.label_764
.label_769:
	mov	r12d, 4
	test	r15, r15
	je	.label_751
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_751
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_751
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_757:
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_764
	mov	rdi, r15
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_768
	mov	esi, 0x400
	mov	ebp, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_753
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_753
	mov	esi, 0x30
	mov	rdi, r15
	call	strchr
	mov	ebp, 1
	test	rax, rax
	je	.label_761
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebp, 1
	cmp	ecx, 0x42
	je	.label_763
	cmp	ecx, 0x44
	je	.label_763
	cmp	ecx, 0x69
	jne	.label_765
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	mov	esi, 0x400
	je	.label_753
	mov	ebp, 1
	jmp	.label_753
.label_761:
	mov	esi, 0x400
	jmp	.label_753
.label_763:
	mov	esi, 0x3e8
	mov	ebp, 2
	jmp	.label_753
.label_765:
	mov	esi, 0x400
.label_753:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_771
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_754
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_755]]
.label_957:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_758
.label_771:
	cmp	eax, 0x73
	jg	.label_760
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_762
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_766]]
.label_966:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_758
.label_754:
	cmp	eax, 0x54
	je	.label_767
	cmp	eax, 0x59
	jne	.label_768
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power_0
	jmp	.label_752
.label_760:
	cmp	eax, 0x74
	je	.label_767
	cmp	eax, 0x77
	jne	.label_768
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_758:
	call	bkm_scale_0
	jmp	.label_752
.label_959:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power_0
	jmp	.label_752
.label_960:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power_0
	jmp	.label_752
.label_961:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power_0
	jmp	.label_752
.label_767:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power_0
	jmp	.label_752
.label_762:
	cmp	eax, 0x5a
	jne	.label_768
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power_0
	jmp	.label_752
.label_768:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_751
.label_958:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power_0
	jmp	.label_752
.label_962:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power_0
.label_752:
	or	eax, r12d
	mov	rcx, qword ptr [r13]
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	cmp	byte ptr [rcx + rbp], 0
	je	.label_756
	or	eax, 2
.label_756:
	mov	r12d, eax
.label_764:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_751:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_759:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097f0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_772
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_772:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_773
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_773:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409840

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_774
	nop	word ptr cs:[rax + rax]
.label_775:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebx, eax
	dec	ebp
	jne	.label_775
.label_774:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409880

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098a0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	r14, r8
	mov	eax, esi
	dec	edi
	cmp	edi, 4
	jae	.label_776
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_777]]
	cdqe	
	test	eax, eax
	js	.label_778
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:.str_7
	jmp	.label_779
.label_778:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:.str_7
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_779:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	mov	r9, r14
	call	error
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_776:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409930

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_792
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_780:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_780
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_782
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_794
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_795
	cmp	eax, 0x22
	jne	.label_782
	mov	r12d, 1
.label_795:
	test	rbp, rbp
	jne	.label_799
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_802
.label_794:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_782
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_782
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_782
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_799:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_793
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_784
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_798
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_803
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_785
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_789
	cmp	ecx, 0x44
	je	.label_789
	cmp	ecx, 0x69
	jne	.label_785
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_785
	mov	r14d, 1
	jmp	.label_785
.label_789:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_785:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_797
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_800
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_804]]
.label_1079:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_786
.label_797:
	cmp	eax, 0x73
	jg	.label_790
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_783
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_788]]
.label_1008:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_786
.label_800:
	cmp	eax, 0x54
	je	.label_791
	cmp	eax, 0x59
	jne	.label_784
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_781
.label_790:
	cmp	eax, 0x74
	je	.label_791
	cmp	eax, 0x77
	jne	.label_784
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_786:
	call	bkm_scale_1
	jmp	.label_801
.label_1009:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_781
.label_1010:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_781
.label_1011:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_781
.label_791:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_781
.label_783:
	cmp	eax, 0x5a
	jne	.label_784
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_781
.label_784:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_787
.label_1080:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_781
.label_1081:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_781:
	mov	esi, r15d
	call	bkm_scale_by_power_1
.label_801:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_796
	or	eax, 2
.label_796:
	mov	r12d, eax
.label_793:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_802:
	mov	qword ptr [rcx], rax
.label_787:
	mov	r15d, r12d
.label_782:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_798:
	mov	rbx, r13
	jmp	.label_785
.label_803:
	mov	rbx, r13
	jmp	.label_785
.label_792:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c40

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c70

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_805
	nop	word ptr cs:[rax + rax]
.label_806:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_1
	or	ebx, eax
	dec	ebp
	jne	.label_806
.label_805:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409cb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_807
	test	rsi, rsi
	mov	ecx, 1
	je	.label_808
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_808
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_807:
	mov	ecx, 1
.label_808:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_810
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_809
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_810
.label_809:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_810
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_811
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_811:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_810:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_812
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_812:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_818
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_814
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_817
	test	esi, esi
	jne	.label_818
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_820
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_822
.label_818:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_815
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_817
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_821
.label_814:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_817:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_824
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_813
.label_824:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_813:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_821:
	cmp	eax, 6
	jne	.label_815
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_816
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_819
.label_815:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_823
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_825
.label_820:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_822:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_816:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_819:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_823:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_825:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f90

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409fa0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_826
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_828
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_828
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_829
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_830
.label_828:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_830
.label_826:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_830:
	test	ebx, ebx
	js	.label_829
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_829
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_827
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_829
.label_827:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_829:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a070

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_831
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_831
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_831:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0a0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_832
	ret	
.label_832:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a0c0

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
	jne	.label_833
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_833
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_834
.label_833:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_834:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_835
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_835:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a130

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
	je	.label_836
	cmp	r15, -2
	jb	.label_836
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_836
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_836:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a190

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_837
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_837:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_838
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_838
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_838:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a200

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a220

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_839
	nop	word ptr [rax + rax]
.label_840:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_840
.label_839:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a250

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
	je	.label_844
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_843
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_841
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_841:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_842
.label_844:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_843:
	xor	eax, eax
.label_842:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2e0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_847
	test	cl, cl
	je	.label_846
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_846
	jmp	.label_845
.label_847:
	mov	eax, 1
	test	cl, cl
	je	.label_845
.label_846:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_845
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_848
	mov	rax, rbx
	jmp	.label_845
.label_848:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_845:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a360

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
	mov	r13b, 1
	test	rbx, rbx
	je	.label_850
	cmp	r15, rbx
	ja	.label_849
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_850
.label_849:
	mov	r14d, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_853
	lea	r14, [r12 + 9]
	jmp	.label_855
.label_860:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_855:
	lea	r13, [r12 + 9]
	nop	dword ptr [rax]
.label_859:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_852
	cmp	byte ptr [r14], 0
	jne	.label_856
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_854
	cmp	byte ptr [r12 + 8], 0
	je	.label_854
.label_856:
	mov	rdi, r14
	call	strlen
	lea	rcx, [rax + r14 + 1]
	cmp	byte ptr [rax + r14 + 1], 0
	mov	r14, rcx
	jne	.label_859
	jmp	.label_860
.label_852:
	mov	r13b, 1
.label_853:
	mov	qword ptr [r15 + 0x30], r14
.label_850:
	mov	al, r13b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_854:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	mov	r13b, 1
	jbe	.label_858
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_850
.label_858:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_851
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
	jmp	.label_853
.label_851:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	je	.label_857
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_853
.label_857:
	xor	r13d, r13d
	jmp	.label_850
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a480

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_861
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4d0

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
	je	.label_865
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_864
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_863
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_867
	lea	rsi, [rsp]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_867
.label_863:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_867
	mov	qword ptr [rsp + 0x38], -1
.label_867:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_864
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_866
.label_864:
	mov	rax, -1
.label_866:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_865:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a580

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	eax, al
	or	eax, ebx
	sete	al
	movzx	eax, al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5d0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:.str
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5e0

	.globl change_env
	.type change_env, @function
change_env:
	cmp	byte ptr [rdi + 8], 0
	je	.label_868
	add	rdi, 9
	jmp	.label_870
.label_868:
	xor	edi, edi
.label_870:
	push	rax
	call	setenv_TZ
	test	eax, eax
	je	.label_869
	xor	eax, eax
	pop	rcx
	ret	
.label_869:
	call	tzset
	mov	al, 1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a610

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:.str
	test	rax, rax
	je	.label_871
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_871:
	jmp	unsetenv
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a630

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a650
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
	#Procedure 0x40a680
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
	#Procedure 0x40a6a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6b0
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
	#Procedure 0x40a6c0
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
	#Procedure 0x40a6e0
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
	#Procedure 0x40a6f0
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
	#Procedure 0x40a700
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
	#Procedure 0x40a710
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
	#Procedure 0x40a720
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
	#Procedure 0x40a750
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
	#Procedure 0x40a770

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
	#Procedure 0x40a780
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
	#Procedure 0x40a7a0
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
	#Procedure 0x40a7b0
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
	#Procedure 0x40a7c0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_881
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_882
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_882
.label_881:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_882
	test	cl, cl
	jne	.label_882
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_882:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a830

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_883
	mov	rax, rcx
.label_883:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a860

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x40a930

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
