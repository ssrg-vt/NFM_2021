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
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	cmp	r15d, 2
	mov	r12d, 0
	jl	.label_49
	movsxd	rax, r15d
	lea	rdi, [rax*8 - 8]
	call	xmalloc
	mov	r12, rax
.label_49:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	lea	r8, [rsp + 0x3c]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_13
	mov	qword ptr [rsp + 0x28], r15
	xor	r15d, r15d
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_15
	nop	
.label_7:
	cmp	ebp, 0x43
	jle	.label_24
	add	ebp, -0x44
	cmp	ebp, 0x3d
	ja	.label_26
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_31]]
.label_1319:
	mov	byte ptr [byte ptr [rip + use_form_feed]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_24:
	cmp	ebp, 1
	jne	.label_35
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_8
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2b
	jne	.label_8
	inc	rdx
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	test	al, al
	jne	.label_40
.label_8:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	ecx, ebx
	inc	ebx
	mov	qword ptr [r12 + rcx*8], rax
.label_40:
	xor	r13d, r13d
	jmp	.label_9
.label_1318:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + date_format]],  rax
	xor	r13d, r13d
	jmp	.label_9
.label_1320:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1321:
	mov	byte ptr [byte ptr [rip + skip_count]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, -0x80000000
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + start_line_num]],  eax
	jmp	.label_9
.label_1322:
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str_0
	mov	dword ptr [dword ptr [rip + col_sep_length]],  0
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r13d, r13d
	test	rbp, rbp
	je	.label_22
	mov	rdi, rbp
	call	strlen
	test	rax, -0x80000000
	jne	.label_19
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	jmp	.label_9
.label_1323:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  0
	xor	r13d, r13d
	jmp	.label_9
.label_1324:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r13d, r13d
	jmp	.label_9
.label_1325:
	mov	byte ptr [byte ptr [rip + print_across_flag]],  1
	jmp	.label_12
.label_1326:
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1327:
	mov	byte ptr [byte ptr [rip + use_cntrl_prefix]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1328:
	mov	byte ptr [byte ptr [rip + double_space]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1329:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_17
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_17:
	mov	byte ptr [byte ptr [rip + untabify_input]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1330:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + custom_header]],  rax
	xor	r13d, r13d
	jmp	.label_9
.label_1331:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_36
	mov	esi, 0x69
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_36:
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1332:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + lines_per_page]],  eax
	jmp	.label_9
.label_1333:
	mov	byte ptr [byte ptr [rip + parallel_files]],  1
.label_12:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1334:
	mov	byte ptr [byte ptr [rip + numbered_lines]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r13d, r13d
	test	rdi, rdi
	je	.label_9
	mov	esi, 0x6e
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	xor	r13d, r13d
	jmp	.label_9
.label_1335:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + chars_per_margin]],  eax
	jmp	.label_9
.label_1336:
	mov	byte ptr [byte ptr [rip + ignore_failed_opens]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1337:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	test	rbp, rbp
	je	.label_23
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	xor	al, 1
	test	al, 1
	je	.label_23
	mov	rdi, rbp
	call	strlen
	test	rax, -0x80000000
	jne	.label_19
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	r13d, r13d
.label_23:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_9
.label_1338:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1339:
	mov	byte ptr [byte ptr [rip + use_esc_sequence]],  1
	xor	r13d, r13d
	jmp	.label_9
.label_1340:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	cl,  byte ptr [byte ptr [rip + truncate_lines]]
	and	cl, 1
	mov	cl, 1
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_18
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r13d, r13d
.label_18:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_9
.label_1341:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	qword ptr [rsp + 0x40], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_9
.label_1342:
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	test	rdx, rdx
	je	.label_45
	mov	edi, dword ptr [rsp + 0x3c]
	xor	r13d, r13d
	xor	esi, esi
	call	first_last_page
	test	al, al
	jne	.label_9
	jmp	.label_51
.label_22:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_9
	nop	word ptr cs:[rax + rax]
.label_15:
	lea	eax, [rbp - 0x30]
	cmp	eax, 9
	ja	.label_7
	lea	r13, [r15 + 1]
	cmp	r13, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x30]
	jb	.label_10
	mov	rdi, rax
	lea	rsi, [rsp + 0x40]
	call	x2realloc
.label_10:
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rax + r15], bpl
	mov	byte ptr [rax + r15 + 1], 0
.label_9:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	r8, [rsp + 0x3c]
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, -1
	mov	r15, r13
	jne	.label_15
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_33
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rdi, rbp
	call	free
.label_33:
	mov	r15, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_42
.label_13:
	xor	ebp, ebp
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	ebx, ebx
.label_42:
	cmp	qword ptr [word ptr [rip + date_format]],  0
	jne	.label_48
	mov	edi, OFFSET FLAT:.str.14
	call	getenv
	mov	ecx, OFFSET FLAT:.str.16
	test	rax, rax
	je	.label_52
	mov	edi, 2
	call	hard_locale
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.15
	test	al, al
	cmovne	rcx, rdx
.label_52:
	mov	qword ptr [word ptr [rip + date_format]],  rcx
.label_48:
	mov	edi, OFFSET FLAT:.str
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + localtz]],  rax
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_14
	mov	qword ptr [word ptr [rip + first_page_number]],  1
.label_14:
	mov	r8b,  byte ptr [byte ptr [rip + parallel_files]]
	and	r8b, 1
	movzx	ecx, r8b
	cmp	ecx, 1
	jne	.label_20
	movzx	ecx,  byte ptr [byte ptr [rip + explicit_columns]]
	and	ecx, 1
	cmp	ecx, 1
	je	.label_27
	movzx	ecx,  byte ptr [byte ptr [rip + print_across_flag]]
	and	ecx, 1
	cmp	ecx, 1
	je	.label_34
