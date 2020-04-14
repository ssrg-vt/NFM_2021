	.section	.text
	.align	32
	#Procedure 0x401b80

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
	mov	r14d, edi
	mov	qword ptr [rsp + 0x40], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str
	call	setlocale
	mov	edi, OFFSET FLAT:.str.1
	mov	esi, OFFSET FLAT:.str.2
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.1
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r13d, r13d
	cmp	r14d, 2
	mov	r12d, 0
	jl	.label_8
	movsxd	rax, r14d
	lea	rdi, [rax*8 - 8]
	call	xmalloc
	mov	r12, rax
.label_8:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	lea	r8, [rsp + 0x3c]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_11
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x30], r14
	xor	r14d, r14d
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_13
	nop	
.label_49:
	cmp	ebp, 0x43
	jle	.label_23
	add	ebp, -0x44
	cmp	ebp, 0x3d
	ja	.label_26
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_28]]
.label_1308:
	mov	byte ptr [byte ptr [rip + use_form_feed]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_23:
	cmp	ebp, 1
	jne	.label_45
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_7
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2b
	jne	.label_7
	inc	rdx
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	test	al, al
	jne	.label_38
.label_7:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	ecx, ebx
	inc	ebx
	mov	qword ptr [r12 + rcx*8], rax
.label_38:
	xor	r15d, r15d
	jmp	.label_10
.label_1307:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + date_format]],  rax
	xor	r15d, r15d
	jmp	.label_10
.label_1309:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1310:
	mov	byte ptr [byte ptr [rip + skip_count]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, -0x80000000
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + start_line_num]],  eax
	jmp	.label_10
.label_1311:
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str
	mov	dword ptr [dword ptr [rip + col_sep_length]],  0
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_22
	mov	rdi, rbp
	call	strlen
	test	rax, -0x80000000
	jne	.label_20
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	jmp	.label_10
.label_1312:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  0
	xor	r15d, r15d
	jmp	.label_10
.label_1313:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r15d, r15d
	jmp	.label_10
.label_1314:
	mov	byte ptr [byte ptr [rip + print_across_flag]],  1
	jmp	.label_53
.label_1315:
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1316:
	mov	byte ptr [byte ptr [rip + use_cntrl_prefix]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1317:
	mov	byte ptr [byte ptr [rip + double_space]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1318:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_16
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_16:
	mov	byte ptr [byte ptr [rip + untabify_input]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1319:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + custom_header]],  rax
	xor	r15d, r15d
	jmp	.label_10
.label_1320:
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
	jmp	.label_10
.label_1321:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + lines_per_page]],  eax
	jmp	.label_10
.label_1322:
	mov	byte ptr [byte ptr [rip + parallel_files]],  1
.label_53:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1323:
	mov	byte ptr [byte ptr [rip + numbered_lines]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	test	rdi, rdi
	je	.label_10
	mov	esi, 0x6e
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	xor	r15d, r15d
	jmp	.label_10
.label_1324:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + chars_per_margin]],  eax
	jmp	.label_10
.label_1325:
	mov	byte ptr [byte ptr [rip + ignore_failed_opens]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1326:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_34
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	xor	al, 1
	test	al, 1
	je	.label_34
	mov	rdi, rbp
	call	strlen
	test	rax, -0x80000000
	jne	.label_20
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	r15d, r15d
.label_34:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_10
.label_1327:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1328:
	mov	byte ptr [byte ptr [rip + use_esc_sequence]],  1
	xor	r15d, r15d
	jmp	.label_10
.label_1329:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	cl,  byte ptr [byte ptr [rip + truncate_lines]]
	and	cl, 1
	mov	cl, 1
	mov	qword ptr [rsp + 0x10], rcx
	jne	.label_17
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r15d, r15d
.label_17:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_10
.label_1330:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rdi, r13
	call	free
	mov	qword ptr [rsp + 0x40], 0
	xor	r13d, r13d
	jmp	.label_10
.label_1331:
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	test	rdx, rdx
	je	.label_43
	mov	edi, dword ptr [rsp + 0x3c]
	xor	r15d, r15d
	xor	esi, esi
	call	first_last_page
	test	al, al
	jne	.label_10
	jmp	.label_47
.label_22:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_10
	nop	dword ptr [rax]
.label_13:
	lea	eax, [rbp - 0x30]
	cmp	eax, 9
	ja	.label_49
	lea	r15, [r14 + 1]
	cmp	r15, qword ptr [rsp + 0x40]
	jb	.label_52
	mov	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	x2realloc
	mov	r13, rax
.label_52:
	mov	byte ptr [r13 + r14], bpl
	mov	byte ptr [r13 + r14 + 1], 0
.label_10:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x28]
	lea	r8, [rsp + 0x3c]
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, -1
	mov	r14, r15
	jne	.label_13
	test	r13, r13
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rdi, r13
	call	free
.label_25:
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_36
.label_11:
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
.label_36:
	cmp	qword ptr [word ptr [rip + date_format]],  0
	jne	.label_44
	mov	edi, OFFSET FLAT:.str.14
	call	getenv
	mov	ecx, OFFSET FLAT:.str.16
	test	rax, rax
	je	.label_46
	mov	edi, 2
	call	hard_locale
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.15
	test	al, al
	cmovne	rcx, rdx
.label_46:
	mov	qword ptr [word ptr [rip + date_format]],  rcx
.label_44:
	mov	edi, OFFSET FLAT:.str_0
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + localtz]],  rax
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_9
	mov	qword ptr [word ptr [rip + first_page_number]],  1
.label_9:
	mov	r8b,  byte ptr [byte ptr [rip + parallel_files]]
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 1
	jne	.label_14
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	je	.label_19
	movzx	eax,  byte ptr [byte ptr [rip + print_across_flag]]
	and	eax, 1
	cmp	eax, 1
	je	.label_24
.label_14:
	test	bpl, 1
	je	.label_18
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_30
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_18
	test	byte ptr [byte ptr [rip + use_col_separator]],  1
	jne	.label_18
	test	r8b, r8b
	jne	.label_39
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_18
.label_39:
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	and	al, 1
	jne	.label_35
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  0
	jg	.label_35
	jmp	.label_18
.label_30:
	test	r8b, r8b
	jne	.label_40
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_42
.label_40:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_18
.label_35:
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	jmp	.label_18
.label_42:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
.label_18:
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, r14d
	jge	.label_31
	mov	esi, r14d
	sub	esi, ecx
	lea	edx, [r14 - 1]
	sub	edx, ecx
	test	sil, 3
	je	.label_51
	movsxd	rcx, ecx
	and	esi, 3
	neg	esi
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	rax, qword ptr [r15 + rcx*8]
	mov	edi, ebx
	inc	ebx
	mov	qword ptr [r12 + rdi*8], rax
	inc	rcx
	inc	esi
	jne	.label_12
.label_51:
	cmp	edx, 3
	jb	.label_15
	mov	r9d, ecx
	lea	eax, [rcx + 3]
	cdqe	
	lea	r10, [r15 + rax*8]
	lea	eax, [rcx + 2]
	cdqe	
	lea	r11, [r15 + rax*8]
	movsxd	rax, ecx
	lea	rbp, [r15 + rax*8]
	inc	eax
	cdqe	
	lea	rdx, [r15 + rax*8]
	mov	ebx, ebx
	xor	eax, eax
.label_27:
	mov	rcx, qword ptr [rbp + rax*8]
	lea	rsi, [rbx + rax]
	mov	edi, esi
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [rdx + rax*8]
	lea	edi, [rsi + 1]
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [r11 + rax*8]
	lea	edi, [rsi + 2]
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [r10 + rax*8]
	add	esi, 3
	mov	qword ptr [r12 + rsi*8], rcx
	add	rax, 4
	lea	ecx, [r9 + rax]
	cmp	ecx, r14d
	jl	.label_27
	add	ebx, eax
.label_15:
	mov	dword ptr [dword ptr [rip + optind]],  ecx
.label_31:
	test	ebx, ebx
	je	.label_48
	test	r8b, r8b
	je	.label_37
	mov	edi, ebx
	mov	rsi, r12
	call	print_files
	jmp	.label_41
	nop	word ptr [rax + rax]
.label_37:
	mov	edi, 1
	mov	rsi, r12
	call	print_files
	add	r12, 8
	dec	ebx
	jne	.label_37
	jmp	.label_41
.label_48:
	xor	edi, edi
	xor	esi, esi
	call	print_files
.label_41:
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
	call	free
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_50
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_21
.label_50:
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
.label_45:
	cmp	ebp, 0xffffff7d
	je	.label_29
	cmp	ebp, 0xffffff7e
	jne	.label_26
	xor	edi, edi
	call	usage
.label_29:
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
.label_26:
	mov	edi, 1
	call	usage
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	jmp	.label_33
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	jmp	.label_33
.label_21:
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
	call	integer_overflow
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
.label_33:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_47:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402560

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
	mov	r8d, OFFSET FLAT:.str
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	or	ecx, 2
	cmp	ecx, 2
	jne	.label_59
	mov	rbp, qword ptr [rsp + 0x10]
	xor	eax, eax
	cmp	rbp, rbx
	je	.label_54
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_54
	movzx	edx, byte ptr [rbp]
	cmp	edx, 0x3a
	jne	.label_60
	inc	rbp
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rdi, rbp
	call	xstrtoumax
	test	eax, eax
	jne	.label_59
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	rbp, rdx
	je	.label_56
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	cmp	rax, rcx
	jae	.label_57
	xor	eax, eax
	jmp	.label_54
.label_60:
	mov	rax, -1
	jmp	.label_55
.label_56:
	xor	eax, eax
	jmp	.label_54
.label_57:
	mov	dl, byte ptr [rdx]
.label_55:
	test	dl, dl
	je	.label_58
	xor	eax, eax
	jmp	.label_54
.label_58:
	mov	qword ptr [word ptr [rip + first_page_number]],  rcx
	mov	qword ptr [word ptr [rip + last_page_number]],  rax
	mov	al, 1
.label_54:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402650

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
	jb	.label_62
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_62:
	test	al, al
	je	.label_63
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_61
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_61
	mov	dword ptr [rbp], ecx
.label_63:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_61:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	jg	.label_64
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_64:
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
	.align	32
	#Procedure 0x402720

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_65
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	je	.label_66
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_66
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.97
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_65:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_page]]
	mov	eax, ecx
	add	eax, -0xa
	mov	dword ptr [dword ptr [rip + lines_per_body]],  eax
	jle	.label_223
	movzx	edx,  byte ptr [byte ptr [rip + extremities]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_233
	jmp	.label_236
.label_223:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
.label_236:
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
	mov	eax, ecx
.label_233:
	movzx	ecx,  byte ptr [byte ptr [rip + double_space]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_240
	mov	ecx, eax
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
.label_240:
	test	r14d, r14d
	je	.label_248
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_249
	mov	dword ptr [dword ptr [rip + columns]],  r14d
	mov	al, 1
	jmp	.label_251
.label_248:
	mov	byte ptr [byte ptr [rip + parallel_files]],  0
	xor	eax, eax
	jmp	.label_251
.label_249:
	xor	eax, eax
.label_251:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	jne	.label_257
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
.label_257:
	mov	r8d,  dword ptr [dword ptr [rip + columns]]
	cmp	r8d, 2
	jl	.label_264
	mov	cl,  byte ptr [byte ptr [rip + use_col_separator]]
	and	cl, 1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	je	.label_267
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  1
	jne	.label_258
	mov	dl, cl
	xor	dl, 1
	test	dl, 1
	je	.label_258
	mov	rdx,  qword ptr [word ptr [rip + col_sep_string]]
	movzx	edx, byte ptr [rdx]
	cmp	edx, 9
	jne	.label_258
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str.70
	jmp	.label_258
.label_264:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	and	cl, 1
	jne	.label_280
	jmp	.label_187
.label_267:
	mov	edx, OFFSET FLAT:.str.69
	mov	esi, OFFSET FLAT:.str.70
	test	cl, 1
	cmovne	rsi, rdx
	mov	qword ptr [word ptr [rip + col_sep_string]],  rsi
	mov	dword ptr [dword ptr [rip + col_sep_length]],  1
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
.label_258:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	test	cl, 1
	je	.label_187
.label_280:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  0
.label_187:
	mov	r10b,  byte ptr [byte ptr [rip + numbered_lines]]
	and	r10b, 1
	xor	r11d, r11d
	movzx	edx, r10b
	cmp	edx, 1
	jne	.label_278
	mov	edx,  dword ptr [dword ptr [rip + start_line_num]]
	mov	dword ptr [dword ptr [rip + line_count]],  edx
	mov	edx,  dword ptr [dword ptr [rip + chars_per_number]]
	movzx	esi,  byte ptr [byte ptr [rip + number_separator]]
	cmp	esi, 9
	jne	.label_68
	mov	esi, edx
	sar	esi, 0x1f
	shr	esi, 0x1d
	add	esi, edx
	and	esi, 0xfffffff8
	mov	edi, edx
	sub	edi, esi
	neg	edi
	lea	edx, [rdx + rdi + 8]
	jmp	.label_74
.label_68:
	inc	edx
.label_74:
	mov	dword ptr [dword ptr [rip + number_width]],  edx
	xor	r11d, r11d
	test	al, al
	cmovne	r11d, edx
.label_278:
	mov	ebp,  dword ptr [dword ptr [rip + col_sep_length]]
	test	ebp, ebp
	js	.label_87
	je	.label_90
	test	r8d, r8d
	jle	.label_91
	lea	r9d, [r8 - 1]
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	ebp
	jmp	.label_92
.label_87:
	test	r8d, r8d
	jle	.label_97
	cmp	ebp, -1
	je	.label_90
	lea	r9d, [r8 - 1]
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
.label_92:
	cmp	eax, r9d
	jl	.label_104
	jmp	.label_90
.label_91:
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
	jmp	.label_106
.label_97:
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	ebp
.label_106:
	cmp	r8d, eax
	jle	.label_104
.label_90:
	lea	eax, [r8 - 1]
	imul	ebp, eax
	test	ebp, ebp
	js	.label_118
	mov	edi, ebp
.label_104:
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	edx, ecx
	sub	edx, r11d
	mov	esi, edi
	xor	esi, 0x80000000
	xor	eax, eax
	cmp	edx, esi
	mov	ebp, edi
	jl	.label_120
	jmp	.label_126
.label_118:
	lea	r9d, [rbp + 0x7fffffff]
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	esi, ecx
	sub	esi, r11d
	xor	eax, eax
	cmp	r9d, esi
	jl	.label_120
.label_126:
	sub	ecx, r11d
	sub	ecx, ebp
	mov	eax, ecx
.label_120:
	cdq	
	idiv	r8d
	mov	dword ptr [dword ptr [rip + chars_per_column]],  eax
	test	eax, eax
	jle	.label_134
	test	r10b, r10b
	je	.label_138
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	call	free
	movsxd	rax,  dword ptr [dword ptr [rip + chars_per_number]]
	cmp	rax, 0xb
	mov	edi, 0xb
	cmova	rdi, rax
	inc	rdi
	call	xmalloc
	mov	qword ptr [word ptr [rip + number_buff]],  rax
.label_138:
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	call	free
	mov	eax,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	cmp	eax, 8
	mov	ecx, 8
	cmovge	ecx, eax
	movsxd	rdi, ecx
	call	xmalloc
	mov	qword ptr [word ptr [rip + clump_buff]],  rax
	mov	dword ptr [dword ptr [rip + total_files]],  0
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	call	free
	movsxd	rdi,  dword ptr [dword ptr [rip + columns]]
	test	rdi, rdi
	js	.label_108
	shl	rdi, 6
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [word ptr [rip + column_vector]],  rbp
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	je	.label_163
	test	r14d, r14d
	jle	.label_171
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	call	open_file
	test	al, al
	je	.label_150
	mov	rbx, qword ptr [rbx]
	mov	rdi, qword ptr [rbp]
	call	fileno
	mov	rdi, rbx
	mov	esi, eax
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
	lea	rbx, [rbp + 8]
	jmp	.label_188
	nop	dword ptr [rax]
.label_201:
	add	rbp, 0x40
	add	rbx, 8
.label_163:
	test	r14d, r14d
	je	.label_197
	dec	r14d
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	call	open_file
	test	al, al
	jne	.label_201
	add	rbp, -0x40
	dec	dword ptr [dword ptr [rip + columns]]
	jmp	.label_201
.label_197:
	cmp	dword ptr [dword ptr [rip + columns]],  0
	je	.label_150
	mov	edi, OFFSET FLAT:.str
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_178
.label_171:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	lea	rbx, [rbp + 8]
	mov	qword ptr [rbp + 8], rax
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbp], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	edi, OFFSET FLAT:.str
	mov	esi, 0xffffffff
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
.label_188:
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	mov	eax, esi
	dec	eax
	je	.label_178
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbp]
	add	rbp, 0x40
	lea	edi, [rsi + 3]
	add	esi, -2
	test	dil, 3
	je	.label_227
	and	edi, 3
	neg	edi
	nop	word ptr [rax + rax]
.label_235:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	add	rbp, 0x40
	dec	eax
	inc	edi
	jne	.label_235
.label_227:
	cmp	esi, 3
	jb	.label_178
	add	rbp, 0xf9
	nop	word ptr cs:[rax + rax]
.label_250:
	mov	qword ptr [rbp - 0xf1], rcx
	mov	qword ptr [rbp - 0xf9], rdx
	mov	dword ptr [rbp - 0xe9], 0
	mov	byte ptr [rbp - 0xc0], 0
	mov	dword ptr [rbp - 0xcd], 0
	mov	qword ptr [rbp - 0xb1], rcx
	mov	qword ptr [rbp - 0xb9], rdx
	mov	dword ptr [rbp - 0xa9], 0
	mov	byte ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x8d], 0
	mov	qword ptr [rbp - 0x71], rcx
	mov	qword ptr [rbp - 0x79], rdx
	mov	dword ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x40], 0
	mov	dword ptr [rbp - 0x4d], 0
	mov	qword ptr [rbp - 0x31], rcx
	mov	qword ptr [rbp - 0x39], rdx
	mov	dword ptr [rbp - 0x29], 0
	mov	byte ptr [rbp], 0
	mov	dword ptr [rbp - 0xd], 0
	add	rbp, 0x100
	add	eax, -4
	jne	.label_250
.label_178:
	mov	eax,  dword ptr [dword ptr [rip + total_files]]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_182
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	js	.label_291
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	je	.label_225
	test	r14d, r14d
	js	.label_293
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_295
.label_291:
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	test	r14d, r14d
	js	.label_161
	cmp	ecx, -1
	je	.label_225
	mov	eax, 0x80000000
	cdq	
.label_295:
	idiv	ecx
	cmp	eax, r14d
	jge	.label_225
	jmp	.label_71
.label_293:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_67
.label_161:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_67:
	idiv	ecx
	cmp	r14d, eax
	jl	.label_71
.label_225:
	imul	r14d, ecx
	cmp	r14d, 0x7fffffff
	je	.label_71
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	cmp	ebp, 0x7fffffff
	je	.label_71
	inc	ebp
	js	.label_81
	test	ebp, ebp
	je	.label_83
	test	r14d, r14d
	js	.label_84
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_175
.label_81:
	test	r14d, r14d
	js	.label_192
	cmp	ebp, -1
	je	.label_83
	mov	eax, 0x80000000
	cdq	
.label_175:
	idiv	ebp
	cmp	eax, r14d
	jge	.label_83
	jmp	.label_71
.label_84:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_98
.label_192:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_98:
	idiv	ebp
	cmp	r14d, eax
	jl	.label_71
.label_83:
	lea	ebx, [r14 + 1]
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	call	free
	test	ebx, ebx
	js	.label_108
	movsxd	rdi, ebx
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + line_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	test	r14d, r14d
	js	.label_108
	imul	ebp, r14d
	movsxd	rdi, r14d
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + end_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	call	free
	movsxd	rbx, ebp
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	and	al, 1
	movabs	rcx, 0x3fffffffffffffff
	movabs	rdx, 0x7fffffffffffffff
	cmovne	rdx, rcx
	cmp	rdx, rbx
	jb	.label_108
	movzx	edi, al
	inc	rdi
	imul	rdi, rbx
	call	xmalloc
	mov	qword ptr [word ptr [rip + buff]],  rax
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	inc	rax
	imul	rax, rbx
	mov	qword ptr [word ptr [rip + buff_allocated]],  rax
.label_182:
	mov	r14,  qword ptr [word ptr [rip + first_page_number]]
	mov	eax, 1
	cmp	r14, 2
	jb	.label_149
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	r15d, 1
	nop	dword ptr [rax]
.label_282:
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	r12d, 1
	cmp	ecx, 1
	jle	.label_116
	nop	word ptr cs:[rax + rax]
.label_230:
	test	eax, eax
	jle	.label_155
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
.label_170:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_212
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_212:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_170
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
.label_155:
	inc	r12d
	cmp	r12d, ecx
	jl	.label_230
.label_116:
	mov	byte ptr [byte ptr [rip + last_line]],  1
	test	eax, eax
	jle	.label_181
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	dword ptr [rax]
.label_195:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_189
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_189:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_195
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	test	eax, eax
	jle	.label_200
	test	cl, 1
	jne	.label_200
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	edx, [rax - 1]
	mov	esi, 1
	test	al, 3
	je	.label_203
	mov	edi, eax
	and	edi, 3
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_214:
	mov	esi, ebp
	cmp	dword ptr [rcx + 0x10], 3
	je	.label_211
	mov	dword ptr [rcx + 0x10], 2
.label_211:
	add	rcx, 0x40
	lea	ebp, [rsi + 1]
	cmp	edi, ebp
	jne	.label_214
	add	esi, 2
.label_203:
	cmp	edx, 3
	jae	.label_216
	xor	ecx, ecx
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	jmp	.label_200
.label_216:
	lea	edx, [rax + 1]
	sub	edx, esi
	add	rcx, 0xd0
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	dword ptr [rcx - 0xc0], 3
	je	.label_292
	mov	dword ptr [rcx - 0xc0], 2
.label_292:
	cmp	dword ptr [rcx - 0x80], 3
	je	.label_229
	mov	dword ptr [rcx - 0x80], 2
.label_229:
	cmp	dword ptr [rcx - 0x40], 3
	je	.label_232
	mov	dword ptr [rcx - 0x40], 2
.label_232:
	cmp	dword ptr [rcx], 3
	je	.label_234
	mov	dword ptr [rcx], 2
.label_234:
	add	rcx, 0x100
	add	edx, -4
	jne	.label_237
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rdx,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	je	.label_165
	test	al, 1
	mov	rsi, rdx
	mov	edi, eax
	je	.label_243
	cmp	dword ptr [rdx + 0x10], 2
	jne	.label_245
	mov	dword ptr [rdx + 0x10], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_245:
	lea	edi, [rax - 1]
	lea	rsi, [rdx + 0x40]
.label_243:
	cmp	eax, 1
	je	.label_165
	add	rsi, 0x50
	nop	word ptr [rax + rax]
.label_297:
	cmp	dword ptr [rsi - 0x40], 2
	jne	.label_253
	mov	dword ptr [rsi - 0x40], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_253:
	cmp	dword ptr [rsi], 2
	jne	.label_261
	mov	dword ptr [rsi], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_261:
	add	rsi, 0x80
	add	edi, -2
	jne	.label_297
.label_165:
	test	cl, 1
	je	.label_82
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	mov	byte ptr [byte ptr [rip + last_line]],  0
	test	ecx, ecx
	jg	.label_271
	jmp	.label_274
	nop	dword ptr [rax + rax]
.label_82:
	cmp	dword ptr [rdx + 0x10], 3
	je	.label_276
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  1
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_271:
	inc	r15
	cmp	r15, r14
	jb	.label_282
	jmp	.label_285
.label_276:
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_274:
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
	cmp	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	jle	.label_150
.label_285:
	mov	rax,  qword ptr [word ptr [rip + first_page_number]]
.label_149:
	mov	qword ptr [word ptr [rip + page_number]],  rax
	mov	eax,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	r10b,  byte ptr [byte ptr [rip + truncate_lines]]
	and	r10b, 1
	xor	ebp, ebp
	movzx	ecx, r10b
	cmp	ecx, 1
	jne	.label_79
	movzx	ecx,  byte ptr [byte ptr [rip + parallel_files]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_72
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_72
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebp, eax
	add	ebp,  dword ptr [dword ptr [rip + number_width]]
	jmp	.label_79
.label_72:
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebp, eax
.label_79:
	mov	r14d,  dword ptr [dword ptr [rip + col_sep_length]]
	add	eax, r14d
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	edi, 1
	mov	sil,  byte ptr [byte ptr [rip + storing_columns]]
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_88
	mov	r11b,  byte ptr [byte ptr [rip + numbered_lines]]
	mov	r9b,  byte ptr [byte ptr [rip + parallel_files]]
	xor	r9b, 1
	mov	r15d,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	edi, OFFSET FLAT:print_char
	mov	r13d, OFFSET FLAT:store_char
	mov	edx, OFFSET FLAT:read_line
	mov	ebx, OFFSET FLAT:print_stored
	mov	cl, sil
	mov	dword ptr [rsp + 4], esi
	and	cl, 1
	cmovne	rbx, rdx
	test	cl, cl
	cmovne	r13, rdi
	mov	edi, 1
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	xor	ecx, ecx
	mov	rsi, r12
	nop	word ptr [rax + rax]
.label_132:
	mov	qword ptr [rsi + 0x20], r13
	mov	qword ptr [rsi + 0x18], rbx
	test	r11b, 1
	je	.label_122
	cmp	edi, 1
	sete	r8b
	or	r8b, r9b
	jmp	.label_127
	nop	word ptr [rax + rax]
.label_122:
	xor	r8d, r8d
.label_127:
	and	r8b, 1
	mov	byte ptr [rsi + 0x38], r8b
	mov	dword ptr [rsi + 0x34], eax
	add	ebp, r14d
	mov	eax, ebp
	lea	ebp, [rbp + r15]
	test	r10b, r10b
	cmove	eax, ecx
	cmove	ebp, ecx
	add	rsi, 0x40
	inc	edi
	cmp	edi, edx
	jl	.label_132
	jmp	.label_142
.label_88:
	mov	dword ptr [rsp + 4], esi
	mov	rsi, r12
.label_142:
	mov	ebp, dword ptr [rsp + 4]
	test	bpl, 1
	jne	.label_144
	movzx	ecx,  byte ptr [byte ptr [rip + balance_columns]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_144
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:store_char
	mov	qword ptr [word ptr [rsi + 24]], OFFSET FLAT:print_stored
	jmp	.label_148
.label_144:
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:print_char
	mov	qword ptr [word ptr [rsi + 24]], OFFSET FLAT:read_line
.label_148:
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_154
	mov	cl,  byte ptr [byte ptr [rip + parallel_files]]
	cmp	edi, 1
	sete	dl
	xor	cl, 1
	or	cl, dl
	jmp	.label_157
.label_154:
	xor	ecx, ecx
.label_157:
	and	cl, 1
	mov	byte ptr [rsi + 0x38], cl
	mov	dword ptr [rsi + 0x34], eax
	mov	eax,  dword ptr [dword ptr [rip + line_count]]
	mov	dword ptr [dword ptr [rip + line_number]],  eax
	jmp	.label_140
	nop	word ptr [rax + rax]
.label_221:
	cmp	dword ptr [r12 + 0x10], 3
	setne	al
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	xor	ebp, ebp
.label_140:
	test	bpl, 1
	je	.label_169
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	jmp	.label_172
	nop	word ptr cs:[rax + rax]
.label_169:
	mov	dword ptr [dword ptr [rip + buff_current]],  0
	mov	r8b,  byte ptr [byte ptr [rip + balance_columns]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	mov	dl, r8b
	not	dl
	movzx	edx, dl
	and	edx, 1
	mov	r14d, ecx
	sub	r14d, edx
	test	r14d, r14d
	jle	.label_180
	lea	esi, [r14 - 1]
	mov	edi, 1
	test	r14b, 7
	mov	rdx, r12
	je	.label_193
	mov	dl, r8b
	inc	dl
	movzx	edx, dl
	and	edx, 1
	mov	ebp, ecx
	sub	ebp, edx
	and	ebp, 7
	xor	ebx, ebx
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_205:
	mov	edi, ebx
	mov	dword ptr [rdx + 0x2c], 0
	add	rdx, 0x40
	lea	ebx, [rdi + 1]
	cmp	ebp, ebx
	jne	.label_205
	add	edi, 2
.label_193:
	cmp	esi, 7
	jb	.label_208
	add	rdx, 0x1ec
	mov	al, r8b
	inc	al
	movzx	eax, al
	and	eax, 1
	sub	ecx, eax
	inc	ecx
	sub	ecx, edi
	nop	word ptr cs:[rax + rax]
.label_218:
	mov	dword ptr [rdx - 0x1c0], 0
	mov	dword ptr [rdx - 0x180], 0
	mov	dword ptr [rdx - 0x140], 0
	mov	dword ptr [rdx - 0x100], 0
	mov	dword ptr [rdx - 0xc0], 0
	mov	dword ptr [rdx - 0x80], 0
	mov	dword ptr [rdx - 0x40], 0
	mov	dword ptr [rdx], 0
	add	rdx, 0x200
	add	ecx, -8
	jne	.label_218
.label_208:
	test	r14d, r14d
	jle	.label_180
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ecx, ecx
	je	.label_180
	mov	r15d, 1
	xor	eax, eax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	dword ptr [r12 + 0x28], r13d
	test	ecx, ecx
	je	.label_184
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	test	esi, esi
	je	.label_184
	mov	edx, dword ptr [r12 + 0x10]
	mov	ebx, 1
	sub	ebx, esi
	mov	ebp, eax
	nop	dword ptr [rax]
.label_284:
	test	edx, edx
	je	.label_252
	mov	eax, ebp
	jmp	.label_85
	nop	dword ptr [rax + rax]
.label_252:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	mov	rdi, r12
	call	read_line
	test	al, al
	jne	.label_260
	mov	rdi, r12
	call	read_rest_of_line
.label_260:
	mov	edx, dword ptr [r12 + 0x10]
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	test	edx, edx
	je	.label_265
	cmp	ebp, eax
	jne	.label_265
	mov	eax, ebp
	jmp	.label_85
.label_265:
	inc	dword ptr [r12 + 0x2c]
	mov	ecx, r13d
	mov	rsi,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rsi + rcx*4], ebp
	mov	esi,  dword ptr [dword ptr [rip + input_position]]
	inc	r13d
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	mov	dword ptr [rdi + rcx*4], esi
	nop	word ptr [rax + rax]
.label_85:
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ebx, ebx
	je	.label_184
	inc	ebx
	test	ecx, ecx
	mov	ebp, eax
	jne	.label_284
.label_184:
	cmp	r15d, r14d
	jge	.label_286
	inc	r15d
	add	r12, 0x40
	test	ecx, ecx
	jne	.label_287
.label_286:
	mov	cl,  byte ptr [byte ptr [rip + balance_columns]]
	and	cl, 1
	mov	ecx, r13d
	mov	rdx,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rdx + rcx*4], eax
	jne	.label_290
	xor	r8d, r8d
	jmp	.label_294
	nop	word ptr [rax + rax]
.label_180:
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rax], 0
	xor	r13d, r13d
	test	r8b, 1
	mov	r8d, 0
	je	.label_294
.label_290:
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	r8b, 1
	test	edi, edi
	jle	.label_294
	mov	rsi,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rsi, 0x2c
	xor	ebp, ebp
	xor	ebx, ebx
	nop	
.label_289:
	mov	eax, r13d
	cdq	
	idiv	edi
	inc	ebp
	cmp	ebp, edx
	setle	dl
	movzx	edx, dl
	add	edx, eax
	mov	dword ptr [rsi], edx
	mov	dword ptr [rsi - 4], ebx
	add	ebx, edx
	add	rsi, 0x40
	cmp	ebp, ecx
	mov	edi, ecx
	jl	.label_289
.label_294:
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	eax, edi
	dec	eax
	mov	rcx, r12
	je	.label_166
	lea	edx, [rdi - 2]
	add	edi, 7
	test	dil, 7
	je	.label_93
	and	edi, 7
	neg	edi
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	ecx, dword ptr [rsi + 0x2c]
	mov	dword ptr [rsi + 0x30], ecx
	add	rsi, 0x40
	dec	eax
	inc	edi
	jne	.label_102
	jmp	.label_105
.label_93:
	mov	rsi, r12