.label_20:
	test	bpl, 1
	je	.label_37
	test	r13b, 1
	jne	.label_38
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	je	.label_37
	test	byte ptr [byte ptr [rip + use_col_separator]],  1
	jne	.label_37
	test	r8b, r8b
	jne	.label_39
	movzx	ecx,  byte ptr [byte ptr [rip + explicit_columns]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_37
.label_39:
	mov	cl,  byte ptr [byte ptr [rip + truncate_lines]]
	and	cl, 1
	jne	.label_28
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  0
	jg	.label_28
	jmp	.label_37
.label_38:
	test	r8b, r8b
	jne	.label_47
	movzx	ecx,  byte ptr [byte ptr [rip + explicit_columns]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_50
.label_47:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	je	.label_37
.label_28:
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	jmp	.label_37
.label_50:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
.label_37:
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, r15d
	jge	.label_53
	mov	esi, r15d
	sub	esi, ecx
	lea	edx, [r15 - 1]
	sub	edx, ecx
	test	sil, 3
	je	.label_11
	movsxd	rcx, ecx
	and	esi, 3
	neg	esi
	nop	word ptr [rax + rax]
.label_16:
	mov	rdi, qword ptr [r14 + rcx*8]
	mov	ebp, ebx
	inc	ebx
	mov	qword ptr [r12 + rbp*8], rdi
	inc	rcx
	inc	esi
	jne	.label_16
.label_11:
	cmp	edx, 3
	jb	.label_21
	mov	edx, ecx
	movsxd	rcx, ecx
	lea	rdi, [r14 + rcx*8]
	mov	ebx, ebx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rcx, qword ptr [rdi + rsi*8]
	lea	rbp, [rbx + rsi]
	mov	eax, ebp
	mov	qword ptr [r12 + rax*8], rcx
	lea	eax, [rdx + rsi + 1]
	cdqe	
	mov	rax, qword ptr [r14 + rax*8]
	lea	ecx, [rbp + 1]
	mov	qword ptr [r12 + rcx*8], rax
	lea	eax, [rdx + rsi + 2]
	cdqe	
	mov	rax, qword ptr [r14 + rax*8]
	lea	ecx, [rbp + 2]
	mov	qword ptr [r12 + rcx*8], rax
	lea	eax, [rdx + rsi + 3]
	cdqe	
	mov	rax, qword ptr [r14 + rax*8]
	add	ebp, 3
	mov	qword ptr [r12 + rbp*8], rax
	add	rsi, 4
	lea	ecx, [rdx + rsi]
	cmp	ecx, r15d
	jl	.label_30
	add	ebx, esi
.label_21:
	mov	dword ptr [dword ptr [rip + optind]],  ecx
.label_53:
	test	ebx, ebx
	je	.label_41
	test	r8b, r8b
	je	.label_44
	mov	edi, ebx
	mov	rsi, r12
	call	print_files
	jmp	.label_46
	nop	word ptr [rax + rax]
.label_44:
	mov	edi, 1
	mov	rsi, r12
	call	print_files
	add	r12, 8
	dec	ebx
	jne	.label_44
	jmp	.label_46
.label_41:
	xor	edi, edi
	xor	esi, esi
	call	print_files
.label_46:
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
	jne	.label_43
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_25
.label_43:
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
.label_35:
	cmp	ebp, 0xffffff7d
	je	.label_32
	cmp	ebp, 0xffffff7e
	jne	.label_26
	xor	edi, edi
	call	usage
.label_32:
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
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	jmp	.label_29
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	jmp	.label_29
.label_25:
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
.label_19:
	call	integer_overflow
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
.label_29:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_51:
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
	#Procedure 0x402570

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
	jne	.label_56
	mov	rbp, qword ptr [rsp + 0x10]
	xor	eax, eax
	cmp	rbp, rbx
	je	.label_54
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_54
	movzx	edx, byte ptr [rbp]
	cmp	edx, 0x3a
	jne	.label_57
	inc	rbp
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbp
	call	xstrtoumax
	test	eax, eax
	jne	.label_56
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	rbp, rdx
	je	.label_60
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	cmp	rax, rcx
	jae	.label_58
	xor	eax, eax
	jmp	.label_54
.label_57:
	mov	rax, -1
	jmp	.label_59
.label_60:
	xor	eax, eax
	jmp	.label_54
.label_58:
	mov	dl, byte ptr [rdx]
.label_59:
	test	dl, dl
	je	.label_55
	xor	eax, eax
	jmp	.label_54
.label_55:
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
.label_56:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402660

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
	jb	.label_61
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_61:
	test	al, al
	je	.label_63
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_62
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_62
	mov	dword ptr [rbp], ecx
.label_63:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_62:
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
	#Procedure 0x402730

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_66
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
	je	.label_65
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_65:
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
.label_66:
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
	#Procedure 0x402ab0

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
	jle	.label_226
	movzx	edx,  byte ptr [byte ptr [rip + extremities]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_234
	jmp	.label_237
.label_226:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
.label_237:
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
	mov	eax, ecx
.label_234:
	movzx	ecx,  byte ptr [byte ptr [rip + double_space]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_242
	mov	ecx, eax
	shr	ecx, 0x1f
	add	ecx, eax
	sar	ecx, 1
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
.label_242:
	test	r14d, r14d
	je	.label_253
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_254
	mov	dword ptr [dword ptr [rip + columns]],  r14d
	mov	al, 1
	jmp	.label_256
.label_253:
	mov	byte ptr [byte ptr [rip + parallel_files]],  0
	xor	eax, eax
	jmp	.label_256
.label_254:
	xor	eax, eax
.label_256:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	jne	.label_263
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
.label_263:
	mov	r8d,  dword ptr [dword ptr [rip + columns]]
	cmp	r8d, 2
	jl	.label_268
	mov	cl,  byte ptr [byte ptr [rip + use_col_separator]]
	and	cl, 1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	je	.label_91
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  1
	jne	.label_140
	mov	dl, cl
	xor	dl, 1
	test	dl, 1
	je	.label_140
	mov	rdx,  qword ptr [word ptr [rip + col_sep_string]]
	movzx	edx, byte ptr [rdx]
	cmp	edx, 9
	jne	.label_140
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str.70
	jmp	.label_140
.label_268:
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	and	cl, 1
	jne	.label_281
	jmp	.label_287
.label_91:
	mov	edx, OFFSET FLAT:.str.69
	mov	esi, OFFSET FLAT:.str.70
	test	cl, 1
	cmovne	rsi, rdx
	mov	qword ptr [word ptr [rip + col_sep_string]],  rsi
	mov	dword ptr [dword ptr [rip + col_sep_length]],  1
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
.label_140:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	test	cl, 1
	je	.label_287
.label_281:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  0
.label_287:
	mov	r10b,  byte ptr [byte ptr [rip + numbered_lines]]
	and	r10b, 1
	xor	r11d, r11d
	movzx	edx, r10b
	cmp	edx, 1
	jne	.label_296
	mov	edx,  dword ptr [dword ptr [rip + start_line_num]]
	mov	dword ptr [dword ptr [rip + line_count]],  edx
	mov	edx,  dword ptr [dword ptr [rip + chars_per_number]]
	movzx	esi,  byte ptr [byte ptr [rip + number_separator]]
	cmp	esi, 9
	jne	.label_74
	mov	esi, edx
	sar	esi, 0x1f
	shr	esi, 0x1d
	add	esi, edx
	and	esi, 0xfffffff8
	mov	edi, edx
	sub	edi, esi
	neg	edi
	lea	edx, [rdx + rdi + 8]
	jmp	.label_80
.label_74:
	inc	edx
.label_80:
	mov	dword ptr [dword ptr [rip + number_width]],  edx
	xor	r11d, r11d
	test	al, al
	cmovne	r11d, edx
.label_296:
	mov	ebp,  dword ptr [dword ptr [rip + col_sep_length]]
	test	ebp, ebp
	js	.label_92
	je	.label_94
	test	r8d, r8d
	jle	.label_95
	lea	r9d, [r8 - 1]
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	ebp
	jmp	.label_97
.label_92:
	test	r8d, r8d
	jle	.label_101
	cmp	ebp, -1
	je	.label_94
	lea	r9d, [r8 - 1]
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
.label_97:
	cmp	eax, r9d
	jl	.label_108
	jmp	.label_94
.label_95:
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
	jmp	.label_110
.label_101:
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	idiv	ebp
.label_110:
	cmp	r8d, eax
	jle	.label_108
.label_94:
	lea	eax, [r8 - 1]
	imul	ebp, eax
	test	ebp, ebp
	js	.label_119
	mov	edi, ebp
.label_108:
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	edx, ecx
	sub	edx, r11d
	mov	esi, edi
	xor	esi, 0x80000000
	xor	eax, eax
	cmp	edx, esi
	mov	ebp, edi
	jl	.label_123
	jmp	.label_129
.label_119:
	lea	r9d, [rbp + 0x7fffffff]
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	esi, ecx
	sub	esi, r11d
	xor	eax, eax
	cmp	r9d, esi
	jl	.label_123
.label_129:
	sub	ecx, r11d
	sub	ecx, ebp
	mov	eax, ecx
.label_123:
	cdq	
	idiv	r8d
	mov	dword ptr [dword ptr [rip + chars_per_column]],  eax
	test	eax, eax
	jle	.label_136
	test	r10b, r10b
	je	.label_142
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	call	free
	movsxd	rax,  dword ptr [dword ptr [rip + chars_per_number]]
	cmp	rax, 0xb
	mov	edi, 0xb
	cmova	rdi, rax
	inc	rdi
	call	xmalloc
	mov	qword ptr [word ptr [rip + number_buff]],  rax
.label_142:
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
	js	.label_113
	shl	rdi, 6
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [word ptr [rip + column_vector]],  rbp
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	je	.label_171
	test	r14d, r14d
	jle	.label_177
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	call	open_file
	test	al, al
	je	.label_156
	mov	rbx, qword ptr [rbx]
	mov	rdi, qword ptr [rbp]
	call	fileno
	mov	rdi, rbx
	mov	esi, eax
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
	lea	rbx, [rbp + 8]
	jmp	.label_111
	nop	dword ptr [rax]
.label_201:
	add	rbp, 0x40
	add	rbx, 8
.label_171:
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
	je	.label_156
	mov	edi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_75
.label_177:
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
	mov	edi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
	call	init_header
	mov	dword ptr [rbp + 0x2c], 0
.label_111:
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	mov	eax, esi
	dec	eax
	je	.label_75
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbp]
	add	rbp, 0x40
	lea	edi, [rsi + 3]
	add	esi, -2
	test	dil, 3
	je	.label_229
	and	edi, 3
	neg	edi
	nop	word ptr [rax + rax]
.label_236:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	add	rbp, 0x40
	dec	eax
	inc	edi
	jne	.label_236
.label_229:
	cmp	esi, 3
	jb	.label_75
	add	rbp, 0xf9
	nop	word ptr cs:[rax + rax]
.label_255:
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
	jne	.label_255
.label_75:
	mov	eax,  dword ptr [dword ptr [rip + total_files]]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	jne	.label_202
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	js	.label_293
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	je	.label_68
	test	r14d, r14d
	js	.label_295
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_297
.label_293:
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	test	r14d, r14d
	js	.label_272
	cmp	ecx, -1
	je	.label_68
	mov	eax, 0x80000000
	cdq	
.label_297:
	idiv	ecx
	cmp	eax, r14d
	jge	.label_68
	jmp	.label_70
.label_295:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_73
.label_272:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_73:
	idiv	ecx
	cmp	r14d, eax
	jl	.label_70
.label_68:
	imul	r14d, ecx
	cmp	r14d, 0x7fffffff
	je	.label_70
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	cmp	ebp, 0x7fffffff
	je	.label_70
	inc	ebp
	js	.label_87
	test	ebp, ebp
	je	.label_88
	test	r14d, r14d
	js	.label_89
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_93
.label_87:
	test	r14d, r14d
	js	.label_210
	cmp	ebp, -1
	je	.label_88
	mov	eax, 0x80000000
	cdq	
.label_93:
	idiv	ebp
	cmp	eax, r14d
	jge	.label_88
	jmp	.label_70
.label_89:
	mov	eax, 0x80000000
	cdq	
	jmp	.label_102
.label_210:
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_102:
	idiv	ebp
	cmp	r14d, eax
	jl	.label_70
.label_88:
	lea	ebx, [r14 + 1]
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	call	free
	test	ebx, ebx
	js	.label_113
	movsxd	rdi, ebx
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + line_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	test	r14d, r14d
	js	.label_113
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
	jb	.label_113
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
.label_202:
	mov	r14,  qword ptr [word ptr [rip + first_page_number]]
	mov	eax, 1
	cmp	r14, 2
	jb	.label_154
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	r15d, 1
	nop	dword ptr [rax]
.label_283:
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	r12d, 1
	cmp	ecx, 1
	jle	.label_223
	nop	word ptr cs:[rax + rax]
.label_183:
	test	eax, eax
	jle	.label_169
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
.label_176:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_81
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_81:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_176
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
.label_169:
	inc	r12d
	cmp	r12d, ecx
	jl	.label_183
.label_223:
	mov	byte ptr [byte ptr [rip + last_line]],  1
	test	eax, eax
	jle	.label_187
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	dword ptr [rax]
.label_195:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_191
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_read
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_191:
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
	je	.label_205
	mov	dword ptr [rcx + 0x10], 2
.label_205:
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
.label_187:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	jmp	.label_200
.label_216:
	lea	edx, [rax + 1]
	sub	edx, esi
	add	rcx, 0xd0
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	dword ptr [rcx - 0xc0], 3
	je	.label_76
	mov	dword ptr [rcx - 0xc0], 2
.label_76:
	cmp	dword ptr [rcx - 0x80], 3
	je	.label_231
	mov	dword ptr [rcx - 0x80], 2
.label_231:
	cmp	dword ptr [rcx - 0x40], 3
	je	.label_233
	mov	dword ptr [rcx - 0x40], 2
.label_233:
	cmp	dword ptr [rcx], 3
	je	.label_235
	mov	dword ptr [rcx], 2
.label_235:
	add	rcx, 0x100
	add	edx, -4
	jne	.label_238
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rdx,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	je	.label_244
	test	al, 1
	mov	rsi, rdx
	mov	edi, eax
	je	.label_247
	cmp	dword ptr [rdx + 0x10], 2
	jne	.label_251
	mov	dword ptr [rdx + 0x10], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_251:
	lea	edi, [rax - 1]
	lea	rsi, [rdx + 0x40]
.label_247:
	cmp	eax, 1
	je	.label_244
	add	rsi, 0x50
	nop	word ptr [rax + rax]
.label_271:
	cmp	dword ptr [rsi - 0x40], 2
	jne	.label_276
	mov	dword ptr [rsi - 0x40], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_276:
	cmp	dword ptr [rsi], 2
	jne	.label_299
	mov	dword ptr [rsi], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_299:
	add	rsi, 0x80
	add	edi, -2
	jne	.label_271
.label_244:
	test	cl, 1
	je	.label_118
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	mov	byte ptr [byte ptr [rip + last_line]],  0
	test	ecx, ecx
	jg	.label_274
	jmp	.label_277
	nop	dword ptr [rax + rax]
.label_118:
	cmp	dword ptr [rdx + 0x10], 3
	je	.label_279
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  1
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_274:
	inc	r15
	cmp	r15, r14
	jb	.label_283
	jmp	.label_286
.label_279:
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_277:
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
	jle	.label_156
.label_286:
	mov	rax,  qword ptr [word ptr [rip + first_page_number]]
.label_154:
	mov	qword ptr [word ptr [rip + page_number]],  rax
	mov	eax,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	r10b,  byte ptr [byte ptr [rip + truncate_lines]]
	and	r10b, 1
	xor	ebp, ebp
	movzx	ecx, r10b
	cmp	ecx, 1
	jne	.label_67
	movzx	ecx,  byte ptr [byte ptr [rip + parallel_files]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_77
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_77
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebp, eax
	add	ebp,  dword ptr [dword ptr [rip + number_width]]
	jmp	.label_67
.label_77:
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebp, eax
.label_67:
	mov	r14d,  dword ptr [dword ptr [rip + col_sep_length]]
	add	eax, r14d
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	edi, 1
	mov	sil,  byte ptr [byte ptr [rip + storing_columns]]
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_170
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
.label_135:
	mov	qword ptr [rsi + 0x20], r13
	mov	qword ptr [rsi + 0x18], rbx
	test	r11b, 1
	je	.label_125
	cmp	edi, 1
	sete	r8b
	or	r8b, r9b
	jmp	.label_130
	nop	word ptr [rax + rax]
.label_125:
	xor	r8d, r8d
.label_130:
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
	jl	.label_135
	jmp	.label_144
.label_170:
	mov	dword ptr [rsp + 4], esi
	mov	rsi, r12
.label_144:
	mov	ebp, dword ptr [rsp + 4]
	test	bpl, 1
	jne	.label_146
	movzx	ecx,  byte ptr [byte ptr [rip + balance_columns]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_146
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:store_char
	mov	qword ptr [word ptr [rsi + 24]], OFFSET FLAT:print_stored
	jmp	.label_153
.label_146:
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:print_char
	mov	qword ptr [word ptr [rsi + 24]], OFFSET FLAT:read_line
.label_153:
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_159
	mov	cl,  byte ptr [byte ptr [rip + parallel_files]]
	cmp	edi, 1
	sete	dl
	xor	cl, 1
	or	cl, dl
	jmp	.label_161
.label_159:
	xor	ecx, ecx
.label_161:
	and	cl, 1
	mov	byte ptr [rsi + 0x38], cl
	mov	dword ptr [rsi + 0x34], eax
	mov	eax,  dword ptr [dword ptr [rip + line_count]]
	mov	dword ptr [dword ptr [rip + line_number]],  eax
	jmp	.label_166
	nop	word ptr [rax + rax]
.label_224:
	cmp	dword ptr [r12 + 0x10], 3
	setne	al
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	xor	ebp, ebp
.label_166:
	test	bpl, 1
	je	.label_175
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	jmp	.label_178
	nop	word ptr cs:[rax + rax]
.label_175:
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
	jle	.label_186
	lea	esi, [r14 - 1]
	mov	edi, 1
	test	r14b, 7
	mov	rdx, r12
	je	.label_96
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
.label_204:
	mov	edi, ebx
	mov	dword ptr [rdx + 0x2c], 0
	add	rdx, 0x40
	lea	ebx, [rdi + 1]
	cmp	ebp, ebx
	jne	.label_204
	add	edi, 2
.label_96:
	cmp	esi, 7
	jb	.label_193
	add	rdx, 0x1ec
	mov	al, r8b
	inc	al
	movzx	eax, al
	and	eax, 1
	sub	ecx, eax
	inc	ecx
	sub	ecx, edi
	nop	word ptr cs:[rax + rax]
.label_245:
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
	jne	.label_245
.label_193:
	test	r14d, r14d
	jle	.label_186
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ecx, ecx
	je	.label_186
	mov	r15d, 1
	xor	eax, eax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_289:
	mov	dword ptr [r12 + 0x28], r13d
	test	ecx, ecx
	je	.label_152
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	test	esi, esi
	je	.label_152
	mov	edx, dword ptr [r12 + 0x10]
	mov	ebx, 1
	sub	ebx, esi
	mov	ebp, eax
	nop	dword ptr [rax]
.label_284:
	test	edx, edx
	je	.label_258
	mov	eax, ebp
	jmp	.label_259
	nop	dword ptr [rax + rax]
.label_258:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	mov	rdi, r12
	call	read_line
	test	al, al
	jne	.label_266
	mov	rdi, r12
	call	read_rest_of_line
.label_266:
	mov	edx, dword ptr [r12 + 0x10]
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	test	edx, edx
	je	.label_269
	cmp	ebp, eax
	jne	.label_269
	mov	eax, ebp
	jmp	.label_259
.label_269:
	inc	dword ptr [r12 + 0x2c]
	mov	ecx, r13d
	mov	rsi,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rsi + rcx*4], ebp
	mov	esi,  dword ptr [dword ptr [rip + input_position]]
	inc	r13d
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	mov	dword ptr [rdi + rcx*4], esi
	nop	word ptr [rax + rax]
.label_259:
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ebx, ebx
	je	.label_152
	inc	ebx
	test	ecx, ecx
	mov	ebp, eax
	jne	.label_284
.label_152:
	cmp	r15d, r14d
	jge	.label_206
	inc	r15d
	add	r12, 0x40
	test	ecx, ecx
	jne	.label_289
.label_206:
	mov	cl,  byte ptr [byte ptr [rip + balance_columns]]
	and	cl, 1
	mov	ecx, r13d
	mov	rdx,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rdx + rcx*4], eax
	jne	.label_292
	xor	r8d, r8d
	jmp	.label_257
	nop	word ptr [rax + rax]
.label_186:
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rax], 0
	xor	r13d, r13d
	test	r8b, 1
	mov	r8d, 0
	je	.label_257
.label_292:
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	r8b, 1
	test	edi, edi
	jle	.label_257
	mov	rsi,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rsi, 0x2c
	xor	ebp, ebp
	xor	ebx, ebx
	nop	
.label_143:
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
	jl	.label_143
.label_257:
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	eax, edi
	dec	eax
	mov	rcx, r12
	je	.label_190
	lea	edx, [rdi - 2]
	add	edi, 7
	test	dil, 7
	je	.label_98
	and	edi, 7
	neg	edi
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	ecx, dword ptr [rsi + 0x2c]
	mov	dword ptr [rsi + 0x30], ecx
	add	rsi, 0x40
	dec	eax
	inc	edi
	jne	.label_105
	jmp	.label_109
.label_98:
	mov	rsi, r12
.label_109:
	cmp	edx, 7
	jb	.label_112
	add	rsi, 0x1f0
	nop	word ptr cs:[rax + rax]
.label_117:
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
	jne	.label_117
.label_112:
	mov	eax, edx
	shl	rax, 6
	lea	rcx, [rax + r12 + 0x40]
.label_190:
	test	r8b, r8b
	je	.label_239
	mov	eax, dword ptr [rcx + 0x2c]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_145
	nop	word ptr [rax + rax]
.label_239:
	cmp	dword ptr [rcx + 0x10], 0
	je	.label_150
	mov	dword ptr [rcx + 0x30], 0
	jmp	.label_145
.label_150:
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_145
.label_178:
	test	eax, eax
	je	.label_156
	mov	ebp,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	esi, [rax - 1]
	test	al, 3
	je	.label_158
	mov	edi, eax
	and	edi, 3
	neg	edi
	mov	rdx, r12
	nop	
.label_149:
	cmp	dword ptr [rdx + 0x10], 0
	mov	ecx, ebp
	je	.label_162
	xor	ecx, ecx
.label_162:
	mov	dword ptr [rdx + 0x30], ecx
	dec	eax
	add	rdx, 0x40
	inc	edi
	jne	.label_149
	jmp	.label_167
	nop	dword ptr [rax]
.label_158:
	mov	rdx, r12
.label_167:
	cmp	esi, 3
	jb	.label_145
	add	rdx, 0xf0
	nop	
.label_189:
	cmp	dword ptr [rdx - 0xe0], 0
	mov	ecx, ebp
	je	.label_172
	xor	ecx, ecx
.label_172:
	mov	dword ptr [rdx - 0xc0], ecx
	cmp	dword ptr [rdx - 0xa0], 0
	mov	ecx, ebp
	je	.label_174
	xor	ecx, ecx
.label_174:
	mov	dword ptr [rdx - 0x80], ecx
	cmp	dword ptr [rdx - 0x60], 0
	mov	ecx, ebp
	je	.label_181
	xor	ecx, ecx
.label_181:
	mov	dword ptr [rdx - 0x40], ecx
	cmp	dword ptr [rdx - 0x20], 0
	mov	ecx, ebp
	je	.label_184
	xor	ecx, ecx
.label_184:
	mov	dword ptr [rdx], ecx
	add	rdx, 0x100
	add	eax, -4
	jne	.label_189
.label_145:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_156
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	ecx, ecx
	test	al, 1
	mov	ebp, 0
	mov	rsi, r12
	je	.label_221
	cmp	dword ptr [r12 + 0x10], 2
	jb	.label_198
	xor	ecx, ecx
	test	dl, 1
	jne	.label_131
	cmp	dword ptr [r12 + 0x2c], 0
	jle	.label_131
	cmp	dword ptr [r12 + 0x30], 0
	jle	.label_131
	nop	dword ptr [rax]
.label_198:
	mov	ecx, 1
.label_131:
	lea	rsi, [r12 + 0x40]
	mov	ebp, 1
.label_221:
	cmp	eax, 1
	je	.label_208
	mov	edi, eax
	sub	edi, ebp
	add	rsi, 0x70
	nop	dword ptr [rax]
.label_225:
	cmp	dword ptr [rsi - 0x60], 2
	jb	.label_211
	test	dl, 1
	jne	.label_213
	cmp	dword ptr [rsi - 0x44], 0
	jle	.label_213
	cmp	dword ptr [rsi - 0x40], 0
	jle	.label_213
	nop	word ptr [rax + rax]
.label_211:
	inc	ecx
.label_213:
	cmp	dword ptr [rsi - 0x20], 2
	jb	.label_139
	test	dl, 1
	jne	.label_220
	cmp	dword ptr [rsi - 4], 0
	jle	.label_220
	cmp	dword ptr [rsi], 0
	jle	.label_220
	nop	dword ptr [rax + rax]
.label_139:
	inc	ecx
.label_220:
	add	rsi, 0x80
	add	edi, -2
	jne	.label_225
.label_208:
	test	ecx, ecx
	je	.label_156
	mov	cl,  byte ptr [byte ptr [rip + extremities]]
	and	cl, 1
	jne	.label_228
	mov	byte ptr [byte ptr [rip + print_a_header]],  1
.label_228:
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	ebx,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	cl,  byte ptr [byte ptr [rip + double_space]]
	and	cl, 1
	shl	ebx, cl
	xor	r15d, r15d
	test	ebx, ebx
	jg	.label_232
	jmp	.label_79
	nop	dword ptr [rax]
.label_288:
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
.label_232:
	test	al, 1
	mov	ecx, 0
	mov	ebp, 0
	mov	rsi, r12
	je	.label_243
	cmp	dword ptr [r12 + 0x10], 2
	jb	.label_248
	xor	ecx, ecx
	test	dl, 1
	jne	.label_252
	cmp	dword ptr [r12 + 0x2c], 0
	jle	.label_252
	cmp	dword ptr [r12 + 0x30], 0
	jle	.label_252
	nop	dword ptr [rax]
.label_248:
	mov	ecx, 1
.label_252:
	lea	rsi, [r12 + 0x40]
	mov	ebp, 1
.label_243:
	cmp	eax, 1
	je	.label_261
	mov	edi, eax
	sub	edi, ebp
	add	rsi, 0x70
	nop	dword ptr [rax]
.label_280:
	cmp	dword ptr [rsi - 0x60], 2
	jb	.label_265
	test	dl, 1
	jne	.label_85
	cmp	dword ptr [rsi - 0x44], 0
	jle	.label_85
	cmp	dword ptr [rsi - 0x40], 0
	jle	.label_85
	nop	word ptr [rax + rax]
.label_265:
	inc	ecx
.label_85:
	cmp	dword ptr [rsi - 0x20], 2
	jb	.label_273
	test	dl, 1
	jne	.label_275
	cmp	dword ptr [rsi - 4], 0
	jle	.label_275
	cmp	dword ptr [rsi], 0
	jle	.label_275
	nop	dword ptr [rax + rax]
.label_273:
	inc	ecx
.label_275:
	add	rsi, 0x80
	add	edi, -2
	jne	.label_280
.label_261:
	test	ecx, ecx
	je	.label_79
	mov	dword ptr [rsp + 4], ebx
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	byte ptr [byte ptr [rip + empty_line]],  1
	mov	r14d, 1
	test	eax, eax
	jle	.label_282
	nop	dword ptr [rax + rax]
.label_132:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbx, rax
	shr	rbx, 0x20
	test	eax, eax
	jg	.label_78
	cmp	dword ptr [r12 + 0x10], 1
	jne	.label_69
.label_78:
	mov	byte ptr [byte ptr [rip + FF_only]],  0
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	rdi, r12
	call	qword ptr [r12 + 0x18]
	test	al, al
	jne	.label_240
	mov	rdi, r12
	call	read_rest_of_line
.label_240:
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	and	r15b, 1
	or	r15b, r8b
	mov	rbx, qword ptr [r12 + 0x30]
	lea	eax, [rbx - 1]
	mov	dword ptr [r12 + 0x30], eax
	cmp	ebx, 1
	jg	.label_82
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	xor	eax, eax
	test	esi, esi
	je	.label_107
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	edi, edi
	test	sil, 1
	jne	.label_218
	xor	ebp, ebp
	jmp	.label_285
.label_218:
	cmp	dword ptr [rax + 0x10], 2
	jb	.label_241
	xor	edi, edi
	test	cl, 1
	jne	.label_104
	cmp	dword ptr [rax + 0x2c], 0
	jle	.label_104
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_104
.label_241:
	mov	edi, 1
.label_104:
	add	rax, 0x40
	mov	ebp, 1
.label_285:
	cmp	esi, 1
	je	.label_114
	mov	edx, esi
	sub	edx, ebp
	add	rax, 0x70
	nop	dword ptr [rax + rax]
.label_134:
	cmp	dword ptr [rax - 0x60], 2
	jb	.label_103
	test	cl, 1
	jne	.label_120
	cmp	dword ptr [rax - 0x44], 0
	jle	.label_120
	cmp	dword ptr [rax - 0x40], 0
	jle	.label_120
	nop	word ptr [rax + rax]
.label_103:
	inc	edi
.label_120:
	cmp	dword ptr [rax - 0x20], 2
	jb	.label_250
	test	cl, 1
	jne	.label_128
	cmp	dword ptr [rax - 4], 0
	jle	.label_128
	cmp	dword ptr [rax], 0
	jle	.label_128
	nop	dword ptr [rax + rax]
.label_250:
	inc	edi
.label_128:
	add	rax, 0x80
	add	edx, -2
	jne	.label_134
.label_114:
	test	edi, edi
	je	.label_160
.label_82:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_138
	mov	eax, dword ptr [r12 + 0x10]
	test	eax, eax
	je	.label_138
	movzx	ecx,  byte ptr [byte ptr [rip + empty_line]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_147
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_138
.label_69:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_138
	movzx	eax,  byte ptr [byte ptr [rip + empty_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_157
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_138
.label_147:
	cmp	eax, 3
	je	.label_227
	cmp	eax, 2
	jne	.label_138
	movzx	eax,  byte ptr [byte ptr [rip + FF_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_138
.label_227:
	shr	rbx, 0x20
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	r13d, ebx
	sub	r13d, eax
	jle	.label_168
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	jne	.label_212
	cmp	r13d, ecx
	jle	.label_164
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_182
.label_157:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	r13d, ebx
	sub	r13d, eax
	jle	.label_168
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_99
.label_212:
	sub	r13d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r13d
	jmp	.label_192
.label_199:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_116
	nop	
.label_182:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_199
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_116:
	dec	ebx
	jne	.label_182
	jmp	.label_164
.label_99:
	cmp	r13d, ecx
	jle	.label_164
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_207
.label_148:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_127
	nop	dword ptr [rax]
.label_207:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_148
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_127:
	dec	ebx
	jne	.label_207
.label_164:
	mov	dword ptr [dword ptr [rip + output_position]],  r13d
.label_192:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_168:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_222
	call	print_sep_string
.label_222:
	cmp	byte ptr [r12 + 0x38], 0
	je	.label_138
	mov	rdi, r12
	call	add_line_number
	nop	word ptr cs:[rax + rax]
.label_138:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_230
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
.label_230:
	add	r12, 0x40
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	cmp	r14d, eax
	lea	ecx, [r14 + 1]
	mov	r14d, ecx
	jl	.label_132
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	jmp	.label_107
	nop	dword ptr [rax + rax]
.label_282:
	mov	ebx, dword ptr [rsp + 4]
	jmp	.label_246
.label_160:
	mov	eax, esi
.label_107:
	test	r8b, r8b
	mov	ebx, dword ptr [rsp + 4]
	je	.label_246
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_249
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_196:
	dec	ebx
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_246:
	test	eax, eax
	je	.label_260
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	esi, esi
	test	al, 1
	jne	.label_262
	xor	edi, edi
	jmp	.label_267
	nop	dword ptr [rax + rax]
.label_262:
	cmp	dword ptr [rcx + 0x10], 2
	jb	.label_270
	xor	esi, esi
	test	dl, 1
	jne	.label_121
	cmp	dword ptr [rcx + 0x2c], 0
	jle	.label_121
	cmp	dword ptr [rcx + 0x30], 0
	jle	.label_121
.label_270:
	mov	esi, 1
.label_121:
	add	rcx, 0x40
	mov	edi, 1
.label_267:
	cmp	eax, 1
	je	.label_278
	sub	eax, edi
	add	rcx, 0x70
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	dword ptr [rcx - 0x60], 2
	jb	.label_185
	test	dl, 1
	jne	.label_188
	cmp	dword ptr [rcx - 0x44], 0
	jle	.label_188
	cmp	dword ptr [rcx - 0x40], 0
	jle	.label_188
	nop	word ptr [rax + rax]
.label_185:
	inc	esi
.label_188:
	cmp	dword ptr [rcx - 0x20], 2
	jb	.label_291
	test	dl, 1
	jne	.label_84
	cmp	dword ptr [rcx - 4], 0
	jle	.label_84
	cmp	dword ptr [rcx], 0
	jle	.label_84
	nop	dword ptr [rax + rax]
.label_291:
	inc	esi
.label_84:
	add	rcx, 0x80
	add	eax, -2
	jne	.label_264
.label_278:
	test	esi, esi
	jne	.label_298
.label_260:
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	jne	.label_79
.label_298:
	test	r15b, 1
	je	.label_71
	mov	al,  byte ptr [byte ptr [rip + double_space]]
	xor	al, 1
	test	al, 1
	jne	.label_71
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_72
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_86:
	dec	ebx
.label_71:
	test	ebx, ebx
	jle	.label_79
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	jne	.label_288
	jmp	.label_83
.label_72:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_86
.label_249:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_196
	nop	
.label_79:
	test	ebx, ebx
	jne	.label_83
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	xor	ebx, ebx
	test	eax, eax
	jle	.label_83
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	edx, [rax - 1]
	mov	esi, 1
	test	al, 3
	je	.label_100
	mov	edi, eax
	and	edi, 3
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	esi, ebp
	cmp	dword ptr [rcx + 0x10], 0
	jne	.label_290
	mov	byte ptr [rcx + 0x39], 1
.label_290:
	add	rcx, 0x40
	lea	ebp, [rsi + 1]
	cmp	edi, ebp
	jne	.label_115
	add	esi, 2
.label_100:
	cmp	edx, 3
	jb	.label_83
	add	rcx, 0xf9
	inc	eax
	sub	eax, esi
	nop	word ptr [rax + rax]
.label_90:
	cmp	dword ptr [rcx - 0xe9], 0
	jne	.label_126
	mov	byte ptr [rcx - 0xc0], 1
.label_126:
	cmp	dword ptr [rcx - 0xa9], 0
	jne	.label_151
	mov	byte ptr [rcx - 0x80], 1
.label_151:
	cmp	dword ptr [rcx - 0x69], 0
	jne	.label_165
	mov	byte ptr [rcx - 0x40], 1
.label_165:
	cmp	dword ptr [rcx - 0x29], 0
	jne	.label_179
	mov	byte ptr [rcx], 1
.label_179:
	add	rcx, 0x100
	add	eax, -4
	jne	.label_90
	nop	dword ptr [rax]
.label_83:
	and	r15b, 1
	mov	byte ptr [byte ptr [rip + pad_vertically]],  r15b
	je	.label_137
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	and	al, 1
	je	.label_141
.label_137:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_124
	movzx	eax,  byte ptr [byte ptr [rip + print_a_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_124
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_294
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
.label_217:
	mov	byte ptr [byte ptr [rip + print_a_FF]],  0
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	al,  byte ptr [byte ptr [rip + use_form_feed]]
	and	al, 1
	je	.label_133
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_163
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_124
	nop	dword ptr [rax]
.label_133:
	mov	eax, ebx
	add	eax, 5
	je	.label_124
	mov	eax, ebx
	mov	ebx, 0xfffffffb
	sub	ebx, eax
	jmp	.label_173
.label_209:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_180
	nop	
.label_173:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_209
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_180:
	inc	ebx
	jne	.label_173
.label_124:
	mov	rax,  qword ptr [word ptr [rip + last_page_number]]
	mov	rcx,  qword ptr [word ptr [rip + page_number]]
	inc	rcx
	mov	qword ptr [word ptr [rip + page_number]],  rcx
	cmp	rax, rcx
	jb	.label_156
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	je	.label_194
	test	al, 1
	mov	rcx, r12
	mov	edx, eax
	je	.label_122
	cmp	dword ptr [r12 + 0x10], 2
	jne	.label_106
	mov	dword ptr [r12 + 0x10], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_106:
	lea	edx, [rax - 1]
	lea	rcx, [r12 + 0x40]
.label_122:
	cmp	eax, 1
	je	.label_194
	add	rcx, 0x50
	nop	word ptr cs:[rax + rax]
.label_219:
	cmp	dword ptr [rcx - 0x40], 2
	jne	.label_155
	mov	dword ptr [rcx - 0x40], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_155:
	cmp	dword ptr [rcx], 2
	jne	.label_215
	mov	dword ptr [rcx], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_215:
	add	rcx, 0x80
	add	edx, -2
	jne	.label_219
.label_194:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	jne	.label_178
	jmp	.label_224
.label_294:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_217
.label_163:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_124
.label_156:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_113:
	call	xalloc_die
.label_136:
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
.label_70:
	call	integer_overflow
	.section	.text
	.align	32
	#Procedure 0x404300

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
	#Procedure 0x404330

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
	jne	.label_303
	cmp	byte ptr [r14 + 1], 0
	je	.label_300
.label_303:
	mov	qword ptr [rbx + 8], r14
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r14
	call	fopen_safer
	mov	qword ptr [rbx], rax
	jmp	.label_305
.label_300:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbx + 8], rax
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbx], rax
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
.label_305:
	test	rax, rax
	je	.label_301
	mov	esi, 2
	mov	rdi, rax
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	bl, 1
	jmp	.label_304
.label_301:
	mov	byte ptr [byte ptr [rip + failed_opens]],  1
	mov	al,  byte ptr [byte ptr [rip + ignore_failed_opens]]
	and	al, 1
	je	.label_302
	xor	ebx, ebx
	jmp	.label_304
.label_302:
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
.label_304:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

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
	jne	.label_306
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_306:
	cmp	eax, 1
	sbb	r15d, r15d
	or	r15d, esi
	js	.label_312
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	je	.label_308
.label_312:
	cmp	qword ptr [word ptr [rip + init_header.timespec]],  0
	jne	.label_309
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_309:
	movdqu	xmm0,  xmmword ptr [word ptr [rip + init_header.timespec]]
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	mov	r14, qword ptr [rsp + 0x58]
	lea	rsi, [rsp + 0x50]
	jmp	.label_310
.label_308:
	movdqu	xmm0, xmmword ptr [rsp + 0xc0]
	lea	rsi, [rsp + 0x50]
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r14, xmm0
.label_310:
	mov	rdi,  qword ptr [word ptr [rip + localtz]]
	lea	rdx, [rsp + 0x18]
	call	localtime_rz
	test	rax, rax
	je	.label_311
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
	jmp	.label_307
.label_311:
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
.label_307:
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
	jae	.label_327
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_329:
	cmp	ebp, 0xc
	jne	.label_319
	mov	ebp, 0xc
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_319
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_336
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_334:
	cmp	ebp, 0xa
	jne	.label_319
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_321
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_319:
	mov	al,  byte ptr [byte ptr [rip + last_line]]
	and	al, 1
	mov	byte ptr [r15 + 0x39], al
	mov	eax, ebp
	jmp	.label_313
	nop	word ptr cs:[rax + rax]
.label_320:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_313:
	cmp	eax, -1
	je	.label_332
	cmp	eax, 0xa
	je	.label_316
	cmp	eax, 0xc
	je	.label_335
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_320
	mov	rdi, rbx
	call	__uflow
	jmp	.label_313
.label_332:
	mov	rdi, r15
	call	close_file
	jmp	.label_316
.label_335:
	movzx	eax,  byte ptr [byte ptr [rip + last_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_317
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_322
	mov	byte ptr [r15 + 0x39], 0
	jmp	.label_317
.label_322:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_317
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	edx, [rax - 1]
	test	al, 7
	je	.label_314
	mov	esi, eax
	and	esi, 7
	neg	esi
	nop	word ptr cs:[rax + rax]
.label_337:
	mov	byte ptr [rcx + 0x39], 0
	add	rcx, 0x40
	dec	eax
	inc	esi
	jne	.label_337
.label_314:
	cmp	edx, 7
	jb	.label_317
	add	rcx, 0x1f9
	nop	word ptr [rax + rax]
.label_326:
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
	jne	.label_326
.label_317:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_324
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_331:
	cmp	edi, 0xa
	je	.label_330
	mov	rsi, rbx
	call	ungetc
.label_330:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_328
	mov	dword ptr [r15 + 0x10], 2
	jmp	.label_325
.label_328:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_325
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_315
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_323
.label_315:
	cmp	esi, 7
	jb	.label_325
	add	rcx, 0x1d0
	nop	dword ptr [rax]
.label_333:
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
	jne	.label_333
.label_325:
	mov	dword ptr [r15 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_316:
	mov	al,  byte ptr [byte ptr [rip + skip_count]]
	and	al, 1
	jne	.label_318
	cmp	r14d, 1
	setne	al
	cmp	ebp, 0xc
	je	.label_318
	and	al,  byte ptr [byte ptr [rip + parallel_files]]
	jne	.label_318
	inc	dword ptr [dword ptr [rip + line_count]]
.label_318:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_327:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_329
.label_324:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_331
.label_336:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_334
.label_321:
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_319
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404880

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x10], 3
	je	.label_338
	mov	rdi, qword ptr [rbx]
	test	byte ptr [rdi], 0x20
	jne	.label_340
	call	fileno
	test	eax, eax
	je	.label_342
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_340
.label_342:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_347
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_339
.label_347:
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	test	edx, edx
	je	.label_339
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	test	dl, 1
	jne	.label_341
	mov	ecx, edx
	jmp	.label_344
.label_341:
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_345
	mov	dword ptr [rax + 0x30], 0
.label_345:
	add	rax, 0x40
	lea	ecx, [rdx - 1]
.label_344:
	cmp	edx, 1
	je	.label_339
	add	rax, 0x70
	nop	dword ptr [rax]
.label_348:
	mov	dword ptr [rax - 0x60], 3
	cmp	dword ptr [rax - 0x44], 0
	jne	.label_346
	mov	dword ptr [rax - 0x40], 0
.label_346:
	mov	dword ptr [rax - 0x20], 3
	cmp	dword ptr [rax - 4], 0
	jne	.label_343
	mov	dword ptr [rax], 0
.label_343:
	add	rax, 0x80
	add	ecx, -2
	jne	.label_348
.label_339:
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_338:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_340:
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
	#Procedure 0x404980

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
	#Procedure 0x4049d0

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
	jne	.label_353
	call	print_header
.label_353:
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_357
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	jle	.label_361
	lea	r8d, [rax - 1]
	mov	esi, 1
	test	al, 7
	mov	rdx, rcx
	je	.label_367
	mov	ebp, eax
	and	ebp, 7
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax]
.label_350:
	mov	esi, edi
	mov	dword ptr [rdx + 0x10], 2
	add	rdx, 0x40
	lea	edi, [rsi + 1]
	cmp	ebp, edi
	jne	.label_350
	add	esi, 2
.label_367:
	cmp	r8d, 7
	jb	.label_361
	dec	esi
	add	rdx, 0x1d0
	nop	word ptr cs:[rax + rax]
.label_358:
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
	jl	.label_358
.label_361:
	cmp	dword ptr [rcx + 0x30], 0
	jle	.label_360
.label_357:
	mov	qword ptr [rsp], r13
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	mov	r13d, ebp
	sub	r13d, eax
	jle	.label_363
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_352
	sub	r13d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r13d
	jmp	.label_355
.label_352:
	cmp	r13d, ecx
	jle	.label_359
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_356
.label_365:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_366
	nop	word ptr [rax + rax]
.label_356:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_365
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_366:
	dec	ebp
	jne	.label_356
.label_359:
	mov	dword ptr [dword ptr [rip + output_position]],  r13d
.label_355:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_363:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_364
	call	print_sep_string
.label_364:
	mov	rax, qword ptr [rsp]
	cmp	eax, r12d
	je	.label_351
	sub	r12, rax
	nop	word ptr cs:[rax + rax]
.label_362:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	print_char
	dec	r12
	jne	.label_362
.label_351:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	jne	.label_354
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax,  qword ptr [word ptr [rip + end_vector]]
	mov	eax, dword ptr [rax + r14*4]
	add	eax, edx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	mov	ecx,  dword ptr [dword ptr [rip + col_sep_length]]
	sub	edx, ecx
	cmp	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	jne	.label_354
	sub	eax, ecx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	jmp	.label_354
.label_360:
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_354
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
.label_354:
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
	#Procedure 0x404c20

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
	jne	.label_376
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	movzx	r14d, r15b
	cmp	r14d, 0x20
	jne	.label_382
	inc	eax
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	jmp	.label_373
.label_382:
	test	eax, eax
	jle	.label_375
	mov	ebx,  dword ptr [dword ptr [rip + output_position]]
	lea	r12d, [rbx + rax]
	cmp	eax, 2
	jge	.label_372
	mov	ecx, ebx
	jmp	.label_378
	nop	word ptr cs:[rax + rax]
.label_368:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_369
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_379:
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_372
	jmp	.label_378
.label_369:
	movzx	esi, al
	call	__overflow
	jmp	.label_379
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
	jge	.label_368
.label_378:
	cmp	ecx, r12d
	jge	.label_374
	mov	ebx, r12d
	sub	ebx, ecx
	jmp	.label_370
.label_381:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_380
.label_370:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_381
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_380:
	dec	ebx
	jne	.label_370
.label_374:
	mov	dword ptr [dword ptr [rip + output_position]],  r12d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_375:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	jne	.label_377
	cmp	r14d, 8
	jne	.label_376
	dec	dword ptr [dword ptr [rip + output_position]]
	jmp	.label_376
.label_377:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_376:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_371
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_373:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_371:
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
	#Procedure 0x404d80

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
	jae	.label_422
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_409:
	mov	ebp,  dword ptr [dword ptr [rip + input_position]]
	cmp	ebx, 0xc
	jne	.label_428
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_431
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_434
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_394:
	cmp	ebx, 0xa
	jne	.label_428
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_439
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_428:
	mov	byte ptr [r13 + 0x39], 0
	cmp	ebx, -1
	je	.label_383
	cmp	ebx, 0xa
	je	.label_388
	cmp	ebx, 0xc
	je	.label_389
	movsx	edi, bl
	call	char_to_clump
	mov	r12d, eax
.label_388:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_397
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_397
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
	xor	r15d, r15d
	jmp	.label_404
.label_397:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_411
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_416
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_416
	call	print_header
.label_416:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_387
	movzx	eax,  byte ptr [byte ptr [rip + align_empty_cols]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_387
	mov	dword ptr [rsp], ebx
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	test	eax, eax
	jle	.label_429
	mov	rbp,  qword ptr [word ptr [rip + column_vector]]
	mov	ebx, 1
	nop	dword ptr [rax]
.label_425:
	mov	r15d, dword ptr [rbp + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  r15d
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	r14d, r15d
	sub	r14d, eax
	jle	.label_438
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_442
	sub	r14d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	jmp	.label_403
	nop	word ptr cs:[rax + rax]
.label_442:
	cmp	r14d, ecx
	jle	.label_393
	sub	r15d, ecx
	sub	r15d, eax
	jmp	.label_414
.label_440:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_402
	nop	dword ptr [rax]
.label_414:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_440
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_402:
	dec	r15d
	jne	.label_414
.label_393:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_403:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_438:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_420
	call	print_sep_string
.label_420:
	cmp	byte ptr [rbp + 0x38], 0
	je	.label_395
	mov	rdi, rbp
	call	add_line_number
.label_395:
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
	add	rbp, 0x40
	cmp	ebx, dword ptr [rsp + 4]
	lea	eax, [rbx + 1]
	mov	ebx, eax
	jne	.label_425
.label_429:
	mov	eax, dword ptr [r13 + 0x34]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	xor	ecx, ecx
	and	al, 1
	cmovne	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	ebx, dword ptr [rsp]
.label_387:
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	mov	r14d, ebp
	sub	r14d, eax
	jle	.label_437
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_441
	sub	r14d, ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	jmp	.label_386
.label_383:
	mov	rdi, r13
	call	close_file
	jmp	.label_391
.label_431:
	mov	byte ptr [r13 + 0x39], 0
.label_389:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_396
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_390:
	cmp	edi, 0xa
	je	.label_407
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_407:
	mov	byte ptr [byte ptr [rip + FF_only]],  1
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_410
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_410
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	call	print_header
	jmp	.label_423
.label_410:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_423
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_423:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_427
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_408
.label_427:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_408
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_433
	mov	edi, eax
	and	edi, 7
	neg	edi
.label_406:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_406
.label_433:
	cmp	esi, 7
	jb	.label_408
	add	rcx, 0x1d0
	nop	dword ptr [rax]
.label_424:
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
	jne	.label_424
.label_408:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_391:
	mov	r15b, 1
	jmp	.label_404
.label_422:
	call	__uflow
	mov	ebx, eax
	jmp	.label_409
.label_441:
	cmp	r14d, ecx
	jle	.label_412
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_443
.label_419:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_417
	nop	dword ptr [rax + rax]
.label_443:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_419
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_417:
	dec	ebp
	jne	.label_443
.label_412:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_386:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_437:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_411
	call	print_sep_string
.label_411:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_430
	mov	rdi, r13
	call	add_line_number
.label_430:
	mov	byte ptr [byte ptr [rip + empty_line]],  0
	mov	r15b, 1
	cmp	ebx, 0xa
	je	.label_404
	test	r12d, r12d
	je	.label_384
	mov	rbp,  qword ptr [word ptr [rip + clump_buff]]
	nop	word ptr cs:[rax + rax]
.label_444:
	movsx	edi, byte ptr [rbp]
	inc	rbp
	call	qword ptr [r13 + 0x20]
	dec	r12d
	jne	.label_444
	jmp	.label_384
	nop	word ptr cs:[rax + rax]
.label_385:
	test	ebp, ebp
	je	.label_384
	mov	rbx,  qword ptr [word ptr [rip + clump_buff]]
	nop	dword ptr [rax + rax]
.label_399:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r13 + 0x20]
	dec	ebp
	jne	.label_399
	jmp	.label_384
.label_405:
	call	__uflow
	jmp	.label_401
	nop	word ptr [rax + rax]
.label_384:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_405
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	eax, byte ptr [rax]
.label_401:
	cmp	eax, -1
	je	.label_413
	cmp	eax, 0xa
	je	.label_404
	cmp	eax, 0xc
	je	.label_418
	mov	r14d,  dword ptr [dword ptr [rip + input_position]]
	movsx	edi, al
	call	char_to_clump
	mov	ebp, eax
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_385
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_385
	mov	dword ptr [dword ptr [rip + input_position]],  r14d
	xor	r15d, r15d
	jmp	.label_404
.label_413:
	mov	rdi, r13
	call	close_file
	jmp	.label_404
.label_418:
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_432
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_398:
	cmp	edi, 0xa
	je	.label_435
	mov	rsi, qword ptr [r13]
	call	ungetc
.label_435:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_421
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_421:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_426
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_392
.label_396:
	call	__uflow
	mov	edi, eax
	jmp	.label_390
.label_434:
	call	__uflow
	mov	ebx, eax
	jmp	.label_394
.label_426:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_392
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_400
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	word ptr cs:[rax + rax]
.label_415:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_415
.label_400:
	cmp	esi, 7
	jb	.label_392
	add	rcx, 0x1d0
.label_436:
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
	jne	.label_436
.label_392:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_404:
	mov	al, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_439:
	call	__uflow
	mov	ebx, eax
	jmp	.label_428
.label_432:
	call	__uflow
	mov	edi, eax
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0

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
	je	.label_457
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	xor	ebx, ebx
	jmp	.label_450
.label_457:
	test	r14d, r14d
	jle	.label_454
	mov	ebx, r14d
	jmp	.label_451
.label_452:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_458
	nop	dword ptr [rax]
.label_451:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_452
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_458:
	dec	ebx
	jne	.label_451
.label_454:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	ebx, r14d
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	mov	r14d, eax
.label_450:
	lea	r15d, [rbx + r14]
	cmp	r14d, 2
	jge	.label_456
	mov	ecx, ebx
	jmp	.label_459
	nop	word ptr cs:[rax + rax]
.label_449:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_453
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_447:
	cmp	ebp, 1
	mov	ecx, ebx
	jg	.label_456
	jmp	.label_459
.label_453:
	movzx	esi, al
	call	__overflow
	jmp	.label_447
	nop	word ptr cs:[rax + rax]
.label_456:
	mov	ecx, ebx
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebx
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r15d
	sub	ebp, ebx
	jge	.label_449
.label_459:
	cmp	ecx, r15d
	jge	.label_455
	mov	ebx, r15d
	sub	ebx, ecx
	jmp	.label_448
.label_445:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_460
.label_448:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_445
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_460:
	dec	ebx
	jne	.label_448
.label_455:
	mov	dword ptr [dword ptr [rip + output_position]],  r15d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	cmp	qword ptr [word ptr [rip + page_number]],  0
	je	.label_446
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
	add	rsp, 0x148
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_446:
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
	#Procedure 0x405630

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
	jle	.label_477
	mov	rax,  qword ptr [word ptr [rip + col_sep_string]]
	mov	qword ptr [rsp], rax
	mov	r12d,  dword ptr [dword ptr [rip + col_sep_length]]
	nop	word ptr [rax + rax]
.label_462:
	test	r12d, r12d
	lea	r12d, [r12 - 1]
	jle	.label_489
	mov	r15d, r12d
	mov	rbx, qword ptr [rsp]
	jmp	.label_467
.label_493:
	movzx	esi, al
	call	__overflow
	jmp	.label_496
	nop	word ptr cs:[rax + rax]
.label_467:
	movzx	eax, byte ptr [rbx]
	mov	ecx,  dword ptr [dword ptr [rip + spaces_not_printed]]
	cmp	eax, 0x20
	jne	.label_464
	inc	ecx
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	jmp	.label_479
	nop	dword ptr [rax + rax]
.label_464:
	test	ecx, ecx
	jle	.label_471
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rcx]
	cmp	ecx, 2
	mov	ecx, ebp
	jl	.label_480
	jmp	.label_469
.label_494:
	movzx	esi, al
	call	__overflow
	jmp	.label_486
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	r13d, r14d
	sub	r13d, ebp
	jl	.label_480
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_494
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_486:
	cmp	r13d, 1
	mov	ecx, ebp
	jg	.label_469
.label_480:
	cmp	ecx, r14d
	jge	.label_472
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_488
.label_487:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_473
	nop	word ptr [rax + rax]
.label_488:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_487
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_473:
	dec	ebp
	jne	.label_488
.label_472:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	al, byte ptr [rbx]
.label_471:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_493
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_496:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_479:
	inc	rbx
	test	r12d, r12d
	lea	eax, [r12 - 1]
	mov	r12d, eax
	jg	.label_467
	mov	rax, qword ptr [rsp]
	lea	rax, [rax + r15 + 1]
	mov	qword ptr [rsp], rax
	mov	r12d, 0xffffffff
.label_489:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	test	eax, eax
	jle	.label_495
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	mov	ecx, ebp
	jl	.label_485
	jmp	.label_475
.label_478:
	movzx	esi, al
	call	__overflow
	jmp	.label_466
	nop	dword ptr [rax + rax]
.label_475:
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	ebx, r14d
	sub	ebx, ebp
	jl	.label_485
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_478
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_466:
	cmp	ebx, 1
	mov	ecx, ebp
	jg	.label_475
.label_485:
	cmp	ecx, r14d
	jge	.label_490
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_482
.label_474:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_484
	nop	dword ptr [rax + rax]
.label_482:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_474
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_484:
	dec	ebp
	jne	.label_482
.label_490:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_495:
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	lea	ecx, [rax - 1]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  ecx
	cmp	eax, 1
	jg	.label_462
	jmp	.label_468
.label_477:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	test	eax, eax
	jle	.label_468
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	jge	.label_463
	mov	ecx, ebp
	jmp	.label_481
.label_461:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_483
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_492:
	cmp	ebx, 1
	mov	ecx, ebp
	jg	.label_463
	jmp	.label_481
.label_483:
	movzx	esi, al
	call	__overflow
	jmp	.label_492
	nop	word ptr cs:[rax + rax]
.label_463:
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	ebx, r14d
	sub	ebx, ebp
	jge	.label_461
.label_481:
	cmp	ecx, r14d
	jge	.label_465
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_470
.label_491:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_476
.label_470:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_491
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_476:
	dec	ebp
	jne	.label_470
.label_465:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_468:
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
	#Procedure 0x405970

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
	je	.label_502
	movzx	eax, al
	cmp	eax, ebp
	je	.label_502
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_503
	movzx	eax,  byte ptr [byte ptr [rip + use_esc_sequence]]
	and	eax, 1
	cmp	eax, 1
	je	.label_505
	movzx	eax,  byte ptr [byte ptr [rip + use_cntrl_prefix]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_499
	test	bl, bl
	js	.label_505
	mov	byte ptr [r14], 0x5e
	xor	bl, 0x40
	mov	byte ptr [r14 + 1], bl
	mov	ebp, 2
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 2
	jmp	.label_497
.label_502:
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, r15d
	cdq	
	idiv	ecx
	mov	ebp, ecx
	sub	ebp, edx
	movzx	eax,  byte ptr [byte ptr [rip + untabify_input]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_498
	dec	ecx
	sub	ecx, edx
	inc	rcx
	mov	esi, 0x20
	mov	rdi, r14
	mov	rdx, rcx
	call	memset
	mov	eax, ebp
	jmp	.label_504
.label_503:
	mov	byte ptr [r14], bl
	mov	ebp, 1
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 1
	jmp	.label_497
.label_498:
	mov	byte ptr [r14], bl
	mov	eax, 1
	jmp	.label_504
.label_505:
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
	jmp	.label_497
.label_499:
	mov	byte ptr [r14], bl
	xor	eax, eax
	cmp	ebp, 8
	mov	ebp, 0xffffffff
	cmovne	ebp, eax
	mov	eax, 1
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
.label_504:
	test	ebp, ebp
	jns	.label_500
	test	r15d, r15d
	jne	.label_500
	mov	dword ptr [dword ptr [rip + input_position]],  0
	xor	eax, eax
	jmp	.label_501
.label_500:
	test	ebp, ebp
	setns	cl
	mov	edx, ebp
	neg	edx
	cmp	r15d, edx
	jg	.label_497
	test	cl, cl
	jne	.label_497
	mov	dword ptr [dword ptr [rip + input_position]],  0
	jmp	.label_501
.label_497:
	add	ebp, r15d
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
.label_501:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

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
	jle	.label_510
	sub	eax, ebp
	movsxd	rbx, eax
	add	rbx,  qword ptr [word ptr [rip + number_buff]]
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_507:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_507
.label_510:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_509
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	cmp	eax, 9
	jne	.label_512
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
.label_509:
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
.label_512:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_506:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_508
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	jne	.label_508
	mov	eax,  dword ptr [dword ptr [rip + number_width]]
	add	dword ptr [dword ptr [rip + input_position]],  eax
.label_508:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c40

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	jmp	.label_513
.label_520:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_519
	nop	word ptr cs:[rax + rax]
.label_513:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_520
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_519:
	cmp	eax, -1
	je	.label_525
	cmp	eax, 0xa
	je	.label_526
	cmp	eax, 0xc
	jne	.label_513
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_515
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_517:
	cmp	edi, 0xa
	je	.label_521
	mov	rsi, rbx
	call	ungetc
.label_521:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_522
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_522:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_514
	mov	dword ptr [r14 + 0x10], 2
	jmp	.label_516
.label_525:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	close_file
.label_514:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_516
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_524
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	word ptr cs:[rax + rax]
.label_518:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	jne	.label_518
.label_524:
	cmp	esi, 7
	jb	.label_516
	add	rcx, 0x1d0
	nop	dword ptr [rax]
.label_523:
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
	jne	.label_523
.label_516:
	mov	dword ptr [r14 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_526:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_515:
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_517
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405da0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405dc0

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
	je	.label_527
	cmp	dword ptr [rbp], 0x20
	jne	.label_527
.label_530:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_529
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_528
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_529:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_528:
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
	#Procedure 0x405e80
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90

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
	#Procedure 0x405eb0

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
	je	.label_533
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_535
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_536
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_532
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_533
.label_532:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_534
.label_535:
	mov	rax, rbx
	jmp	.label_533
.label_536:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_534:
	xor	eax, eax
.label_533:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f40

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
	#Procedure 0x405f50
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
	#Procedure 0x405f70

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
	#Procedure 0x405fb0

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
.label_541:
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
	ja	.label_541
	jmp	.label_543
.label_540:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_542:
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
	ja	.label_542
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_543:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406070

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
	#Procedure 0x406090

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
	jle	.label_551
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
.label_550:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_545
	jmp	qword ptr [word ptr [+ (rax * 8) + label_546]]
.label_1187:
	inc	rbx
	inc	r15d
.label_555:
	cmp	rbx, r12
	jb	.label_550
	jmp	.label_544
.label_545:
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
	je	.label_559
	cmp	r13, -2
	je	.label_560
	cmp	r13, -1
	jne	.label_562
	jmp	.label_564
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	r13d, 1
.label_562:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	test	eax, eax
	js	.label_547
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_548
	add	r15d, eax
	jmp	.label_553
	nop	dword ptr [rax]
.label_547:
	mov	ecx, 1
	cmp	dword ptr [rsp + 8], 0
	jne	.label_548
	mov	edi, dword ptr [rsp + 0xc]
	call	iswcntrl
	test	eax, eax
	jne	.label_553
	cmp	r15d, 0x7fffffff
	je	.label_558
	inc	r15d
	nop	dword ptr [rax]
.label_553:
	add	rbx, r13
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	mov	rax, rbx
	je	.label_557
	jmp	.label_563
.label_560:
	add	r15d, dword ptr [rsp + 4]
	test	r14d, r14d
	mov	rax, r12
	mov	ecx, dword ptr [rsp]
	lea	r13, [rsp + 0x10]
	jne	.label_549
	jmp	.label_563
.label_564:
	mov	ecx, 1
	test	r14d, r14d
	lea	r13, [rsp + 0x10]
	jne	.label_549
	inc	rbx
	inc	r15d
	mov	rax, rbx
.label_563:
	mov	rbx, rax
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	jmp	.label_555
.label_558:
	mov	ecx, 7
	mov	r15d, 0x7fffffff
.label_548:
	lea	r13, [rsp + 0x10]
.label_549:
	test	ecx, ecx
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	je	.label_555
	mov	r15d, 0xffffffff
	cmp	ecx, 7
	jne	.label_544
	jmp	.label_551
.label_556:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_552
.label_554:
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_552:
	cmp	rbx, r12
	jae	.label_544
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_561
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_551
	test	al, 2
	jne	.label_552
.label_561:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_554
	jmp	.label_551
.label_544:
	mov	ebp, r15d
.label_551:
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
	#Procedure 0x4062d0

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
	#Procedure 0x406300

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
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_700
	mov	dword ptr [rsp + 0x2c], ebx
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x48], rcx
	mov	dword ptr [rsp + 0x3c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	jmp	.label_688
.label_700:
	xor	esi, esi
	jmp	.label_717
.label_657:
	mov	edi, 3
	jmp	.label_719
	nop	word ptr cs:[rax + rax]
.label_688:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_722
	mov	qword ptr [rsp + 0x78], rsi
	mov	eax, dword ptr [rsp + 0x5c]
	mov	bl, al
	xor	r13d, r13d
	jmp	.label_579
	nop	
.label_722:
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
	jae	.label_581
	test	rdi, rdi
	mov	edx, 0
	je	.label_694
	cmp	ecx, 2
	jb	.label_735
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
.label_735:
	mov	byte ptr [rdi], al
.label_669:
	inc	rdi
	mov	rdx, rdi
.label_694:
	add	rsi, rbx
	mov	rdi, rdx
	jmp	.label_574
	nop	word ptr cs:[rax + rax]
.label_588:
	mov	r12b, 1
	mov	al, bl
	jmp	.label_579
	nop	word ptr [rax + rax]
.label_587:
	inc	rbp
	mov	r13d, edx
.label_591:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_582
	bt	r15, rsi
	jb	.label_587
	mov	al, 1
	test	rsi, rsi
	je	.label_588
	cmp	rsi, 0x3b
	jne	.label_582
.label_579:
	mov	bl, al
	inc	rbp
	jmp	.label_591
	nop	
.label_582:
	mov	qword ptr [rsp + 0x68], rdi
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_594
	nop	
.label_610:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_598
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_602
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_598
.label_602:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_598:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_610
.label_594:
	movsx	r9d, cl
	cmp	r9d, 0x4f
	je	.label_589
	cmp	r9d, 0x45
	jne	.label_615
.label_589:
	mov	qword ptr [rsp + 0x60], rbx
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_617
.label_615:
	mov	qword ptr [rsp + 0x60], rbx
	xor	r9d, r9d
.label_617:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	edx, [r11 - 0x25]
	cmp	edx, 0x55
	ja	.label_619
	mov	eax, OFFSET FLAT:.str.3_0
	mov	qword ptr [rsp + 0x50], rax
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_624]]
.label_1286:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
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
	js	.label_628
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
	jmp	.label_692
	nop	dword ptr [rax]
.label_663:
	inc	rsi
.label_1280:
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_663
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_565
	add	rbp, rsi
	mov	rbx, rsi
.label_1317:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_670
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	test	r8d, r8d
	js	.label_671
	test	r8d, r8d
	je	.label_675
	xor	esi, esi
	jmp	.label_671
.label_1300:
	test	r12b, r12b
	je	.label_677
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_677:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_565
	mov	r8b, cl
	jmp	.label_616
.label_619:
	test	r11d, r11d
	jne	.label_565
	dec	rbp
	jmp	.label_565
.label_1279:
	test	r9d, r9d
	jne	.label_565
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
	jae	.label_581
	xor	edx, edx
	test	rdi, rdi
	je	.label_694
	cmp	eax, 2
	jb	.label_696
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_697
	cmp	r13d, 0x2b
	jne	.label_645
.label_697:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_652
.label_1281:
	test	r9d, r9d
	jne	.label_565
	test	r12b, r12b
	je	.label_701
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_701:
	xor	eax, eax
	mov	r8b, 0x41
	jmp	.label_616
.label_1282:
	cmp	r9d, 0x45
	je	.label_565
	test	r12b, r12b
	je	.label_674
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_674:
	xor	eax, eax
	mov	r8b, 0x42
	jmp	.label_616
.label_1283:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_711
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_616
.label_1284:
	test	r9d, r9d
	jne	.label_565
	mov	eax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rsp + 0x50], rax
	mov	r10d, 0xffffffff
	jmp	.label_715
.label_1285:
	test	r9d, r9d
	jne	.label_565
	test	r13d, r13d
	jne	.label_647
	test	r14d, r14d
	jns	.label_647
	mov	eax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rsp + 0x50], rax
	mov	r13d, 0x2b
	mov	r10d, 4
	jmp	.label_715
.label_1287:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_603
.label_1288:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	edi, 2
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	jmp	.label_597
.label_1289:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_603
.label_1290:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	cmp	r14d, -1
	je	.label_568
	cmp	r14d, 8
	jg	.label_572
	mov	esi, 9
	sub	esi, r14d
	mov	eax, 8
	sub	eax, r14d
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
	je	.label_577
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
.label_577:
	cmp	eax, 3
	jae	.label_592
	mov	edi, r14d
	jmp	.label_597
.label_1291:
	mov	dil, 1
.label_1309:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_599
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
.label_599:
	je	.label_604
	mov	dil, 1
.label_604:
	mov	r8b, 0x70
	mov	al, dil
	jmp	.label_721
.label_1292:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax]
	jmp	.label_603
.label_1293:
	mov	eax, OFFSET FLAT:.str.4_0
.label_611:
	mov	qword ptr [rsp + 0x50], rax
.label_715:
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
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_629
	cmp	rax, rdx
	jae	.label_633
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r13d, 0x30
	je	.label_637
	cmp	r13d, 0x2b
	jne	.label_640
.label_637:
	mov	esi, 0x30
	jmp	.label_641
.label_1294:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	movsxd	rdx, eax
	jmp	.label_646
.label_1295:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
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
.label_646:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_603
.label_1296:
	cmp	r9d, 0x4f
	je	.label_565
	xor	eax, eax
	mov	r8b, 0x58
	jmp	.label_616
.label_1297:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_595
	cmp	r10d, 0x4f
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	add	edx, 0x76c
	mov	edi, 4
	jmp	.label_667
.label_1298:
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
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_629
	cmp	r9, rax
	jae	.label_684
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x50], r9
	cmp	r13d, 0x30
	je	.label_687
	cmp	r13d, 0x2b
	jne	.label_689
.label_687:
	mov	esi, 0x30
	jmp	.label_691
.label_1299:
	test	r9d, r9d
	jne	.label_565
	test	r12b, r12b
	je	.label_728
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_728:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_616
.label_1301:
	cmp	r9d, 0x4f
	je	.label_565
	xor	eax, eax
	mov	r8b, 0x63
	jmp	.label_616
.label_1302:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_603
.label_1303:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_578
.label_1304:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 3
	jmp	.label_708
.label_1305:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_578
.label_1306:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	je	.label_565
.label_578:
	test	r13d, r13d
	mov	eax, 0x5f
	cmove	r13d, eax
	jmp	.label_603
.label_1307:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 2
	jmp	.label_708
.label_1308:
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
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_629
	cmp	eax, 2
	jb	.label_736
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_730
	cmp	r13d, 0x2b
	jne	.label_567
.label_730:
	mov	esi, 0x30
	jmp	.label_570
.label_1310:
	mov	rax, qword ptr [rsp + 0x48]
	imul	edx, dword ptr [rax + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	edi, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_575
.label_1311:
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
.label_607:
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
	ja	.label_607
	mov	r10d, 1
	xor	r8d, r8d
	jmp	.label_621
.label_1312:
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
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_629
	cmp	eax, 2
	jb	.label_631
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_632
	cmp	r13d, 0x2b
	jne	.label_635
.label_632:
	mov	esi, 0x30
	jmp	.label_638
.label_1313:
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
	jmp	.label_597
.label_1314:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_565
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	jmp	.label_597
.label_1315:
	cmp	r9d, 0x4f
	je	.label_565
	xor	eax, eax
	mov	r8b, 0x78
	jmp	.label_616
.label_1316:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_702
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x79
	jmp	.label_616
.label_633:
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_659
.label_628:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_661
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
.label_661:
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
.label_692:
	cmp	r11d, 0x47
	je	.label_706
	cmp	r11d, 0x67
	jne	.label_683
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
	jns	.label_686
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	r8d, eax
	jmp	.label_698
.label_670:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x68]
	jmp	.label_574
.label_711:
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
	jmp	.label_667
.label_702:
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
	js	.label_732
.label_686:
	xor	esi, esi
	jmp	.label_667
.label_706:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	jmp	.label_667
.label_683:
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_603:
	mov	edi, 2
.label_597:
	mov	esi, edx
	shr	esi, 0x1f
.label_708:
	xor	ebx, ebx
	xor	r8d, r8d
.label_575:
	cmp	r10d, 0x4f
	jne	.label_729
	test	sil, sil
	jne	.label_729
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, cl
	mov	rbx, rdi
	jmp	.label_721
.label_729:
	mov	r10, rdi
	mov	eax, edx
	neg	eax
	test	sil, sil
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	nop	
.label_569:
	test	bl, 1
	je	.label_566
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_566:
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
	ja	.label_569
	test	ebx, ebx
	mov	eax, edx
	jne	.label_569
.label_621:
	mov	rdi, qword ptr [rsp + 0x68]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	mov	qword ptr [rsp + 0x50], r10
	test	r8b, r8b
	je	.label_733
	mov	r8b, 0x2b
.label_733:
	test	sil, sil
	mov	r9b, 0x2d
	jne	.label_664
	mov	r9b, r8b
.label_664:
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
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_609
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_612
	test	al, al
	jne	.label_612
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
	jmp	.label_612
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
	jle	.label_627
	cmp	r13d, 0x5f
	jne	.label_630
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_581
	xor	r10d, r10d
	test	rdi, rdi
	mov	r8d, 0
	je	.label_636
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
.label_636:
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
	jae	.label_581
	xor	edi, edi
	test	r8, r8
	je	.label_695
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_705
	mov	byte ptr [rsp + 0x40], r9b
	test	al, al
	jne	.label_656
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
	jmp	.label_666
.label_627:
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
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_609
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_612
	test	al, al
	jne	.label_612
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_681
	cmp	r13d, 0x2b
	jne	.label_723
.label_681:
	mov	esi, 0x30
	jmp	.label_731
.label_630:
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_581
	test	r9b, r9b
	je	.label_693
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_699
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_668
	test	al, al
	jne	.label_668
	mov	qword ptr [rsp + 0x20], rdx
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_676
	cmp	r13d, 0x2b
	jne	.label_704
.label_676:
	mov	esi, 0x30
	jmp	.label_707
.label_648:
	mov	rdi, r8
	mov	r14d, r10d
	jmp	.label_596
.label_595:
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x59
.label_616:
	xor	ebx, ebx
.label_721:
	mov	dword ptr [rsp + 0x50], eax
	mov	r12, qword ptr [rsp + 0x68]
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x48d]
	je	.label_658
	mov	byte ptr [rsp + 0x48d], r9b
	lea	rcx, [rsp + 0x48e]
.label_658:
	mov	byte ptr [rcx], r8b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x48]
	call	strftime
	test	rax, rax
	je	.label_654
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
	jae	.label_581
	xor	ecx, ecx
	mov	rdi, r12
	test	rdi, rdi
	je	.label_593
	cmp	r9, rax
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_726
	test	al, al
	jne	.label_726
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x20], r9
	cmp	r13d, 0x30
	je	.label_573
	cmp	r13d, 0x2b
	jne	.label_571
.label_573:
	mov	esi, 0x30
	jmp	.label_608
.label_654:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r12
	jmp	.label_574
.label_571:
	mov	esi, 0x20
.label_608:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x50]
.label_726:
	test	bl, 1
	jne	.label_583
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_586
	lea	rsi, [rsp + 0x81]
	mov	rdx, r9
	mov	r14, rdi
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	jmp	.label_618
.label_583:
	test	r9, r9
	je	.label_618
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
	je	.label_605
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	
.label_614:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_614
.label_605:
	cmp	r8, 3
	jb	.label_618
	nop	word ptr cs:[rax + rax]
.label_622:
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
	jne	.label_622
	jmp	.label_618
.label_586:
	test	r9, r9
	je	.label_618
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
	je	.label_634
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
.label_634:
	cmp	r8, 3
	jb	.label_618
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
.label_618:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r12
	jmp	.label_593
.label_684:
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_660
.label_640:
	mov	esi, 0x20
.label_641:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rdi, r14
.label_659:
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
.label_675:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	sil
.label_671:
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_565
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
	jmp	qword ptr [word ptr [+ (r9 * 8) + label_682]]
.label_1240:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 5
.label_719:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_575
.label_565:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_724:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_724
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
	jae	.label_581
	test	rdi, rdi
	mov	ecx, 0
	je	.label_713
	movsxd	rdx, r12d
	cmp	r12d, eax
	jae	.label_714
	movsxd	r14, r14d
	sub	r14, rdx
	cmp	r13d, 0x30
	je	.label_716
	cmp	r13d, 0x2b
	jne	.label_718
.label_716:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x30
	jmp	.label_720
.label_718:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x20
.label_720:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	add	rdi, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
.label_714:
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x78], rsi
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_727
	mov	rsi, rbx
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_580
.label_727:
	mov	r13, rdi
	mov	r14, rdx
	call	__ctype_toupper_loc
	mov	r10, r14
	mov	r9, r13
	movsxd	rcx, r12d
	lea	r8, [rcx - 1]
	test	cl, 3
	mov	rcx, r10
	je	.label_737
	and	r12d, 3
	neg	r12
	mov	rcx, r10
	nop	word ptr [rax + rax]