.label_105:
	cmp	edx, 7
	jb	.label_107
	add	rsi, 0x1f0
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	ecx, dword ptr [rsi - 0x1c4]
	mov	dword ptr [rsi - 0x1c0], ecx
	mov	ecx, dword ptr [rsi - 0x184]
	mov	dword ptr [rsi - 0x180], ecx
	mov	ecx, dword ptr [rsi - 0x144]
	mov	dword ptr [rsi - 0x140], ecx
	mov	ecx, dword ptr [rsi - 0x104]
	mov	dword ptr [rsi - 0x100], ecx
	mov	ecx, dword ptr [rsi - 0xc4]
	mov	dword ptr [rsi - 0xc0], ecx
	mov	ecx, dword ptr [rsi - 0x84]
	mov	dword ptr [rsi - 0x80], ecx
	mov	ecx, dword ptr [rsi - 0x44]
	mov	dword ptr [rsi - 0x40], ecx
	mov	ecx, dword ptr [rsi - 4]
	mov	dword ptr [rsi], ecx
	add	rsi, 0x200
	add	eax, -8
	jne	.label_115
.label_107:
	mov	eax, edx
	shl	rax, 6
	lea	rcx, [rax + r12 + 0x40]
.label_166:
	test	r8b, r8b
	je	.label_141
	mov	eax, dword ptr [rcx + 0x2c]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_143
	nop	word ptr [rax + rax]
.label_141:
	cmp	dword ptr [rcx + 0x10], 0
	je	.label_147
	mov	dword ptr [rcx + 0x30], 0
	jmp	.label_143
.label_147:
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_143
.label_172:
	test	eax, eax
	je	.label_150
	mov	ebp,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	esi, [rax - 1]
	test	al, 3
	je	.label_152
	mov	edi, eax
	and	edi, 3
	neg	edi
	mov	rdx, r12
	nop	
.label_159:
	cmp	dword ptr [rdx + 0x10], 0
	mov	ecx, ebp
	je	.label_158
	xor	ecx, ecx
.label_158:
	mov	dword ptr [rdx + 0x30], ecx
	dec	eax
	add	rdx, 0x40
	inc	edi
	jne	.label_159
	jmp	.label_160
	nop	dword ptr [rax]
.label_152:
	mov	rdx, r12
.label_160:
	cmp	esi, 3
	jb	.label_143
	add	rdx, 0xf0
	nop	
.label_183:
	cmp	dword ptr [rdx - 0xe0], 0
	mov	ecx, ebp
	je	.label_164
	xor	ecx, ecx
.label_164:
	mov	dword ptr [rdx - 0xc0], ecx
	cmp	dword ptr [rdx - 0xa0], 0
	mov	ecx, ebp
	je	.label_168
	xor	ecx, ecx
.label_168:
	mov	dword ptr [rdx - 0x80], ecx
	cmp	dword ptr [rdx - 0x60], 0
	mov	ecx, ebp
	je	.label_174
	xor	ecx, ecx
.label_174:
	mov	dword ptr [rdx - 0x40], ecx
	cmp	dword ptr [rdx - 0x20], 0
	mov	ecx, ebp
	je	.label_179
	xor	ecx, ecx
.label_179:
	mov	dword ptr [rdx], ecx
	add	rdx, 0x100
	add	eax, -4
	jne	.label_183
.label_143:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_150
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	ecx, ecx
	test	al, 1
	mov	ebp, 0
	mov	rsi, r12
	je	.label_191
	cmp	dword ptr [r12 + 0x10], 2
	jb	.label_198
	xor	ecx, ecx
	test	dl, 1
	jne	.label_121
	cmp	dword ptr [r12 + 0x2c], 0
	jle	.label_121
	cmp	dword ptr [r12 + 0x30], 0
	jle	.label_121
	nop	dword ptr [rax]
.label_198:
	mov	ecx, 1
.label_121:
	lea	rsi, [r12 + 0x40]
	mov	ebp, 1
.label_191:
	cmp	eax, 1
	je	.label_207
	mov	edi, eax
	sub	edi, ebp
	add	rsi, 0x70
	nop	dword ptr [rax]
.label_222:
	cmp	dword ptr [rsi - 0x60], 2
	jb	.label_185
	test	dl, 1
	jne	.label_213
	cmp	dword ptr [rsi - 0x44], 0
	jle	.label_213
	cmp	dword ptr [rsi - 0x40], 0
	jle	.label_213
	nop	word ptr [rax + rax]
.label_185:
	inc	ecx
.label_213:
	cmp	dword ptr [rsi - 0x20], 2
	jb	.label_226
	test	dl, 1
	jne	.label_220
	cmp	dword ptr [rsi - 4], 0
	jle	.label_220
	cmp	dword ptr [rsi], 0
	jle	.label_220
	nop	dword ptr [rax + rax]
.label_226:
	inc	ecx
.label_220:
	add	rsi, 0x80
	add	edi, -2
	jne	.label_222
.label_207:
	test	ecx, ecx
	je	.label_150
	mov	cl,  byte ptr [byte ptr [rip + extremities]]
	and	cl, 1
	jne	.label_224
	mov	byte ptr [byte ptr [rip + print_a_header]],  1
.label_224:
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	ebx,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	cl,  byte ptr [byte ptr [rip + double_space]]
	and	cl, 1
	shl	ebx, cl
	xor	r15d, r15d
	test	ebx, ebx
	jg	.label_231
	jmp	.label_73
	nop	dword ptr [rax]
.label_177:
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
.label_231:
	test	al, 1
	mov	ecx, 0
	mov	ebp, 0
	mov	rsi, r12
	je	.label_241
	cmp	dword ptr [r12 + 0x10], 2
	jb	.label_244
	xor	ecx, ecx
	test	dl, 1
	jne	.label_246
	cmp	dword ptr [r12 + 0x2c], 0
	jle	.label_246
	cmp	dword ptr [r12 + 0x30], 0
	jle	.label_246
	nop	dword ptr [rax]
.label_244:
	mov	ecx, 1
.label_246:
	lea	rsi, [r12 + 0x40]
	mov	ebp, 1
.label_241:
	cmp	eax, 1
	je	.label_256
	mov	edi, eax
	sub	edi, ebp
	add	rsi, 0x70
	nop	dword ptr [rax]
.label_277:
	cmp	dword ptr [rsi - 0x60], 2
	jb	.label_259
	test	dl, 1
	jne	.label_263
	cmp	dword ptr [rsi - 0x44], 0
	jle	.label_263
	cmp	dword ptr [rsi - 0x40], 0
	jle	.label_263
	nop	word ptr [rax + rax]
.label_259:
	inc	ecx
.label_263:
	cmp	dword ptr [rsi - 0x20], 2
	jb	.label_270
	test	dl, 1
	jne	.label_272
	cmp	dword ptr [rsi - 4], 0
	jle	.label_272
	cmp	dword ptr [rsi], 0
	jle	.label_272
	nop	dword ptr [rax + rax]
.label_270:
	inc	ecx
.label_272:
	add	rsi, 0x80
	add	edi, -2
	jne	.label_277
.label_256:
	test	ecx, ecx
	je	.label_73
	mov	dword ptr [rsp + 4], ebx
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	byte ptr [byte ptr [rip + empty_line]],  1
	mov	r14d, 1
	test	eax, eax
	jle	.label_281
	nop	dword ptr [rax + rax]
.label_112:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbx, rax
	shr	rbx, 0x20
	test	eax, eax
	jg	.label_202
	cmp	dword ptr [r12 + 0x10], 1
	jne	.label_298
.label_202:
	mov	byte ptr [byte ptr [rip + FF_only]],  0
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	rdi, r12
	call	qword ptr [r12 + 0x18]
	test	al, al
	jne	.label_139
	mov	rdi, r12
	call	read_rest_of_line
.label_139:
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	and	r15b, 1
	or	r15b, r8b
	mov	rbx, qword ptr [r12 + 0x30]
	lea	eax, [rbx - 1]
	mov	dword ptr [r12 + 0x30], eax
	cmp	ebx, 1
	jg	.label_76
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	xor	eax, eax
	test	esi, esi
	je	.label_162
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	edi, edi
	test	sil, 1
	jne	.label_239
	xor	ebp, ebp
	jmp	.label_117
.label_239:
	cmp	dword ptr [rax + 0x10], 2
	jb	.label_95
	xor	edi, edi
	test	cl, 1
	jne	.label_101
	cmp	dword ptr [rax + 0x2c], 0
	jle	.label_101
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_101
.label_95:
	mov	edi, 1
.label_101:
	add	rax, 0x40
	mov	ebp, 1
.label_117:
	cmp	esi, 1
	je	.label_109
	mov	edx, esi
	sub	edx, ebp
	add	rax, 0x70
	nop	dword ptr [rax + rax]
.label_209:
	cmp	dword ptr [rax - 0x60], 2
	jb	.label_75
	test	cl, 1
	jne	.label_119
	cmp	dword ptr [rax - 0x44], 0
	jle	.label_119
	cmp	dword ptr [rax - 0x40], 0
	jle	.label_119
	nop	word ptr [rax + rax]
.label_75:
	inc	edi
.label_119:
	cmp	dword ptr [rax - 0x20], 2
	jb	.label_123
	test	cl, 1
	jne	.label_125
	cmp	dword ptr [rax - 4], 0
	jle	.label_125
	cmp	dword ptr [rax], 0
	jle	.label_125
	nop	dword ptr [rax + rax]
.label_123:
	inc	edi
.label_125:
	add	rax, 0x80
	add	edx, -2
	jne	.label_209
.label_109:
	test	edi, edi
	je	.label_279