.label_576:
	movzx	esi, byte ptr [rbx + rcx - 1]
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_576
.label_737:
	cmp	r8, 3
	mov	r8, qword ptr [rsp + 0x50]
	jb	.label_580
	nop	word ptr cs:[rax + rax]
.label_655:
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
	jne	.label_655
.label_580:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x78]
.label_713:
	add	rsi, r8
	jmp	.label_585
.label_647:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	eax, OFFSET FLAT:.str.2_0
	jmp	.label_611
.label_568:
	mov	edi, 9
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	r14d, 9
	jmp	.label_597
.label_732:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_698:
	cmovl	edx, esi
	xor	esi, esi
.label_667:
	mov	eax, dword ptr [rsp + 0x3c]
	mov	dword ptr [rsp + 0x3c], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	jne	.label_575
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
	jmp	.label_575
.label_1243:
	test	r8d, r8d
	je	.label_712
.label_1242:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_575
.label_572:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_597
.label_705:
	mov	qword ptr [rsp + 0x68], r10
	jmp	.label_642
.label_656:
	mov	qword ptr [rsp + 0x68], r10
.label_666:
	mov	r9b, byte ptr [rsp + 0x40]
.label_642:
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rdi, r8
	mov	r10, qword ptr [rsp + 0x68]
.label_695:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_596
.label_689:
	mov	esi, 0x20
.label_691:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x50]
.label_660:
	test	r12b, r12b
	je	.label_650
	test	r9, r9
	je	.label_625
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_653
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
	nop	dword ptr [rax + rax]
.label_662:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_662
	jmp	.label_665
.label_650:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_710
	test	r9, r9
	je	.label_625
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_672
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
.label_567:
	mov	esi, 0x20
.label_570:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_736:
	mov	byte ptr [rdi], 0xa
	jmp	.label_685
.label_635:
	mov	esi, 0x20
.label_638:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_631:
	mov	byte ptr [rdi], 9
.label_685:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_585
.label_723:
	mov	esi, 0x20
.label_731:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x40]
.label_612:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_609:
	add	rsi, rbx
	mov	rdi, rcx
	jmp	.label_596
.label_653:
	mov	rcx, r9
	mov	rdi, r13
.label_665:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_625
	nop	word ptr cs:[rax + rax]
.label_703:
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
	jne	.label_703
	jmp	.label_625
.label_710:
	mov	rsi, r14
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rbx, r12
	mov	rdi, r13
	jmp	.label_625
.label_592:
	mov	eax, 9
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_725:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_725
	mov	edi, r14d
	jmp	.label_597
.label_704:
	mov	esi, 0x20
.label_707:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x20]
.label_668:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_699:
	add	rsi, rdx
	mov	rdi, rcx