.label_76:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_136
	mov	eax, dword ptr [r12 + 0x10]
	test	eax, eax
	je	.label_136
	movzx	ecx,  byte ptr [byte ptr [rip + empty_line]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_145
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_136
.label_298:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_136
	movzx	eax,  byte ptr [byte ptr [rip + empty_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_151
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_136
.label_145:
	cmp	eax, 3
	je	.label_124
	cmp	eax, 2
	jne	.label_136
	movzx	eax,  byte ptr [byte ptr [rip + FF_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_136
.label_124:
	shr	rbx, 0x20
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	r13d, ebx
	sub	r13d, eax
	jle	.label_153
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	jne	.label_194
	cmp	r13d, ecx
	jle	.label_77
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_176
.label_151:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	r13d, ebx
	sub	r13d, eax
	jle	.label_153
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_186
.label_194:
	sub	r13d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r13d
	jmp	.label_190
.label_199:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_89
	nop	
.label_176:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_199
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_89:
	dec	ebx
	jne	.label_176
	jmp	.label_77
.label_186:
	cmp	r13d, ecx
	jle	.label_77
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_206
.label_268:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_210
	nop	dword ptr [rax]
.label_206:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_268
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_210:
	dec	ebx
	jne	.label_206
.label_77:
	mov	dword ptr [dword ptr [rip + output_position]],  r13d
.label_190:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_153:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_247
	call	print_sep_string
.label_247:
	cmp	byte ptr [r12 + 0x38], 0
	je	.label_136
	mov	rdi, r12
	call	add_line_number
	nop	word ptr cs:[rax + rax]
.label_136:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_228
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
.label_228:
	add	r12, 0x40
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	cmp	r14d, eax
	lea	ecx, [r14 + 1]
	mov	r14d, ecx
	jl	.label_112
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	jmp	.label_162
	nop	dword ptr [rax + rax]
.label_281:
	mov	ebx, dword ptr [rsp + 4]
	jmp	.label_242
.label_279:
	mov	eax, esi
.label_162:
	test	r8b, r8b
	mov	ebx, dword ptr [rsp + 4]
	je	.label_242
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_196
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_86:
	dec	ebx
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_242:
	test	eax, eax
	je	.label_255
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	esi, esi
	test	al, 1
	jne	.label_254
	xor	edi, edi
	jmp	.label_262
	nop	dword ptr [rax + rax]
.label_254:
	cmp	dword ptr [rcx + 0x10], 2
	jb	.label_266
	xor	esi, esi
	test	dl, 1
	jne	.label_238
	cmp	dword ptr [rcx + 0x2c], 0
	jle	.label_238
	cmp	dword ptr [rcx + 0x30], 0
	jle	.label_238
.label_266:
	mov	esi, 1
.label_238:
	add	rcx, 0x40
	mov	edi, 1
.label_262:
	cmp	eax, 1
	je	.label_275
	sub	eax, edi
	add	rcx, 0x70
	nop	word ptr cs:[rax + rax]
.label_99:
	cmp	dword ptr [rcx - 0x60], 2
	jb	.label_130
	test	dl, 1
	jne	.label_100
	cmp	dword ptr [rcx - 0x44], 0
	jle	.label_100
	cmp	dword ptr [rcx - 0x40], 0
	jle	.label_100
	nop	word ptr [rax + rax]
.label_130:
	inc	esi
.label_100:
	cmp	dword ptr [rcx - 0x20], 2
	jb	.label_128
	test	dl, 1
	jne	.label_217
	cmp	dword ptr [rcx - 4], 0
	jle	.label_217
	cmp	dword ptr [rcx], 0
	jle	.label_217
	nop	dword ptr [rax + rax]
.label_128:
	inc	esi
.label_217:
	add	rcx, 0x80
	add	eax, -2
	jne	.label_99
.label_275:
	test	esi, esi
	jne	.label_283
.label_255:
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	jne	.label_73
.label_283:
	test	r15b, 1
	je	.label_288
	mov	al,  byte ptr [byte ptr [rip + double_space]]
	xor	al, 1
	test	al, 1
	jne	.label_288
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_299
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_80:
	dec	ebx
.label_288:
	test	ebx, ebx
	jle	.label_73
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	jne	.label_177
	jmp	.label_78
.label_299:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_80
.label_196:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_86
	nop	
.label_73:
	test	ebx, ebx
	jne	.label_78
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	xor	ebx, ebx
	test	eax, eax
	jle	.label_78
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	edx, [rax - 1]
	mov	esi, 1
	test	al, 3
	je	.label_94
	mov	edi, eax
	and	edi, 3
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	esi, ebp
	cmp	dword ptr [rcx + 0x10], 0
	jne	.label_269
	mov	byte ptr [rcx + 0x39], 1
.label_269:
	add	rcx, 0x40
	lea	ebp, [rsi + 1]
	cmp	edi, ebp
	jne	.label_110
	add	esi, 2
.label_94:
	cmp	edx, 3
	jb	.label_78
	add	rcx, 0xf9
	inc	eax
	sub	eax, esi
	nop	word ptr [rax + rax]
.label_204:
	cmp	dword ptr [rcx - 0xe9], 0
	jne	.label_103
	mov	byte ptr [rcx - 0xc0], 1
.label_103:
	cmp	dword ptr [rcx - 0xa9], 0
	jne	.label_129
	mov	byte ptr [rcx - 0x80], 1
.label_129:
	cmp	dword ptr [rcx - 0x69], 0
	jne	.label_146
	mov	byte ptr [rcx - 0x40], 1
.label_146:
	cmp	dword ptr [rcx - 0x29], 0
	jne	.label_131
	mov	byte ptr [rcx], 1
.label_131:
	add	rcx, 0x100
	add	eax, -4
	jne	.label_204
	nop	dword ptr [rax]
.label_78:
	and	r15b, 1
	mov	byte ptr [byte ptr [rip + pad_vertically]],  r15b
	je	.label_135
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	je	.label_137
.label_135:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_70
	movzx	eax,  byte ptr [byte ptr [rip + print_a_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_70
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_273
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
.label_111:
	mov	byte ptr [byte ptr [rip + print_a_FF]],  0
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_137:
	mov	al,  byte ptr [byte ptr [rip + use_form_feed]]
	and	al, 1
	je	.label_113
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_296
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_70
	nop	dword ptr [rax]
.label_113:
	mov	eax, ebx
	add	eax, 5
	je	.label_70
	mov	eax, ebx
	mov	ebx, 0xfffffffb
	sub	ebx, eax
	jmp	.label_167
.label_133:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_173
	nop	
.label_167:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_133
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_173:
	inc	ebx
	jne	.label_167
.label_70:
	mov	rax,  qword ptr [word ptr [rip + last_page_number]]
	mov	rcx,  qword ptr [word ptr [rip + page_number]]
	inc	rcx
	mov	qword ptr [word ptr [rip + page_number]],  rcx
	cmp	rax, rcx
	jb	.label_150
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	je	.label_69
	test	al, 1
	mov	rcx, r12
	mov	edx, eax
	je	.label_96
	cmp	dword ptr [r12 + 0x10], 2
	jne	.label_114
	mov	dword ptr [r12 + 0x10], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_114:
	lea	edx, [rax - 1]
	lea	rcx, [r12 + 0x40]
.label_96:
	cmp	eax, 1
	je	.label_69
	add	rcx, 0x50
	nop	word ptr cs:[rax + rax]
.label_219:
	cmp	dword ptr [rcx - 0x40], 2
	jne	.label_156
	mov	dword ptr [rcx - 0x40], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_156:
	cmp	dword ptr [rcx], 2
	jne	.label_215
	mov	dword ptr [rcx], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_215:
	add	rcx, 0x80
	add	edx, -2
	jne	.label_219
.label_69:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	jne	.label_172
	jmp	.label_221
.label_273:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_111
.label_296:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_70
.label_150:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_108:
	call	xalloc_die
.label_134:
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
.label_71:
	call	integer_overflow
	.section	.text
	.align	32
	#Procedure 0x4042f0

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
	.align	32
	#Procedure 0x404320

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
	jne	.label_300
	cmp	byte ptr [r14 + 1], 0
	je	.label_303
.label_300:
	mov	qword ptr [rbx + 8], r14
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r14
	call	fopen_safer
	mov	qword ptr [rbx], rax
	jmp	.label_302
.label_303:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbx], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
.label_302:
	test	rax, rax
	je	.label_304
	mov	esi, 2
	mov	rdi, rax
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	bl, 1
	jmp	.label_301
.label_304:
	mov	byte ptr [byte ptr [rip + failed_opens]],  1
	mov	al,  byte ptr [byte ptr [rip + ignore_failed_opens]]
	and	al, 1
	je	.label_305
	xor	ebx, ebx
	jmp	.label_301
.label_305:
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
.label_301:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0

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
	jne	.label_309
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_309:
	cmp	eax, 1
	sbb	r15d, r15d
	or	r15d, esi
	js	.label_308
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	je	.label_311
.label_308:
	cmp	qword ptr [word ptr [rip + init_header.timespec]],  0
	jne	.label_312
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_312:
	movdqu	xmm0,  xmmword ptr [word ptr [rip + init_header.timespec]]
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	mov	r14, qword ptr [rsp + 0x58]
	lea	rsi, [rsp + 0x50]
	jmp	.label_306
.label_311:
	movdqu	xmm0, xmmword ptr [rsp + 0xc0]
	lea	rsi, [rsp + 0x50]
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r14, xmm0
.label_306:
	mov	rdi,  qword ptr [word ptr [rip + localtz]]
	lea	rdx, [rsp + 0x18]
	call	localtime_rz
	test	rax, rax
	je	.label_307
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
	jmp	.label_310
.label_307:
	mov	edi, 0x21
	call	xmalloc
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsp]
	call	imaxtostr
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	mov	r9d, r14d
	call	__sprintf_chk
.label_310:
	mov	rdi,  qword ptr [word ptr [rip + date_text]]
	call	free
	mov	qword ptr [word ptr [rip + date_text]],  rbp
	mov	rax,  qword ptr [word ptr [rip + custom_header]]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:.str
	cmovs	r13, rcx
	test	rax, rax
	cmovne	r13, rax
	mov	qword ptr [word ptr [rip + file_text]],  r13
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_line]]
	xor	esi, esi
	mov	rdi, rbp
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
	.align	32
	#Procedure 0x4045b0

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
	jae	.label_332
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_326:
	cmp	ebp, 0xc
	jne	.label_315
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_315
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_336
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_333:
	cmp	ebp, 0xa
	jne	.label_315
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_316
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_315:
	mov	al,  byte ptr [byte ptr [rip + last_line]]
	and	al, 1
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_323
	nop	word ptr cs:[rax + rax]
.label_325:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_323:
	cmp	eax, -1
	je	.label_330
	cmp	eax, 0xa
	je	.label_331
	cmp	eax, 0xc
	je	.label_320
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_325
	mov	rdi, rbx
	call	__uflow
	jmp	.label_323
.label_330:
	mov	rdi, r15
	call	close_file
	jmp	.label_331
.label_320:
	movzx	eax,  byte ptr [byte ptr [rip + last_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_321
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_318
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_321
.label_318:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_321
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	edx, [rax - 1]
	test	al, 7
	je	.label_324
	mov	esi, eax
	and	esi, 7
	neg	esi
	nop	word ptr cs:[rax + rax]
.label_319:
	mov	byte ptr [rcx + 0x39], 0
	add	rcx, 0x40
	dec	eax
	inc	esi
	jne	.label_319
.label_324:
	cmp	edx, 7
	jb	.label_321
	add	rcx, 0x1f9
	nop	word ptr [rax + rax]
.label_334:
	mov	byte ptr [rcx - 0x1c0], 0
	mov	byte ptr [rcx - 0x180], 0
	mov	byte ptr [rcx - 0x140], 0
	mov	byte ptr [rcx - 0x100], 0
	mov	byte ptr [rcx - 0xc0], 0
	mov	byte ptr [rcx - 0x80], 0
	mov	byte ptr [rcx - 0x40], 0
	mov	byte ptr [rcx], 0
	add	rcx, 0x200
	add	eax, -8
	jne	.label_334
.label_321:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_337
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_329:
	cmp	edi, 0xa
	je	.label_328
	mov	rsi, rbx
	call	ungetc
.label_328:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_335
	mov	dword ptr [r15 + 0x10], 2
	jmp	.label_317
.label_335:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_317
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_327
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	word ptr cs:[rax + rax]
.label_322:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_322
.label_327:
	cmp	esi, 7
	jb	.label_317
	add	rcx, 0x1d0
	nop	dword ptr [rax]
.label_314:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	mov	dword ptr [rcx - 0x40], edx
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	add	eax, -8
	jne	.label_314
.label_317:
	mov	dword ptr [r15 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_331:
	mov	al,  byte ptr [byte ptr [rip + skip_count]]
	and	al, 1
	jne	.label_313
	cmp	r14d, 1
	setne	al
	cmp	ebp, 0xc
	je	.label_313
	and	al,  byte ptr [byte ptr [rip + parallel_files]]
	jne	.label_313
	inc	dword ptr [dword ptr [rip + line_count]]
.label_313:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_332:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_326
.label_337:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_329
.label_336:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_333
.label_316:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_315
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x10], 3
	je	.label_348
	mov	rdi, qword ptr [rbx]
	test	byte ptr [rdi], 0x20
	jne	.label_338
	call	fileno
	test	eax, eax
	je	.label_341
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_338
.label_341:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_345
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_347
.label_345:
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	test	edx, edx
	je	.label_347
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	test	dl, 1
	jne	.label_340
	mov	ecx, edx
	jmp	.label_343
.label_340:
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_344
	mov	dword ptr [rax + 0x30], 0
.label_344:
	add	rax, 0x40
	lea	ecx, [rdx - 1]
.label_343:
	cmp	edx, 1
	je	.label_347
	add	rax, 0x70
	nop	dword ptr [rax]
.label_346:
	mov	dword ptr [rax - 0x60], 3
	cmp	dword ptr [rax - 0x44], 0
	jne	.label_339
	mov	dword ptr [rax - 0x40], 0
.label_339:
	mov	dword ptr [rax - 0x20], 3
	cmp	dword ptr [rax - 4], 0
	jne	.label_342
	mov	dword ptr [rax], 0
.label_342:
	add	rax, 0x80
	add	ecx, -2
	jne	.label_346
.label_347:
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_348:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_338:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	ebx, edi
	mov	ecx,  dword ptr [dword ptr [rip + buff_current]]
	cmp	rcx,  qword ptr [word ptr [rip + buff_allocated]]
	mov	rax,  qword ptr [word ptr [rip + buff]]
	jb	.label_349
	mov	esi, OFFSET FLAT:buff_allocated
	mov	rdi, rax
	call	x2realloc
	mov	qword ptr [word ptr [rip + buff]],  rax
	mov	ecx,  dword ptr [dword ptr [rip + buff_current]]
.label_349:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + buff_current]],  edx
	mov	ecx, ecx
	mov	byte ptr [rax + rcx], bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0

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
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	movsxd	r13, dword ptr [rax + r14*4]
	mov	rbx,  qword ptr [word ptr [rip + buff]]
	add	rbx, r13
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_350
	call	print_header
.label_350:
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_355
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	jle	.label_360
	lea	r8d, [rax - 1]
	mov	esi, 1
	test	al, 7
	mov	rdx, rcx
	je	.label_365
	mov	ebp, eax
	and	ebp, 7
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax]
.label_356:
	mov	esi, edi
	mov	dword ptr [rdx + 0x10], 2
	add	rdx, 0x40
	lea	edi, [rsi + 1]
	cmp	ebp, edi
	jne	.label_356
	add	esi, 2
.label_365:
	cmp	r8d, 7
	jb	.label_360
	dec	esi
	add	rdx, 0x1d0
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	dword ptr [rdx - 0x1c0], 2
	mov	dword ptr [rdx - 0x180], 2
	mov	dword ptr [rdx - 0x140], 2
	mov	dword ptr [rdx - 0x100], 2
	mov	dword ptr [rdx - 0xc0], 2
	mov	dword ptr [rdx - 0x80], 2
	mov	dword ptr [rdx - 0x40], 2
	mov	dword ptr [rdx], 2
	add	esi, 8
	add	rdx, 0x200
	cmp	esi, eax
	jl	.label_359
.label_360:
	cmp	dword ptr [rcx + 0x30], 0
	jle	.label_358
.label_355:
	mov	qword ptr [rsp], r13
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	mov	r13d, ebp
	sub	r13d, eax
	jle	.label_362
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_367
	sub	r13d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r13d
	jmp	.label_352
.label_367:
	cmp	r13d, ecx
	jle	.label_357
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_353
.label_354:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_364
	nop	word ptr [rax + rax]
.label_353:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_354
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_364:
	dec	ebp
	jne	.label_353
.label_357:
	mov	dword ptr [dword ptr [rip + output_position]],  r13d
.label_352:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_362:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_363
	call	print_sep_string
.label_363:
	mov	rax, qword ptr [rsp]
	cmp	eax, r12d
	je	.label_366
	sub	r12, rax
	nop	word ptr cs:[rax + rax]
.label_361:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	jne	.label_361
.label_366:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	jne	.label_351
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax,  qword ptr [word ptr [rip + end_vector]]
	mov	eax, dword ptr [rax + r14*4]
	add	eax, edx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	mov	ecx,  dword ptr [dword ptr [rip + col_sep_length]]
	sub	edx, ecx
	cmp	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	jne	.label_351
	sub	eax, ecx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	jmp	.label_351
.label_358:
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_351
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
.label_351:
	mov	al, 1
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
	#Procedure 0x404c10

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, edi
	movzx	eax,  byte ptr [byte ptr [rip + tabify_output]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_368
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	movzx	r14d, r15b
	cmp	r14d, 0x20
	jne	.label_379
	inc	eax
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	jmp	.label_382
.label_379:
	test	eax, eax
	jle	.label_370
	mov	ebx,  dword ptr [dword ptr [rip + output_position]]
	lea	r12d, [rbx + rax]
	cmp	eax, 2
	jge	.label_372
	mov	ecx, ebx
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_378
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_374:
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_372
	jmp	.label_375
.label_378:
	movzx	esi, al
	call	__overflow
	jmp	.label_374
	nop	word ptr cs:[rax + rax]
.label_372:
	mov	ecx, ebx
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r12d
	sub	ebp, ebx
	jge	.label_380
.label_375:
	cmp	ecx, r12d
	jge	.label_369
	mov	ebx, r12d
	sub	ebx, ecx
	jmp	.label_371
.label_377:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_376
.label_371:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_377
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_376:
	dec	ebx
	jne	.label_371
.label_369:
	mov	dword ptr [dword ptr [rip + output_position]],  r12d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_370:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_373
	cmp	r14d, 8
	jne	.label_368
	dec	dword ptr [dword ptr [rip + output_position]]
	jmp	.label_368
.label_373:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_368:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_381
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_382:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_381:
	movzx	esi, r15b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70

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
	jae	.label_415
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_402:
	mov	ebp,  dword ptr [dword ptr [rip + input_position]]
	cmp	ebx, 0xc
	jne	.label_418
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_426
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_429
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_389:
	cmp	ebx, 0xa
	jne	.label_418
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_435
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_418:
	mov	byte ptr [r13 + 0x39], 0
	cmp	ebx, -1
	je	.label_423
	cmp	ebx, 0xa
	je	.label_444
	cmp	ebx, 0xc
	je	.label_384
	movsx	edi, bl
	call	char_to_clump
	mov	r12d, eax
.label_444:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_392
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_392
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
	xor	r15d, r15d
	jmp	.label_400
.label_392:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_404
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_412
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_412
	call	print_header
.label_412:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_417
	movzx	eax,  byte ptr [byte ptr [rip + align_empty_cols]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_417
	mov	dword ptr [rsp], ebx
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	test	eax, eax
	jle	.label_409
	mov	ebx, 1
	mov	rbp,  qword ptr [word ptr [rip + column_vector]]
	nop	dword ptr [rax]
.label_419:
	mov	r15d, dword ptr [rbp + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  r15d
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	r14d, r15d
	sub	r14d, eax
	jle	.label_434
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_439
	sub	r14d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	jmp	.label_443
	nop	word ptr cs:[rax + rax]
.label_439:
	cmp	r14d, ecx
	jle	.label_388
	sub	r15d, ecx
	sub	r15d, eax
	jmp	.label_390
.label_395:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_399
	nop	dword ptr [rax]
.label_390:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_395
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_399:
	dec	r15d
	jne	.label_390
.label_388:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_443:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_434:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_411
	call	print_sep_string
.label_411:
	cmp	byte ptr [rbp + 0x38], 0
	je	.label_408
	mov	rdi, rbp
	call	add_line_number
.label_408:
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
	add	rbp, 0x40
	cmp	ebx, dword ptr [rsp + 4]
	lea	eax, [rbx + 1]
	mov	ebx, eax
	jne	.label_419
.label_409:
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	xor	ecx, ecx
	and	al, 1
	cmovne	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	ebx, dword ptr [rsp]
.label_417:
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	mov	r14d, ebp
	sub	r14d, eax
	jle	.label_433
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_432
	sub	r14d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	jmp	.label_442
.label_423:
	mov	rdi, r13
	call	close_file
	jmp	.label_387
.label_426:
	mov	byte ptr [r13 + 0x39], 0
.label_384:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_391
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_385:
	cmp	edi, 0xa
	je	.label_401
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_401:
	mov	byte ptr [byte ptr [rip + FF_only]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_403
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_403
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	call	print_header
	jmp	.label_416
.label_403:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_416
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_416:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_420
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_422
.label_420:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_422
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_394
	mov	edi, eax
	and	edi, 7
	neg	edi
.label_438:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_438
.label_394:
	cmp	esi, 7
	jb	.label_422
	add	rcx, 0x1d0
	nop	dword ptr [rax]
.label_428:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	mov	dword ptr [rcx - 0x40], edx
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	add	eax, -8
	jne	.label_428
.label_422:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_387:
	mov	r15b, 1
	jmp	.label_400
.label_415:
	call	__uflow
	mov	ebx, eax
	jmp	.label_402
.label_432:
	cmp	r14d, ecx
	jle	.label_405
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_406
.label_410:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_431
	nop	dword ptr [rax + rax]
.label_406:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_410
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_431:
	dec	ebp
	jne	.label_406
.label_405:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_442:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_433:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_404
	call	print_sep_string
.label_404:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_425
	mov	rdi, r13
	call	add_line_number
.label_425:
	mov	byte ptr [byte ptr [rip + empty_line]],  0
	mov	r15b, 1
	cmp	ebx, 0xa
	je	.label_400
	test	r12d, r12d
	je	.label_383
	mov	rbp,  qword ptr [word ptr [rip + clump_buff]]
	nop	word ptr cs:[rax + rax]
.label_440:
	movsx	edi, byte ptr [rbp]
	inc	rbp
	call	qword ptr [r13 + 0x20]
	dec	r12d
	jne	.label_440
	jmp	.label_383
	nop	word ptr cs:[rax + rax]
.label_414:
	test	ebp, ebp
	je	.label_383
	mov	rbx,  qword ptr [word ptr [rip + clump_buff]]
	nop	dword ptr [rax + rax]
.label_424:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r13 + 0x20]
	dec	ebp
	jne	.label_424
	jmp	.label_383
.label_396:
	call	__uflow
	jmp	.label_398
	nop	word ptr [rax + rax]
.label_383:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_396
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	eax, byte ptr [rax]
.label_398:
	cmp	eax, -1
	je	.label_430
	cmp	eax, 0xa
	je	.label_400
	cmp	eax, 0xc
	je	.label_386
	mov	r14d,  dword ptr [dword ptr [rip + input_position]]
	movsx	edi, al
	call	char_to_clump
	mov	ebp, eax
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_414
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_414
	mov	dword ptr [dword ptr [rip + input_position]],  r14d
	xor	r15d, r15d
	jmp	.label_400
.label_430:
	mov	rdi, r13
	call	close_file
	jmp	.label_400
.label_386:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_427
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_421:
	cmp	edi, 0xa
	je	.label_441
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_441:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_436
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_436:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_437
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_393
.label_391:
	call	__uflow
	mov	edi, eax
	jmp	.label_385
.label_429:
	call	__uflow
	mov	ebx, eax
	jmp	.label_389
.label_437:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_393
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_397
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	word ptr cs:[rax + rax]
.label_407:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_407
.label_397:
	cmp	esi, 7
	jb	.label_393
	add	rcx, 0x1d0
.label_413:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	mov	dword ptr [rcx - 0x40], edx
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	add	eax, -8
	jne	.label_413
.label_393:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_400:
	mov	al, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_435:
	call	__uflow
	mov	ebx, eax
	jmp	.label_418
.label_427:
	call	__uflow
	mov	edi, eax
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x148
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	r14d,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	al,  byte ptr [byte ptr [rip + tabify_output]]
	and	al, 1
	je	.label_453
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	xor	ebx, ebx
	jmp	.label_446
.label_453:
	test	r14d, r14d
	jle	.label_451
	mov	ebx, r14d
	jmp	.label_448
.label_459:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_455
	nop	dword ptr [rax]
.label_448:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_459
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_455:
	dec	ebx
	jne	.label_448
.label_451:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	ebx, r14d
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	mov	r14d, eax
.label_446:
	lea	r15d, [rbx + r14]
	cmp	r14d, 2
	jge	.label_454
	mov	ecx, ebx
	jmp	.label_456
	nop	word ptr cs:[rax + rax]
.label_457:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_445
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_460:
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_454
	jmp	.label_456
.label_445:
	movzx	esi, al
	call	__overflow
	jmp	.label_460
	nop	word ptr cs:[rax + rax]
.label_454:
	mov	ecx, ebx
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r15d
	sub	ebp, ebx
	jge	.label_457
.label_456:
	cmp	ecx, r15d
	jge	.label_452
	mov	ebx, r15d
	sub	ebx, ecx
	jmp	.label_447
.label_449:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_458
.label_447:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_449
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_458:
	dec	ebx
	jne	.label_447
.label_452:
	mov	dword ptr [dword ptr [rip + output_position]],  r15d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	cmp	qword ptr [word ptr [rip + page_number]],  0
	je	.label_450
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
	mov	ecx, OFFSET FLAT:.str
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + print_a_header]],  0
	mov	dword ptr [dword ptr [rip + output_position]],  0
	add	rsp, 0x148
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_450:
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
	.align	32
	#Procedure 0x405620

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	cmp	dword ptr [dword ptr [rip + separators_not_printed]],  0
	jle	.label_495
	mov	rax,  qword ptr [word ptr [rip + col_sep_string]]
	mov	qword ptr [rsp], rax
	mov	r12d,  dword ptr [dword ptr [rip + col_sep_length]]
	nop	word ptr [rax + rax]
.label_493:
	test	r12d, r12d
	lea	r12d, [r12 - 1]
	jle	.label_486
	mov	r15d, r12d
	mov	rbx, qword ptr [rsp]
	jmp	.label_481
.label_490:
	movzx	esi, al
	call	__overflow
	jmp	.label_471
	nop	word ptr cs:[rax + rax]
.label_481:
	movzx	eax, byte ptr [rbx]
	mov	ecx,  dword ptr [dword ptr [rip + spaces_not_printed]]
	cmp	eax, 0x20
	jne	.label_461
	inc	ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	jmp	.label_487
	nop	dword ptr [rax + rax]
.label_461:
	test	ecx, ecx
	jle	.label_496
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rcx]
	cmp	ecx, 2
	mov	ecx, ebp
	jl	.label_476
	jmp	.label_465
.label_491:
	movzx	esi, al
	call	__overflow
	jmp	.label_485
	nop	word ptr cs:[rax + rax]
.label_465:
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	r13d, r14d
	sub	r13d, ebp
	jl	.label_476
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_491
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_485:
	cmp	r13d, 1
	mov	ecx, ebp
	jg	.label_465
.label_476:
	cmp	ecx, r14d
	jge	.label_468
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_469
.label_475:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_494
	nop	word ptr [rax + rax]
.label_469:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_475
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_494:
	dec	ebp
	jne	.label_469
.label_468:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	al, byte ptr [rbx]
.label_496:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_490
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_471:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_487:
	inc	rbx
	test	r12d, r12d
	lea	eax, [r12 - 1]
	mov	r12d, eax
	jg	.label_481
	mov	rax, qword ptr [rsp]
	lea	rax, [rax + r15 + 1]
	mov	qword ptr [rsp], rax
	mov	r12d, 0xffffffff
.label_486:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	test	eax, eax
	jle	.label_479
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	mov	ecx, ebp
	jl	.label_483
	jmp	.label_470
.label_484:
	movzx	esi, al
	call	__overflow
	jmp	.label_488
	nop	dword ptr [rax + rax]
.label_470:
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	ebx, r14d
	sub	ebx, ebp
	jl	.label_483
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_484
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_488:
	cmp	ebx, 1
	mov	ecx, ebp
	jg	.label_470
.label_483:
	cmp	ecx, r14d
	jge	.label_474
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_477
.label_462:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_482
	nop	dword ptr [rax + rax]
.label_477:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_462
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_482:
	dec	ebp
	jne	.label_477
.label_474:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_479:
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	lea	ecx, [rax - 1]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  ecx
	cmp	eax, 1
	jg	.label_493
	jmp	.label_464
.label_495:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	test	eax, eax
	jle	.label_464
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	jge	.label_472
	mov	ecx, ebp
	jmp	.label_478
.label_492:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_480
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_489:
	cmp	ebx, 1
	mov	ecx, ebp
	jg	.label_472
	jmp	.label_478
.label_480:
	movzx	esi, al
	call	__overflow
	jmp	.label_489
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	ebx, r14d
	sub	ebx, ebp
	jge	.label_492
.label_478:
	cmp	ecx, r14d
	jge	.label_463
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_466
.label_467:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_473
.label_466:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_467
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_473:
	dec	ebp
	jne	.label_466
.label_463:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_464:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	mov	r14,  qword ptr [word ptr [rip + clump_buff]]
	movzx	eax,  byte ptr [byte ptr [rip + input_tab_char]]
	movzx	ebp, bl
	cmp	eax, ebp
	mov	ecx, 8
	cmove	ecx,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	cmp	ebp, 9
	je	.label_500
	movzx	eax, al
	cmp	eax, ebp
	je	.label_500
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_502
	movzx	eax,  byte ptr [byte ptr [rip + use_esc_sequence]]
	and	eax, 1
	cmp	eax, 1
	je	.label_501
	movzx	eax,  byte ptr [byte ptr [rip + use_cntrl_prefix]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_505
	test	bl, bl
	js	.label_501
	mov	byte ptr [r14], 0x5e
	xor	bl, 0x40
	mov	byte ptr [r14 + 1], bl
	mov	ebp, 2
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 2
	jmp	.label_499
.label_500:
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, r15d
	cdq	
	idiv	ecx
	mov	ebp, ecx
	sub	ebp, edx
	movzx	eax,  byte ptr [byte ptr [rip + untabify_input]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_504
	dec	ecx
	sub	ecx, edx
	inc	rcx
	mov	esi, 0x20
	mov	rdi, r14
	mov	rdx, rcx
	call	memset
	mov	eax, ebp
	jmp	.label_503
.label_502:
	mov	byte ptr [r14], bl
	mov	ebp, 1
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 1
	jmp	.label_499
.label_504:
	mov	byte ptr [r14], bl
	mov	eax, 1
	jmp	.label_503
.label_501:
	mov	byte ptr [r14], 0x5c
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:.str.79
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
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 4
	jmp	.label_499
.label_505:
	mov	byte ptr [r14], bl
	xor	eax, eax
	cmp	ebp, 8
	mov	ebp, 0xffffffff
	cmovne	ebp, eax
	mov	eax, 1
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
.label_503:
	test	ebp, ebp
	jns	.label_497
	test	r15d, r15d
	jne	.label_497
	mov	dword ptr [dword ptr [rip + input_position]],  0
	xor	eax, eax
	jmp	.label_498
.label_497:
	test	ebp, ebp
	setns	cl
	mov	edx, ebp
	neg	edx
	cmp	r15d, edx
	jg	.label_499
	test	cl, cl
	jne	.label_499
	mov	dword ptr [dword ptr [rip + input_position]],  0
	jmp	.label_498
.label_499:
	add	ebp, r15d
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
.label_498:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b10

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
	jle	.label_508
	sub	eax, ebp
	movsxd	rbx, eax
	add	rbx,  qword ptr [word ptr [rip + number_buff]]
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_512:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_512
.label_508:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_507
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	cmp	eax, 9
	jne	.label_509
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	mov	eax,  dword ptr [dword ptr [rip + chars_per_number]]
	cmp	ebx, eax
	jle	.label_506
	inc	ebx
	sub	ebx, eax
	nop	word ptr [rax + rax]
.label_511:
	mov	edi, 0x20
	call	qword ptr [r14 + 0x20]
	dec	ebx
	cmp	ebx, 1
	jg	.label_511
	jmp	.label_506
.label_507:
	movsx	edi,  byte ptr [byte ptr [rip + number_separator]]
	call	qword ptr [r14 + 0x20]
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	cmp	eax, 9
	jne	.label_506
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	esi,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	esi
	add	esi, ecx
	sub	esi, edx
	mov	dword ptr [dword ptr [rip + output_position]],  esi
	jmp	.label_506
.label_509:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_506:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_510
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	jne	.label_510
	mov	eax,  dword ptr [dword ptr [rip + number_width]]
	add	dword ptr [dword ptr [rip + input_position]],  eax
.label_510:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	jmp	.label_524
.label_517:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_514
	nop	word ptr cs:[rax + rax]
.label_524:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_517
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_514:
	cmp	eax, -1
	je	.label_522
	cmp	eax, 0xa
	je	.label_523
	cmp	eax, 0xc
	jne	.label_524
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_526
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_513:
	cmp	edi, 0xa
	je	.label_518
	mov	rsi, rbx
	call	ungetc
.label_518:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_520
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_520:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_525
	mov	dword ptr [r14 + 0x10], 2
	jmp	.label_519
.label_522:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	close_file
.label_525:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_519
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_521
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	word ptr cs:[rax + rax]
.label_515:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_515
.label_521:
	cmp	esi, 7
	jb	.label_519
	add	rcx, 0x1d0
	nop	dword ptr [rax]
.label_516:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	mov	dword ptr [rcx - 0x40], edx
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	add	eax, -8
	jne	.label_516
.label_519:
	mov	dword ptr [r14 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_523:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_526:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_513
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405da0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_530
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_529
	cmp	dword ptr [rbp], 0x20
	jne	.label_529
.label_530:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_528
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_527
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_528:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_527:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_531
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_531:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0

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
	je	.label_532
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_536
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_533
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_535
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_532
.label_535:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_534
.label_536:
	mov	rax, rbx
	jmp	.label_532
.label_533:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_534:
	xor	eax, eax
.label_532:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

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
	#Procedure 0x405f40
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
	#Procedure 0x405f60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_538
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_539
	cmp	byte ptr [rax + 1], 0
	je	.label_537
.label_539:
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_538
.label_537:
	xor	ebx, ebx
.label_538:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405fa0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_540
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_542:
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
	ja	.label_542
	jmp	.label_543
.label_540:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_541:
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
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_541
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_543:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406060

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
	#Procedure 0x406080

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
	jbe	.label_556
	xor	ebp, ebp
	test	r15, r15
	jle	.label_548
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
.label_547:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_562
	jmp	qword ptr [word ptr [+ (rax * 8) + label_563]]
.label_1379:
	inc	rbx
	inc	r15d
.label_553:
	cmp	rbx, r12
	jb	.label_547
	jmp	.label_554
.label_562:
	mov	dword ptr [rsp], esi
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_557:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	r13, rax
	test	r13, r13
	je	.label_558
	cmp	r13, -2
	je	.label_559
	cmp	r13, -1
	jne	.label_560
	jmp	.label_561
	nop	word ptr cs:[rax + rax]
.label_558:
	mov	r13d, 1
.label_560:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	test	eax, eax
	js	.label_564
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_545
	add	r15d, eax
	jmp	.label_551
	nop	dword ptr [rax]
.label_564:
	mov	ecx, 1
	cmp	dword ptr [rsp + 8], 0
	jne	.label_545
	mov	edi, dword ptr [rsp + 0xc]
	call	iswcntrl
	test	eax, eax
	jne	.label_551
	cmp	r15d, 0x7fffffff
	je	.label_555
	inc	r15d
	nop	dword ptr [rax]
.label_551:
	add	rbx, r13
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	mov	rax, rbx
	je	.label_557
	jmp	.label_549
.label_559:
	add	r15d, dword ptr [rsp + 4]
	test	r14d, r14d
	mov	rax, r12
	mov	ecx, dword ptr [rsp]
	lea	r13, [rsp + 0x10]
	jne	.label_546
	jmp	.label_549
.label_561:
	mov	ecx, 1
	test	r14d, r14d
	lea	r13, [rsp + 0x10]
	jne	.label_546
	inc	rbx
	inc	r15d
	mov	rax, rbx
.label_549:
	mov	rbx, rax
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	jmp	.label_553
.label_555:
	mov	ecx, 7
	mov	r15d, 0x7fffffff
.label_545:
	lea	r13, [rsp + 0x10]
.label_546:
	test	ecx, ecx
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	je	.label_553
	mov	r15d, 0xffffffff
	cmp	ecx, 7
	jne	.label_554
	jmp	.label_548
.label_556:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_550
.label_552:
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_550:
	cmp	rbx, r12
	jae	.label_554
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_544
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_548
	test	al, 2
	jne	.label_550
.label_544:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_552
	jmp	.label_548
.label_554:
	mov	ebp, r15d
.label_548:
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
	.align	32
	#Procedure 0x4062c0

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
	.align	32
	#Procedure 0x4062f0

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
	mov	dword ptr [rsp + 0x5c], r8d
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:.str
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_702
	mov	dword ptr [rsp + 0x2c], ebx
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x48], rcx
	mov	dword ptr [rsp + 0x3c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	jmp	.label_689
.label_702:
	xor	esi, esi
	jmp	.label_718
.label_659:
	mov	edi, 3
	jmp	.label_720
	nop	word ptr cs:[rax + rax]
.label_689:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_726
	mov	qword ptr [rsp + 0x78], rsi
	mov	eax, dword ptr [rsp + 0x5c]
	mov	bl, al
	xor	r13d, r13d
	jmp	.label_575
	nop	
.label_726:
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	sub	rdx, rsi
	cmp	rbx, rdx
	jae	.label_579
	test	rdi, rdi
	mov	edx, 0
	je	.label_595
	cmp	ecx, 2
	jb	.label_731
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	mov	esi, 0x20
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	lea	rdi, [rdi + r14 - 1]
	mov	al, byte ptr [rbp]
.label_731:
	mov	byte ptr [rdi], al
.label_671:
	inc	rdi
	mov	rdx, rdi
.label_595:
	add	rsi, rbx
	mov	rdi, rdx
	jmp	.label_569
	nop	word ptr cs:[rax + rax]
.label_587:
	mov	r12b, 1
	mov	al, bl
	jmp	.label_575
	nop	word ptr [rax + rax]
.label_586:
	inc	rbp
	mov	r13d, edx
.label_591:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_581
	bt	r15, rsi
	jb	.label_586
	mov	al, 1
	test	rsi, rsi
	je	.label_587
	cmp	rsi, 0x3b
	jne	.label_581
.label_575:
	mov	bl, al
	inc	rbp
	jmp	.label_591
	nop	
.label_581:
	mov	qword ptr [rsp + 0x68], rdi
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_594
	nop	
.label_611:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_597
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_601
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_597
.label_601:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_597:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_611
.label_594:
	movsx	r9d, cl
	cmp	r9d, 0x4f
	je	.label_566
	cmp	r9d, 0x45
	jne	.label_617
.label_566:
	mov	qword ptr [rsp + 0x60], rbx
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_618
.label_617:
	mov	qword ptr [rsp + 0x60], rbx
	xor	r9d, r9d
.label_618:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	edx, [r11 - 0x25]
	cmp	edx, 0x55
	ja	.label_620
	mov	eax, OFFSET FLAT:.str.3_0
	mov	qword ptr [rsp + 0x50], rax
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_626]]
.label_1257:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8d, dword ptr [rdx + 0x14]
	mov	r9d, dword ptr [rdx + 0x18]
	mov	eax, r8d
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r12d, [r8 + rax - 0x64]
	mov	ebx, dword ptr [rdx + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdx, eax
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	edx, edi
	lea	eax, [rbx + 3]
	sub	eax, edx
	js	.label_629
	mov	edx, 0x16d
	test	r12b, 3
	jne	.label_643
	movsxd	rdx, r12d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rsi, rdx
	shr	rsi, 0x3f
	add	edi, esi
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, esi
	imul	edx, edx, 0x190
	cmp	r12d, edx
	sete	dl
	movzx	esi, dl
	add	esi, 0x16d
	cmp	r12d, edi
	mov	edx, 0x16e
	cmove	edx, esi
.label_643:
	sub	ebx, edx
	lea	edx, [rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	add	ebx, 3
	sub	ebx, edx
	cmovns	eax, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_708
	nop	dword ptr [rax]
.label_573:
	inc	rsi
.label_1251:
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_573
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_608
	add	rbp, rsi
	mov	rbx, rsi
.label_1288:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_672
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	test	r8d, r8d
	js	.label_673
	test	r8d, r8d
	je	.label_676
	xor	esi, esi
	jmp	.label_673
.label_1271:
	test	r12b, r12b
	je	.label_677
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_677:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_608
	mov	r8b, cl
	jmp	.label_653
.label_620:
	test	r11d, r11d
	jne	.label_608
	dec	rbp
	jmp	.label_608
.label_1250:
	test	r9d, r9d
	jne	.label_608
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rdx, rsi
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_579
	xor	edx, edx
	test	rdi, rdi
	je	.label_595
	cmp	eax, 2
	jb	.label_695
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_697
	cmp	r13d, 0x2b
	jne	.label_631
.label_697:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_701
.label_1252:
	test	r9d, r9d
	jne	.label_608
	test	r12b, r12b
	je	.label_704
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_704:
	xor	eax, eax
	mov	r8b, 0x41
	jmp	.label_653
.label_1253:
	cmp	r9d, 0x45
	je	.label_608
	test	r12b, r12b
	je	.label_709
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_709:
	xor	eax, eax
	mov	r8b, 0x42
	jmp	.label_653
.label_1254:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_712
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_653
.label_1255:
	test	r9d, r9d
	jne	.label_608
	mov	eax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rsp + 0x50], rax
	mov	r10d, 0xffffffff
	jmp	.label_716
.label_1256:
	test	r9d, r9d
	jne	.label_608
	test	r13d, r13d
	jne	.label_723
	test	r14d, r14d
	jns	.label_723
	mov	eax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rsp + 0x50], rax
	mov	r13d, 0x2b
	mov	r10d, 4
	jmp	.label_716
.label_1258:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_614
.label_1259:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	edi, 2
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	jmp	.label_576
.label_1260:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_614
.label_1261:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	cmp	r14d, -1
	je	.label_734
	cmp	r14d, 8
	jg	.label_568
	mov	esi, 9
	sub	esi, r14d
	mov	eax, 8
	sub	eax, r14d
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
	je	.label_572
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
.label_584:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	inc	esi
	jne	.label_584
.label_572:
	cmp	eax, 3
	jae	.label_592
	mov	edi, r14d
	jmp	.label_576
.label_1262:
	mov	dil, 1
.label_1280:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_598
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
.label_598:
	je	.label_602
	mov	dil, 1
.label_602:
	mov	r8b, 0x70
	mov	al, dil
	jmp	.label_604
.label_1263:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax]
	jmp	.label_614
.label_1264:
	mov	eax, OFFSET FLAT:.str.4_0
.label_612:
	mov	qword ptr [rsp + 0x50], rax
.label_716:
	mov	dword ptr [rsp + 0x40], r10d
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r9d, r13d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x68]
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rdx, ebx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	cmp	rbx, r12
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_630
	cmp	rax, rdx
	jae	.label_635
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r13d, 0x30
	je	.label_639
	cmp	r13d, 0x2b
	jne	.label_641
.label_639:
	mov	esi, 0x30
	jmp	.label_582
.label_1265:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	movsxd	rdx, eax
	jmp	.label_645
.label_1266:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	add	edx, 7
	sub	edx, esi
	movsxd	rdx, edx
.label_645:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_614
.label_1267:
	cmp	r9d, 0x4f
	je	.label_608
	xor	eax, eax
	mov	r8b, 0x58
	jmp	.label_653
.label_1268:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_667
	cmp	r10d, 0x4f
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	add	edx, 0x76c
	mov	edi, 4
	jmp	.label_670
.label_1269:
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
	mov	rdi, qword ptr [rsp + 0x68]
	mov	r9, rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rbx, r9
	cmovb	rbx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_630
	cmp	r9, rax
	jae	.label_685
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x50], r9
	cmp	r13d, 0x30
	je	.label_688
	cmp	r13d, 0x2b
	jne	.label_690