.label_693:
	xor	r14d, r14d
	test	rdi, rdi
	movsxd	rcx, ebx
	mov	ebx, 0
	je	.label_738
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x68], rcx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	add	rbx, rcx
.label_738:
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
	jae	.label_581
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_593
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_651
	test	al, al
	jne	.label_600
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_601
	cmp	r13d, 0x2b
	jne	.label_639
.label_601:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	jmp	.label_606
.label_593:
	add	rsi, rdx
	jmp	.label_585
.label_651:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_613
.label_600:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_613
.label_639:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_606:
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r13
	add	rdi, r14
.label_613:
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_620
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_623
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
	je	.label_709
	lea	rsi, [rsp + 0x4a7]
	sub	esi, r12d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_734:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rdx, qword ptr [rax]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	dec	rcx
	inc	rsi
	jne	.label_734
.label_709:
	cmp	r8, 3
	mov	rbx, r9
	jb	.label_623
	nop	word ptr cs:[rax + rax]
.label_626:
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
	jne	.label_626
	jmp	.label_623
.label_620:
	mov	rsi, r12
	mov	rdx, rbx
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_623:
	add	rdi, rbx
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r13
	add	rsi, rdx
	jmp	.label_585
.label_712:
	test	ebx, ebx
	je	.label_657
.label_1241:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_575
.label_645:
	mov	r12, rsi
	mov	esi, 0x20
.label_652:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	mov	cl, byte ptr [rbp]
.label_696:
	mov	byte ptr [rdi], cl
	jmp	.label_669
.label_672:
	mov	rcx, r9
	mov	rdi, r13
.label_680:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_625
.label_673:
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
	jne	.label_673
.label_625:
	mov	qword ptr [rsp + 0x30], r14
	add	rdi, r9
	mov	rcx, rdi
.label_679:
	mov	rsi, qword ptr [rsp + 0x78]
.label_629:
	add	rsi, rbx
	nop	dword ptr [rax]
.label_585:
	mov	rdi, rcx
.label_574:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_688
.label_717:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_690
	test	rdi, rdi
	je	.label_690
	mov	byte ptr [rdi], 0
	jmp	.label_690
.label_581:
	xor	esi, esi
.label_690:
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
	#Procedure 0x407ee0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_739
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_740
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_740
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_741
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_741:
	mov	rbx, r14
.label_740:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_739:
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
	#Procedure 0x407f90
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
	#Procedure 0x407fd0
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
	#Procedure 0x407fe0
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
	#Procedure 0x407ff0
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
	#Procedure 0x408030
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
	#Procedure 0x408050
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
	#Procedure 0x408080
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
	#Procedure 0x408100

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
.label_796:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_853
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_857]]
.label_1364:
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
.label_1365:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_753
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_753
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_782:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_829
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_829:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_782
.label_753:
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
	jmp	.label_794