.label_688:
	mov	esi, 0x30
	jmp	.label_736
.label_1270:
	test	r9d, r9d
	jne	.label_608
	test	r12b, r12b
	je	.label_694
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_694:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_653
.label_1272:
	cmp	r9d, 0x4f
	je	.label_608
	xor	eax, eax
	mov	r8b, 0x63
	jmp	.label_653
.label_1273:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_614
.label_1274:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_706
.label_1275:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 3
	jmp	.label_711
.label_1276:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_706
.label_1277:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	je	.label_608
.label_706:
	test	r13d, r13d
	mov	eax, 0x5f
	cmove	r13d, eax
	jmp	.label_614
.label_1278:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 2
	jmp	.label_711
.label_1279:
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
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_630
	cmp	eax, 2
	jb	.label_732
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_609
	cmp	r13d, 0x2b
	jne	.label_738
.label_609:
	mov	esi, 0x30
	jmp	.label_565
.label_1281:
	mov	rax, qword ptr [rsp + 0x48]
	imul	edx, dword ptr [rax + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	edi, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_570
.label_1282:
	mov	rcx, qword ptr [rsp + 0x48]
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
	nop	dword ptr [rax + rax]
.label_606:
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
	ja	.label_606
	mov	r10d, 1
	xor	r8d, r8d
	jmp	.label_622
.label_1283:
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
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_630
	cmp	eax, 2
	jb	.label_703
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_634
	cmp	r13d, 0x2b
	jne	.label_637
.label_634:
	mov	esi, 0x30
	jmp	.label_640
.label_1284:
	mov	rax, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rax + 0x18]
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
	inc	edx
	mov	edi, 1
	mov	r10d, r9d
	jmp	.label_576
.label_1285:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_608
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	jmp	.label_576
.label_1286:
	cmp	r9d, 0x4f
	je	.label_608
	xor	eax, eax
	mov	r8b, 0x78
	jmp	.label_653
.label_1287:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_693
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x79
	jmp	.label_653
.label_635:
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_660
.label_629:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_664
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	sar	rdx, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	add	edx, edi
	imul	edx, edx, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	cmp	r12d, eax
	sete	al
	movzx	edi, al
	add	edi, 0x16d
	cmp	r12d, edx
	mov	eax, 0x16e
	cmove	eax, edi
.label_664:
	lea	edx, [rax + rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	lea	eax, [rax + rbx + 3]
	sub	eax, edx
	mov	ebx, 0xffffffff
.label_708:
	cmp	r11d, 0x47
	je	.label_696
	cmp	r11d, 0x67
	jne	.label_684
	movsxd	rax, r8d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	edx, r8d
	sub	edx, eax
	add	edx, ebx
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	edi, 2
	jns	.label_687
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	r8d, eax
	jmp	.label_698
.label_672:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x68]
	jmp	.label_569
.label_712:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	edi, 2
	jmp	.label_670
.label_693:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	edi, 2
	sub	edx, esi
	js	.label_725
.label_687:
	xor	esi, esi
	jmp	.label_670
.label_696:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	jmp	.label_670
.label_684:
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_614:
	mov	edi, 2
.label_576:
	mov	esi, edx
	shr	esi, 0x1f
.label_711:
	xor	ebx, ebx
	xor	r8d, r8d
.label_570:
	cmp	r10d, 0x4f
	jne	.label_730
	test	sil, sil
	jne	.label_730
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, cl
	mov	rbx, rdi
	jmp	.label_604
.label_730:
	mov	r10, rdi
	mov	eax, edx
	neg	eax
	test	sil, sil
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	nop	
.label_578:
	test	bl, 1
	je	.label_735
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_735:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_578
	test	ebx, ebx
	mov	eax, edx
	jne	.label_578
.label_622:
	mov	rdi, qword ptr [rsp + 0x68]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	mov	qword ptr [rsp + 0x50], r10
	test	r8b, r8b
	je	.label_580
	mov	r8b, 0x2b
.label_580:
	test	sil, sil
	mov	r9b, 0x2d
	jne	.label_652
	mov	r9b, r8b
.label_652:
	cmp	r13d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_590
	test	r9b, r9b
	je	.label_596
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
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_610
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_615
	test	al, al
	jne	.label_615
	movsxd	rax, r14d
	mov	qword ptr [rsp + 0x20], rax
	lea	rdx, [rax - 1]
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x68], rdi
	call	memset
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi + rax - 1]
	jmp	.label_615
.label_590:
	mov	rax, qword ptr [rsp + 0x50]
	cdqe	
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_628
	cmp	r13d, 0x5f
	jne	.label_632
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_579
	xor	r10d, r10d
	test	rdi, rdi
	mov	r8d, 0
	je	.label_638
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r10d, r10d
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, rdx
	mov	r8, rax
.label_638:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	r9b, r9b
	je	.label_648
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_579
	xor	edi, edi
	test	r8, r8
	je	.label_681
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_656
	mov	byte ptr [rsp + 0x40], r9b
	test	al, al
	jne	.label_658
	movsxd	r14, r10d
	mov	qword ptr [rsp + 0x68], r10
	lea	rdx, [r14 - 1]
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	rdi, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	r8, [r8 + r14 - 1]
	jmp	.label_669
.label_628:
	test	r9b, r9b
	je	.label_596
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
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_610
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_615
	test	al, al
	jne	.label_615
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_682
	cmp	r13d, 0x2b
	jne	.label_713
.label_682:
	mov	esi, 0x30
	jmp	.label_724
.label_632:
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_579
	test	r9b, r9b
	je	.label_692
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_699
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_700
	test	al, al
	jne	.label_700
	mov	qword ptr [rsp + 0x20], rdx
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_666
	cmp	r13d, 0x2b
	jne	.label_574
.label_666:
	mov	esi, 0x30
	jmp	.label_650
.label_648:
	mov	rdi, r8
	mov	r14d, r10d
	jmp	.label_596
.label_667:
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x59
.label_653:
	xor	ebx, ebx
.label_604:
	mov	dword ptr [rsp + 0x50], eax
	mov	r12, qword ptr [rsp + 0x68]
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x48d]
	je	.label_625
	mov	byte ptr [rsp + 0x48d], r9b
	lea	rcx, [rsp + 0x48e]
.label_625:
	mov	byte ptr [rcx], r8b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x48]
	call	strftime
	test	rax, rax
	je	.label_646
	mov	r8, rbx
	lea	r9, [rax - 1]
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rdx, rcx
	mov	ebx, dword ptr [rsp + 0x50]
	jae	.label_579
	xor	ecx, ecx
	mov	rdi, r12
	test	rdi, rdi
	je	.label_593
	cmp	r9, rax
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_654
	test	al, al
	jne	.label_654
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x20], r9
	cmp	r13d, 0x30
	je	.label_737
	cmp	r13d, 0x2b
	jne	.label_567
.label_737:
	mov	esi, 0x30
	jmp	.label_627
.label_646:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r12
	jmp	.label_569
.label_567:
	mov	esi, 0x20
.label_627:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x50]
.label_654:
	test	bl, 1
	jne	.label_583
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_585
	lea	rsi, [rsp + 0x81]
	mov	rdx, r9
	mov	r14, rdi
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	jmp	.label_619
.label_583:
	test	r9, r9
	je	.label_619
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_603
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	
.label_588:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_588
.label_603:
	cmp	r8, 3
	jb	.label_619
	nop	word ptr cs:[rax + rax]
.label_623:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_623
	jmp	.label_619
.label_585:
	test	r9, r9
	je	.label_619
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_636
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr [rax + rax]
.label_644:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_644
.label_636:
	cmp	r8, 3
	jb	.label_619
.label_649:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_649
.label_619:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r12
	jmp	.label_593
.label_685:
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_662
.label_641:
	mov	esi, 0x20
.label_582:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rdi, r14
.label_660:
	mov	edx, dword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r14, rdi
	mov	r9d, r13d
	call	__strftime_internal
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, r14
	mov	rcx, rax
	jmp	.label_679
.label_676:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	sil
.label_673:
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_608
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, r8d
	mov	r9, rbx
	mov	ebx, edi
	shr	ebx, 0x1f
	sar	edi, 5
	add	edi, ebx
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 0xb
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r9 * 8) + label_683]]
.label_1193:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 5
.label_720:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_570
.label_608:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_705:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_705
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	r8, ecx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	r8, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_579
	test	rdi, rdi
	mov	ecx, 0
	je	.label_714
	movsxd	rdx, r12d
	cmp	r12d, eax
	jae	.label_715
	movsxd	r14, r14d
	sub	r14, rdx
	cmp	r13d, 0x30
	je	.label_717
	cmp	r13d, 0x2b
	jne	.label_719
.label_717:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x30
	jmp	.label_721
.label_719:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x20
.label_721:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	add	rdi, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
.label_715:
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x78], rsi
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_663
	mov	rsi, rbx
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_577
.label_663:
	mov	r13, rdi
	mov	r14, rdx
	call	__ctype_toupper_loc
	mov	r10, r14
	mov	r9, r13
	movsxd	rcx, r12d
	lea	r8, [rcx - 1]
	test	cl, 3
	mov	rcx, r10
	je	.label_733
	and	r12d, 3
	neg	r12
	mov	rcx, r10
	nop	word ptr [rax + rax]
.label_571:
	movzx	esi, byte ptr [rbx + rcx - 1]
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_571
.label_733:
	cmp	r8, 3
	mov	r8, qword ptr [rsp + 0x50]
	jb	.label_577
	nop	word ptr cs:[rax + rax]
.label_647:
	movzx	edx, byte ptr [rbx + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_647
.label_577:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x78]
.label_714:
	add	rsi, r8
	jmp	.label_607
.label_723:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	eax, OFFSET FLAT:.str.2_0
	jmp	.label_612
.label_734:
	mov	edi, 9
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	r14d, 9
	jmp	.label_576
.label_725:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_698:
	cmovl	edx, esi
	xor	esi, esi
.label_670:
	mov	eax, dword ptr [rsp + 0x3c]
	mov	dword ptr [rsp + 0x3c], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	jne	.label_570
	mov	rax, rdi
	cmp	eax, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, edx
	setb	r9b
	cmp	eax, r14d
	mov	rdi, rax
	setl	r8b
	or	r8b, r9b
	jmp	.label_570
.label_1196:
	test	r8d, r8d
	je	.label_633
.label_1195:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_570
.label_568:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_576
.label_656:
	mov	qword ptr [rsp + 0x68], r10
	jmp	.label_642
.label_658:
	mov	qword ptr [rsp + 0x68], r10
.label_669:
	mov	r9b, byte ptr [rsp + 0x40]
.label_642:
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rdi, r8
	mov	r10, qword ptr [rsp + 0x68]
.label_681:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_596
.label_690:
	mov	esi, 0x20
.label_736:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x50]
.label_662:
	test	r12b, r12b
	je	.label_651
	test	r9, r9
	je	.label_613
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_655
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
	nop	dword ptr [rax + rax]