.label_1357:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_794
.label_1360:
	mov	al, 1
.label_1358:
	mov	r12b, 1
.label_1361:
	test	r12b, 1
	mov	cl, 1
	je	.label_814
	mov	cl, al
.label_814:
	mov	al, cl
.label_1359:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_817
	test	r10, r10
	je	.label_821
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_822
.label_817:
	xor	ecx, ecx
	jmp	.label_822
.label_1362:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_830
	test	r10, r10
	je	.label_854
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_839
.label_1363:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_794
.label_821:
	mov	ecx, 1
.label_822:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_794
.label_830:
	xor	eax, eax
	jmp	.label_839
.label_854:
	mov	eax, 1
.label_839:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_794:
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
	jmp	.label_743
.label_795:
	inc	rdi
.label_743:
	cmp	rbp, -1
	je	.label_788
	cmp	rdi, rbp
	jne	.label_790
	jmp	.label_791
	nop	word ptr cs:[rax + rax]
.label_788:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_779
.label_790:
	test	r12b, r12b
	je	.label_798
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_801
	cmp	rbp, -1
	jne	.label_801
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
.label_801:
	cmp	rbx, rbp
	jbe	.label_826
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_836
	nop	word ptr [rax + rax]
.label_798:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_836
.label_826:
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
	jne	.label_850
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_836
	jmp	.label_768
.label_850:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_836:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_759
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_747]]
.label_1207:
	test	rdi, rdi
	jne	.label_748
	jmp	.label_756
.label_1211:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_757
	test	rdi, rdi
	jne	.label_761
	cmp	rbp, 1
	je	.label_756
	xor	r13d, r13d
	jmp	.label_754
.label_1200:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_767
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_768
	cmp	r9d, 2
	jne	.label_774
	mov	al, r14b
	and	al, 1
	jne	.label_776
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_781
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_781:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_861
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_861:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_810
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_810:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_763
.label_1201:
	mov	bl, 0x62
	jmp	.label_809
.label_1202:
	mov	cl, 0x74
	jmp	.label_771
.label_1203:
	mov	bl, 0x76
	jmp	.label_809
.label_1204:
	mov	bl, 0x66
	jmp	.label_809
.label_1205:
	mov	cl, 0x72
	jmp	.label_771
.label_1208:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_818
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_823
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
	jae	.label_838
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_838:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_847
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_847:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_851
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_851:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_818:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_754
.label_1209:
	cmp	r9d, 5
	je	.label_813
	cmp	r9d, 2
	jne	.label_748
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_748
	jmp	.label_864
.label_1210:
	cmp	r9d, 2
	jne	.label_866
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_744
	jmp	.label_749
.label_759:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_750
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
.label_751:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_769
	test	cl, cl
	je	.label_769
	xor	eax, eax
	jmp	.label_754
.label_757:
	test	rdi, rdi
	jne	.label_785
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_785
.label_756:
	mov	dl, 1
.label_1206:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_863
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_754
.label_767:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_795
	jmp	.label_748
.label_866:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_771
.label_744:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_802
.label_771:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_804
.label_809:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_754
	jmp	.label_815
.label_750:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_816
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_816:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_755:
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
	je	.label_846
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_849
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_852
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_764
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_865:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_860
	bt	rsi, rdx
	jb	.label_862
.label_860:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_865
.label_764:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_762
	xor	r13d, r13d
.label_762:
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
	je	.label_755
	jmp	.label_751
.label_785:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_754
.label_813:
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
	ja	.label_777
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_783
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_844
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_792
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_792:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_803
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_803:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_806
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_806:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_856
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_856:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_754
.label_748:
	xor	eax, eax
	xor	r13d, r13d
.label_754:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_833
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_835
	jmp	.label_840
	nop	word ptr [rax + rax]
.label_833:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_840
.label_835:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_843
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_848
	nop	word ptr cs:[rax + rax]
.label_840:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_848:
	mov	bl, r15b
	je	.label_802
	jmp	.label_815
.label_843:
	mov	bl, r15b
.label_815:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_768
	cmp	r9d, 2
	jne	.label_855
	mov	al, r14b
	and	al, 1
	jne	.label_855
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_807
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_807:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_780
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_780:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_746
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_746:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_855:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_758
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_758:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_797
.label_761:
	xor	r13d, r13d
	jmp	.label_754
.label_769:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_770
	nop	word ptr [rax + rax]
.label_765:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_770:
	test	cl, cl
	je	.label_784
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_786
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_789
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_789:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_786
	nop	word ptr [rax + rax]
.label_784:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_768
	cmp	r9d, 2
	jne	.label_808
	mov	al, r14b
	and	al, 1
	jne	.label_808
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_858
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_858:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_787
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_787:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_828
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_828:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_808:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_842
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_842:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_811
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_811:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_827
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_827:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_786:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_802
	test	r14b, 1
	je	.label_760
	mov	bl, al
	and	bl, 1
	jne	.label_760
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_800
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_800:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_752
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_752:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_760:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_765
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_765
	nop	dword ptr [rax]
.label_802:
	test	r14b, 1
	je	.label_778
	and	al, 1
	jne	.label_778
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_831
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_831:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_812
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_812:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_778:
	mov	bl, r15b
.label_797:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_799
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_799:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_795
.label_774:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_763
.label_776:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_763:
	cmp	rcx, r10
	jae	.label_820
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_820:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_825
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_834
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_837
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_841
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_841:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_845
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_845:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_754
.label_825:
	xor	r13d, r13d
	jmp	.label_754
.label_834:
	xor	r13d, r13d
	jmp	.label_754
.label_837:
	xor	r13d, r13d
	jmp	.label_754
.label_849:
	xor	r13d, r13d
.label_846:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_751
.label_852:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_859
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_819:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_867
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_819
	xor	r13d, r13d
	jmp	.label_751
.label_859:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_751
.label_867:
	xor	r13d, r13d
	jmp	.label_751
.label_777:
	xor	r13d, r13d
	jmp	.label_754
.label_783:
	xor	r13d, r13d
	jmp	.label_754
	nop	dword ptr [rax]
.label_791:
	mov	r13, rdi
.label_779:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_766
	or	al, dl
	je	.label_773
.label_766:
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
	je	.label_775
	or	al, dl
	jne	.label_775
	test	r8b, 1
	jne	.label_793
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_775
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_796
.label_775:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_805
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_805
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_805
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_824:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_772
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_772:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_824
.label_805:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_832
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_832
.label_863:
	mov	r9d, 2
	jmp	.label_768
.label_862:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_768
.label_773:
	mov	rbp, r13
	jmp	.label_768
.label_804:
	mov	r9d, 2
.label_768:
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
.label_745:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_832:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_793:
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
	jmp	.label_745
.label_823:
	mov	r9d, 2
	jmp	.label_768
.label_749:
	mov	r9d, 2
	jmp	.label_768
.label_864:
	mov	r9d, 2
	jmp	.label_768
.label_844:
	mov	r9d, 5
	jmp	.label_768
.label_853:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409290
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
	#Procedure 0x409360
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
	#Procedure 0x409460
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
	#Procedure 0x409500
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x409510

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
	jle	.label_879
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_875
.label_879:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_878
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
	jne	.label_877
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_877:
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
.label_875:
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
	ja	.label_880
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_876
	mov	rdi, rbx
	call	free
.label_876:
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
.label_880:
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
.label_878:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096f0
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
	#Procedure 0x409710
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
	#Procedure 0x409730
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
	#Procedure 0x4097a0
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
	#Procedure 0x409810
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
	#Procedure 0x409880
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
	#Procedure 0x4098f0
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
	#Procedure 0x409960
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
	#Procedure 0x4099d0

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
	#Procedure 0x409a30
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
	#Procedure 0x409a90

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
	#Procedure 0x409b40
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
	#Procedure 0x409bb0
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
	#Procedure 0x409c20
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
	#Procedure 0x409c90
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
	#Procedure 0x409d00
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d10
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
	#Procedure 0x409d30
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d50

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
	#Procedure 0x409d70

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
	jne	.label_894
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_895
	cmp	ecx, 0x55
	jne	.label_893
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_893
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_893
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_893
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_893
	cmp	byte ptr [rax + 5], 0
	jne	.label_893
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_894
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_894
.label_895:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_893
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_893
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_893
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_893
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_893
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_893
	cmp	byte ptr [rax + 7], 0
	je	.label_896
.label_893:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_894:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_896:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_894
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_894
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e60

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
	#Procedure 0x409e70

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
	je	.label_904
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_903
.label_904:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_903:
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
	ja	.label_899
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_900]]
.label_1347:
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
.label_899:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_898
.label_1348:
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
.label_1349:
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
.label_1350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_905
.label_1351:
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
	jmp	.label_906
.label_1352:
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
	jmp	.label_902
.label_1353:
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
.label_902:
	mov	qword ptr [rsp + 0x10], rdi
.label_906:
	mov	qword ptr [rsp + 8], rsi
.label_905:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_897
.label_1355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_898:
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
	jmp	.label_901
.label_1354:
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
.label_901:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_897:
	call	__fprintf_chk
.label_1346:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a160
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
	#Procedure 0x40a190
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
	#Procedure 0x40a1f0

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
	#Procedure 0x40a2f0
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
	#Procedure 0x40a370
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
	#Procedure 0x40a3b0

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
	#Procedure 0x40a3d0
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
	#Procedure 0x40a420

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
	#Procedure 0x40a450
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_930
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_931
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_927
.label_930:
	test	rcx, rcx
	jne	.label_933
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_933:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_932
.label_927:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_928
	test	rbx, rbx
	jne	.label_928
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_928:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_929
	test	rax, rax
	je	.label_931
.label_929:
	pop	rbx
	ret	
.label_931:
	call	xalloc_die
.label_932:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4f0
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
	#Procedure 0x40a510

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_938
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_940
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_937
	call	free
	xor	eax, eax
	jmp	.label_939
.label_938:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_936
	mov	qword ptr [rsi], rbx
.label_937:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_939
	test	rax, rax
	je	.label_936
.label_939:
	pop	rbx
	ret	
.label_936:
	call	xalloc_die
.label_940:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a580
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
	#Procedure 0x40a5c0
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
	#Procedure 0x40a5f0

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
	#Procedure 0x40a630
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
	#Procedure 0x40a680

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
	#Procedure 0x40a6b0

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
	je	.label_951
	cmp	eax, 1
	je	.label_952
	cmp	eax, 3
	jne	.label_953
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_948
.label_951:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_950
	cmp	rbx, r12
	jle	.label_954
.label_950:
	cmp	rbx, 0x40000000
	jl	.label_955
.label_952:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_948
.label_953:
	call	__errno_location
.label_948:
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
.label_954:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_955:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_949
	mov	dword ptr [rax], 0x4b
	jmp	.label_948
.label_949:
	mov	dword ptr [rax], 0x22
	jmp	.label_948
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a790

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
	#Procedure 0x40a7c0

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
	jae	.label_1006
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
	je	.label_964
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_968
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_971
	mov	r13d, 1
.label_968:
	test	r14, r14
	je	.label_986
	mov	r12d, r13d
	jmp	.label_1001
.label_964:
	mov	r13d, 4
	test	r14, r14
	je	.label_971
	mov	r15, rcx
	movsx	esi, byte ptr [r12]
	test	esi, esi
	je	.label_971
	mov	rdi, r14
	call	strchr
	xor	r12d, r12d
	mov	ebp, 1
	test	rax, rax
	mov	rcx, r15
	je	.label_971
.label_1001:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_995
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_956
	mov	r15d, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_973
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_973
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_973
	mov	rax, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_961
	cmp	eax, 0x44
	je	.label_961
	cmp	eax, 0x69
	jne	.label_973
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x42
	mov	r15d, 3
	je	.label_966
	mov	r15d, 1
.label_966:
	mov	r8d, 0x400
	jmp	.label_973
.label_986:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_971
.label_995:
	mov	r13, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_976
.label_961:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_973:
	movabs	r9, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_981
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_988
	jmp	qword ptr [word ptr [+ (rax * 8) + label_991]]
.label_1373:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_994
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_997
.label_981:
	cmp	r13d, 0x73
	jg	.label_958
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_1003
	xor	ebx, ebx
	mov	r13, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1007]]
.label_1275:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_994
	mov	r13, rbp
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_997
.label_988:
	cmp	r13d, 0x54
	je	.label_990
	cmp	r13d, 0x59
	jne	.label_956
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_959
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_959:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_975
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_975:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_985
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_985:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1000
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_1000:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_982
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_982:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_960
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_960:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1005
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1005:
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
	jmp	.label_965
.label_958:
	cmp	r13d, 0x74
	je	.label_990
	cmp	r13d, 0x77
	jne	.label_956
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_996
.label_994:
	inc	r9
	mov	ebx, 1
	mov	r13, r9
	jmp	.label_965
.label_1276:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_974
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_974:
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_1013
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r10d, al
.label_1013:
	or	r10d, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_963
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_963:
	or	ebx, r10d
	jmp	.label_965
.label_1277:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_965
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
	jmp	.label_965
.label_1278:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_993
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_993:
	cmp	rcx, rdi
	jl	.label_1011
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1011:
	or	ebx, r10d
	jmp	.label_965
.label_990:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1010
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1010:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_970
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_970:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1008
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1008:
	or	edi, r11d
	cmp	rcx, r10
	jl	.label_992
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_992:
	or	ebx, edi
	jmp	.label_965
.label_1003:
	cmp	r13d, 0x5a
	jne	.label_956
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1002
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1002:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1012
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_1012:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_962
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_962:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_987
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_987:
	or	r11d, ebx
	cmp	rsi, r10
	mov	edi, 1
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
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_999
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_999:
	or	edi, ebx
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_978
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_978:
	or	ebx, edi
	jmp	.label_965
.label_956:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	mov	r13d, r12d
	jmp	.label_971
.label_1374:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_957
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_957:
	cmp	rcx, r10
	mov	rbx, r13
	jl	.label_989
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	setl	al
	cmovl	rbx, r9
	movzx	r14d, al
.label_989:
	or	r14d, edi
	cmp	rbx, r10
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_983
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	ecx, al
.label_983:
	or	ecx, r14d
	cmp	rsi, r10
	mov	rdi, r13
	jl	.label_998
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r9
	movzx	r11d, al
.label_998:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	mov	rsi, r13
	mov	r14d, 1
	jl	.label_979
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_979:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_1014
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1014:
	or	ebx, r14d
	jmp	.label_965
.label_1375:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_969
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_969:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_980
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_980:
	or	r14d, edi
	cmp	rsi, r10
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_967
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	imul	rbx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rbx, r9
	movzx	edi, al
.label_967:
	or	edi, r14d
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_1004
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_1004:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_1009
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1009:
	or	ebx, r11d
	jmp	.label_965
.label_996:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_997:
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	movzx	ebx, al
.label_965:
	or	ebx, r12d
	mov	rdx, qword ptr [rsp + 8]
	lea	rax, [rdx + r15]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_972
	or	ebx, 2
.label_972:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_976:
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_971:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1006:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40b180

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
	jae	.label_1045
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
	je	.label_1060
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_1064
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_1018
	mov	ebp, 1
.label_1064:
	test	r14, r14
	je	.label_1063
	mov	edx, ebp
	jmp	.label_1071
.label_1060:
	mov	ebp, 4
	test	r14, r14
	je	.label_1018
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_1018
	mov	rdi, r14
	call	strchr
	xor	edx, edx
	mov	r12d, 1
	test	rax, rax
	mov	rcx, rbx
	je	.label_1018
.label_1071:
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
	ja	.label_1040
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1040
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r8d, 1
	mov	r11d, 0x400
	test	rax, rax
	je	.label_1040
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	cmp	eax, 0x42
	je	.label_1052
	cmp	eax, 0x44
	je	.label_1052
	cmp	eax, 0x69
	jne	.label_1040
	mov	rax, qword ptr [rsp + 0x10]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x42
	mov	r8d, 3
	je	.label_1062
	mov	r8d, 1
.label_1062:
	mov	r11d, 0x400
	jmp	.label_1040
.label_1063:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	jmp	.label_1018
.label_1027:
	mov	r13, r12
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1015
.label_1052:
	mov	r8d, 2
	mov	r11d, 0x3e8
.label_1040:
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_1019
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1023
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1025]]
.label_1190:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_1028
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1033
.label_1019:
	cmp	r13d, 0x73
	jg	.label_1034
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_1043
	xor	ebx, ebx
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1044]]
.label_1198:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_1028
	mov	r13, r12
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1033
.label_1023:
	cmp	r13d, 0x54
	je	.label_1053
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
	jl	.label_1059
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_1059:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1073
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1073:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_1022
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1022:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_1036
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_1036:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_1065
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1065:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_1051
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_1051:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_1066
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1066:
	or	ecx, edi
	cmp	rbp, r9
	jl	.label_1072
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1072:
	or	ebx, ecx
	jmp	.label_1017
.label_1034:
	cmp	r13d, 0x74
	je	.label_1053
	cmp	r13d, 0x77
	jne	.label_1026
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_1030
.label_1028:
	inc	r10
	mov	ebx, 1
	mov	r13, r10
	jmp	.label_1017
.label_1192:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ecx, 1
	mov	rbp, r13
	mov	ebx, 1
	jl	.label_1039
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, r12
	imul	rbp, r11
	cmp	rax, r12
	setl	al
	cmovl	rbp, r10
	movzx	ebx, al
.label_1039:
	cmp	rbp, rdi
	mov	rsi, r13
	jl	.label_1049
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1049:
	or	ecx, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_1058
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1058:
	or	ebx, ecx
	jmp	.label_1017
.label_1193:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	mov	ebx, 1
	jl	.label_1017
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, r12
	cmp	rax, r12
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
	jmp	.label_1017
.label_1194:
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
	jl	.label_1042
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1042:
	or	ebx, ecx
	jmp	.label_1017
.label_1053:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1047
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_1047:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1061
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1061:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_1069
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1069:
	or	edi, ecx
	cmp	rbp, r9
	jl	.label_1021
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1021:
	or	ebx, edi
	jmp	.label_1017
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
	jl	.label_1037
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_1037:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1048
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1048:
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
	jl	.label_1068
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_1068:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_1032
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1032:
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
	jl	.label_1046
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1046:
	or	ebx, edi
	jmp	.label_1017
.label_1026:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	mov	eax, dword ptr [rsp + 0xc]
	or	eax, 2
	mov	ebp, eax
	jmp	.label_1018
.label_1191:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1050
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1050:
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_1067
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_1067:
	or	ebx, ecx
	cmp	rdi, r9
	mov	r14d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1016
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1016:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_1038
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_1038:
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
	or	ebx, ecx
	jmp	.label_1017
.label_1195:
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
	mov	r14d, 1
	mov	rdi, r13
	mov	ebx, 1
	jl	.label_1020
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_1020:
	or	ebx, ecx
	cmp	rdi, r9
	mov	rcx, r13
	jl	.label_1035
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rcx, rdi
	imul	rcx, r11
	cmp	rax, rdi
	setl	al
	cmovl	rcx, r10
	movzx	r14d, al
.label_1035:
	or	r14d, ebx
	cmp	rcx, r9
	mov	ebx, 1
	jl	.label_1057
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1057:
	or	ebx, r14d
	jmp	.label_1017
.label_1030:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_1033:
	cmp	r12, rax
	setg	al
	cmovg	r13, r10
	movzx	ebx, al
.label_1017:
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
.label_1015:
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_1018:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1045:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bb10

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
	#Procedure 0x40bb90

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
	jae	.label_1082
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1089:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1089
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_1092
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
	je	.label_1087
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1091
	cmp	eax, 0x22
	jne	.label_1092
	mov	dword ptr [rsp + 4], 1
.label_1091:
	test	r14, r14
	jne	.label_1095
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1092
.label_1087:
	test	r14, r14
	je	.label_1092
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1092
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_1092
.label_1095:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1084
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1090
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1081
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1081
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1081
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1078
	cmp	eax, 0x44
	je	.label_1078
	cmp	eax, 0x69
	jne	.label_1081
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	ecx, 3
	je	.label_1086
	mov	ecx, 1
.label_1086:
	mov	esi, 0x400
	jmp	.label_1081
.label_1084:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1093
.label_1078:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1081:
	cmp	r13d, 0x59
	jg	.label_1099
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1100
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1101]]
.label_1219:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1102
.label_1099:
	cmp	r13d, 0x73
	jg	.label_1104
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1080
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1083]]
.label_1377:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1102:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1079
.label_1100:
	cmp	r13d, 0x54
	je	.label_1085
	cmp	r13d, 0x59
	jne	.label_1090
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
	jmp	.label_1097
.label_1104:
	cmp	r13d, 0x74
	je	.label_1085
	cmp	r13d, 0x77
	jne	.label_1090
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_1079
.label_1221:
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
	jmp	.label_1098
.label_1222:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1088
.label_1223:
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
	jmp	.label_1096
.label_1085:
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
	jmp	.label_1094
.label_1080:
	cmp	r13d, 0x5a
	jne	.label_1090
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
.label_1097:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1088
.label_1090:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_1092
.label_1220:
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
	jmp	.label_1096
.label_1224:
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
.label_1094:
	or	dl, r10b
.label_1098:
	or	dl, bl
.label_1096:
	and	dl, 1
	movzx	eax, dl
.label_1088:
	mov	rbp, rsi
.label_1079:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1103
	or	eax, 2
.label_1103:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_1093:
	mov	qword ptr [rax], rbp
.label_1092:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1082:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c240

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
	#Procedure 0x40c290

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
	#Procedure 0x40c310

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1114
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1114:
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
	ja	.label_1120
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1119
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1117
	test	esi, esi
	jne	.label_1120
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1121
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1123
.label_1120:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1127
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1117
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1130
.label_1119:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1112
.label_1117:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1113
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1115
.label_1113:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1115:
	mov	edx, dword ptr [rax]
.label_1124:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_1112:
	mov	ebp, eax
.label_1111:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1130:
	cmp	eax, 6
	jne	.label_1127
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1128
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1122
.label_1127:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1125
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1116
.label_1121:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1123:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_1124
.label_1128:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1122:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1129
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1110
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1110
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1111
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_1126
.label_1110:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1111
.label_1125:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1116:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1112
.label_1129:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1126:
	test	al, al
	je	.label_1111
	test	ebp, ebp
	js	.label_1111
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1118
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1111
.label_1118:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1111
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5f0

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
	#Procedure 0x40c630

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
	#Procedure 0x40c6a0

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
	#Procedure 0x40c700

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
	#Procedure 0x40c780
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
	#Procedure 0x40c7b0

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
	je	.label_1143
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1142
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_1140
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_1140:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_1141
.label_1143:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1142:
	xor	eax, eax
.label_1141:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c840

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
	mov	edi, OFFSET FLAT:.str
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_1149
	test	bl, bl
	je	.label_1151
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_1148
.label_1151:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_1145
.label_1149:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_1148
.label_1145:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1148
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_1147
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_1147:
	test	bl, bl
	je	.label_1144
	add	r14, 9
	mov	edi, OFFSET FLAT:.str
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_1150
.label_1144:
	mov	edi, OFFSET FLAT:.str
	call	unsetenv
.label_1150:
	test	eax, eax
	je	.label_1153
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_1152
	nop	dword ptr [rax]
.label_1146:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_1146
.label_1152:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1148
.label_1153:
	call	tzset
	mov	rax, r13
.label_1148:
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
	#Procedure 0x40c980

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
	je	.label_1154
	cmp	r15, rbx
	ja	.label_1162
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1154
.label_1162:
	mov	ebp, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_1156
	lea	rbp, [r12 + 9]
	jmp	.label_1155
.label_1161:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1155:
	lea	r13, [r12 + 9]
.label_1157:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1156
	cmp	byte ptr [rbp], 0
	jne	.label_1164
	cmp	rbp, r13
	jne	.label_1165
	cmp	byte ptr [r12 + 8], 0
	je	.label_1166
.label_1164:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_1157
	jmp	.label_1161
.label_1166:
	mov	rbp, r13
.label_1165:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1163
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1160:
	xor	r14d, r14d
	jmp	.label_1154
.label_1163:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1158
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_1154
.label_1158:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	cmp	rdx, 0x77
	mov	r13, rdx
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1159
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
.label_1156:
	mov	qword ptr [r15 + 0x30], rbp
.label_1154:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1159:
	mov	qword ptr [r12], 0
	jmp	.label_1160
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40caf0

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
	je	.label_1169
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_1168
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str
	mov	edx, 1
	call	setenv
	jmp	.label_1167
.label_1168:
	mov	edi, OFFSET FLAT:.str
	call	unsetenv
.label_1167:
	test	eax, eax
	je	.label_1171
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_1172
.label_1171:
	call	tzset
	mov	r12b, 1
.label_1172:
	cmp	rbp, 2
	jb	.label_1170
	nop	
.label_1173:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1173
.label_1170:
	mov	dword ptr [r14], r15d
.label_1169:
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
	#Procedure 0x40cb80

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
	je	.label_1174
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1175
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_1178
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_1176
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
	jne	.label_1176
.label_1178:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1176
	mov	qword ptr [rsp + 0x38], -1
.label_1176:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1175
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_1177
.label_1175:
	mov	rax, -1
.label_1177:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1174:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc80

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
	#Procedure 0x40cce0

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
	je	.label_1181
	mov	rax, rcx
.label_1181:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x40cd10

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