.label_665:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_665
	jmp	.label_668
.label_651:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_589
	test	r9, r9
	je	.label_613
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_674
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
.label_678:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_678
	jmp	.label_680
.label_738:
	mov	esi, 0x20
.label_565:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_732:
	mov	byte ptr [rdi], 0xa
	jmp	.label_686
.label_637:
	mov	esi, 0x20
.label_640:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_703:
	mov	byte ptr [rdi], 9
.label_686:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_607
.label_713:
	mov	esi, 0x20
.label_724:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x40]
.label_615:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_610:
	add	rsi, rbx
	mov	rdi, rcx
	jmp	.label_596
.label_655:
	mov	rcx, r9
	mov	rdi, r13
.label_668:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_613
	nop	word ptr cs:[rax + rax]
.label_707:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_707
	jmp	.label_613
.label_589:
	mov	rsi, r14
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rbx, r12
	mov	rdi, r13
	jmp	.label_613
.label_592:
	mov	eax, 9
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_728:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_728
	mov	edi, r14d
	jmp	.label_576
.label_574:
	mov	esi, 0x20
.label_650:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x20]
.label_700:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_699:
	add	rsi, rdx
	mov	rdi, rcx
.label_692:
	xor	r14d, r14d
	test	rdi, rdi
	movsxd	rcx, ebx
	mov	ebx, 0
	je	.label_729
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x68], rcx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	add	rbx, rcx
.label_729:
	add	rsi, rcx
	mov	rdi, rbx
.label_596:
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
	jae	.label_579
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_593
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_722
	test	al, al
	jne	.label_599
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_600
	cmp	r13d, 0x2b
	jne	.label_710
.label_600:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	jmp	.label_605
.label_593:
	add	rsi, rdx
	jmp	.label_607
.label_722:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_616
.label_599:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_616
.label_710:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_605:
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r13
	add	rdi, r14
.label_616:
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_621
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_624
	mov	r14, rdi
	call	__ctype_toupper_loc
	mov	rdi, r14
	lea	rcx, [rsp + 0x4a7]
	sub	ecx, r12d
	lea	r8, [rsp + 0x4a6]
	sub	r8, r12
	test	cl, 3
	mov	rcx, rbx
	mov	r9, rbx
	je	.label_661
	lea	rsi, [rsp + 0x4a7]
	sub	esi, r12d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_727:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rdx, qword ptr [rax]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	dec	rcx
	inc	rsi
	jne	.label_727
.label_661:
	cmp	r8, 3
	mov	rbx, r9
	jb	.label_624
	nop	word ptr cs:[rax + rax]
.label_657:
	movzx	edx, byte ptr [r12 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r12 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_657
	jmp	.label_624
.label_621:
	mov	rsi, r12
	mov	rdx, rbx
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_624:
	add	rdi, rbx
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r13
	add	rsi, rdx
	jmp	.label_607
.label_633:
	test	ebx, ebx
	je	.label_659
.label_1194:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_570
.label_631:
	mov	r12, rsi
	mov	esi, 0x20
.label_701:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	mov	cl, byte ptr [rbp]
.label_695:
	mov	byte ptr [rdi], cl
	jmp	.label_671
.label_674:
	mov	rcx, r9
	mov	rdi, r13
.label_680:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_613
.label_675:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_675
.label_613:
	mov	qword ptr [rsp + 0x30], r14
	add	rdi, r9
	mov	rcx, rdi
.label_679:
	mov	rsi, qword ptr [rsp + 0x78]
.label_630:
	add	rsi, rbx
	nop	dword ptr [rax]
.label_607:
	mov	rdi, rcx
.label_569:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_689
.label_718:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_691
	test	rdi, rdi
	je	.label_691
	mov	byte ptr [rdi], 0
	jmp	.label_691
.label_579:
	xor	esi, esi
.label_691:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_741
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_739
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_739
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_740
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_740:
	mov	rbx, r14
.label_739:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_741:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f80
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
	#Procedure 0x407fc0
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
	#Procedure 0x407fd0
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
	#Procedure 0x407fe0
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
	.align	32
	#Procedure 0x408020
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
	#Procedure 0x408040
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_742
	test	rdx, rdx
	je	.label_742
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_742:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408070
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080f0

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_790:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_849
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_851]]
.label_1345:
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_1346:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_749
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_749
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_776:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_769
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_769:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_776
.label_749:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_768
.label_1338:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_768
.label_1341:
	mov	al, 1
.label_1339:
	mov	r12b, 1
.label_1342:
	test	r12b, 1
	mov	cl, 1
	je	.label_805
	mov	cl, al
.label_805:
	mov	al, cl
.label_1340:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_809
	test	r10, r10
	je	.label_813
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_814
.label_809:
	xor	ecx, ecx
	jmp	.label_814
.label_1343:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_808
	test	r10, r10
	je	.label_825
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_828
.label_1344:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_768
.label_813:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_814:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_768
.label_808:
	xor	eax, eax
	jmp	.label_828
.label_825:
	mov	eax, 1
.label_828:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_768:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_848
.label_789:
	inc	rdi
.label_848:
	cmp	rbp, -1
	je	.label_783
	cmp	rdi, rbp
	jne	.label_785
	jmp	.label_786
	nop	word ptr cs:[rax + rax]
.label_783:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_754
.label_785:
	test	r12b, r12b
	je	.label_792
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_794
	cmp	rbp, -1
	jne	.label_794
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_794:
	cmp	rbx, rbp
	jbe	.label_818
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_803
	nop	word ptr [rax + rax]
.label_792:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_803
.label_818:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_842
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_803
	jmp	.label_766
.label_842:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_803:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_862
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_867]]
.label_1355:
	test	rdi, rdi
	jne	.label_748
	jmp	.label_752
.label_1359:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_753
	test	rdi, rdi
	jne	.label_757
	cmp	rbp, 1
	je	.label_752
	xor	r13d, r13d
	jmp	.label_756
.label_1348:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_763
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_766
	cmp	r9d, 2
	jne	.label_770
	mov	al, r14b
	and	al, 1
	jne	.label_772
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_775
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_775:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_843
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_843:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_758
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_758:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_796
.label_1349:
	mov	bl, 0x62
	jmp	.label_802
.label_1350:
	mov	cl, 0x74
	jmp	.label_746
.label_1351:
	mov	bl, 0x76
	jmp	.label_802
.label_1352:
	mov	bl, 0x66
	jmp	.label_802
.label_1353:
	mov	cl, 0x72
	jmp	.label_746
.label_1356:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_810
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_815
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_804
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_804:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_839
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_839:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_834
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_834:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_810:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_756
.label_1357:
	cmp	r9d, 5
	je	.label_852
	cmp	r9d, 2
	jne	.label_748
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_748
	jmp	.label_857
.label_1358:
	cmp	r9d, 2
	jne	.label_859
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_863
	jmp	.label_743
.label_862:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_744
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_745:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_765
	test	cl, cl
	je	.label_765
	xor	eax, eax
	jmp	.label_756
.label_753:
	test	rdi, rdi
	jne	.label_779
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_779
.label_752:
	mov	dl, 1
.label_1354:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_751
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_756
.label_763:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_789
	jmp	.label_748
.label_859:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_746
.label_863:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_795
.label_746:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_797
.label_802:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_756
	jmp	.label_806
.label_744:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_807
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_807:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_750:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_838
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_841
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_847
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_860
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_858:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_855
	bt	rsi, rdx
	jb	.label_856
.label_855:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_858
.label_860:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_853
	xor	r13d, r13d
.label_853:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_750
	jmp	.label_745
.label_779:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_756
.label_852:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_748
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_748
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_748
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_773
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_777
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_846
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_787
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_787:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_791
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_791:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_799
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_799:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_837
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_837:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_756
.label_748:
	xor	eax, eax
	xor	r13d, r13d
.label_756:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_822
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_824
	jmp	.label_829
	nop	word ptr [rax + rax]
.label_822:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_829
.label_824:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_833
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_840
	nop	word ptr cs:[rax + rax]
.label_829:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_840:
	mov	bl, r15b
	je	.label_795
	jmp	.label_806
.label_833:
	mov	bl, r15b
.label_806:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_766
	cmp	r9d, 2
	jne	.label_850
	mov	al, r14b
	and	al, 1
	jne	.label_850
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_781
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_781:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_827
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_827:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_866
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_866:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_850:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_755
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_755:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_845
.label_757:
	xor	r13d, r13d
	jmp	.label_756
.label_765:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_767
	nop	word ptr [rax + rax]
.label_760:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_767:
	test	cl, cl
	je	.label_778
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_780
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_784
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_784:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_780
	nop	word ptr [rax + rax]
.label_778:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_766
	cmp	r9d, 2
	jne	.label_801
	mov	al, r14b
	and	al, 1
	jne	.label_801
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_864
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_864:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_759
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_759:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_819
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_819:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_801:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_831
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_831:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_836
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_836:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_832
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_832:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_780:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_795
	test	r14b, 1
	je	.label_821
	mov	bl, al
	and	bl, 1
	jne	.label_821
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_844
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_844:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_747
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_747:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_821:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_760
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_760
	nop	dword ptr [rax]
.label_795:
	test	r14b, 1
	je	.label_774
	and	al, 1
	jne	.label_774
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_800
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_800:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_764
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_764:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_774:
	mov	bl, r15b
.label_845:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_793
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_793:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_789
.label_770:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_796
.label_772:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_796:
	cmp	rcx, r10
	jae	.label_812
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_812:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_817
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_823
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_826
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_830
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_830:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_835
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_835:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_756
.label_817:
	xor	r13d, r13d
	jmp	.label_756
.label_823:
	xor	r13d, r13d
	jmp	.label_756
.label_826:
	xor	r13d, r13d
	jmp	.label_756
.label_841:
	xor	r13d, r13d
.label_838:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_745
.label_847:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_854
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_811:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_861
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_811
	xor	r13d, r13d
	jmp	.label_745
.label_854:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_745
.label_861:
	xor	r13d, r13d
	jmp	.label_745
.label_773:
	xor	r13d, r13d
	jmp	.label_756
.label_777:
	xor	r13d, r13d
	jmp	.label_756
	nop	dword ptr [rax]
.label_786:
	mov	r13, rdi
.label_754:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_762
	or	al, dl
	je	.label_761
.label_762:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_771
	or	al, dl
	jne	.label_771
	test	r8b, 1
	jne	.label_788
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_771
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_790
.label_771:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_798
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_798
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_798
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_816:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_782
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_782:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_816
.label_798:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_820
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_820
.label_751:
	mov	r9d, 2
	jmp	.label_766
.label_856:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_766
.label_761:
	mov	rbp, r13
	jmp	.label_766
.label_797:
	mov	r9d, 2
.label_766:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_865:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_820:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_788:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_865
.label_815:
	mov	r9d, 2
	jmp	.label_766
.label_743:
	mov	r9d, 2
	jmp	.label_766
.label_857:
	mov	r9d, 2
	jmp	.label_766
.label_846:
	mov	r9d, 5
	jmp	.label_766
.label_849:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409280
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x409350
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
	call	xmalloc
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
	je	.label_868
	mov	qword ptr [rax], rbx
.label_868:
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
	.align	32
	#Procedure 0x409450
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_869
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_871:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_871
.label_869:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_872
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_873]], OFFSET FLAT:slot0
.label_872:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_870
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_870:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x409500

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
	js	.label_874
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_877
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_880
.label_877:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_876
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
	jne	.label_875
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_875:
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
.label_880:
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
	ja	.label_878
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_879
	mov	rdi, rbx
	call	free
.label_879:
	mov	rdi, r14
	call	xmalloc
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
.label_878:
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
.label_874:
	call	abort
.label_876:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096e0
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
	#Procedure 0x409700
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
	#Procedure 0x409720
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_881
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_881:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409790
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_882
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_882:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409800
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_883
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_883:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409870
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_884
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_884:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	#Procedure 0x409950
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	#Procedure 0x4099c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x409a20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x409a80

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_888
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_888:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409b30
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_889
	test	rdx, rdx
	je	.label_889
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_889:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ba0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_890
	test	rdx, rdx
	je	.label_890
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_890:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c10
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_891
	test	rsi, rsi
	je	.label_891
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_891:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409c80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_892
	test	rsi, rsi
	je	.label_892
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
.label_892:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409cf0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d00
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
	#Procedure 0x409d20
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40

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
	#Procedure 0x409d60

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
	jne	.label_893
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_895
	cmp	ecx, 0x55
	jne	.label_894
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_894
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_894
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_894
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_894
	cmp	byte ptr [rax + 5], 0
	jne	.label_894
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_893
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_893
.label_895:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_894
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_894
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_894
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_894
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_894
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_894
	cmp	byte ptr [rax + 7], 0
	je	.label_896
.label_894:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_893:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_896:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_893
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_893
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e50

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
	#Procedure 0x409e60

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
	je	.label_902
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_900
.label_902:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_900:
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
	ja	.label_901
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_897]]
.label_1235:
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
.label_901:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_905
.label_1236:
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
.label_1237:
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
.label_1238:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_906
.label_1239:
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
	jmp	.label_904
.label_1240:
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
	jmp	.label_899
.label_1241:
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
.label_899:
	mov	qword ptr [rsp + 0x10], rdi
.label_904:
	mov	qword ptr [rsp + 8], rsi
.label_906:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_903
.label_1243:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_905:
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
	jmp	.label_898
.label_1242:
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
.label_898:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_903:
	call	__fprintf_chk
.label_1234:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a150
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_907:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_907
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a180
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_910:
	cmp	r10d, 0x28
	ja	.label_908
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_909
	nop	word ptr cs:[rax + rax]
.label_908:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_909:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_911
	inc	r9
	cmp	r9, 0xa
	jb	.label_910
.label_911:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a1e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_912
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_912:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_916:
	cmp	r8d, 0x28
	ja	.label_913
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_915
	nop	
.label_913:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_915:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_914
	inc	r9
	cmp	r9, 0xa
	jb	.label_916
.label_914:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2e0
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
	.align	32
	#Procedure 0x40a360
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_917
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_918
	test	rax, rax
	je	.label_917
.label_918:
	pop	rbx
	ret	
.label_917:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_919
	test	rax, rax
	je	.label_920
.label_919:
	pop	rbx
	ret	
.label_920:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_921
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_922
	test	rbx, rbx
	jne	.label_922
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_922:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_923
	test	rax, rax
	je	.label_921
.label_923:
	pop	rbx
	ret	
.label_921:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a410

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_924
	test	rbx, rbx
	jne	.label_924
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_924:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_926
	test	rax, rax
	je	.label_925
.label_926:
	pop	rbx
	ret	
.label_925:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a440
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_927
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_929
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_928
.label_927:
	test	rcx, rcx
	jne	.label_932
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_932:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_930
.label_928:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_931
	test	rbx, rbx
	jne	.label_931
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_931:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_933
	test	rax, rax
	je	.label_929
.label_933:
	pop	rbx
	ret	
.label_929:
	call	xalloc_die
.label_930:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4e0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_934
	test	rax, rax
	je	.label_935
.label_934:
	pop	rbx
	ret	
.label_935:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a500

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_936
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_939
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_940
	call	free
	xor	eax, eax
	jmp	.label_937
.label_936:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_938
	mov	qword ptr [rsi], rbx
.label_940:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_937
	test	rax, rax
	je	.label_938
.label_937:
	pop	rbx
	ret	
.label_938:
	call	xalloc_die
.label_939:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a570
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
	je	.label_942
	test	r14, r14
	je	.label_941
.label_942:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_941:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_943
	call	rpl_calloc
	test	rax, rax
	je	.label_943
	pop	rcx
	ret	
.label_943:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5e0

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
	je	.label_944
	test	r15, r15
	je	.label_945
.label_944:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_945:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a620
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
	je	.label_947
	test	r15, r15
	je	.label_946
.label_947:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_946:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a670

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
	.align	32
	#Procedure 0x40a6a0

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
	je	.label_950
	cmp	eax, 1
	je	.label_953
	cmp	eax, 3
	jne	.label_955
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_951
.label_950:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_948
	cmp	rbx, r12
	jle	.label_952
.label_948:
	cmp	rbx, 0x40000000
	jl	.label_954
.label_953:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_951
.label_955:
	call	__errno_location
.label_951:
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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_952:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_954:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_949
	mov	dword ptr [rax], 0x4b
	jmp	.label_951
.label_949:
	mov	dword ptr [rax], 0x22
	jmp	.label_951
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a780

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
	.align	32
	#Procedure 0x40a7b0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_969
	test	rsi, rsi
	lea	rbx, [rsp + 0x20]
	cmovne	rbx, rsi
	mov	qword ptr [rsp + 0x10], rbx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, rbx
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	rcx, qword ptr [rbx]
	cmp	rcx, r12
	je	.label_970
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_964
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_963
	mov	r13d, 1
.label_964:
	test	r14, r14
	je	.label_971
	mov	r12d, r13d
	jmp	.label_973
.label_970:
	mov	r13d, 4
	test	r14, r14
	je	.label_963
	mov	r15, rcx
	movsx	esi, byte ptr [r12]
	test	esi, esi
	je	.label_963
	mov	rdi, r14
	call	strchr
	xor	r12d, r12d
	mov	ebp, 1
	test	rax, rax
	mov	rcx, r15
	je	.label_963
.label_973:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_991
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_997
	mov	r15d, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_960
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_960
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_960
	mov	rax, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_957
	cmp	eax, 0x44
	je	.label_957
	cmp	eax, 0x69
	jne	.label_960
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_962
	mov	r15d, 1
.label_962:
	mov	r8d, 0x400
	jmp	.label_960
.label_971:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_963
.label_991:
	mov	r13, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_975
.label_957:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_960:
	movabs	r9, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_980
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_985
	jmp	qword ptr [word ptr [+ (rax * 8) + label_987]]
.label_1365:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_1004
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_993
.label_980:
	cmp	r13d, 0x73
	jg	.label_1001
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_1000
	xor	ebx, ebx
	mov	r13, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1003]]
.label_1229:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_1004
	mov	r13, rbp
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_993
.label_985:
	cmp	r13d, 0x54
	je	.label_986
	cmp	r13d, 0x59
	jne	.label_997
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1014
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1014:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_974
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_974:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_984
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_984:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_995
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_995:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_956
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_956:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_981
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_981:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_968
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_968:
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_977
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_977:
	or	ebx, edi
	jmp	.label_961
.label_1001:
	cmp	r13d, 0x74
	je	.label_986
	cmp	r13d, 0x77
	jne	.label_997
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_992
.label_1004:
	inc	r9
	mov	ebx, 1
	mov	r13, r9
	jmp	.label_961
.label_1230:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_999
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_999:
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_1009
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r10d, al
.label_1009:
	or	r10d, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_959
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_959:
	or	ebx, r10d
	jmp	.label_961
.label_1231:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_961
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
	jmp	.label_961
.label_1232:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_989
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_989:
	cmp	rcx, rdi
	jl	.label_1002
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1002:
	or	ebx, r10d
	jmp	.label_961
.label_986:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1007
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1007:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_966
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_966:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_976
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_976:
	or	edi, r11d
	cmp	rcx, r10
	jl	.label_988
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_988:
	or	ebx, edi
	jmp	.label_961
.label_1000:
	cmp	r13d, 0x5a
	jne	.label_997
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1005
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1005:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1008
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_1008:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_958
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_958:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_996
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_996:
	or	r11d, ebx
	cmp	rsi, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_983
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_983:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_994
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_994:
	or	edi, ebx
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_1012
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1012:
	or	ebx, edi
	jmp	.label_961
.label_997:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	mov	r13d, r12d
	jmp	.label_963
.label_1366:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1013
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1013:
	cmp	rcx, r10
	mov	rbx, r13
	jl	.label_998
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	setl	al
	cmovl	rbx, r9
	movzx	r14d, al
.label_998:
	or	r14d, edi
	cmp	rbx, r10
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_982
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	ecx, al
.label_982:
	or	ecx, r14d
	cmp	rsi, r10
	mov	rdi, r13
	jl	.label_978
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r9
	movzx	r11d, al
.label_978:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	mov	rsi, r13
	mov	r14d, 1
	jl	.label_972
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_972:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_1010
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1010:
	or	ebx, r14d
	jmp	.label_961
.label_1367:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_965
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_965:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_979
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_979:
	or	r14d, edi
	cmp	rsi, r10
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_990
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	imul	rbx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rbx, r9
	movzx	edi, al
.label_990:
	or	edi, r14d
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_1011
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_1011:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_1006
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1006:
	or	ebx, r11d
	jmp	.label_961
.label_992:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_993:
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	movzx	ebx, al
.label_961:
	or	ebx, r12d
	mov	rdx, qword ptr [rsp + 8]
	lea	rax, [rdx + r15]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_967
	or	ebx, 2
.label_967:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_975:
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_963:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_969:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40b170

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
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_1044
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
	je	.label_1059
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_1063
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_1022
	mov	ebp, 1
.label_1063:
	test	r14, r14
	je	.label_1066
	mov	edx, ebp
	jmp	.label_1068
.label_1059:
	mov	ebp, 4
	test	r14, r14
	je	.label_1022
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_1022
	mov	rdi, r14
	call	strchr
	xor	edx, edx
	mov	r12d, 1
	test	rax, rax
	mov	rcx, rbx
	je	.label_1022
.label_1068:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1027
	mov	dword ptr [rsp + 0xc], edx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1026
	mov	r8d, 1
	mov	r11d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1039
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1039
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r8d, 1
	mov	r11d, 0x400
	test	rax, rax
	je	.label_1039
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	cmp	eax, 0x42
	je	.label_1053
	cmp	eax, 0x44
	je	.label_1053
	cmp	eax, 0x69
	jne	.label_1039
	mov	rax, qword ptr [rsp + 0x10]
	movzx	eax, byte ptr [rax + 2]
	mov	r8d, 3
	cmp	eax, 0x42
	je	.label_1062
	mov	r8d, 1
.label_1062:
	mov	r11d, 0x400
	jmp	.label_1039
.label_1066:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	jmp	.label_1022
.label_1027:
	mov	r13, r12
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1071
.label_1053:
	mov	r8d, 2
	mov	r11d, 0x3e8
.label_1039:
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_1017
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1023
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1025]]
.label_1212:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_1028
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1032
.label_1017:
	cmp	r13d, 0x73
	jg	.label_1069
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_1043
	xor	ebx, ebx
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1045]]
.label_1305:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_1028
	mov	r13, r12
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1032
.label_1023:
	cmp	r13d, 0x54
	je	.label_1052
	cmp	r13d, 0x59
	jne	.label_1026
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1058
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_1058:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1070
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1070:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_1021
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1021:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_1034
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_1034:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_1015
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1015:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_1050
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_1050:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_1061
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1061:
	or	ecx, edi
	cmp	rbp, r9
	jl	.label_1051
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1051:
	or	ebx, ecx
	jmp	.label_1020
.label_1069:
	cmp	r13d, 0x74
	je	.label_1052
	cmp	r13d, 0x77
	jne	.label_1026
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_1030
.label_1028:
	inc	r10
	mov	ebx, 1
	mov	r13, r10
	jmp	.label_1020
.label_1214:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ecx, 1
	mov	rbp, r13
	mov	ebx, 1
	jl	.label_1038
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, r12
	imul	rbp, r11
	cmp	rax, r12
	setl	al
	cmovl	rbp, r10
	movzx	ebx, al
.label_1038:
	cmp	rbp, rdi
	mov	rsi, r13
	jl	.label_1048
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1048:
	or	ecx, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_1057
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1057:
	or	ebx, ecx
	jmp	.label_1020
.label_1215:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	mov	ebx, 1
	jl	.label_1020
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, r12
	cmp	rax, r12
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
	jmp	.label_1020
.label_1216:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1024
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1024:
	cmp	rsi, rdi
	jl	.label_1040
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1040:
	or	ebx, ecx
	jmp	.label_1020
.label_1052:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1046
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_1046:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1060
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1060:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_1036
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1036:
	or	edi, ecx
	cmp	rbp, r9
	jl	.label_1019
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1019:
	or	ebx, edi
	jmp	.label_1020
.label_1043:
	cmp	r13d, 0x5a
	jne	.label_1026
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1035
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_1035:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1047
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1047:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_1054
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1054:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_1065
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_1065:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_1037
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1037:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_1029
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_1029:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_1041
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1041:
	or	ebx, edi
	jmp	.label_1020
.label_1026:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	mov	eax, dword ptr [rsp + 0xc]
	or	eax, 2
	mov	ebp, eax
	jmp	.label_1022
.label_1213:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1049
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1049:
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_1064
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_1064:
	or	ebx, ecx
	cmp	rdi, r9
	mov	r14d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1073
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1073:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_1072
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_1072:
	or	r14d, ecx
	cmp	rdi, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1031
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1031:
	or	ecx, r14d
	cmp	rsi, r9
	jl	.label_1016
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1016:
	or	ebx, ecx
	jmp	.label_1020
.label_1217:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1055
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_1055:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1067
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1067:
	or	ecx, edi
	cmp	rsi, r9
	mov	r14d, 1
	mov	rdi, r13
	mov	ebx, 1
	jl	.label_1018
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_1018:
	or	ebx, ecx
	cmp	rdi, r9
	mov	rcx, r13
	jl	.label_1033
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rcx, rdi
	imul	rcx, r11
	cmp	rax, rdi
	setl	al
	cmovl	rcx, r10
	movzx	r14d, al
.label_1033:
	or	r14d, ebx
	cmp	rcx, r9
	mov	ebx, 1
	jl	.label_1042
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1042:
	or	ebx, r14d
	jmp	.label_1020
.label_1030:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_1032:
	cmp	r12, rax
	setg	al
	cmovg	r13, r10
	movzx	ebx, al
.label_1020:
	or	ebx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	cmp	byte ptr [rcx + r8], 0
	je	.label_1056
	or	ebx, 2
.label_1056:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, ebx
.label_1071:
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_1022:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1044:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bb00

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
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	dec	edi
	cmp	edi, 4
	jae	.label_1074
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1075]]
	cdqe	
	test	eax, eax
	jns	.label_1076
	lea	r14, [rsp + 6]
	mov	ebx, OFFSET FLAT:.str_7
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	jmp	.label_1077
.label_1076:
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	mov	ebx, OFFSET FLAT:.str_7
.label_1077:
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
.label_1074:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb80

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1078
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1098:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1098
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_1091
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_1085
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1090
	cmp	eax, 0x22
	jne	.label_1091
	mov	dword ptr [rsp + 4], 1
.label_1090:
	test	r14, r14
	jne	.label_1093
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1091
.label_1085:
	test	r14, r14
	je	.label_1091
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1091
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_1091
.label_1093:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1082
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1087
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1084
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1084
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1084
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1081
	cmp	eax, 0x44
	je	.label_1081
	cmp	eax, 0x69
	jne	.label_1084
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_1101
	mov	ecx, 1
.label_1101:
	mov	esi, 0x400
	jmp	.label_1084
.label_1082:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1092
.label_1081:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1084:
	cmp	r13d, 0x59
	jg	.label_1089
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1097
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1099]]
.label_1375:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1100
.label_1089:
	cmp	r13d, 0x73
	jg	.label_1102
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1103
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1079]]
.label_1206:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1100:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1088
.label_1097:
	cmp	r13d, 0x54
	je	.label_1083
	cmp	r13d, 0x59
	jne	.label_1087
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	sbb	r13b, r13b
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
	or	dl, r13b
	or	dl, bpl
	jmp	.label_1095
.label_1102:
	cmp	r13d, 0x74
	je	.label_1083
	cmp	r13d, 0x77
	jne	.label_1087
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_1088
.label_1207:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_1096
.label_1208:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1086
.label_1209:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1094
.label_1083:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_1104
.label_1103:
	cmp	r13d, 0x5a
	jne	.label_1087
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_1095:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1086
.label_1087:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_1091
.label_1376:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_1094
.label_1377:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_1104:
	or	dl, r10b
.label_1096:
	or	dl, bl
.label_1094:
	and	dl, 1
	movzx	eax, dl
.label_1086:
	mov	rbp, rsi
.label_1088:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1080
	or	eax, 2
.label_1080:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_1092:
	mov	qword ptr [rax], rbp
.label_1091:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1078:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c230

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1105
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1106
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1106
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1105:
	mov	ecx, 1
.label_1106:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c280

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1107
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1109
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1107
.label_1109:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1107
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1108
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1108:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1107:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c300

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1110
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1110:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_1117
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1123
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1115
	test	esi, esi
	jne	.label_1117
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1118
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1119
.label_1117:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1124
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1115
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1128
.label_1123:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1121
.label_1115:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1130
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1113
.label_1130:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1113:
	mov	edx, dword ptr [rax]
.label_1120:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_1121:
	mov	ebp, eax
.label_1112:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1128:
	cmp	eax, 6
	jne	.label_1124
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1125
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1127
.label_1124:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1129
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1114
.label_1118:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1119:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_1120
.label_1125:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1127:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1126
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1111
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1111
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1112
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_1122
.label_1111:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1112
.label_1129:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1114:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1121
.label_1126:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1122:
	test	al, al
	je	.label_1112
	test	ebp, ebp
	js	.label_1112
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1116
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1112
.label_1116:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1112
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1131
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1131
	test	byte ptr [rbx + 1], 1
	je	.label_1131
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1131:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c620

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
	jne	.label_1132
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1132
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1133
.label_1132:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1133:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1134
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1134:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c690

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
	je	.label_1135
	cmp	r15, -2
	jb	.label_1135
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1135
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1135:
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
	#Procedure 0x40c6f0

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
	je	.label_1136
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1136:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1137
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1137
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1137:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c770
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_1138
	nop	word ptr [rax + rax]
.label_1139:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1139
.label_1138:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7a0

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
	je	.label_1140
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1141
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_1142
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_1142:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_1143
.label_1140:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1141:
	xor	eax, eax
.label_1143:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c830

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
	mov	edi, OFFSET FLAT:.str_0
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_1146
	test	bl, bl
	je	.label_1148
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_1145
.label_1148:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_1152
.label_1146:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_1145
.label_1152:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1145
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_1144
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_1144:
	test	bl, bl
	je	.label_1151
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_0
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_1147
.label_1151:
	mov	edi, OFFSET FLAT:.str_0
	call	unsetenv
.label_1147:
	test	eax, eax
	je	.label_1149
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_1150
	nop	dword ptr [rax]
.label_1153:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_1153
.label_1150:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1145
.label_1149:
	call	tzset
	mov	rax, r13
.label_1145:
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
	#Procedure 0x40c970

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
	je	.label_1158
	cmp	r15, rbx
	ja	.label_1156
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1158
.label_1156:
	mov	ebp, OFFSET FLAT:.str
	cmp	byte ptr [rbx], 0
	je	.label_1160
	lea	rbp, [r12 + 9]
	jmp	.label_1163
.label_1155:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1163:
	lea	r13, [r12 + 9]
.label_1165:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1160
	cmp	byte ptr [rbp], 0
	jne	.label_1157
	cmp	rbp, r13
	jne	.label_1161
	cmp	byte ptr [r12 + 8], 0
	je	.label_1162
.label_1157:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_1165
	jmp	.label_1155
.label_1162:
	mov	rbp, r13
.label_1161:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1159
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1154:
	xor	r14d, r14d
	jmp	.label_1158
.label_1159:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1166
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_1158
.label_1166:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	cmp	rdx, 0x77
	mov	r13, rdx
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1164
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
.label_1160:
	mov	qword ptr [r15 + 0x30], rbp
.label_1158:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1164:
	mov	qword ptr [r12], 0
	jmp	.label_1154
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

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
	je	.label_1167
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_1173
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_0
	mov	edx, 1
	call	setenv
	jmp	.label_1172
.label_1173:
	mov	edi, OFFSET FLAT:.str_0
	call	unsetenv
.label_1172:
	test	eax, eax
	je	.label_1168
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_1169
.label_1168:
	call	tzset
	mov	r12b, 1
.label_1169:
	cmp	rbp, 2
	jb	.label_1171
	nop	
.label_1170:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1170
.label_1171:
	mov	dword ptr [r14], r15d
.label_1167:
	mov	al, r12b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb70

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
	je	.label_1177
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1174
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_1178
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_1175
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x20]
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
	jne	.label_1175
.label_1178:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1175
	mov	qword ptr [rsp + 0x38], -1
.label_1175:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1174
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_1176
.label_1174:
	mov	rax, -1
.label_1176:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1177:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc70

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
	jne	.label_1180
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1179
	test	cl, cl
	jne	.label_1179
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1179
.label_1180:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1179
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1179:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ccd0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_1181
	mov	rax, rcx
.label_1181:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x40cd00

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