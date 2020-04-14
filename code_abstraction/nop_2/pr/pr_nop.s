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
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x48
	mov	r15, rsi
	mov	r14d, edi
	nop	
	mov	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str
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
	xor	r13d, r13d
	cmp	r14d, 2
	lea	rdi, [rdi]
	mov	r12d, 0
	jl	.label_49
	movsxd	rax, r14d
	lea	rdi, [rax*8 - 8]
	call	xmalloc
	mov	r12, rax
.label_49:
	mov	dword ptr [rsp + 0x1c], 0xffffffff
	lea	r8, [rsp + 0x1c]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, -1
	nop	
	je	.label_12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	lea	rdi, [rdi]
	xor	r14d, r14d
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_15
	nop	dword ptr [rax]
.label_14:
	cmp	ebp, 0x43
	lea	rsi, [rsi]
	jle	.label_19
	add	ebp, -0x44
	mov	rsp, rsp
	cmp	ebp, 0x3d
	nop	
	ja	.label_31
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_45]]
.label_1193:
	nop	
	mov	byte ptr [byte ptr [rip + use_form_feed]],  1
	xor	r15d, r15d
	nop	
	jmp	.label_7
.label_19:
	cmp	ebp, 1
	lea	rdi, [rdi]
	jne	.label_44
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	nop	
	jne	.label_25
	nop	
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdx]
	nop	
	cmp	eax, 0x2b
	jne	.label_25
	inc	rdx
	mov	rsp, rsp
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	call	first_last_page
	test	al, al
	jne	.label_30
.label_25:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	ecx, ebx
	inc	ebx
	mov	qword ptr [r12 + rcx*8], rax
.label_30:
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_7
.label_1192:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + date_format]],  rax
	xor	r15d, r15d
	jmp	.label_7
.label_1194:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1195:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + skip_count]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, -0x80000000
	nop	
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	nop	
	xor	r9d, r9d
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	r8, rax
	nop	
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + start_line_num]],  eax
	jmp	.label_7
.label_1196:
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str
	mov	dword ptr [dword ptr [rip + col_sep_length]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_46
	nop	
	mov	rdi, rbp
	call	strlen
	test	rax, -0x80000000
	jne	.label_23
	nop	
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_7
.label_1197:
	nop	
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  0
	xor	r15d, r15d
	jmp	.label_7
.label_1198:
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, rbp
	nop	
	mov	r8, rax
	call	xdectoimax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r15d, r15d
	nop	
	jmp	.label_7
.label_1199:
	mov	byte ptr [byte ptr [rip + print_across_flag]],  1
	jmp	.label_21
.label_1200:
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1201:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + use_cntrl_prefix]],  1
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_7
.label_1202:
	mov	byte ptr [byte ptr [rip + double_space]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1203:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_28
	nop	
	mov	esi, 0x65
	mov	edx, OFFSET FLAT:input_tab_char
	mov	ecx, OFFSET FLAT:chars_per_input_tab
	call	getoptarg
.label_28:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + untabify_input]],  1
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_7
.label_1204:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + custom_header]],  rax
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	jmp	.label_7
.label_1205:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_33
	mov	esi, 0x69
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:output_tab_char
	mov	ecx, OFFSET FLAT:chars_per_output_tab
	call	getoptarg
.label_33:
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_7
.label_1206:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	r15d, r15d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + lines_per_page]],  eax
	jmp	.label_7
.label_1207:
	mov	byte ptr [byte ptr [rip + parallel_files]],  1
.label_21:
	nop	
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1208:
	mov	byte ptr [byte ptr [rip + numbered_lines]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_7
	mov	rbp, rbp
	mov	esi, 0x6e
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:number_separator
	mov	ecx, OFFSET FLAT:chars_per_number
	call	getoptarg
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_7
.label_1209:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	esi, 0
	nop	
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + chars_per_margin]],  eax
	lea	rsi, [rsi]
	jmp	.label_7
.label_1210:
	mov	byte ptr [byte ptr [rip + ignore_failed_opens]],  1
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_7
.label_1211:
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_18
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	xor	al, 1
	test	al, 1
	lea	rsi, [rsi]
	je	.label_18
	mov	rdi, rbp
	nop	
	call	strlen
	lea	rdi, [rdi]
	test	rax, -0x80000000
	lea	rdi, [rdi]
	jne	.label_23
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + col_sep_length]],  eax
	mov	qword ptr [word ptr [rip + col_sep_string]],  rbp
	xor	r15d, r15d
.label_18:
	nop	
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_7
.label_1212:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
	xor	r15d, r15d
	jmp	.label_7
.label_1213:
	nop	
	mov	byte ptr [byte ptr [rip + use_esc_sequence]],  1
	nop	
	xor	r15d, r15d
	jmp	.label_7
.label_1214:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	mov	cl,  byte ptr [byte ptr [rip + truncate_lines]]
	and	cl, 1
	mov	cl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rcx
	jne	.label_37
	mov	dword ptr [dword ptr [rip + chars_per_line]],  eax
	xor	r15d, r15d
.label_37:
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_7
.label_1215:
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	mov	rsp, rsp
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoimax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_7
.label_1216:
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_48
	mov	edi, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	first_last_page
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_7
	jmp	.label_10
.label_46:
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	jmp	.label_7
	nop	word ptr cs:[rax + rax]
.label_15:
	lea	rsi, [rsi]
	lea	eax, [rbp - 0x30]
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_14
	nop	
	lea	r15, [r14 + 1]
	cmp	r15, qword ptr [rsp + 0x10]
	nop	
	jb	.label_50
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	call	x2realloc
	mov	r13, rax
.label_50:
	mov	byte ptr [r13 + r14], bpl
	mov	byte ptr [r13 + r14 + 1], 0
.label_7:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xffffffff
	nop	
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	nop	
	lea	r8, [rsp + 0x1c]
	lea	rdi, [rdi]
	call	getopt_long
	mov	rbp, rbp
	mov	ebp, eax
	cmp	ebp, -1
	mov	r14, r15
	lea	rsi, [rsi]
	jne	.label_15
	test	r13, r13
	je	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	esi, 1
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	nop	
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, r13
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + columns]],  eax
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + explicit_columns]],  1
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	free
.label_26:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x30]
	jmp	.label_32
.label_12:
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_32:
	cmp	qword ptr [word ptr [rip + date_format]],  0
	nop	
	jne	.label_38
	nop	
	mov	edi, OFFSET FLAT:.str.14
	call	getenv
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.16
	nop	
	test	rax, rax
	nop	
	je	.label_40
	lea	rsi, [rsi]
	mov	edi, 2
	lea	rdi, [rdi]
	call	hard_locale
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.15
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	cmovne	rcx, rdx
.label_40:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + date_format]],  rcx
.label_38:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_0
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	call	tzalloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + localtz]],  rax
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + first_page_number]],  0
	jne	.label_47
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + first_page_number]],  1
.label_47:
	lea	rsi, [rsi]
	mov	r8b,  byte ptr [byte ptr [rip + parallel_files]]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_35
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_53
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + print_across_flag]]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	je	.label_8
.label_35:
	nop	
	test	bpl, 1
	mov	rsp, rsp
	je	.label_11
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_13
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_11
	test	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp, rbp
	jne	.label_11
	lea	rdi, [rdi]
	test	r8b, r8b
	lea	rsi, [rsi]
	jne	.label_17
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_11
.label_17:
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	nop	
	and	al, 1
	jne	.label_20
	mov	byte ptr [byte ptr [rip + join_lines]],  1
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  0
	mov	rsp, rsp
	jg	.label_20
	jmp	.label_11
.label_13:
	lea	rdi, [rdi]
	test	r8b, r8b
	jne	.label_24
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + explicit_columns]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_51
.label_24:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	je	.label_11
.label_20:
	nop	
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
	mov	rbp, rbp
	jmp	.label_11
.label_51:
	mov	byte ptr [byte ptr [rip + join_lines]],  1
.label_11:
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	ecx, r14d
	nop	
	jge	.label_43
	mov	esi, r14d
	mov	rsp, rsp
	sub	esi, ecx
	lea	edx, [r14 - 1]
	nop	
	sub	edx, ecx
	test	sil, 3
	je	.label_52
	nop	
	movsxd	rcx, ecx
	mov	rbp, rbp
	and	esi, 3
	neg	esi
	nop	
.label_34:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + rcx*8]
	mov	edi, ebx
	inc	ebx
	mov	rsp, rsp
	mov	qword ptr [r12 + rdi*8], rax
	inc	rcx
	lea	rsi, [rsi]
	inc	esi
	jne	.label_34
.label_52:
	cmp	edx, 3
	mov	rsp, rsp
	jb	.label_36
	lea	rdi, [rdi]
	mov	r9d, ecx
	nop	
	lea	eax, [rcx + 3]
	nop	
	cdqe	
	lea	rdi, [rdi]
	lea	r10, [r15 + rax*8]
	mov	rsp, rsp
	lea	eax, [rcx + 2]
	mov	rbp, rbp
	cdqe	
	lea	r11, [r15 + rax*8]
	movsxd	rax, ecx
	lea	rbp, [r15 + rax*8]
	mov	rsp, rsp
	inc	eax
	mov	rbp, rbp
	cdqe	
	lea	rdx, [r15 + rax*8]
	mov	ebx, ebx
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_41:
	mov	rcx, qword ptr [rbp + rax*8]
	lea	rsi, [rbx + rax]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [rdx + rax*8]
	lea	edi, [rsi + 1]
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [r11 + rax*8]
	lea	edi, [rsi + 2]
	nop	
	mov	qword ptr [r12 + rdi*8], rcx
	mov	rcx, qword ptr [r10 + rax*8]
	add	esi, 3
	mov	rsp, rsp
	mov	qword ptr [r12 + rsi*8], rcx
	add	rax, 4
	mov	rsp, rsp
	lea	ecx, [r9 + rax]
	mov	rbp, rbp
	cmp	ecx, r14d
	mov	rbp, rbp
	jl	.label_41
	add	ebx, eax
.label_36:
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  ecx
.label_43:
	nop	
	test	ebx, ebx
	je	.label_42
	test	r8b, r8b
	je	.label_27
	mov	edi, ebx
	mov	rsi, r12
	mov	rsp, rsp
	call	print_files
	mov	rsp, rsp
	jmp	.label_9
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	call	print_files
	add	r12, 8
	lea	rsi, [rsi]
	dec	ebx
	lea	rdi, [rdi]
	jne	.label_27
	jmp	.label_9
.label_42:
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	call	print_files
.label_9:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	mov	rbp, rbp
	call	free
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	lea	rdi, [rdi]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	nop	
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	call	free
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_22
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	lea	rdi, [rdi]
	cmp	eax, -1
	nop	
	je	.label_16
.label_22:
	movzx	eax,  byte ptr [byte ptr [rip + failed_opens]]
	lea	rsi, [rsi]
	and	eax, 1
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_44:
	cmp	ebp, 0xffffff7d
	je	.label_29
	cmp	ebp, 0xffffff7e
	jne	.label_31
	mov	rbp, rbp
	xor	edi, edi
	call	usage
.label_29:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	mov	r9d, OFFSET FLAT:.str.13
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_31:
	nop	
	mov	edi, 1
	call	usage
.label_53:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.18
	mov	rsp, rsp
	jmp	.label_39
.label_8:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.19
	jmp	.label_39
.label_16:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_23:
	call	integer_overflow
.label_48:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
.label_39:
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402830

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
	mov	r8d, OFFSET FLAT:.str
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
	je	.label_57
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_57
	movzx	edx, byte ptr [rbp]
	mov	rsp, rsp
	cmp	edx, 0x3a
	jne	.label_56
	mov	rsp, rsp
	inc	rbp
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	nop	
	mov	rdi, rbp
	call	xstrtoumax
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_54
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	cmp	rbp, rdx
	lea	rsi, [rsi]
	je	.label_60
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	cmp	rax, rcx
	jae	.label_58
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_57
.label_56:
	mov	rax, -1
	jmp	.label_55
.label_60:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_57
.label_58:
	mov	dl, byte ptr [rdx]
.label_55:
	test	dl, dl
	je	.label_59
	xor	eax, eax
	jmp	.label_57
.label_59:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + first_page_number]],  rcx
	mov	qword ptr [word ptr [rip + last_page_number]],  rax
	mov	al, 1
.label_57:
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	nop	
	ret	
.label_54:
	movsx	edx, r15b
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	
	.section	.text
	.align	32
	#Procedure 0x402980

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
	mov	ecx, eax
	nop	
	add	ecx, -0x30
	cmp	ecx, 0xa
	nop	
	jb	.label_61
	lea	rsi, [rsi]
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_61:
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_62
	lea	rcx, [rsp + 8]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	rdi, rbx
	call	xstrtol
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_63
	nop	
	lea	rax, [rcx - 1]
	cmp	rax, 0x7fffffff
	jae	.label_63
	mov	dword ptr [rbp], ecx
.label_62:
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_63:
	mov	r15d, 0x4b
	cmp	rcx, 0x7fffffff
	mov	rsp, rsp
	jg	.label_64
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
.label_64:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	movsx	ebp, r14b
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	ecx, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

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
	jne	.label_66
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
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.81
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.29
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, 5
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	test	rax, rax
	je	.label_65
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
.label_66:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_page]]
	mov	eax, ecx
	mov	rbp, rbp
	add	eax, -0xa
	mov	dword ptr [dword ptr [rip + lines_per_body]],  eax
	jle	.label_256
	movzx	edx,  byte ptr [byte ptr [rip + extremities]]
	lea	rsi, [rsi]
	and	edx, 1
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_265
	jmp	.label_268
.label_256:
	mov	byte ptr [byte ptr [rip + extremities]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + keep_FF]],  1
.label_268:
	nop	
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
	mov	eax, ecx
.label_265:
	movzx	ecx,  byte ptr [byte ptr [rip + double_space]]
	and	ecx, 1
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_271
	mov	ecx, eax
	shr	ecx, 0x1f
	mov	rbp, rbp
	add	ecx, eax
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [dword ptr [rip + lines_per_body]],  ecx
.label_271:
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_279
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_281
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + columns]],  r14d
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	jmp	.label_284
.label_279:
	mov	byte ptr [byte ptr [rip + parallel_files]],  0
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_284
.label_281:
	lea	rsi, [rsi]
	xor	eax, eax
.label_284:
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	nop	
	jne	.label_296
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + balance_columns]],  1
.label_296:
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [rip + columns]]
	cmp	r8d, 2
	mov	rsp, rsp
	jl	.label_299
	mov	cl,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	cl, 1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	je	.label_69
	cmp	dword ptr [dword ptr [rip + col_sep_length]],  1
	mov	rsp, rsp
	jne	.label_75
	mov	rsp, rsp
	mov	dl, cl
	mov	rbp, rbp
	xor	dl, 1
	mov	rsp, rsp
	test	dl, 1
	je	.label_75
	mov	rdx,  qword ptr [word ptr [rip + col_sep_string]]
	mov	rbp, rbp
	movzx	edx, byte ptr [rdx]
	cmp	edx, 9
	jne	.label_75
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + col_sep_string]], OFFSET FLAT:.str.70
	lea	rsi, [rsi]
	jmp	.label_75
.label_299:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + storing_columns]],  1
	mov	cl,  byte ptr [byte ptr [rip + join_lines]]
	and	cl, 1
	mov	rbp, rbp
	jne	.label_95
	jmp	.label_104
.label_69:
	nop	
	mov	edx, OFFSET FLAT:.str.69
	mov	esi, OFFSET FLAT:.str.70
	nop	
	test	cl, 1
	cmovne	rsi, rdx
	nop	
	mov	qword ptr [word ptr [rip + col_sep_string]],  rsi
	mov	dword ptr [dword ptr [rip + col_sep_length]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + use_col_separator]],  1
.label_75:
	nop	
	mov	byte ptr [byte ptr [rip + truncate_lines]],  1
	mov	byte ptr [byte ptr [rip + tabify_output]],  1
	mov	rbp, rbp
	test	cl, 1
	je	.label_104
.label_95:
	nop	
	mov	byte ptr [byte ptr [rip + truncate_lines]],  0
.label_104:
	mov	r10b,  byte ptr [byte ptr [rip + numbered_lines]]
	lea	rsi, [rsi]
	and	r10b, 1
	nop	
	xor	r11d, r11d
	nop	
	movzx	edx, r10b
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_121
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [rip + start_line_num]]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + line_count]],  edx
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [rip + chars_per_number]]
	mov	rbp, rbp
	movzx	esi,  byte ptr [byte ptr [rip + number_separator]]
	lea	rdi, [rdi]
	cmp	esi, 9
	jne	.label_127
	mov	rbp, rbp
	mov	esi, edx
	sar	esi, 0x1f
	shr	esi, 0x1d
	lea	rsi, [rsi]
	add	esi, edx
	and	esi, 0xfffffff8
	mov	rbp, rbp
	mov	edi, edx
	sub	edi, esi
	neg	edi
	lea	edx, [rdx + rdi + 8]
	nop	
	jmp	.label_137
.label_127:
	inc	edx
.label_137:
	nop	
	mov	dword ptr [dword ptr [rip + number_width]],  edx
	xor	r11d, r11d
	lea	rdi, [rdi]
	test	al, al
	cmovne	r11d, edx
.label_121:
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + col_sep_length]]
	test	ebp, ebp
	mov	rbp, rbp
	js	.label_153
	je	.label_156
	test	r8d, r8d
	jle	.label_157
	lea	rsi, [rsi]
	lea	r9d, [r8 - 1]
	lea	rsi, [rsi]
	mov	edi, 0x7fffffff
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	edx, edx
	lea	rsi, [rsi]
	idiv	ebp
	mov	rbp, rbp
	jmp	.label_158
.label_153:
	mov	rbp, rbp
	test	r8d, r8d
	lea	rsi, [rsi]
	jle	.label_169
	nop	
	cmp	ebp, -1
	je	.label_156
	lea	rsi, [rsi]
	lea	r9d, [r8 - 1]
	nop	
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	idiv	ebp
	mov	edi, 0x7fffffff
.label_158:
	cmp	eax, r9d
	jl	.label_178
	lea	rdi, [rdi]
	jmp	.label_156
.label_157:
	mov	eax, 0x80000000
	cdq	
	idiv	ebp
	mov	edi, 0x7fffffff
	jmp	.label_234
.label_169:
	lea	rdi, [rdi]
	mov	edi, 0x7fffffff
	mov	eax, 0x7fffffff
	xor	edx, edx
	lea	rdi, [rdi]
	idiv	ebp
.label_234:
	mov	rbp, rbp
	cmp	r8d, eax
	lea	rsi, [rsi]
	jle	.label_178
.label_156:
	nop	
	lea	eax, [r8 - 1]
	imul	ebp, eax
	test	ebp, ebp
	nop	
	js	.label_71
	nop	
	mov	edi, ebp
.label_178:
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, r11d
	mov	esi, edi
	xor	esi, 0x80000000
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	edx, esi
	lea	rsi, [rsi]
	mov	ebp, edi
	jl	.label_196
	jmp	.label_207
.label_71:
	lea	r9d, [rbp + 0x7fffffff]
	mov	ecx,  dword ptr [dword ptr [rip + chars_per_line]]
	mov	rbp, rbp
	mov	esi, ecx
	sub	esi, r11d
	xor	eax, eax
	mov	rsp, rsp
	cmp	r9d, esi
	jl	.label_196
.label_207:
	sub	ecx, r11d
	mov	rsp, rsp
	sub	ecx, ebp
	mov	eax, ecx
.label_196:
	cdq	
	idiv	r8d
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + chars_per_column]],  eax
	nop	
	test	eax, eax
	nop	
	jle	.label_213
	test	r10b, r10b
	lea	rdi, [rdi]
	je	.label_219
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + number_buff]]
	call	free
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + chars_per_number]]
	cmp	rax, 0xb
	mov	rsp, rsp
	mov	edi, 0xb
	cmova	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	call	xmalloc
	mov	qword ptr [word ptr [rip + number_buff]],  rax
.label_219:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + clump_buff]]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	cmp	eax, 8
	mov	ecx, 8
	mov	rbp, rbp
	cmovge	ecx, eax
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	mov	rsp, rsp
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + clump_buff]],  rax
	mov	dword ptr [dword ptr [rip + total_files]],  0
	mov	rdi,  qword ptr [word ptr [rip + column_vector]]
	call	free
	movsxd	rdi,  dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	js	.label_181
	shl	rdi, 6
	lea	rdi, [rdi]
	call	xmalloc
	mov	rbp, rax
	nop	
	mov	qword ptr [word ptr [rip + column_vector]],  rbp
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_295
	nop	
	test	r14d, r14d
	lea	rsi, [rsi]
	jle	.label_264
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rsi, rbp
	call	open_file
	mov	rbp, rbp
	test	al, al
	je	.label_81
	mov	rbx, qword ptr [rbx]
	mov	rdi, qword ptr [rbp]
	call	fileno
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, eax
	call	init_header
	mov	rbp, rbp
	mov	dword ptr [rbp + 0x2c], 0
	lea	rdi, [rdi]
	lea	rbx, [rbp + 8]
	mov	rsp, rsp
	jmp	.label_275
	nop	
.label_287:
	mov	rbp, rbp
	add	rbp, 0x40
	nop	
	add	rbx, 8
.label_295:
	test	r14d, r14d
	je	.label_282
	dec	r14d
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	nop	
	call	open_file
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_287
	lea	rdi, [rdi]
	add	rbp, -0x40
	mov	rbp, rbp
	dec	dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	jmp	.label_287
.label_282:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + columns]],  0
	je	.label_81
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	call	init_header
	mov	rbp, rbp
	jmp	.label_68
.label_264:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rbx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbp, rbp
	mov	dword ptr [rbp + 0x10], 0
	nop	
	mov	byte ptr [rbp + 0x39], 0
	mov	rsp, rsp
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	edi, OFFSET FLAT:.str
	nop	
	mov	esi, 0xffffffff
	call	init_header
	lea	rsi, [rsi]
	mov	dword ptr [rbp + 0x2c], 0
.label_275:
	nop	
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	mov	eax, esi
	dec	eax
	je	.label_68
	nop	
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp]
	add	rbp, 0x40
	nop	
	lea	edi, [rsi + 3]
	nop	
	add	esi, -2
	nop	
	test	dil, 3
	mov	rsp, rsp
	je	.label_110
	lea	rsi, [rsi]
	and	edi, 3
	lea	rdi, [rdi]
	neg	edi
	nop	dword ptr [rax]
.label_119:
	mov	qword ptr [rbp + 8], rcx
	mov	qword ptr [rbp], rdx
	mov	dword ptr [rbp + 0x10], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp + 0x39], 0
	mov	dword ptr [rbp + 0x2c], 0
	add	rbp, 0x40
	dec	eax
	nop	
	inc	edi
	jne	.label_119
.label_110:
	mov	rbp, rbp
	cmp	esi, 3
	nop	
	jb	.label_68
	nop	
	add	rbp, 0xf9
	nop	dword ptr [rax]
.label_195:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf1], rcx
	mov	qword ptr [rbp - 0xf9], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe9], 0
	mov	byte ptr [rbp - 0xc0], 0
	mov	dword ptr [rbp - 0xcd], 0
	nop	
	mov	qword ptr [rbp - 0xb1], rcx
	mov	qword ptr [rbp - 0xb9], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa9], 0
	mov	byte ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8d], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x71], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x79], rdx
	mov	dword ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x40], 0
	mov	dword ptr [rbp - 0x4d], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x31], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x39], rdx
	mov	dword ptr [rbp - 0x29], 0
	mov	byte ptr [rbp], 0
	mov	dword ptr [rbp - 0xd], 0
	mov	rbp, rbp
	add	rbp, 0x100
	add	eax, -4
	mov	rbp, rbp
	jne	.label_195
.label_68:
	mov	eax,  dword ptr [dword ptr [rip + total_files]]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	mov	al,  byte ptr [byte ptr [rip + storing_columns]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_177
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	test	ecx, ecx
	js	.label_183
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	je	.label_186
	test	r14d, r14d
	mov	rsp, rsp
	js	.label_191
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_192
.label_183:
	mov	r14d,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	rsp, rsp
	test	r14d, r14d
	js	.label_193
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_186
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	cdq	
.label_192:
	lea	rdi, [rdi]
	idiv	ecx
	mov	rsp, rsp
	cmp	eax, r14d
	lea	rsi, [rsi]
	jge	.label_186
	jmp	.label_132
.label_191:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	jmp	.label_209
.label_193:
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_209:
	idiv	ecx
	mov	rbp, rbp
	cmp	r14d, eax
	mov	rbp, rbp
	jl	.label_132
.label_186:
	mov	rbp, rbp
	imul	r14d, ecx
	cmp	r14d, 0x7fffffff
	nop	
	je	.label_132
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	rsp, rsp
	cmp	ebp, 0x7fffffff
	je	.label_132
	inc	ebp
	js	.label_223
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_190
	test	r14d, r14d
	js	.label_227
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	edx, edx
	jmp	.label_228
.label_223:
	test	r14d, r14d
	js	.label_233
	cmp	ebp, -1
	je	.label_190
	mov	eax, 0x80000000
	cdq	
.label_228:
	lea	rdi, [rdi]
	idiv	ebp
	cmp	eax, r14d
	lea	rdi, [rdi]
	jge	.label_190
	lea	rdi, [rdi]
	jmp	.label_132
.label_227:
	mov	rsp, rsp
	mov	eax, 0x80000000
	cdq	
	jmp	.label_245
.label_233:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	xor	edx, edx
.label_245:
	idiv	ebp
	cmp	r14d, eax
	jl	.label_132
.label_190:
	lea	ebx, [r14 + 1]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + line_vector]]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_181
	movsxd	rdi, ebx
	mov	rbp, rbp
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + line_vector]],  rax
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	call	free
	test	r14d, r14d
	lea	rsi, [rsi]
	js	.label_181
	imul	ebp, r14d
	movsxd	rdi, r14d
	shl	rdi, 2
	call	xmalloc
	nop	
	mov	qword ptr [word ptr [rip + end_vector]],  rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + buff]]
	lea	rsi, [rsi]
	call	free
	movsxd	rbx, ebp
	mov	al,  byte ptr [byte ptr [rip + use_col_separator]]
	and	al, 1
	movabs	rcx, 0x3fffffffffffffff
	lea	rsi, [rsi]
	movabs	rdx, 0x7fffffffffffffff
	mov	rbp, rbp
	cmovne	rdx, rcx
	mov	rsp, rsp
	cmp	rdx, rbx
	mov	rbp, rbp
	jb	.label_181
	mov	rbp, rbp
	movzx	edi, al
	inc	rdi
	imul	rdi, rbx
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + buff]],  rax
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	mov	rbp, rbp
	inc	rax
	mov	rbp, rbp
	imul	rax, rbx
	mov	qword ptr [word ptr [rip + buff_allocated]],  rax
.label_177:
	mov	r14,  qword ptr [word ptr [rip + first_page_number]]
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	r14, 2
	jb	.label_290
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	mov	r15d, 1
	nop	word ptr [rax + rax]
.label_148:
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
	nop	
	mov	r12d, 1
	cmp	ecx, 1
	jle	.label_67
	nop	word ptr cs:[rax + rax]
.label_101:
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jle	.label_76
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr cs:[rax + rax]
.label_93:
	cmp	dword ptr [rbx + 0x10], 0
	jne	.label_150
	mov	rdi, rbx
	mov	esi, ebp
	lea	rdi, [rdi]
	call	skip_read
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_150:
	mov	rbp, rbp
	add	rbx, 0x40
	cmp	ebp, eax
	mov	rbp, rbp
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	lea	rsi, [rsi]
	jl	.label_93
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + lines_per_body]]
.label_76:
	lea	rsi, [rsi]
	inc	r12d
	lea	rsi, [rsi]
	cmp	r12d, ecx
	jl	.label_101
.label_67:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + last_line]],  1
	mov	rsp, rsp
	test	eax, eax
	jle	.label_109
	mov	ebp, 1
	mov	rbx,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr [rax + rax]
.label_123:
	cmp	dword ptr [rbx + 0x10], 0
	mov	rbp, rbp
	jne	.label_116
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	call	skip_read
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_116:
	add	rbx, 0x40
	cmp	ebp, eax
	lea	ecx, [rbp + 1]
	mov	ebp, ecx
	jl	.label_123
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	test	eax, eax
	nop	
	jle	.label_86
	test	cl, 1
	jne	.label_86
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	rdi, [rdi]
	lea	edx, [rax - 1]
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	test	al, 3
	je	.label_131
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	and	edi, 3
	xor	ebp, ebp
	nop	
.label_145:
	mov	esi, ebp
	mov	rsp, rsp
	cmp	dword ptr [rcx + 0x10], 3
	mov	rbp, rbp
	je	.label_277
	mov	dword ptr [rcx + 0x10], 2
.label_277:
	nop	
	add	rcx, 0x40
	lea	ebp, [rsi + 1]
	cmp	edi, ebp
	lea	rdi, [rdi]
	jne	.label_145
	mov	rbp, rbp
	add	esi, 2
.label_131:
	lea	rdi, [rdi]
	cmp	edx, 3
	nop	
	jae	.label_151
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_86
.label_109:
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	nop	
	jmp	.label_86
.label_151:
	mov	rsp, rsp
	lea	edx, [rax + 1]
	sub	edx, esi
	lea	rdi, [rdi]
	add	rcx, 0xd0
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	rbp, rbp
	cmp	dword ptr [rcx - 0xc0], 3
	mov	rsp, rsp
	je	.label_117
	mov	dword ptr [rcx - 0xc0], 2
.label_117:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx - 0x80], 3
	lea	rsi, [rsi]
	je	.label_174
	mov	dword ptr [rcx - 0x80], 2
.label_174:
	cmp	dword ptr [rcx - 0x40], 3
	lea	rsi, [rsi]
	je	.label_179
	mov	dword ptr [rcx - 0x40], 2
.label_179:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 3
	nop	
	je	.label_182
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 2
.label_182:
	mov	rsp, rsp
	add	rcx, 0x100
	lea	rdi, [rdi]
	add	edx, -4
	mov	rsp, rsp
	jne	.label_187
	nop	
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rdx,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_185
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	mov	rsi, rdx
	mov	edi, eax
	je	.label_200
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x10], 2
	nop	
	jne	.label_205
	mov	dword ptr [rdx + 0x10], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_205:
	lea	edi, [rax - 1]
	lea	rsi, [rdx + 0x40]
.label_200:
	nop	
	cmp	eax, 1
	lea	rsi, [rsi]
	je	.label_185
	add	rsi, 0x50
	nop	dword ptr [rax]
.label_224:
	cmp	dword ptr [rsi - 0x40], 2
	jne	.label_211
	lea	rdi, [rdi]
	mov	dword ptr [rsi - 0x40], 0
	lea	rsi, [rsi]
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_211:
	cmp	dword ptr [rsi], 2
	mov	rbp, rbp
	jne	.label_218
	mov	rsp, rsp
	mov	dword ptr [rsi], 0
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_218:
	mov	rbp, rbp
	add	rsi, 0x80
	lea	rdi, [rdi]
	add	edi, -2
	jne	.label_224
.label_185:
	test	cl, 1
	lea	rdi, [rdi]
	je	.label_229
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + last_line]],  0
	test	ecx, ecx
	lea	rdi, [rdi]
	jg	.label_231
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
.label_229:
	cmp	dword ptr [rdx + 0x10], 3
	lea	rdi, [rdi]
	je	.label_244
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_231:
	lea	rdi, [rdi]
	inc	r15
	lea	rsi, [rsi]
	cmp	r15, r14
	lea	rdi, [rdi]
	jb	.label_148
	jmp	.label_252
.label_244:
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	mov	byte ptr [byte ptr [rip + last_line]],  0
.label_240:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.75
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	mov	rbp, rbp
	mov	r8, r15
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + files_ready_to_read]],  0
	jle	.label_81
.label_252:
	mov	rax,  qword ptr [word ptr [rip + first_page_number]]
.label_290:
	mov	qword ptr [word ptr [rip + page_number]],  rax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	rsp, rsp
	mov	r10b,  byte ptr [byte ptr [rip + truncate_lines]]
	and	r10b, 1
	xor	ebp, ebp
	nop	
	movzx	ecx, r10b
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_74
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + parallel_files]]
	and	ecx, 1
	cmp	ecx, 1
	lea	rsi, [rsi]
	jne	.label_140
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	and	ecx, 1
	nop	
	cmp	ecx, 1
	jne	.label_140
	lea	rsi, [rsi]
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebp, eax
	lea	rsi, [rsi]
	add	ebp,  dword ptr [dword ptr [rip + number_width]]
	jmp	.label_74
.label_140:
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_column]]
	add	ebp, eax
.label_74:
	mov	r14d,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rsp, rsp
	add	eax, r14d
	mov	rsp, rsp
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	edi, 1
	mov	sil,  byte ptr [byte ptr [rip + storing_columns]]
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_289
	mov	r11b,  byte ptr [byte ptr [rip + numbered_lines]]
	lea	rsi, [rsi]
	mov	r9b,  byte ptr [byte ptr [rip + parallel_files]]
	xor	r9b, 1
	mov	r15d,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	edi, OFFSET FLAT:print_char
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:store_char
	mov	edx, OFFSET FLAT:read_line
	mov	ebx, OFFSET FLAT:print_stored
	mov	rbp, rbp
	mov	cl, sil
	mov	dword ptr [rsp + 4], esi
	and	cl, 1
	cmovne	rbx, rdx
	lea	rsi, [rsi]
	test	cl, cl
	lea	rdi, [rdi]
	cmovne	r13, rdi
	mov	edi, 1
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_114:
	nop	
	mov	qword ptr [rsi + 0x20], r13
	mov	qword ptr [rsi + 0x18], rbx
	lea	rsi, [rsi]
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_99
	cmp	edi, 1
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	or	r8b, r9b
	jmp	.label_108
	nop	word ptr [rax + rax]
.label_99:
	mov	rsp, rsp
	xor	r8d, r8d
.label_108:
	nop	
	and	r8b, 1
	mov	rbp, rbp
	mov	byte ptr [rsi + 0x38], r8b
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x34], eax
	lea	rsi, [rsi]
	add	ebp, r14d
	mov	eax, ebp
	lea	ebp, [rbp + r15]
	mov	rbp, rbp
	test	r10b, r10b
	cmove	eax, ecx
	mov	rbp, rbp
	cmove	ebp, ecx
	add	rsi, 0x40
	nop	
	inc	edi
	lea	rdi, [rdi]
	cmp	edi, edx
	mov	rbp, rbp
	jl	.label_114
	mov	rsp, rsp
	jmp	.label_124
.label_289:
	mov	dword ptr [rsp + 4], esi
	mov	rsp, rsp
	mov	rsi, r12
.label_124:
	mov	ebp, dword ptr [rsp + 4]
	test	bpl, 1
	jne	.label_130
	nop	
	movzx	ecx,  byte ptr [byte ptr [rip + balance_columns]]
	and	ecx, 1
	mov	rbp, rbp
	cmp	ecx, 1
	jne	.label_130
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:store_char
	mov	qword ptr [word ptr [rsi + 24]], OFFSET FLAT:print_stored
	mov	rsp, rsp
	jmp	.label_217
.label_130:
	nop	
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:print_char
	mov	qword ptr [word ptr [rsi + 24]], OFFSET FLAT:read_line
.label_217:
	movzx	ecx,  byte ptr [byte ptr [rip + numbered_lines]]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_147
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rbp, rbp
	cmp	edi, 1
	sete	dl
	lea	rdi, [rdi]
	xor	cl, 1
	or	cl, dl
	mov	rbp, rbp
	jmp	.label_152
.label_147:
	mov	rbp, rbp
	xor	ecx, ecx
.label_152:
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rsi + 0x38], cl
	mov	rbp, rbp
	mov	dword ptr [rsi + 0x34], eax
	mov	eax,  dword ptr [dword ptr [rip + line_count]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + line_number]],  eax
	jmp	.label_159
.label_198:
	lea	rdi, [rdi]
	cmp	dword ptr [r12 + 0x10], 3
	setne	al
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + files_ready_to_read]],  eax
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_159:
	test	bpl, 1
	mov	rbp, rbp
	je	.label_175
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	lea	rsi, [rsi]
	jmp	.label_79
	nop	word ptr cs:[rax + rax]
.label_175:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + buff_current]],  0
	mov	rbp, rbp
	mov	r8b,  byte ptr [byte ptr [rip + balance_columns]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	lea	rdi, [rdi]
	mov	dl, r8b
	not	dl
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rdi, [rdi]
	and	edx, 1
	mov	r14d, ecx
	nop	
	sub	r14d, edx
	lea	rdi, [rdi]
	test	r14d, r14d
	jle	.label_184
	lea	esi, [r14 - 1]
	mov	edi, 1
	test	r14b, 7
	mov	rdx, r12
	je	.label_201
	lea	rsi, [rsi]
	mov	dl, r8b
	lea	rsi, [rsi]
	inc	dl
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rdi, [rdi]
	and	edx, 1
	mov	ebp, ecx
	sub	ebp, edx
	and	ebp, 7
	xor	ebx, ebx
	mov	rdx, r12
	nop	dword ptr [rax]
.label_189:
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x2c], 0
	lea	rdi, [rdi]
	add	rdx, 0x40
	nop	
	lea	ebx, [rdi + 1]
	cmp	ebp, ebx
	nop	
	jne	.label_189
	add	edi, 2
.label_201:
	cmp	esi, 7
	mov	rbp, rbp
	jb	.label_221
	lea	rsi, [rsi]
	add	rdx, 0x1ec
	mov	rsp, rsp
	mov	al, r8b
	inc	al
	movzx	eax, al
	and	eax, 1
	sub	ecx, eax
	mov	rsp, rsp
	inc	ecx
	mov	rsp, rsp
	sub	ecx, edi
	nop	
.label_285:
	mov	dword ptr [rdx - 0x1c0], 0
	mov	dword ptr [rdx - 0x180], 0
	nop	
	mov	dword ptr [rdx - 0x140], 0
	nop	
	mov	dword ptr [rdx - 0x100], 0
	lea	rsi, [rsi]
	mov	dword ptr [rdx - 0xc0], 0
	mov	dword ptr [rdx - 0x80], 0
	nop	
	mov	dword ptr [rdx - 0x40], 0
	mov	dword ptr [rdx], 0
	add	rdx, 0x200
	lea	rdi, [rdi]
	add	ecx, -8
	lea	rsi, [rsi]
	jne	.label_285
.label_221:
	test	r14d, r14d
	mov	rsp, rsp
	jle	.label_184
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	test	ecx, ecx
	lea	rsi, [rsi]
	je	.label_184
	mov	r15d, 1
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_88:
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x28], r13d
	lea	rdi, [rdi]
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_83
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [rip + lines_per_body]]
	lea	rdi, [rdi]
	test	esi, esi
	mov	rbp, rbp
	je	.label_83
	mov	edx, dword ptr [r12 + 0x10]
	nop	
	mov	ebx, 1
	lea	rdi, [rdi]
	sub	ebx, esi
	lea	rsi, [rsi]
	mov	ebp, eax
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rsp, rsp
	test	edx, edx
	je	.label_273
	lea	rsi, [rsi]
	mov	eax, ebp
	lea	rsi, [rsi]
	jmp	.label_142
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + input_position]],  0
	lea	rsi, [rsi]
	mov	rdi, r12
	call	read_line
	lea	rdi, [rdi]
	test	al, al
	jne	.label_286
	lea	rdi, [rdi]
	mov	rdi, r12
	call	read_rest_of_line
.label_286:
	lea	rdi, [rdi]
	mov	edx, dword ptr [r12 + 0x10]
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + buff_current]]
	lea	rsi, [rsi]
	test	edx, edx
	nop	
	je	.label_243
	lea	rsi, [rsi]
	cmp	ebp, eax
	mov	rbp, rbp
	jne	.label_243
	mov	eax, ebp
	jmp	.label_142
.label_243:
	lea	rdi, [rdi]
	inc	dword ptr [r12 + 0x2c]
	mov	ecx, r13d
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + line_vector]]
	mov	dword ptr [rsi + rcx*4], ebp
	mov	esi,  dword ptr [dword ptr [rip + input_position]]
	lea	rsi, [rsi]
	inc	r13d
	mov	rdi,  qword ptr [word ptr [rip + end_vector]]
	mov	dword ptr [rdi + rcx*4], esi
	nop	
.label_142:
	mov	ecx,  dword ptr [dword ptr [rip + files_ready_to_read]]
	mov	rbp, rbp
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_83
	inc	ebx
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	ebp, eax
	lea	rsi, [rsi]
	jne	.label_80
.label_83:
	cmp	r15d, r14d
	jge	.label_87
	inc	r15d
	lea	rdi, [rdi]
	add	r12, 0x40
	test	ecx, ecx
	jne	.label_88
.label_87:
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + balance_columns]]
	nop	
	and	cl, 1
	mov	ecx, r13d
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + line_vector]]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + rcx*4], eax
	jne	.label_100
	nop	
	xor	r8d, r8d
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	r8b, 1
	mov	rbp, rbp
	mov	r8d, 0
	lea	rdi, [rdi]
	je	.label_103
.label_100:
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	rsp, rsp
	mov	r8b, 1
	test	edi, edi
	jle	.label_103
	mov	rsi,  qword ptr [word ptr [rip + column_vector]]
	mov	ecx,  dword ptr [dword ptr [rip + columns]]
	add	rsi, 0x2c
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_128:
	mov	eax, r13d
	nop	
	cdq	
	idiv	edi
	nop	
	inc	ebp
	cmp	ebp, edx
	setle	dl
	movzx	edx, dl
	nop	
	add	edx, eax
	mov	dword ptr [rsi], edx
	mov	dword ptr [rsi - 4], ebx
	lea	rsi, [rsi]
	add	ebx, edx
	nop	
	add	rsi, 0x40
	cmp	ebp, ecx
	mov	rbp, rbp
	mov	edi, ecx
	jl	.label_128
.label_103:
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [rip + columns]]
	mov	rbp, rbp
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	mov	eax, edi
	mov	rsp, rsp
	dec	eax
	nop	
	mov	rcx, r12
	je	.label_138
	lea	edx, [rdi - 2]
	add	edi, 7
	nop	
	test	dil, 7
	je	.label_276
	nop	
	and	edi, 7
	nop	
	neg	edi
	nop	
	mov	rsi, r12
	nop	dword ptr [rax]
.label_155:
	mov	ecx, dword ptr [rsi + 0x2c]
	mov	dword ptr [rsi + 0x30], ecx
	add	rsi, 0x40
	dec	eax
	mov	rbp, rbp
	inc	edi
	mov	rbp, rbp
	jne	.label_155
	lea	rdi, [rdi]
	jmp	.label_162
.label_276:
	mov	rsi, r12
.label_162:
	cmp	edx, 7
	lea	rdi, [rdi]
	jb	.label_163
	lea	rsi, [rsi]
	add	rsi, 0x1f0
.label_170:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi - 0x1c4]
	mov	dword ptr [rsi - 0x1c0], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi - 0x184]
	mov	dword ptr [rsi - 0x180], ecx
	mov	ecx, dword ptr [rsi - 0x144]
	mov	rbp, rbp
	mov	dword ptr [rsi - 0x140], ecx
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi - 0x104]
	nop	
	mov	dword ptr [rsi - 0x100], ecx
	mov	ecx, dword ptr [rsi - 0xc4]
	mov	dword ptr [rsi - 0xc0], ecx
	mov	ecx, dword ptr [rsi - 0x84]
	mov	dword ptr [rsi - 0x80], ecx
	mov	ecx, dword ptr [rsi - 0x44]
	nop	
	mov	dword ptr [rsi - 0x40], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi - 4]
	mov	dword ptr [rsi], ecx
	add	rsi, 0x200
	add	eax, -8
	lea	rsi, [rsi]
	jne	.label_170
.label_163:
	mov	rbp, rbp
	mov	eax, edx
	nop	
	shl	rax, 6
	lea	rcx, [rax + r12 + 0x40]
.label_138:
	test	r8b, r8b
	lea	rsi, [rsi]
	je	.label_199
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx + 0x2c]
	nop	
	mov	dword ptr [rcx + 0x30], eax
	nop	
	jmp	.label_203
	nop	word ptr [rax + rax]
.label_199:
	cmp	dword ptr [rcx + 0x10], 0
	je	.label_210
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x30], 0
	jmp	.label_203
.label_210:
	mov	eax,  dword ptr [dword ptr [rip + lines_per_body]]
	nop	
	mov	dword ptr [rcx + 0x30], eax
	nop	
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_79:
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_81
	lea	rsi, [rsi]
	mov	ebp,  dword ptr [dword ptr [rip + lines_per_body]]
	mov	rbp, rbp
	lea	esi, [rax - 1]
	test	al, 3
	lea	rsi, [rsi]
	je	.label_220
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	and	edi, 3
	neg	edi
	nop	
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	dword ptr [rdx + 0x10], 0
	nop	
	mov	ecx, ebp
	je	.label_235
	nop	
	xor	ecx, ecx
.label_235:
	mov	rsp, rsp
	mov	dword ptr [rdx + 0x30], ecx
	mov	rbp, rbp
	dec	eax
	add	rdx, 0x40
	lea	rdi, [rdi]
	inc	edi
	lea	rsi, [rsi]
	jne	.label_238
	jmp	.label_247
	nop	word ptr [rax + rax]
.label_220:
	mov	rdx, r12
.label_247:
	cmp	esi, 3
	nop	
	jb	.label_203
	add	rdx, 0xf0
.label_262:
	mov	rsp, rsp
	cmp	dword ptr [rdx - 0xe0], 0
	lea	rsi, [rsi]
	mov	ecx, ebp
	je	.label_250
	xor	ecx, ecx
.label_250:
	nop	
	mov	dword ptr [rdx - 0xc0], ecx
	cmp	dword ptr [rdx - 0xa0], 0
	lea	rdi, [rdi]
	mov	ecx, ebp
	je	.label_251
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_251:
	nop	
	mov	dword ptr [rdx - 0x80], ecx
	mov	rsp, rsp
	cmp	dword ptr [rdx - 0x60], 0
	mov	ecx, ebp
	lea	rdi, [rdi]
	je	.label_255
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_255:
	lea	rdi, [rdi]
	mov	dword ptr [rdx - 0x40], ecx
	cmp	dword ptr [rdx - 0x20], 0
	mov	ecx, ebp
	lea	rdi, [rdi]
	je	.label_92
	xor	ecx, ecx
.label_92:
	mov	dword ptr [rdx], ecx
	add	rdx, 0x100
	lea	rsi, [rsi]
	add	eax, -4
	mov	rsp, rsp
	jne	.label_262
.label_203:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_81
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	ecx, ecx
	test	al, 1
	lea	rdi, [rdi]
	mov	ebp, 0
	mov	rsi, r12
	je	.label_267
	nop	
	cmp	dword ptr [r12 + 0x10], 2
	mov	rsp, rsp
	jb	.label_270
	xor	ecx, ecx
	nop	
	test	dl, 1
	jne	.label_272
	cmp	dword ptr [r12 + 0x2c], 0
	nop	
	jle	.label_272
	cmp	dword ptr [r12 + 0x30], 0
	jle	.label_272
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	ecx, 1
.label_272:
	nop	
	lea	rsi, [r12 + 0x40]
	mov	rsp, rsp
	mov	ebp, 1
.label_267:
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_283
	mov	rsp, rsp
	mov	edi, eax
	lea	rsi, [rsi]
	sub	edi, ebp
	lea	rsi, [rsi]
	add	rsi, 0x70
	nop	dword ptr [rax]
.label_78:
	cmp	dword ptr [rsi - 0x60], 2
	jb	.label_292
	test	dl, 1
	mov	rbp, rbp
	jne	.label_294
	nop	
	cmp	dword ptr [rsi - 0x44], 0
	jle	.label_294
	lea	rsi, [rsi]
	cmp	dword ptr [rsi - 0x40], 0
	jle	.label_294
	nop	
.label_292:
	mov	rbp, rbp
	inc	ecx
.label_294:
	cmp	dword ptr [rsi - 0x20], 2
	nop	
	jb	.label_298
	test	dl, 1
	lea	rdi, [rdi]
	jne	.label_70
	mov	rsp, rsp
	cmp	dword ptr [rsi - 4], 0
	nop	
	jle	.label_70
	cmp	dword ptr [rsi], 0
	lea	rdi, [rdi]
	jle	.label_70
	nop	word ptr cs:[rax + rax]
.label_298:
	inc	ecx
.label_70:
	mov	rsp, rsp
	add	rsi, 0x80
	add	edi, -2
	jne	.label_78
.label_283:
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_81
	mov	cl,  byte ptr [byte ptr [rip + extremities]]
	and	cl, 1
	lea	rsi, [rsi]
	jne	.label_84
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_a_header]],  1
.label_84:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	ebx,  dword ptr [dword ptr [rip + lines_per_body]]
	nop	
	mov	cl,  byte ptr [byte ptr [rip + double_space]]
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	shl	ebx, cl
	xor	r15d, r15d
	test	ebx, ebx
	jg	.label_89
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_269:
	lea	rdi, [rdi]
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	lea	rdi, [rdi]
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
.label_89:
	mov	rsp, rsp
	test	al, 1
	mov	ecx, 0
	mov	ebp, 0
	mov	rsi, r12
	je	.label_113
	cmp	dword ptr [r12 + 0x10], 2
	nop	
	jb	.label_118
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_106
	cmp	dword ptr [r12 + 0x2c], 0
	jle	.label_106
	cmp	dword ptr [r12 + 0x30], 0
	nop	
	jle	.label_106
	nop	word ptr cs:[rax + rax]
.label_118:
	nop	
	mov	ecx, 1
.label_106:
	lea	rsi, [r12 + 0x40]
	mov	ebp, 1
.label_113:
	cmp	eax, 1
	mov	rbp, rbp
	je	.label_133
	mov	edi, eax
	nop	
	sub	edi, ebp
	add	rsi, 0x70
	nop	word ptr cs:[rax + rax]
.label_161:
	cmp	dword ptr [rsi - 0x60], 2
	jb	.label_139
	test	dl, 1
	lea	rdi, [rdi]
	jne	.label_141
	cmp	dword ptr [rsi - 0x44], 0
	jle	.label_141
	cmp	dword ptr [rsi - 0x40], 0
	jle	.label_141
	nop	word ptr [rax + rax]
.label_139:
	lea	rsi, [rsi]
	inc	ecx
.label_141:
	mov	rsp, rsp
	cmp	dword ptr [rsi - 0x20], 2
	jb	.label_149
	test	dl, 1
	jne	.label_257
	lea	rdi, [rdi]
	cmp	dword ptr [rsi - 4], 0
	nop	
	jle	.label_257
	cmp	dword ptr [rsi], 0
	jle	.label_257
	nop	word ptr cs:[rax + rax]
.label_149:
	inc	ecx
.label_257:
	lea	rsi, [rsi]
	add	rsi, 0x80
	add	edi, -2
	jne	.label_161
.label_133:
	test	ecx, ecx
	nop	
	je	.label_90
	nop	
	mov	dword ptr [rsp + 4], ebx
	mov	dword ptr [dword ptr [rip + output_position]],  0
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	byte ptr [byte ptr [rip + empty_line]],  1
	mov	r14d, 1
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jle	.label_168
	nop	dword ptr [rax]
.label_166:
	mov	dword ptr [dword ptr [rip + input_position]],  0
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbx, rax
	shr	rbx, 0x20
	test	eax, eax
	jg	.label_188
	cmp	dword ptr [r12 + 0x10], 1
	lea	rsi, [rsi]
	jne	.label_194
.label_188:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + FF_only]],  0
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	rdi, r12
	lea	rdi, [rdi]
	call	qword ptr [r12 + 0x18]
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_206
	mov	rdi, r12
	mov	rbp, rbp
	call	read_rest_of_line
.label_206:
	nop	
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	lea	rsi, [rsi]
	and	r15b, 1
	or	r15b, r8b
	mov	rbx, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	lea	eax, [rbx - 1]
	lea	rsi, [rsi]
	mov	dword ptr [r12 + 0x30], eax
	mov	rsp, rsp
	cmp	ebx, 1
	jg	.label_154
	nop	
	mov	esi,  dword ptr [dword ptr [rip + columns]]
	nop	
	xor	eax, eax
	test	esi, esi
	mov	rbp, rbp
	je	.label_173
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rbp, rbp
	xor	edi, edi
	test	sil, 1
	lea	rdi, [rdi]
	jne	.label_253
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_232
.label_253:
	nop	
	cmp	dword ptr [rax + 0x10], 2
	lea	rdi, [rdi]
	jb	.label_236
	mov	rsp, rsp
	xor	edi, edi
	test	cl, 1
	jne	.label_94
	cmp	dword ptr [rax + 0x2c], 0
	nop	
	jle	.label_94
	nop	
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_94
.label_236:
	mov	rsp, rsp
	mov	edi, 1
.label_94:
	add	rax, 0x40
	lea	rdi, [rdi]
	mov	ebp, 1
.label_232:
	cmp	esi, 1
	je	.label_248
	nop	
	mov	edx, esi
	sub	edx, ebp
	add	rax, 0x70
	nop	word ptr cs:[rax + rax]
.label_260:
	cmp	dword ptr [rax - 0x60], 2
	jb	.label_215
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_136
	cmp	dword ptr [rax - 0x44], 0
	lea	rdi, [rdi]
	jle	.label_136
	lea	rsi, [rsi]
	cmp	dword ptr [rax - 0x40], 0
	jle	.label_136
.label_215:
	nop	
	inc	edi
.label_136:
	mov	rsp, rsp
	cmp	dword ptr [rax - 0x20], 2
	jb	.label_230
	nop	
	test	cl, 1
	jne	.label_258
	cmp	dword ptr [rax - 4], 0
	nop	
	jle	.label_258
	cmp	dword ptr [rax], 0
	jle	.label_258
	nop	
.label_230:
	inc	edi
.label_258:
	add	rax, 0x80
	mov	rbp, rbp
	add	edx, -2
	jne	.label_260
.label_248:
	test	edi, edi
	mov	rbp, rbp
	je	.label_274
.label_154:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	nop	
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_146
	nop	
	mov	eax, dword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_146
	nop	
	movzx	ecx,  byte ptr [byte ptr [rip + empty_line]]
	and	ecx, 1
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_202
	nop	
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	lea	rsi, [rsi]
	jmp	.label_146
.label_194:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_146
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + empty_line]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_212
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  1
	jmp	.label_146
.label_202:
	cmp	eax, 3
	je	.label_293
	mov	rbp, rbp
	cmp	eax, 2
	jne	.label_146
	movzx	eax,  byte ptr [byte ptr [rip + FF_only]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_146
.label_293:
	shr	rbx, 0x20
	nop	
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	nop	
	mov	r13d, ebx
	sub	r13d, eax
	jle	.label_172
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	mov	rbp, rbp
	jne	.label_111
	cmp	r13d, ecx
	nop	
	jle	.label_82
	mov	rbp, rbp
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_85
.label_212:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  ebx
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	r13d, ebx
	sub	r13d, eax
	lea	rdi, [rdi]
	jle	.label_172
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	mov	rsp, rsp
	je	.label_214
.label_111:
	lea	rdi, [rdi]
	sub	r13d, ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r13d
	mov	rsp, rsp
	jmp	.label_105
.label_77:
	mov	rsp, rsp
	mov	esi, 0x20
	mov	rbp, rbp
	call	__overflow
	nop	
	jmp	.label_122
	nop	dword ptr [rax]
.label_85:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_77
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x20
.label_122:
	dec	ebx
	jne	.label_85
	nop	
	jmp	.label_82
.label_214:
	cmp	r13d, ecx
	nop	
	jle	.label_82
	sub	ebx, ecx
	sub	ebx, eax
	jmp	.label_73
.label_165:
	mov	esi, 0x20
	call	__overflow
	nop	
	jmp	.label_167
	nop	
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_165
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_167:
	dec	ebx
	jne	.label_73
.label_82:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + output_position]],  r13d
.label_105:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_172:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_144
	mov	rbp, rbp
	call	print_sep_string
.label_144:
	cmp	byte ptr [r12 + 0x38], 0
	je	.label_146
	mov	rbp, rbp
	mov	rdi, r12
	mov	rbp, rbp
	call	add_line_number
	nop	word ptr cs:[rax + rax]
.label_146:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_160
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
.label_160:
	mov	rsp, rsp
	add	r12, 0x40
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	cmp	r14d, eax
	lea	ecx, [r14 + 1]
	mov	rbp, rbp
	mov	r14d, ecx
	nop	
	jl	.label_166
	mov	rbp, rbp
	mov	r8b,  byte ptr [byte ptr [rip + pad_vertically]]
	lea	rsi, [rsi]
	jmp	.label_173
	nop	word ptr [rax + rax]
.label_168:
	mov	ebx, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_225
.label_274:
	mov	eax, esi
.label_173:
	lea	rsi, [rsi]
	test	r8b, r8b
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 4]
	lea	rdi, [rdi]
	je	.label_225
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_259
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xa
.label_280:
	dec	ebx
	mov	eax,  dword ptr [dword ptr [rip + columns]]
.label_225:
	test	eax, eax
	je	.label_96
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	rsp, rsp
	mov	dl,  byte ptr [byte ptr [rip + storing_columns]]
	xor	esi, esi
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_204
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	jmp	.label_125
	nop	word ptr cs:[rax + rax]
.label_204:
	cmp	dword ptr [rcx + 0x10], 2
	jb	.label_237
	nop	
	xor	esi, esi
	mov	rbp, rbp
	test	dl, 1
	jne	.label_197
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + 0x2c], 0
	lea	rsi, [rsi]
	jle	.label_197
	cmp	dword ptr [rcx + 0x30], 0
	jle	.label_197
.label_237:
	mov	esi, 1
.label_197:
	nop	
	add	rcx, 0x40
	lea	rsi, [rsi]
	mov	edi, 1
.label_125:
	lea	rsi, [rsi]
	cmp	eax, 1
	je	.label_226
	sub	eax, edi
	add	rcx, 0x70
	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	dword ptr [rcx - 0x60], 2
	mov	rbp, rbp
	jb	.label_107
	test	dl, 1
	jne	.label_239
	cmp	dword ptr [rcx - 0x44], 0
	mov	rsp, rsp
	jle	.label_239
	cmp	dword ptr [rcx - 0x40], 0
	jle	.label_239
	nop	dword ptr [rax]
.label_107:
	inc	esi
.label_239:
	cmp	dword ptr [rcx - 0x20], 2
	jb	.label_246
	mov	rbp, rbp
	test	dl, 1
	lea	rdi, [rdi]
	jne	.label_129
	nop	
	cmp	dword ptr [rcx - 4], 0
	jle	.label_129
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rsp, rsp
	jle	.label_129
	nop	word ptr cs:[rax + rax]
.label_246:
	lea	rsi, [rsi]
	inc	esi
.label_129:
	lea	rsi, [rsi]
	add	rcx, 0x80
	lea	rdi, [rdi]
	add	eax, -2
	jne	.label_180
.label_226:
	test	esi, esi
	mov	rsp, rsp
	jne	.label_254
.label_96:
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	mov	rbp, rbp
	and	al, 1
	jne	.label_90
.label_254:
	test	r15b, 1
	nop	
	je	.label_242
	mov	al,  byte ptr [byte ptr [rip + double_space]]
	lea	rsi, [rsi]
	xor	al, 1
	nop	
	test	al, 1
	jne	.label_242
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_261
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
.label_278:
	dec	ebx
.label_242:
	mov	rbp, rbp
	test	ebx, ebx
	jle	.label_90
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_269
	jmp	.label_135
.label_261:
	lea	rsi, [rsi]
	mov	esi, 0xa
	call	__overflow
	nop	
	jmp	.label_278
.label_259:
	lea	rdi, [rdi]
	mov	esi, 0xa
	mov	rbp, rbp
	call	__overflow
	jmp	.label_280
	nop	dword ptr [rax + rax]
.label_90:
	test	ebx, ebx
	lea	rsi, [rsi]
	jne	.label_135
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	xor	ebx, ebx
	test	eax, eax
	mov	rbp, rbp
	jle	.label_135
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	edx, [rax - 1]
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	test	al, 3
	je	.label_291
	mov	edi, eax
	mov	rbp, rbp
	and	edi, 3
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_72:
	mov	esi, ebp
	cmp	dword ptr [rcx + 0x10], 0
	nop	
	jne	.label_216
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x39], 1
.label_216:
	mov	rbp, rbp
	add	rcx, 0x40
	mov	rsp, rsp
	lea	ebp, [rsi + 1]
	mov	rsp, rsp
	cmp	edi, ebp
	mov	rsp, rsp
	jne	.label_72
	mov	rsp, rsp
	add	esi, 2
.label_291:
	cmp	edx, 3
	jb	.label_135
	add	rcx, 0xf9
	inc	eax
	sub	eax, esi
	nop	dword ptr [rax]
.label_134:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx - 0xe9], 0
	jne	.label_171
	lea	rdi, [rdi]
	mov	byte ptr [rcx - 0xc0], 1
.label_171:
	mov	rbp, rbp
	cmp	dword ptr [rcx - 0xa9], 0
	lea	rsi, [rsi]
	jne	.label_91
	nop	
	mov	byte ptr [rcx - 0x80], 1
.label_91:
	cmp	dword ptr [rcx - 0x69], 0
	mov	rsp, rsp
	jne	.label_97
	lea	rdi, [rdi]
	mov	byte ptr [rcx - 0x40], 1
.label_97:
	cmp	dword ptr [rcx - 0x29], 0
	jne	.label_102
	mov	byte ptr [rcx], 1
.label_102:
	lea	rsi, [rsi]
	add	rcx, 0x100
	add	eax, -4
	jne	.label_134
	nop	word ptr cs:[rax + rax]
.label_135:
	and	r15b, 1
	mov	byte ptr [byte ptr [rip + pad_vertically]],  r15b
	je	.label_288
	mov	al,  byte ptr [byte ptr [rip + extremities]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	je	.label_115
.label_288:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_112
	movzx	eax,  byte ptr [byte ptr [rip + print_a_FF]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_112
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_126
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xc
.label_249:
	mov	byte ptr [byte ptr [rip + print_a_FF]],  0
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	al,  byte ptr [byte ptr [rip + use_form_feed]]
	and	al, 1
	je	.label_143
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_263
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xc
	mov	rsp, rsp
	jmp	.label_112
	nop	dword ptr [rax]
.label_143:
	mov	rbp, rbp
	mov	eax, ebx
	mov	rsp, rsp
	add	eax, 5
	mov	rsp, rsp
	je	.label_112
	nop	
	mov	eax, ebx
	mov	rsp, rsp
	mov	ebx, 0xfffffffb
	sub	ebx, eax
	jmp	.label_164
.label_176:
	mov	esi, 0xa
	lea	rdi, [rdi]
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_241
	nop	word ptr cs:[rax + rax]
.label_164:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_176
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0xa
.label_241:
	lea	rsi, [rsi]
	inc	ebx
	jne	.label_164
	nop	
.label_112:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + last_page_number]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + page_number]]
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + page_number]],  rcx
	cmp	rax, rcx
	jb	.label_81
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	nop	
	mov	r12,  qword ptr [word ptr [rip + column_vector]]
	test	eax, eax
	je	.label_98
	test	al, 1
	nop	
	mov	rcx, r12
	mov	edx, eax
	mov	rbp, rbp
	je	.label_120
	cmp	dword ptr [r12 + 0x10], 2
	lea	rdi, [rdi]
	jne	.label_208
	mov	dword ptr [r12 + 0x10], 0
	nop	
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_208:
	lea	rdi, [rdi]
	lea	edx, [rax - 1]
	nop	
	lea	rcx, [r12 + 0x40]
.label_120:
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_98
	add	rcx, 0x50
	nop	word ptr cs:[rax + rax]
.label_297:
	lea	rsi, [rsi]
	cmp	dword ptr [rcx - 0x40], 2
	nop	
	jne	.label_222
	lea	rdi, [rdi]
	mov	dword ptr [rcx - 0x40], 0
	mov	rsp, rsp
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_222:
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 2
	jne	.label_266
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 0
	mov	rsp, rsp
	inc	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_266:
	lea	rdi, [rdi]
	add	rcx, 0x80
	mov	rsp, rsp
	add	edx, -2
	jne	.label_297
.label_98:
	nop	
	mov	cl,  byte ptr [byte ptr [rip + storing_columns]]
	and	cl, 1
	jne	.label_79
	jmp	.label_198
.label_126:
	lea	rsi, [rsi]
	mov	esi, 0xc
	nop	
	call	__overflow
	nop	
	jmp	.label_249
.label_263:
	lea	rdi, [rdi]
	mov	esi, 0xc
	call	__overflow
	jmp	.label_112
.label_81:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_181:
	nop	
	call	xalloc_die
.label_213:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_132:
	lea	rdi, [rdi]
	call	integer_overflow
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f50

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
	.align	32
	#Procedure 0x404f90

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
	jne	.label_304
	cmp	byte ptr [r14 + 1], 0
	je	.label_302
.label_304:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], r14
	nop	
	mov	esi, OFFSET FLAT:.str.72
	mov	rdi, r14
	mov	rbp, rbp
	call	fopen_safer
	nop	
	mov	qword ptr [rbx], rax
	jmp	.label_301
.label_302:
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
.label_301:
	nop	
	test	rax, rax
	je	.label_300
	nop	
	mov	esi, 2
	mov	rdi, rax
	mov	rbp, rbp
	call	fadvise
	mov	dword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x39], 0
	lea	rdi, [rdi]
	inc	dword ptr [dword ptr [rip + total_files]]
	mov	rsp, rsp
	mov	bl, 1
	lea	rdi, [rdi]
	jmp	.label_303
.label_300:
	mov	byte ptr [byte ptr [rip + failed_opens]],  1
	mov	al,  byte ptr [byte ptr [rip + ignore_failed_opens]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	je	.label_305
	nop	
	xor	ebx, ebx
	nop	
	jmp	.label_303
.label_305:
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
.label_303:
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
	.align	32
	#Procedure 0x4050b0

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
	jne	.label_311
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 1]
	neg	eax
.label_311:
	cmp	eax, 1
	nop	
	sbb	r15d, r15d
	lea	rdi, [rdi]
	or	r15d, esi
	mov	rbp, rbp
	js	.label_310
	lea	rdx, [rsp + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, r15d
	lea	rsi, [rsi]
	call	__fxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_308
.label_310:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + init_header.timespec]],  0
	jne	.label_309
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_309:
	movdqu	xmm0,  xmmword ptr [word ptr [rip + init_header.timespec]]
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x20]
	nop	
	jmp	.label_312
.label_308:
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rsp + 0x88]
	lea	rsi, [rsp + 0x20]
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	lea	rsi, [rsi]
	movq	r14, xmm0
.label_312:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + localtz]]
	lea	rdx, [rsp + 0xc0]
	call	localtime_rz
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_306
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	nop	
	lea	r12, [rsp + 0xc0]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, -1
	mov	rcx, r12
	mov	rsp, rsp
	mov	r9d, r14d
	mov	rbp, rbp
	call	nstrftime
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + date_format]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + localtz]]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, r12
	mov	r9d, r14d
	mov	rbp, rbp
	call	nstrftime
	jmp	.label_307
.label_306:
	nop	
	mov	edi, 0x21
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsp]
	call	imaxtostr
	nop	
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	r9d, r14d
	mov	rsp, rsp
	call	__sprintf_chk
.label_307:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + date_text]]
	mov	rsp, rsp
	call	free
	mov	qword ptr [word ptr [rip + date_text]],  rbp
	mov	rax,  qword ptr [word ptr [rip + custom_header]]
	test	r15d, r15d
	mov	ecx, OFFSET FLAT:.str
	cmovs	r13, rcx
	test	rax, rax
	mov	rbp, rbp
	cmovne	r13, rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_text]],  r13
	mov	rsp, rsp
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_line]]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdi, rbp
	call	gnu_mbswidth
	lea	rsi, [rsi]
	sub	ebx, eax
	mov	rdi,  qword ptr [word ptr [rip + file_text]]
	xor	esi, esi
	call	gnu_mbswidth
	sub	ebx, eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + header_width_available]],  ebx
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

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
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx + 0x10]
	nop	
	jae	.label_313
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	rbp, rbp
	movzx	ebp, byte ptr [rax]
.label_333:
	cmp	ebp, 0xc
	nop	
	jne	.label_320
	lea	rsi, [rsi]
	mov	ebp, 0xc
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x39], 0
	nop	
	je	.label_320
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_331
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_322:
	cmp	ebp, 0xa
	mov	rsp, rsp
	jne	.label_320
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_337
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rax]
.label_320:
	nop	
	mov	al,  byte ptr [byte ptr [rip + last_line]]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [r15 + 0x39], al
	lea	rsi, [rsi]
	mov	eax, ebp
	lea	rdi, [rdi]
	jmp	.label_319
	nop	word ptr cs:[rax + rax]
.label_334:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	nop	
	movzx	eax, byte ptr [rax]
.label_319:
	cmp	eax, -1
	je	.label_329
	cmp	eax, 0xa
	je	.label_315
	cmp	eax, 0xc
	je	.label_332
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_334
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	__uflow
	mov	rsp, rsp
	jmp	.label_319
.label_329:
	mov	rdi, r15
	mov	rbp, rbp
	call	close_file
	jmp	.label_315
.label_332:
	movzx	eax,  byte ptr [byte ptr [rip + last_line]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_316
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_321
	mov	byte ptr [r15 + 0x39], 0
	lea	rsi, [rsi]
	jmp	.label_316
.label_321:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_316
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	lea	rdi, [rdi]
	lea	edx, [rax - 1]
	test	al, 7
	mov	rbp, rbp
	je	.label_330
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	and	esi, 7
	mov	rbp, rbp
	neg	esi
	nop	word ptr cs:[rax + rax]
.label_314:
	nop	
	mov	byte ptr [rcx + 0x39], 0
	add	rcx, 0x40
	dec	eax
	inc	esi
	jne	.label_314
.label_330:
	lea	rdi, [rdi]
	cmp	edx, 7
	lea	rdi, [rdi]
	jb	.label_316
	add	rcx, 0x1f9
	nop	word ptr cs:[rax + rax]
.label_326:
	mov	byte ptr [rcx - 0x1c0], 0
	mov	byte ptr [rcx - 0x180], 0
	mov	rsp, rsp
	mov	byte ptr [rcx - 0x140], 0
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 0x100], 0
	mov	byte ptr [rcx - 0xc0], 0
	mov	rbp, rbp
	mov	byte ptr [rcx - 0x80], 0
	mov	byte ptr [rcx - 0x40], 0
	mov	byte ptr [rcx], 0
	mov	rbp, rbp
	add	rcx, 0x200
	add	eax, -8
	jne	.label_326
.label_316:
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_328
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_336:
	mov	rsp, rsp
	cmp	edi, 0xa
	lea	rdi, [rdi]
	je	.label_318
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	ungetc
.label_318:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	je	.label_325
	mov	dword ptr [r15 + 0x10], 2
	jmp	.label_323
.label_325:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_323
	nop	
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	mov	rbp, rbp
	inc	edx
	lea	rdi, [rdi]
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_324
	mov	edi, eax
	mov	rbp, rbp
	and	edi, 7
	mov	rsp, rsp
	neg	edi
	nop	word ptr [rax + rax]
.label_335:
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x10], edx
	lea	rsi, [rsi]
	add	rcx, 0x40
	dec	eax
	inc	edi
	lea	rsi, [rsi]
	jne	.label_335
.label_324:
	cmp	esi, 7
	jb	.label_323
	add	rcx, 0x1d0
	nop	word ptr cs:[rax + rax]
.label_327:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	lea	rdi, [rdi]
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	lea	rsi, [rsi]
	mov	dword ptr [rcx - 0x80], edx
	mov	rsp, rsp
	mov	dword ptr [rcx - 0x40], edx
	mov	rsp, rsp
	mov	dword ptr [rcx], edx
	lea	rsi, [rsi]
	add	rcx, 0x200
	mov	rbp, rbp
	add	eax, -8
	jne	.label_327
.label_323:
	mov	dword ptr [r15 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_315:
	mov	al,  byte ptr [byte ptr [rip + skip_count]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_317
	cmp	r14d, 1
	setne	al
	lea	rdi, [rdi]
	cmp	ebp, 0xc
	nop	
	je	.label_317
	mov	rbp, rbp
	and	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rbp, rbp
	jne	.label_317
	nop	
	inc	dword ptr [dword ptr [rip + line_count]]
.label_317:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_313:
	nop	
	mov	rdi, rbx
	nop	
	call	__uflow
	mov	ebp, eax
	jmp	.label_333
.label_328:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__uflow
	mov	rsp, rsp
	mov	edi, eax
	jmp	.label_336
.label_331:
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__uflow
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_322
.label_337:
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	__uflow
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_320
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056b0

	.globl close_file
	.type close_file, @function
close_file:
	mov	rsp, rsp
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	dword ptr [rbx + 0x10], 3
	lea	rdi, [rdi]
	je	.label_346
	mov	rdi, qword ptr [rbx]
	test	byte ptr [rdi], 0x20
	jne	.label_342
	call	fileno
	mov	rsp, rsp
	test	eax, eax
	je	.label_338
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_342
.label_338:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rsp, rsp
	and	al, 1
	je	.label_348
	mov	dword ptr [rbx + 0x10], 3
	mov	dword ptr [rbx + 0x30], 0
	jmp	.label_341
.label_348:
	mov	edx,  dword ptr [dword ptr [rip + columns]]
	test	edx, edx
	je	.label_341
	mov	rax,  qword ptr [word ptr [rip + column_vector]]
	test	dl, 1
	jne	.label_345
	lea	rdi, [rdi]
	mov	ecx, edx
	lea	rdi, [rdi]
	jmp	.label_347
.label_345:
	mov	dword ptr [rax + 0x10], 3
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_339
	mov	rsp, rsp
	mov	dword ptr [rax + 0x30], 0
.label_339:
	add	rax, 0x40
	lea	rsi, [rsi]
	lea	ecx, [rdx - 1]
.label_347:
	cmp	edx, 1
	je	.label_341
	lea	rsi, [rsi]
	add	rax, 0x70
	nop	
.label_343:
	mov	rsp, rsp
	mov	dword ptr [rax - 0x60], 3
	cmp	dword ptr [rax - 0x44], 0
	jne	.label_344
	mov	dword ptr [rax - 0x40], 0
.label_344:
	mov	rsp, rsp
	mov	dword ptr [rax - 0x20], 3
	cmp	dword ptr [rax - 4], 0
	jne	.label_340
	mov	dword ptr [rax], 0
.label_340:
	add	rax, 0x80
	add	ecx, -2
	mov	rbp, rbp
	jne	.label_343
.label_341:
	lea	rdi, [rdi]
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_346:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	rbp
	ret	
.label_342:
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl store_char
	.type store_char, @function
store_char:
	push	rbx
	mov	rsp, rsp
	mov	ebx, edi
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + buff_current]]
	lea	rsi, [rsi]
	cmp	rcx,  qword ptr [word ptr [rip + buff_allocated]]
	mov	rax,  qword ptr [word ptr [rip + buff]]
	lea	rsi, [rsi]
	jb	.label_349
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:buff_allocated
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	x2realloc
	mov	qword ptr [word ptr [rip + buff]],  rax
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + buff_current]]
.label_349:
	lea	edx, [rcx + 1]
	nop	
	mov	dword ptr [dword ptr [rip + buff_current]],  edx
	lea	rsi, [rsi]
	mov	ecx, ecx
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870

	.globl print_stored
	.type print_stored, @function
print_stored:
	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	movsxd	r14, dword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x28], eax
	mov	rax,  qword ptr [word ptr [rip + line_vector]]
	movsxd	r13, dword ptr [rax + r14*4]
	mov	rbx,  qword ptr [word ptr [rip + buff]]
	add	rbx, r13
	lea	rsi, [rsi]
	movsxd	r12, dword ptr [rax + r14*4 + 4]
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	nop	
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	jne	.label_363
	nop	
	call	print_header
.label_363:
	mov	rbp, rbp
	cmp	dword ptr [r15 + 0x10], 1
	jne	.label_354
	nop	
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	mov	rsp, rsp
	jle	.label_355
	nop	
	lea	r8d, [rax - 1]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	test	al, 7
	mov	rdx, rcx
	lea	rsi, [rsi]
	je	.label_366
	mov	ebp, eax
	and	ebp, 7
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	rdx, rcx
	nop	word ptr cs:[rax + rax]
.label_364:
	mov	esi, edi
	mov	rbp, rbp
	mov	dword ptr [rdx + 0x10], 2
	add	rdx, 0x40
	lea	edi, [rsi + 1]
	cmp	ebp, edi
	nop	
	jne	.label_364
	nop	
	add	esi, 2
.label_366:
	lea	rdi, [rdi]
	cmp	r8d, 7
	jb	.label_355
	dec	esi
	add	rdx, 0x1d0
	nop	
.label_359:
	nop	
	mov	dword ptr [rdx - 0x1c0], 2
	nop	
	mov	dword ptr [rdx - 0x180], 2
	mov	dword ptr [rdx - 0x140], 2
	mov	dword ptr [rdx - 0x100], 2
	mov	dword ptr [rdx - 0xc0], 2
	lea	rsi, [rsi]
	mov	dword ptr [rdx - 0x80], 2
	nop	
	mov	dword ptr [rdx - 0x40], 2
	mov	dword ptr [rdx], 2
	mov	rsp, rsp
	add	esi, 8
	lea	rsi, [rsi]
	add	rdx, 0x200
	nop	
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_359
.label_355:
	mov	rsp, rsp
	cmp	dword ptr [rcx + 0x30], 0
	lea	rdi, [rdi]
	jle	.label_352
.label_354:
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	nop	
	mov	r13d, ebp
	sub	r13d, eax
	mov	rbp, rbp
	jle	.label_356
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	mov	rbp, rbp
	and	dl, 1
	nop	
	je	.label_365
	sub	r13d, ecx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r13d
	jmp	.label_367
.label_365:
	cmp	r13d, ecx
	jle	.label_362
	nop	
	sub	ebp, ecx
	sub	ebp, eax
	jmp	.label_360
.label_350:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_361
	nop	dword ptr [rax]
.label_360:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_350
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_361:
	nop	
	dec	ebp
	mov	rsp, rsp
	jne	.label_360
.label_362:
	mov	dword ptr [dword ptr [rip + output_position]],  r13d
.label_367:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_356:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_357
	mov	rsp, rsp
	call	print_sep_string
.label_357:
	nop	
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	cmp	eax, r12d
	je	.label_358
	nop	
	sub	r12, rax
	nop	
.label_351:
	movsx	edi, byte ptr [rbx]
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	call	print_char
	dec	r12
	nop	
	jne	.label_351
.label_358:
	cmp	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	rbp, rbp
	jne	.label_353
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0x34]
	mov	rax,  qword ptr [word ptr [rip + end_vector]]
	mov	eax, dword ptr [rax + r14*4]
	lea	rsi, [rsi]
	add	eax, edx
	nop	
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	mov	ecx,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	rbp, rbp
	sub	edx, ecx
	mov	rbp, rbp
	cmp	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	lea	rdi, [rdi]
	jne	.label_353
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [dword ptr [rip + output_position]],  eax
	jmp	.label_353
.label_352:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + extremities]]
	mov	rbp, rbp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_353
	nop	
	mov	byte ptr [byte ptr [rip + pad_vertically]],  0
.label_353:
	mov	al, 1
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b50

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r15d, edi
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + tabify_output]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_368
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	lea	rdi, [rdi]
	movzx	r14d, r15b
	lea	rdi, [rdi]
	cmp	r14d, 0x20
	mov	rsp, rsp
	jne	.label_381
	mov	rsp, rsp
	inc	eax
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  eax
	mov	rsp, rsp
	jmp	.label_375
.label_381:
	test	eax, eax
	jle	.label_376
	mov	ebx,  dword ptr [dword ptr [rip + output_position]]
	lea	r12d, [rbx + rax]
	lea	rsi, [rsi]
	cmp	eax, 2
	jge	.label_379
	mov	ecx, ebx
	jmp	.label_372
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_370
	nop	
	lea	rdx, [rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_373:
	lea	rdi, [rdi]
	cmp	ebp, 1
	lea	rdi, [rdi]
	mov	ecx, ebx
	lea	rdi, [rdi]
	jg	.label_379
	mov	rsp, rsp
	jmp	.label_372
.label_370:
	movzx	esi, al
	lea	rdi, [rdi]
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_373
	nop	
.label_379:
	mov	ecx, ebx
	nop	
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebx
	lea	rsi, [rsi]
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r12d
	sub	ebp, ebx
	jge	.label_374
.label_372:
	cmp	ecx, r12d
	jge	.label_382
	mov	ebx, r12d
	sub	ebx, ecx
	jmp	.label_369
.label_378:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_380
	nop	word ptr cs:[rax + rax]
.label_369:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_378
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_380:
	lea	rsi, [rsi]
	dec	ebx
	lea	rsi, [rsi]
	jne	.label_369
.label_382:
	mov	dword ptr [dword ptr [rip + output_position]],  r12d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_376:
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x40
	mov	rsp, rsp
	jne	.label_377
	lea	rsi, [rsi]
	cmp	r14d, 8
	mov	rsp, rsp
	jne	.label_368
	dec	dword ptr [dword ptr [rip + output_position]]
	lea	rdi, [rdi]
	jmp	.label_368
.label_377:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_368:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_371
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], r15b
.label_375:
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_371:
	mov	rsp, rsp
	movzx	esi, r15b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	__overflow
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d20

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
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_389
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	mov	rbp, rbp
	movzx	ebx, byte ptr [rax]
.label_396:
	lea	rdi, [rdi]
	mov	ebp,  dword ptr [dword ptr [rip + input_position]]
	mov	rbp, rbp
	cmp	ebx, 0xc
	jne	.label_413
	mov	rbp, rbp
	cmp	byte ptr [r13 + 0x39], 0
	je	.label_418
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r13]
	nop	
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	jae	.label_420
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	lea	rdi, [rdi]
	movzx	ebx, byte ptr [rax]
.label_399:
	cmp	ebx, 0xa
	jne	.label_413
	mov	rdi, qword ptr [r13]
	nop	
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_429
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_413:
	nop	
	mov	byte ptr [r13 + 0x39], 0
	cmp	ebx, -1
	je	.label_439
	cmp	ebx, 0xa
	mov	rbp, rbp
	je	.label_440
	mov	rbp, rbp
	cmp	ebx, 0xc
	je	.label_443
	nop	
	movsx	edi, bl
	call	char_to_clump
	mov	rbp, rbp
	mov	r12d, eax
.label_440:
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_385
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	lea	rdi, [rdi]
	jle	.label_385
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_397
.label_385:
	mov	eax, OFFSET FLAT:store_char
	cmp	qword ptr [r13 + 0x20], rax
	je	.label_404
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_408
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_408
	lea	rdi, [rdi]
	call	print_header
.label_408:
	movzx	eax,  byte ptr [byte ptr [rip + parallel_files]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	nop	
	jne	.label_421
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + align_empty_cols]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_421
	mov	dword ptr [rsp], ebx
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  0
	test	eax, eax
	mov	rbp, rbp
	jle	.label_430
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp,  qword ptr [word ptr [rip + column_vector]]
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	r15d, dword ptr [rbp + 0x34]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  r15d
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	lea	rdi, [rdi]
	mov	r14d, r15d
	mov	rbp, rbp
	sub	r14d, eax
	mov	rbp, rbp
	jle	.label_383
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	nop	
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_392
	lea	rsi, [rsi]
	sub	r14d, ecx
	nop	
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	mov	rbp, rbp
	jmp	.label_400
	nop	
.label_392:
	mov	rsp, rsp
	cmp	r14d, ecx
	jle	.label_407
	mov	rsp, rsp
	sub	r15d, ecx
	mov	rsp, rsp
	sub	r15d, eax
	jmp	.label_409
.label_384:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_431
	nop	word ptr cs:[rax + rax]
.label_409:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_384
	nop	
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_431:
	dec	r15d
	lea	rdi, [rdi]
	jne	.label_409
.label_407:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_400:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_383:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_432
	lea	rdi, [rdi]
	call	print_sep_string
.label_432:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x38], 0
	je	.label_390
	mov	rbp, rbp
	mov	rdi, rbp
	call	add_line_number
.label_390:
	inc	dword ptr [dword ptr [rip + separators_not_printed]]
	add	rbp, 0x40
	lea	rdi, [rdi]
	cmp	ebx, dword ptr [rsp + 4]
	lea	eax, [rbx + 1]
	mov	rbp, rbp
	mov	ebx, eax
	jne	.label_441
.label_430:
	mov	eax, dword ptr [r13 + 0x34]
	nop	
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  eax
	mov	al,  byte ptr [byte ptr [rip + truncate_lines]]
	mov	rsp, rsp
	xor	ecx, ecx
	and	al, 1
	cmovne	ecx,  dword ptr [dword ptr [rip + chars_per_column]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	mov	byte ptr [byte ptr [rip + align_empty_cols]],  0
	mov	ebx, dword ptr [rsp]
.label_421:
	mov	eax,  dword ptr [dword ptr [rip + col_sep_length]]
	mov	ebp,  dword ptr [dword ptr [rip + padding_not_printed]]
	lea	rsi, [rsi]
	mov	r14d, ebp
	sub	r14d, eax
	nop	
	jle	.label_402
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + output_position]]
	mov	dl,  byte ptr [byte ptr [rip + tabify_output]]
	and	dl, 1
	je	.label_410
	mov	rbp, rbp
	sub	r14d, ecx
	nop	
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	jmp	.label_417
.label_439:
	nop	
	mov	rdi, r13
	call	close_file
	mov	rbp, rbp
	jmp	.label_422
.label_418:
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 0x39], 0
.label_443:
	mov	rdi, qword ptr [r13]
	nop	
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_426
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rcx
	movzx	edi, byte ptr [rax]
.label_425:
	cmp	edi, 0xa
	je	.label_433
	nop	
	mov	rsi, qword ptr [r13]
	mov	rbp, rbp
	call	ungetc
.label_433:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + FF_only]],  1
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + print_a_header]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_438
	movzx	eax,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_438
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + pad_vertically]],  1
	call	print_header
	lea	rdi, [rdi]
	jmp	.label_387
.label_438:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_387
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_387:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_401
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_406
.label_401:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_406
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	mov	rsp, rsp
	and	edx, 1
	inc	edx
	mov	rsp, rsp
	lea	esi, [rax - 1]
	test	al, 7
	lea	rdi, [rdi]
	je	.label_414
	nop	
	mov	edi, eax
	and	edi, 7
	mov	rsp, rsp
	neg	edi
	nop	dword ptr [rax]
.label_398:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	mov	rbp, rbp
	jne	.label_398
.label_414:
	cmp	esi, 7
	mov	rsp, rsp
	jb	.label_406
	lea	rsi, [rsi]
	add	rcx, 0x1d0
	nop	word ptr cs:[rax + rax]
.label_437:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	rbp, rbp
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	lea	rdi, [rdi]
	mov	dword ptr [rcx - 0xc0], edx
	nop	
	mov	dword ptr [rcx - 0x80], edx
	mov	dword ptr [rcx - 0x40], edx
	mov	rsp, rsp
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	lea	rsi, [rsi]
	add	eax, -8
	jne	.label_437
.label_406:
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_422:
	mov	r15b, 1
	jmp	.label_397
.label_389:
	lea	rsi, [rsi]
	call	__uflow
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	jmp	.label_396
.label_410:
	cmp	r14d, ecx
	jle	.label_415
	nop	
	sub	ebp, ecx
	nop	
	sub	ebp, eax
	mov	rbp, rbp
	jmp	.label_403
.label_416:
	mov	rsp, rsp
	mov	esi, 0x20
	mov	rsp, rsp
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_395
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_416
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x20
.label_395:
	dec	ebp
	jne	.label_403
.label_415:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
.label_417:
	mov	dword ptr [dword ptr [rip + padding_not_printed]],  0
.label_402:
	movzx	eax,  byte ptr [byte ptr [rip + use_col_separator]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_404
	mov	rsp, rsp
	call	print_sep_string
.label_404:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_434
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	add_line_number
.label_434:
	mov	byte ptr [byte ptr [rip + empty_line]],  0
	lea	rdi, [rdi]
	mov	r15b, 1
	nop	
	cmp	ebx, 0xa
	lea	rdi, [rdi]
	je	.label_397
	test	r12d, r12d
	je	.label_391
	mov	rbp,  qword ptr [word ptr [rip + clump_buff]]
	nop	word ptr cs:[rax + rax]
.label_388:
	movsx	edi, byte ptr [rbp]
	inc	rbp
	nop	
	call	qword ptr [r13 + 0x20]
	dec	r12d
	lea	rdi, [rdi]
	jne	.label_388
	jmp	.label_391
	nop	word ptr cs:[rax + rax]
.label_436:
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_391
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + clump_buff]]
	nop	word ptr cs:[rax + rax]
.label_411:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbx]
	inc	rbx
	lea	rsi, [rsi]
	call	qword ptr [r13 + 0x20]
	nop	
	dec	ebp
	lea	rsi, [rsi]
	jne	.label_411
	nop	
	jmp	.label_391
.label_419:
	call	__uflow
	jmp	.label_427
	nop	word ptr cs:[rax + rax]
.label_391:
	nop	
	mov	rdi, qword ptr [r13]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	jae	.label_419
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax]
.label_427:
	cmp	eax, -1
	je	.label_444
	lea	rsi, [rsi]
	cmp	eax, 0xa
	je	.label_397
	cmp	eax, 0xc
	nop	
	je	.label_435
	mov	r14d,  dword ptr [dword ptr [rip + input_position]]
	mov	rsp, rsp
	movsx	edi, al
	call	char_to_clump
	mov	rsp, rsp
	mov	ebp, eax
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_436
	mov	eax,  dword ptr [dword ptr [rip + input_position]]
	cmp	eax,  dword ptr [dword ptr [rip + chars_per_column]]
	jle	.label_436
	mov	dword ptr [dword ptr [rip + input_position]],  r14d
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_397
.label_444:
	mov	rdi, r13
	call	close_file
	jmp	.label_397
.label_435:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	jae	.label_428
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rax]
.label_423:
	lea	rsi, [rsi]
	cmp	edi, 0xa
	lea	rdi, [rdi]
	je	.label_405
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13]
	lea	rsi, [rsi]
	call	ungetc
.label_405:
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_412
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_412:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	je	.label_393
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x10], 2
	jmp	.label_394
.label_426:
	call	__uflow
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	jmp	.label_425
.label_420:
	lea	rdi, [rdi]
	call	__uflow
	mov	ebx, eax
	jmp	.label_399
.label_393:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_394
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	and	edx, 1
	inc	edx
	lea	esi, [rax - 1]
	test	al, 7
	je	.label_386
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	dword ptr [rax]
.label_442:
	mov	dword ptr [rcx + 0x10], edx
	add	rcx, 0x40
	dec	eax
	inc	edi
	mov	rbp, rbp
	jne	.label_442
.label_386:
	nop	
	cmp	esi, 7
	jb	.label_394
	add	rcx, 0x1d0
.label_424:
	mov	dword ptr [rcx - 0x1c0], edx
	mov	rbp, rbp
	mov	dword ptr [rcx - 0x180], edx
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	nop	
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	mov	rsp, rsp
	mov	dword ptr [rcx - 0x40], edx
	mov	rbp, rbp
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	mov	rbp, rbp
	add	eax, -8
	lea	rdi, [rdi]
	jne	.label_424
.label_394:
	mov	dword ptr [r13 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_397:
	lea	rdi, [rdi]
	mov	al, r15b
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_429:
	call	__uflow
	nop	
	mov	ebx, eax
	jmp	.label_413
.label_428:
	call	__uflow
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	jmp	.label_423
	.section	.text
	.align	32
	#Procedure 0x4065a0

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x148
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	rbp, rbp
	mov	r14d,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + tabify_output]]
	and	al, 1
	je	.label_453
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  r14d
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_449
.label_453:
	test	r14d, r14d
	mov	rbp, rbp
	jle	.label_452
	lea	rsi, [rsi]
	mov	ebx, r14d
	jmp	.label_454
.label_445:
	lea	rdi, [rdi]
	mov	esi, 0x20
	call	__overflow
	nop	
	jmp	.label_459
	nop	
.label_454:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_445
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x20
.label_459:
	dec	ebx
	jne	.label_454
.label_452:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	lea	rdi, [rdi]
	mov	ebx, r14d
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	mov	rbp, rbp
	mov	r14d, eax
.label_449:
	lea	r15d, [rbx + r14]
	cmp	r14d, 2
	jge	.label_448
	mov	ecx, ebx
	jmp	.label_447
	nop	dword ptr [rax]
.label_456:
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_446
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_455:
	cmp	ebp, 1
	mov	ecx, ebx
	lea	rdi, [rdi]
	jg	.label_448
	nop	
	jmp	.label_447
.label_446:
	lea	rsi, [rsi]
	movzx	esi, al
	mov	rsp, rsp
	call	__overflow
	nop	
	jmp	.label_455
	nop	dword ptr [rax + rax]
.label_448:
	mov	ecx, ebx
	mov	rbp, rbp
	mov	ebx,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	rsp, rsp
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	idiv	ebx
	lea	rsi, [rsi]
	sub	ebx, edx
	add	ebx, ecx
	mov	ebp, r15d
	sub	ebp, ebx
	jge	.label_456
.label_447:
	nop	
	cmp	ecx, r15d
	jge	.label_450
	lea	rsi, [rsi]
	mov	ebx, r15d
	lea	rsi, [rsi]
	sub	ebx, ecx
	jmp	.label_451
.label_460:
	lea	rdi, [rdi]
	mov	esi, 0x20
	call	__overflow
	nop	
	jmp	.label_458
	nop	word ptr [rax + rax]
.label_451:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_460
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x20
.label_458:
	mov	rbp, rbp
	dec	ebx
	lea	rdi, [rdi]
	jne	.label_451
.label_450:
	mov	dword ptr [dword ptr [rip + output_position]],  r15d
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + page_number]],  0
	je	.label_457
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8,  qword ptr [word ptr [rip + page_number]]
	mov	rsp, rsp
	lea	rbx, [rsp + 0x30]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, 0x114
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	__sprintf_chk
	mov	rbp, rbp
	mov	ebp,  dword ptr [dword ptr [rip + header_width_available]]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	gnu_mbswidth
	sub	ebp, eax
	nop	
	cmovs	ebp, r14d
	mov	r9d, ebp
	nop	
	sar	r9d, 1
	sub	ebp, r9d
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + chars_per_margin]]
	mov	r8,  qword ptr [word ptr [rip + date_text]]
	mov	rax,  qword ptr [word ptr [rip + file_text]]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x10], ebp
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.70
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.70
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.78
	mov	ecx, OFFSET FLAT:.str
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_a_header]],  0
	mov	dword ptr [dword ptr [rip + output_position]],  0
	mov	rbp, rbp
	add	rsp, 0x148
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_457:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406880

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	cmp	dword ptr [dword ptr [rip + separators_not_printed]],  0
	jle	.label_461
	mov	rax,  qword ptr [word ptr [rip + col_sep_string]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	r12d,  dword ptr [dword ptr [rip + col_sep_length]]
	nop	word ptr cs:[rax + rax]
.label_471:
	mov	rsp, rsp
	test	r12d, r12d
	lea	r12d, [r12 - 1]
	jle	.label_478
	mov	r15d, r12d
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_487
.label_480:
	mov	rbp, rbp
	movzx	esi, al
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_492
	nop	word ptr cs:[rax + rax]
.label_487:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	mov	ecx,  dword ptr [dword ptr [rip + spaces_not_printed]]
	cmp	eax, 0x20
	mov	rsp, rsp
	jne	.label_485
	inc	ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  ecx
	jmp	.label_465
	nop	word ptr cs:[rax + rax]
.label_485:
	mov	rbp, rbp
	test	ecx, ecx
	jle	.label_473
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rcx]
	nop	
	cmp	ecx, 2
	nop	
	mov	ecx, ebp
	mov	rbp, rbp
	jl	.label_464
	lea	rsi, [rsi]
	jmp	.label_477
.label_489:
	mov	rbp, rbp
	movzx	esi, al
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_470
	nop	word ptr [rax + rax]
.label_477:
	mov	ecx, ebp
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	idiv	ebp
	sub	ebp, edx
	add	ebp, ecx
	mov	r13d, r14d
	sub	r13d, ebp
	lea	rdi, [rdi]
	jl	.label_464
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_489
	lea	rdx, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_470:
	cmp	r13d, 1
	lea	rdi, [rdi]
	mov	ecx, ebp
	jg	.label_477
.label_464:
	lea	rdi, [rdi]
	cmp	ecx, r14d
	mov	rsp, rsp
	jge	.label_483
	mov	ebp, r14d
	lea	rsi, [rsi]
	sub	ebp, ecx
	lea	rdi, [rdi]
	jmp	.label_468
.label_488:
	mov	esi, 0x20
	mov	rsp, rsp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_493
	nop	word ptr cs:[rax + rax]
.label_468:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_488
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_493:
	dec	ebp
	jne	.label_468
.label_483:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
.label_473:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_480
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx], al
.label_492:
	inc	dword ptr [dword ptr [rip + output_position]]
.label_465:
	inc	rbx
	mov	rsp, rsp
	test	r12d, r12d
	lea	eax, [r12 - 1]
	mov	r12d, eax
	mov	rsp, rsp
	jg	.label_487
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	lea	rax, [rax + r15 + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
.label_478:
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	mov	rbp, rbp
	test	eax, eax
	jle	.label_496
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	lea	rdi, [rdi]
	mov	ecx, ebp
	jl	.label_469
	lea	rsi, [rsi]
	jmp	.label_475
.label_463:
	movzx	esi, al
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_490
	nop	word ptr cs:[rax + rax]
.label_475:
	mov	rsp, rsp
	mov	ecx, ebp
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	nop	
	cdq	
	idiv	ebp
	sub	ebp, edx
	lea	rdi, [rdi]
	add	ebp, ecx
	mov	ebx, r14d
	nop	
	sub	ebx, ebp
	jl	.label_469
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_463
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_490:
	cmp	ebx, 1
	lea	rdi, [rdi]
	mov	ecx, ebp
	jg	.label_475
.label_469:
	mov	rsp, rsp
	cmp	ecx, r14d
	mov	rbp, rbp
	jge	.label_479
	nop	
	mov	ebp, r14d
	sub	ebp, ecx
	jmp	.label_466
.label_494:
	mov	esi, 0x20
	call	__overflow
	mov	rbp, rbp
	jmp	.label_474
	nop	word ptr cs:[rax + rax]
.label_466:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_494
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_474:
	dec	ebp
	jne	.label_466
.label_479:
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_496:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + separators_not_printed]]
	lea	ecx, [rax - 1]
	mov	dword ptr [dword ptr [rip + separators_not_printed]],  ecx
	cmp	eax, 1
	mov	rbp, rbp
	jg	.label_471
	jmp	.label_481
.label_461:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + spaces_not_printed]]
	test	eax, eax
	jle	.label_481
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + output_position]]
	lea	rdi, [rdi]
	lea	r14d, [rbp + rax]
	cmp	eax, 2
	jge	.label_472
	mov	ecx, ebp
	lea	rdi, [rdi]
	jmp	.label_476
	nop	word ptr [rax + rax]
.label_486:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + output_tab_char]]
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_462
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_484:
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	rbp, rbp
	mov	ecx, ebp
	mov	rbp, rbp
	jg	.label_472
	jmp	.label_476
.label_462:
	lea	rsi, [rsi]
	movzx	esi, al
	call	__overflow
	mov	rsp, rsp
	jmp	.label_484
.label_472:
	lea	rdi, [rdi]
	mov	ecx, ebp
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + chars_per_output_tab]]
	mov	eax, ecx
	cdq	
	lea	rdi, [rdi]
	idiv	ebp
	sub	ebp, edx
	nop	
	add	ebp, ecx
	mov	ebx, r14d
	nop	
	sub	ebx, ebp
	jge	.label_486
.label_476:
	cmp	ecx, r14d
	mov	rsp, rsp
	jge	.label_495
	lea	rdi, [rdi]
	mov	ebp, r14d
	mov	rsp, rsp
	sub	ebp, ecx
	jmp	.label_482
.label_467:
	mov	esi, 0x20
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_491
	nop	word ptr cs:[rax + rax]
.label_482:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_467
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_491:
	dec	ebp
	jne	.label_482
.label_495:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + output_position]],  r14d
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + spaces_not_printed]],  0
.label_481:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d00

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	ebx, edi
	mov	r14,  qword ptr [word ptr [rip + clump_buff]]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + input_tab_char]]
	movzx	ebp, bl
	cmp	eax, ebp
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	cmove	ecx,  dword ptr [dword ptr [rip + chars_per_input_tab]]
	mov	rsp, rsp
	cmp	ebp, 9
	je	.label_497
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, ebp
	mov	rbp, rbp
	je	.label_497
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	nop	
	jne	.label_504
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + use_esc_sequence]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_501
	movzx	eax,  byte ptr [byte ptr [rip + use_cntrl_prefix]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	jne	.label_505
	test	bl, bl
	js	.label_501
	nop	
	mov	byte ptr [r14], 0x5e
	xor	bl, 0x40
	mov	rbp, rbp
	mov	byte ptr [r14 + 1], bl
	lea	rdi, [rdi]
	mov	ebp, 2
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	rbp, rbp
	mov	eax, 2
	nop	
	jmp	.label_498
.label_497:
	lea	rsi, [rsi]
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, r15d
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	ebp, ecx
	lea	rdi, [rdi]
	sub	ebp, edx
	movzx	eax,  byte ptr [byte ptr [rip + untabify_input]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_500
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
	mov	eax, ebp
	jmp	.label_499
.label_504:
	mov	byte ptr [r14], bl
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 1
	lea	rdi, [rdi]
	jmp	.label_498
.label_500:
	mov	byte ptr [r14], bl
	mov	eax, 1
	jmp	.label_499
.label_501:
	mov	rsp, rsp
	mov	byte ptr [r14], 0x5c
	lea	rdi, [rsp + 4]
	mov	esi, 1
	mov	edx, 4
	mov	ecx, OFFSET FLAT:.str.79
	xor	eax, eax
	mov	r8d, ebp
	lea	rsi, [rsi]
	call	__sprintf_chk
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 4]
	mov	byte ptr [r14 + 1], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 5]
	mov	byte ptr [r14 + 2], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 6]
	mov	rsp, rsp
	mov	byte ptr [r14 + 3], al
	mov	ebp, 4
	mov	rbp, rbp
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
	mov	eax, 4
	jmp	.label_498
.label_505:
	lea	rdi, [rdi]
	mov	byte ptr [r14], bl
	xor	eax, eax
	nop	
	cmp	ebp, 8
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	cmovne	ebp, eax
	mov	eax, 1
	mov	r15d,  dword ptr [dword ptr [rip + input_position]]
.label_499:
	test	ebp, ebp
	jns	.label_502
	mov	rsp, rsp
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_502
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + input_position]],  0
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_503
.label_502:
	test	ebp, ebp
	setns	cl
	lea	rsi, [rsi]
	mov	edx, ebp
	neg	edx
	mov	rbp, rbp
	cmp	r15d, edx
	jg	.label_498
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	jne	.label_498
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + input_position]],  0
	lea	rsi, [rsi]
	jmp	.label_503
.label_498:
	mov	rbp, rbp
	add	ebp, r15d
	nop	
	mov	dword ptr [dword ptr [rip + input_position]],  ebp
.label_503:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f60

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
	jle	.label_512
	sub	eax, ebp
	movsxd	rbx, eax
	lea	rdi, [rdi]
	add	rbx,  qword ptr [word ptr [rip + number_buff]]
	mov	rbp, rbp
	inc	ebp
	nop	dword ptr [rax]
.label_511:
	movsx	edi, byte ptr [rbx]
	nop	
	inc	rbx
	mov	rbp, rbp
	call	qword ptr [r14 + 0x20]
	dec	ebp
	cmp	ebp, 1
	jg	.label_511
.label_512:
	cmp	dword ptr [dword ptr [rip + columns]],  2
	jl	.label_508
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	lea	rsi, [rsi]
	cmp	eax, 9
	jne	.label_509
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	mov	eax,  dword ptr [dword ptr [rip + chars_per_number]]
	lea	rdi, [rdi]
	cmp	ebx, eax
	mov	rsp, rsp
	jle	.label_506
	mov	rbp, rbp
	inc	ebx
	sub	ebx, eax
	nop	
.label_510:
	mov	edi, 0x20
	nop	
	call	qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	dec	ebx
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	rbp, rbp
	jg	.label_510
	jmp	.label_506
.label_508:
	movsx	edi,  byte ptr [byte ptr [rip + number_separator]]
	mov	rbp, rbp
	call	qword ptr [r14 + 0x20]
	movzx	eax,  byte ptr [byte ptr [rip + number_separator]]
	mov	rbp, rbp
	cmp	eax, 9
	jne	.label_506
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
	jmp	.label_506
.label_509:
	movsx	edi, al
	call	qword ptr [r14 + 0x20]
.label_506:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + truncate_lines]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_507
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	and	al, 1
	mov	rbp, rbp
	jne	.label_507
	mov	eax,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsi]
	add	dword ptr [dword ptr [rip + input_position]],  eax
.label_507:
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070d0

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
	mov	rbp, rbp
	jmp	.label_517
.label_513:
	mov	rdi, rbx
	call	__uflow
	lea	rsi, [rsi]
	jmp	.label_525
	nop	word ptr cs:[rax + rax]
.label_517:
	nop	
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_513
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_525:
	nop	
	cmp	eax, -1
	je	.label_518
	cmp	eax, 0xa
	je	.label_523
	lea	rdi, [rdi]
	cmp	eax, 0xc
	jne	.label_517
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	jae	.label_522
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	edi, byte ptr [rax]
.label_515:
	cmp	edi, 0xa
	mov	rbp, rbp
	je	.label_516
	mov	rsi, rbx
	call	ungetc
.label_516:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + keep_FF]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_519
	mov	byte ptr [byte ptr [rip + print_a_FF]],  1
.label_519:
	mov	al,  byte ptr [byte ptr [rip + parallel_files]]
	mov	rbp, rbp
	and	al, 1
	je	.label_526
	mov	dword ptr [r14 + 0x10], 2
	mov	rsp, rsp
	jmp	.label_514
.label_518:
	nop	
	mov	rdi, r14
	nop	
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	jmp	close_file
.label_526:
	mov	eax,  dword ptr [dword ptr [rip + columns]]
	test	eax, eax
	je	.label_514
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + column_vector]]
	movzx	edx,  byte ptr [byte ptr [rip + storing_columns]]
	lea	rsi, [rsi]
	and	edx, 1
	mov	rbp, rbp
	inc	edx
	lea	esi, [rax - 1]
	lea	rsi, [rsi]
	test	al, 7
	lea	rdi, [rdi]
	je	.label_521
	lea	rsi, [rsi]
	mov	edi, eax
	and	edi, 7
	neg	edi
	nop	
.label_524:
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x10], edx
	mov	rbp, rbp
	add	rcx, 0x40
	lea	rsi, [rsi]
	dec	eax
	inc	edi
	jne	.label_524
.label_521:
	mov	rsp, rsp
	cmp	esi, 7
	mov	rbp, rbp
	jb	.label_514
	add	rcx, 0x1d0
	nop	dword ptr [rax + rax]
.label_520:
	mov	rsp, rsp
	mov	dword ptr [rcx - 0x1c0], edx
	nop	
	mov	dword ptr [rcx - 0x180], edx
	nop	
	mov	dword ptr [rcx - 0x140], edx
	mov	dword ptr [rcx - 0x100], edx
	mov	dword ptr [rcx - 0xc0], edx
	mov	dword ptr [rcx - 0x80], edx
	lea	rsi, [rsi]
	mov	dword ptr [rcx - 0x40], edx
	mov	rsp, rsp
	mov	dword ptr [rcx], edx
	add	rcx, 0x200
	add	eax, -8
	jne	.label_520
.label_514:
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x30], 0
	dec	dword ptr [dword ptr [rip + files_ready_to_read]]
.label_523:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_522:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__uflow
	mov	edi, eax
	jmp	.label_515
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4072a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4072b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_530
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_528
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_528
.label_530:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_529
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_528:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_527
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_529:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_527:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4073c0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073d0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_531
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_531:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407400

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
	je	.label_533
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_534
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_532
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_535
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_533
.label_535:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_536
.label_534:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_533
.label_532:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_536:
	xor	eax, eax
.label_533:
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
	.align	32
	#Procedure 0x4074e0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x4074f0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407520

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
	je	.label_538
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_537
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_539
.label_537:
	nop	
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_538
.label_539:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_538:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407570

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_540
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_542:
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
	ja	.label_542
	mov	rbp, rbp
	jmp	.label_543
.label_540:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
.label_541:
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
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_541
	mov	rbp, rbp
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_543:
	nop	
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407660

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
	.align	32
	#Procedure 0x407690

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
	sub	rsp, 0x28
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_557
	xor	ebp, ebp
	test	r15, r15
	jle	.label_555
	mov	rsp, rsp
	mov	eax, r14d
	nop	
	and	eax, 2
	nop	
	mov	dword ptr [rsp + 0x20], eax
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
.label_556:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	add	eax, -0x20
	mov	rbp, rbp
	cmp	eax, 0x5e
	mov	rbp, rbp
	ja	.label_547
	jmp	qword ptr [word ptr [+ (rax * 8) + label_554]]
.label_1272:
	lea	rsi, [rsi]
	inc	rbx
	inc	r15d
.label_551:
	nop	
	cmp	rbx, r12
	jb	.label_556
	jmp	.label_544
.label_547:
	mov	dword ptr [rsp + 0x1c], esi
	mov	dword ptr [rsp + 0x24], edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_561:
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
	je	.label_564
	cmp	r13, -2
	je	.label_545
	cmp	r13, -1
	lea	rdi, [rdi]
	jne	.label_549
	jmp	.label_553
	nop	word ptr cs:[rax + rax]
.label_564:
	lea	rsi, [rsi]
	mov	r13d, 1
.label_549:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_552
	mov	edx, 0x7fffffff
	mov	rbp, rbp
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	lea	rsi, [rsi]
	jg	.label_562
	add	r15d, eax
	jmp	.label_546
	nop	dword ptr [rax]
.label_552:
	mov	ecx, 1
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_562
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	jne	.label_546
	cmp	r15d, 0x7fffffff
	mov	rbp, rbp
	je	.label_548
	nop	
	inc	r15d
	nop	word ptr [rax + rax]
.label_546:
	mov	rsp, rsp
	add	rbx, r13
	lea	r13, [rsp + 0x10]
	mov	rbp, rbp
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	je	.label_561
	jmp	.label_559
.label_545:
	add	r15d, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	test	r14d, r14d
	mov	rax, r12
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x1c]
	lea	r13, [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_563
	nop	
	jmp	.label_559
.label_553:
	lea	rdi, [rdi]
	mov	ecx, 1
	test	r14d, r14d
	lea	r13, [rsp + 0x10]
	jne	.label_563
	inc	rbx
	mov	rbp, rbp
	inc	r15d
	mov	rsp, rsp
	mov	rax, rbx
.label_559:
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	mov	edx, dword ptr [rsp + 0x24]
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x1c]
	jmp	.label_551
.label_548:
	mov	ecx, 7
	mov	r15d, 0x7fffffff
.label_562:
	lea	r13, [rsp + 0x10]
.label_563:
	mov	rbp, rbp
	test	ecx, ecx
	mov	edx, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x1c]
	je	.label_551
	lea	rdi, [rdi]
	mov	r15d, 0xffffffff
	nop	
	cmp	ecx, 7
	jne	.label_544
	mov	rsp, rsp
	jmp	.label_555
.label_557:
	nop	
	and	r14d, 2
	nop	
	xor	r15d, r15d
	jmp	.label_558
.label_560:
	mov	rsp, rsp
	inc	r15d
	nop	dword ptr [rax]
.label_558:
	lea	rsi, [rsi]
	cmp	rbx, r12
	lea	rsi, [rsi]
	jae	.label_544
	movzx	ebp, byte ptr [rbx]
	mov	rsp, rsp
	inc	rbx
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	lea	rsi, [rsi]
	jne	.label_550
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	r14d, r14d
	mov	rbp, rbp
	jne	.label_555
	test	al, 2
	jne	.label_558
.label_550:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	mov	rsp, rsp
	jne	.label_560
	jmp	.label_555
.label_544:
	mov	ebp, r15d
.label_555:
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407980

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
	.align	32
	#Procedure 0x4079c0

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
	mov	dword ptr [rsp + 0x480], r8d
	mov	rbp, rbp
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	cmovne	rsi, rdx
	nop	
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	mov	rbp, rbp
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	mov	rsp, rsp
	je	.label_645
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x464], ebx
	mov	qword ptr [rsp + 0x478], rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x484], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_566
.label_645:
	xor	esi, esi
	nop	
	jmp	.label_669
.label_697:
	mov	rbp, rbp
	mov	edi, 3
	jmp	.label_672
	nop	word ptr cs:[rax + rax]
.label_566:
	lea	rsi, [rsi]
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_682
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x458], rsi
	nop	
	mov	eax, dword ptr [rsp + 0x480]
	mov	rbp, rbp
	mov	bl, al
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_711
	nop	word ptr cs:[rax + rax]
.label_682:
	mov	rbp, rbp
	test	r14d, r14d
	mov	rsp, rsp
	mov	ecx, r14d
	mov	rsp, rsp
	mov	edx, 0
	nop	
	cmovs	ecx, edx
	nop	
	movsxd	rbx, ecx
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	edx, 1
	nop	
	cmovbe	rbx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, rsi
	mov	rbp, rbp
	cmp	rbx, rdx
	mov	rbp, rbp
	jae	.label_580
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	mov	edx, 0
	mov	rsp, rsp
	je	.label_679
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	jb	.label_700
	nop	
	movsxd	r14, r14d
	lea	rsi, [rsi]
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	mov	esi, 0x20
	mov	r13, rdi
	nop	
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	lea	rsi, [rsi]
	lea	rdi, [rdi + r14 - 1]
	mov	al, byte ptr [rbp]
.label_700:
	mov	rsp, rsp
	mov	byte ptr [rdi], al
.label_713:
	inc	rdi
	mov	rsp, rsp
	mov	rdx, rdi
.label_679:
	add	rsi, rbx
	mov	rdi, rdx
	nop	
	jmp	.label_578
	nop	dword ptr [rax]
.label_723:
	lea	rdi, [rdi]
	mov	r12b, 1
	mov	rsp, rsp
	mov	al, bl
	nop	
	jmp	.label_711
	nop	
.label_722:
	inc	rbp
	nop	
	mov	r13d, edx
.label_729:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	rsi, [rsi]
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	lea	rsi, [rsi]
	ja	.label_719
	bt	r15, rsi
	jb	.label_722
	mov	al, 1
	lea	rdi, [rdi]
	test	rsi, rsi
	nop	
	je	.label_723
	mov	rbp, rbp
	cmp	rsi, 0x3b
	mov	rbp, rbp
	jne	.label_719
.label_711:
	lea	rsi, [rsi]
	mov	bl, al
	lea	rdi, [rdi]
	inc	rbp
	jmp	.label_729
	nop	word ptr cs:[rax + rax]
.label_719:
	nop	
	mov	qword ptr [rsp + 0x40], rdi
	add	edx, -0x30
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 9
	nop	
	ja	.label_691
	nop	word ptr [rax + rax]
.label_576:
	lea	rsi, [rsi]
	mov	r14d, 0x7fffffff
	mov	rbp, rbp
	cmp	eax, 0xccccccc
	lea	rdi, [rdi]
	jg	.label_570
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_567
	mov	rsp, rsp
	lea	edx, [rcx - 0x30]
	lea	rdi, [rdi]
	cmp	edx, 7
	jg	.label_570
.label_567:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_570:
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rbp + 1]
	nop	
	inc	rbp
	mov	eax, ecx
	mov	rbp, rbp
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rsp, rsp
	mov	eax, r14d
	lea	rdi, [rdi]
	jb	.label_576
.label_691:
	mov	rbp, rbp
	movsx	r9d, cl
	cmp	r9d, 0x4f
	lea	rsi, [rsi]
	je	.label_585
	lea	rsi, [rsi]
	cmp	r9d, 0x45
	jne	.label_589
.label_585:
	mov	qword ptr [rsp + 0x488], rbx
	nop	
	mov	cl, byte ptr [rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
	jmp	.label_592
.label_589:
	nop	
	mov	qword ptr [rsp + 0x488], rbx
	xor	r9d, r9d
.label_592:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	rdi, [rdi]
	lea	edx, [r11 - 0x25]
	mov	rsp, rsp
	cmp	edx, 0x55
	lea	rsi, [rsi]
	ja	.label_597
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x498], rax
	nop	
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	xor	edi, edi
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_601]]
.label_1325:
	mov	r10d, r9d
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_583
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, dword ptr [rdx + 0x14]
	mov	rsp, rsp
	mov	r9d, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	eax, r8d
	mov	rsp, rsp
	sar	eax, 0x1f
	and	eax, 0x190
	nop	
	lea	r12d, [r8 + rax - 0x64]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdx, eax
	mov	rbp, rbp
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	mov	rbp, rbp
	shr	edi, 0x1f
	sar	eax, 2
	lea	rsi, [rsi]
	add	eax, edi
	lea	edi, [rax*8]
	mov	rsp, rsp
	sub	edi, eax
	sub	edx, edi
	lea	eax, [rbx + 3]
	sub	eax, edx
	js	.label_610
	mov	edx, 0x16d
	nop	
	test	r12b, 3
	nop	
	jne	.label_627
	mov	rbp, rbp
	movsxd	rdx, r12d
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x51eb851f
	lea	rdi, [rdi]
	mov	rdi, rdx
	sar	rdi, 0x25
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 0x3f
	add	edi, esi
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	lea	rdi, [rdi]
	add	edx, esi
	imul	edx, edx, 0x190
	cmp	r12d, edx
	lea	rdi, [rdi]
	sete	dl
	movzx	esi, dl
	add	esi, 0x16d
	nop	
	cmp	r12d, edi
	mov	edx, 0x16e
	cmove	edx, esi
.label_627:
	sub	ebx, edx
	lea	edx, [rbx + 0x17e]
	lea	rsi, [rsi]
	sub	edx, r9d
	nop	
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	nop	
	shr	rsi, 0x20
	add	esi, edx
	nop	
	mov	edi, esi
	mov	rbp, rbp
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	esi, 2
	mov	rsp, rsp
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	mov	rbp, rbp
	sub	edx, edi
	nop	
	add	ebx, 3
	sub	ebx, edx
	cmovns	eax, ebx
	nop	
	shr	ebx, 0x1f
	xor	ebx, 1
	mov	rbp, rbp
	jmp	.label_676
	nop	word ptr [rax + rax]
.label_662:
	inc	rsi
.label_1319:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_662
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_583
	lea	rsi, [rsi]
	add	rbp, rsi
	mov	rbx, rsi
.label_1356:
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_666
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	lea	rdi, [rdi]
	test	r8d, r8d
	mov	rsp, rsp
	js	.label_668
	test	r8d, r8d
	nop	
	je	.label_673
	mov	rsp, rsp
	xor	esi, esi
	jmp	.label_668
.label_1339:
	test	r12b, r12b
	je	.label_681
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x488], rax
.label_681:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_583
	lea	rdi, [rdi]
	mov	r8b, cl
	mov	rsp, rsp
	jmp	.label_595
.label_597:
	lea	rsi, [rsi]
	test	r11d, r11d
	nop	
	jne	.label_583
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	jmp	.label_583
.label_1318:
	mov	rbp, rbp
	test	r9d, r9d
	lea	rsi, [rsi]
	jne	.label_583
	xor	eax, eax
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	rsp, rsp
	mov	ebx, 1
	nop	
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	sub	rdx, rsi
	nop	
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jae	.label_580
	xor	edx, edx
	test	rdi, rdi
	je	.label_679
	cmp	eax, 2
	mov	rbp, rbp
	jb	.label_701
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_705
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_706
.label_705:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_708
.label_1320:
	lea	rdi, [rdi]
	test	r9d, r9d
	nop	
	jne	.label_583
	lea	rdi, [rdi]
	test	r12b, r12b
	je	.label_714
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x488], rax
.label_714:
	xor	eax, eax
	mov	r8b, 0x41
	nop	
	jmp	.label_595
.label_1321:
	cmp	r9d, 0x45
	je	.label_583
	nop	
	test	r12b, r12b
	je	.label_720
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x488], rax
.label_720:
	xor	eax, eax
	mov	r8b, 0x42
	nop	
	jmp	.label_595
.label_1322:
	mov	rsp, rsp
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_725
	mov	rbp, rbp
	mov	r9d, r10d
	mov	rsp, rsp
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_595
.label_1323:
	test	r9d, r9d
	nop	
	jne	.label_583
	nop	
	mov	eax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rsp + 0x498], rax
	lea	rsi, [rsi]
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_572
.label_1324:
	test	r9d, r9d
	jne	.label_583
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_568
	test	r14d, r14d
	mov	rbp, rbp
	jns	.label_568
	mov	eax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rsp + 0x498], rax
	mov	rbp, rbp
	mov	r13d, 0x2b
	mov	r10d, 4
	mov	rbp, rbp
	jmp	.label_572
.label_1326:
	mov	rbp, rbp
	mov	r10d, r9d
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_583
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	jmp	.label_599
.label_1327:
	nop	
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_583
	mov	edi, 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x464]
	mov	edx, eax
	lea	rsi, [rsi]
	jmp	.label_586
.label_1328:
	mov	r10d, r9d
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_583
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_599
.label_1329:
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	nop	
	je	.label_583
	lea	rsi, [rsi]
	cmp	r14d, -1
	je	.label_577
	lea	rsi, [rsi]
	cmp	r14d, 8
	jg	.label_604
	mov	esi, 9
	sub	esi, r14d
	nop	
	mov	eax, 8
	lea	rdi, [rdi]
	sub	eax, r14d
	nop	
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	ebx, r14d
	mov	rbp, rbp
	je	.label_607
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_615:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	mov	rbp, rbp
	shr	rdi, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 0x22
	mov	rsp, rsp
	add	edx, edi
	inc	ebx
	inc	esi
	lea	rdi, [rdi]
	jne	.label_615
.label_607:
	cmp	eax, 3
	lea	rsi, [rsi]
	jae	.label_623
	mov	edi, r14d
	jmp	.label_586
.label_1330:
	mov	rsp, rsp
	mov	dil, 1
.label_1348:
	xor	ebx, ebx
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_626
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x488], rax
.label_626:
	je	.label_631
	mov	rbp, rbp
	mov	dil, 1
.label_631:
	mov	r8b, 0x70
	lea	rdi, [rdi]
	mov	al, dil
	mov	rsp, rsp
	jmp	.label_633
.label_1331:
	mov	r10d, r9d
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_583
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax]
	jmp	.label_599
.label_1332:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.4_0
.label_728:
	nop	
	mov	qword ptr [rsp + 0x498], rax
.label_572:
	mov	dword ptr [rsp + 0x4a0], r10d
	mov	rax, qword ptr [rsp + 0x488]
	lea	rdi, [rdi]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	nop	
	mov	rsi, -1
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x498]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r9d, r13d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	ebx, r14d
	mov	rbp, rbp
	movsxd	rdx, ebx
	mov	rsp, rsp
	cmp	rax, rdx
	lea	rsi, [rsi]
	mov	rbx, rax
	cmovb	rbx, rdx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	nop	
	sub	r12, rsi
	lea	rdi, [rdi]
	cmp	rbx, r12
	jae	.label_580
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_575
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_675
	movsxd	rcx, r14d
	lea	rdi, [rdi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x468], rax
	mov	rsp, rsp
	cmp	r13d, 0x30
	je	.label_680
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_685
.label_680:
	mov	esi, 0x30
	jmp	.label_687
.label_1333:
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_583
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	movsxd	rdx, eax
	lea	rsi, [rsi]
	jmp	.label_688
.label_1334:
	mov	rbp, rbp
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_583
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	mov	eax, dword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	lea	rsi, [rsi]
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rsi, [rsi]
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	rsi, [rsi]
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	lea	rdi, [rdi]
	add	edx, 7
	mov	rsp, rsp
	sub	edx, esi
	movsxd	rdx, edx
.label_688:
	imul	rax, rdx, -0x6db6db6d
	lea	rdi, [rdi]
	shr	rax, 0x20
	add	edx, eax
	mov	rsp, rsp
	mov	eax, edx
	shr	eax, 0x1f
	lea	rdi, [rdi]
	sar	edx, 2
	mov	rsp, rsp
	add	edx, eax
	jmp	.label_599
.label_1335:
	cmp	r9d, 0x4f
	je	.label_583
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r8b, 0x58
	jmp	.label_595
.label_1336:
	lea	rsi, [rsi]
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_717
	mov	rbp, rbp
	cmp	r10d, 0x4f
	mov	rbp, rbp
	je	.label_583
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	nop	
	add	edx, 0x76c
	nop	
	mov	edi, 4
	jmp	.label_565
.label_1337:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x478]
	nop	
	call	strlen
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	cmp	r9, rax
	mov	rbx, r9
	cmovb	rbx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	sub	rcx, rsi
	mov	rsp, rsp
	cmp	rbx, rcx
	jae	.label_580
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_575
	nop	
	cmp	r9, rax
	nop	
	jae	.label_579
	lea	rsi, [rsi]
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, r9
	mov	qword ptr [rsp + 0x498], r9
	cmp	r13d, 0x30
	lea	rsi, [rsi]
	je	.label_582
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_591
.label_582:
	mov	esi, 0x30
	jmp	.label_593
.label_1338:
	test	r9d, r9d
	lea	rsi, [rsi]
	jne	.label_583
	nop	
	test	r12b, r12b
	je	.label_596
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x488], rax
.label_596:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_595
.label_1340:
	cmp	r9d, 0x4f
	je	.label_583
	xor	eax, eax
	nop	
	mov	r8b, 0x63
	jmp	.label_595
.label_1341:
	mov	r10d, r9d
	nop	
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_583
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	edx, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	jmp	.label_599
.label_1342:
	mov	r10d, r9d
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_583
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jmp	.label_611
.label_1343:
	mov	rsp, rsp
	mov	r10d, r9d
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_583
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	mov	rsp, rsp
	inc	edx
	mov	edi, 3
	jmp	.label_614
.label_1344:
	nop	
	mov	r10d, r9d
	nop	
	cmp	r10d, 0x45
	je	.label_583
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	nop	
	jmp	.label_611
.label_1345:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x464]
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	je	.label_583
.label_611:
	test	r13d, r13d
	mov	eax, 0x5f
	lea	rdi, [rdi]
	cmove	r13d, eax
	lea	rdi, [rdi]
	jmp	.label_599
.label_1346:
	mov	rbp, rbp
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_583
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	lea	rdi, [rdi]
	setl	sil
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	jmp	.label_614
.label_1347:
	xor	eax, eax
	nop	
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, qword ptr [rsp + 0x458]
	nop	
	sub	rcx, rsi
	cmp	rbx, rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jae	.label_580
	lea	rsi, [rsi]
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_575
	cmp	eax, 2
	jb	.label_657
	mov	r12, rsi
	lea	rdi, [rdi]
	movsxd	r14, r14d
	mov	rsp, rsp
	dec	r14
	cmp	r13d, 0x30
	je	.label_581
	cmp	r13d, 0x2b
	nop	
	jne	.label_661
.label_581:
	mov	esi, 0x30
	jmp	.label_663
.label_1349:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	imul	edx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	edx, 5
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_571
.label_1350:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rcx]
	nop	
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x4e8]
	lea	rdi, [rdi]
	call	mktime_z
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	rsi, rcx
	shr	rsi, 0x3f
	mov	rbp, rbp
	lea	r12, [rsp + 0x37]
	nop	word ptr cs:[rax + rax]
.label_690:
	nop	
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	mov	rsp, rsp
	imul	rdx
	lea	rsi, [rsi]
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 2
	lea	edi, [rdx + rax]
	lea	rdi, [rdi]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	lea	rdi, [rdi]
	neg	eax
	mov	rsp, rsp
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], al
	dec	r12
	mov	rsp, rsp
	add	rcx, 9
	cmp	rcx, 0x12
	lea	rdi, [rdi]
	mov	rcx, rdx
	ja	.label_690
	mov	r10d, 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	jmp	.label_710
.label_1351:
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	mov	rbp, rbp
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	sub	rcx, rsi
	lea	rdi, [rdi]
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	jae	.label_580
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_575
	lea	rsi, [rsi]
	cmp	eax, 2
	jb	.label_726
	mov	r12, rsi
	lea	rsi, [rsi]
	movsxd	r14, r14d
	nop	
	dec	r14
	cmp	r13d, 0x30
	je	.label_730
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_733
.label_730:
	mov	esi, 0x30
	nop	
	jmp	.label_735
.label_1352:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	mov	rbp, rbp
	movsxd	rdx, edx
	lea	rsi, [rsi]
	imul	rsi, rdx, -0x6db6db6d
	mov	rbp, rbp
	shr	rsi, 0x20
	mov	rbp, rbp
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	nop	
	sub	edx, esi
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	r10d, r9d
	jmp	.label_586
.label_1353:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_583
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	lea	rsi, [rsi]
	jmp	.label_586
.label_1354:
	mov	rbp, rbp
	cmp	r9d, 0x4f
	lea	rdi, [rdi]
	je	.label_583
	mov	rsp, rsp
	xor	eax, eax
	mov	r8b, 0x78
	mov	rbp, rbp
	jmp	.label_595
.label_1355:
	lea	rdi, [rdi]
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	jne	.label_704
	mov	r9d, r10d
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8b, 0x79
	lea	rsi, [rsi]
	jmp	.label_595
.label_675:
	nop	
	mov	qword ptr [rsp + 0x468], rax
	lea	rdi, [rdi]
	jmp	.label_602
.label_610:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_603
	mov	rsp, rsp
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	sar	rdx, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rbp, rbp
	add	edx, edi
	mov	rbp, rbp
	imul	edx, edx, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	lea	rsi, [rsi]
	cmp	r12d, eax
	sete	al
	movzx	edi, al
	nop	
	add	edi, 0x16d
	cmp	r12d, edx
	mov	eax, 0x16e
	lea	rsi, [rsi]
	cmove	eax, edi
.label_603:
	lea	edx, [rax + rbx + 0x17e]
	sub	edx, r9d
	lea	rsi, [rsi]
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, edx
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rdi, [rdi]
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	nop	
	lea	edi, [rsi*8]
	nop	
	sub	edi, esi
	mov	rsp, rsp
	sub	edx, edi
	mov	rbp, rbp
	lea	eax, [rax + rbx + 3]
	sub	eax, edx
	mov	ebx, 0xffffffff
.label_676:
	mov	rbp, rbp
	cmp	r11d, 0x47
	je	.label_632
	cmp	r11d, 0x67
	jne	.label_634
	lea	rdi, [rdi]
	movsxd	rax, r8d
	nop	
	imul	rax, rax, 0x51eb851f
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	nop	
	sar	rax, 0x25
	add	eax, edx
	nop	
	imul	eax, eax, 0x64
	mov	edx, r8d
	lea	rdi, [rdi]
	sub	edx, eax
	add	edx, ebx
	mov	rbp, rbp
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rbp, rbp
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	lea	rdi, [rdi]
	add	eax, esi
	nop	
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	edi, 2
	jns	.label_636
	mov	eax, 0xfffff894
	mov	rsp, rsp
	sub	eax, ebx
	mov	esi, edx
	lea	rsi, [rsi]
	neg	esi
	mov	rbp, rbp
	add	edx, 0x64
	mov	rsp, rsp
	cmp	r8d, eax
	nop	
	jmp	.label_651
.label_666:
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_578
.label_725:
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	bl
	nop	
	imul	rdx, rax, 0x51eb851f
	lea	rsi, [rsi]
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	mov	rsp, rsp
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	nop	
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	edi, 2
	mov	rsp, rsp
	jmp	.label_565
.label_704:
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	mov	rbp, rbp
	add	edx, esi
	mov	rsp, rsp
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	rbp, rbp
	mov	edi, 2
	mov	rsp, rsp
	sub	edx, esi
	lea	rdi, [rdi]
	js	.label_674
.label_636:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_565
.label_632:
	mov	rsp, rsp
	mov	eax, 0xfffff894
	lea	rsi, [rsi]
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	mov	rsp, rsp
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	mov	rsp, rsp
	jmp	.label_565
.label_634:
	lea	rdi, [rdi]
	cdqe	
	nop	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	sar	edx, 2
	lea	rsi, [rsi]
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_599:
	mov	edi, 2
.label_586:
	mov	esi, edx
	shr	esi, 0x1f
.label_614:
	xor	ebx, ebx
	xor	r8d, r8d
.label_571:
	cmp	r10d, 0x4f
	jne	.label_656
	test	sil, sil
	mov	rbp, rbp
	jne	.label_656
	mov	rsp, rsp
	mov	r9d, r10d
	xor	eax, eax
	mov	rsp, rsp
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rbx, rdi
	nop	
	jmp	.label_633
.label_656:
	lea	rsi, [rsi]
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	eax, edx
	neg	eax
	test	sil, sil
	mov	rsp, rsp
	cmove	eax, edx
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x37]
	nop	
.label_587:
	test	bl, 1
	mov	rsp, rsp
	je	.label_715
	lea	rsi, [rsi]
	mov	byte ptr [r12 - 1], 0x3a
	lea	rdi, [rdi]
	dec	r12
.label_715:
	sar	ebx, 1
	mov	edi, eax
	mov	rbp, rbp
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	mov	rbp, rbp
	lea	edi, [rdi + rdi*4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, edi
	nop	
	or	ecx, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_587
	lea	rsi, [rsi]
	test	ebx, ebx
	lea	rsi, [rsi]
	mov	eax, edx
	jne	.label_587
.label_710:
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x498], r10
	mov	rsp, rsp
	test	r8b, r8b
	je	.label_731
	mov	r8b, 0x2b
.label_731:
	mov	rsp, rsp
	test	sil, sil
	mov	r9b, 0x2d
	lea	rdi, [rdi]
	jne	.label_736
	mov	r9b, r8b
.label_736:
	cmp	r13d, 0x2d
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	jne	.label_738
	test	r9b, r9b
	je	.label_569
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	mov	rsp, rsp
	cmovns	eax, r14d
	nop	
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rbp, rbp
	mov	ebx, 1
	cmova	rbx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_580
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_584
	nop	
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	nop	
	test	ecx, ecx
	jne	.label_588
	test	al, al
	nop	
	jne	.label_588
	movsxd	rax, r14d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x468], rax
	mov	rbp, rbp
	lea	rdx, [rax - 1]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rdi
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x468]
	lea	rdi, [rdi + rax - 1]
	jmp	.label_588
.label_738:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	cdqe	
	mov	rcx, r12
	lea	rdx, [rsp + 0x37]
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	mov	rbp, rbp
	sbb	rbx, rbx
	mov	rbp, rbp
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	mov	rbp, rbp
	jle	.label_609
	lea	rsi, [rsi]
	cmp	r13d, 0x5f
	jne	.label_618
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	sub	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_580
	xor	r10d, r10d
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	mov	r8d, 0
	lea	rsi, [rsi]
	je	.label_624
	mov	rsp, rsp
	mov	esi, 0x20
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x4a0], r9b
	mov	qword ptr [rsp + 0x468], rdx
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x468]
	xor	r10d, r10d
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	add	rax, rdx
	lea	rdi, [rdi]
	mov	r8, rax
.label_624:
	nop	
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	r9b, r9b
	je	.label_642
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	nop	
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_580
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	test	r8, r8
	nop	
	je	.label_718
	cmp	eax, 2
	mov	rsp, rsp
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_655
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	test	al, al
	mov	rbp, rbp
	jne	.label_660
	nop	
	movsxd	r14, r10d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r10
	lea	rdx, [r14 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x458], rsi
	nop	
	mov	esi, 0x20
	nop	
	mov	rdi, r8
	mov	qword ptr [rsp + 0x468], r8
	nop	
	call	memset
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x468]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	lea	r8, [r8 + r14 - 1]
	jmp	.label_671
.label_609:
	test	r9b, r9b
	lea	rsi, [rsi]
	je	.label_569
	xor	eax, eax
	test	r14d, r14d
	mov	rbp, rbp
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	nop	
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_580
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_584
	lea	rdi, [rdi]
	cmp	eax, 2
	nop	
	setb	al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x498]
	mov	rsp, rsp
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_588
	test	al, al
	nop	
	jne	.label_588
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	nop	
	je	.label_694
	mov	rbp, rbp
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_678
.label_694:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_703
.label_618:
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	sub	rcx, rsi
	nop	
	cmp	rax, rcx
	nop	
	jae	.label_580
	nop	
	test	r9b, r9b
	nop	
	je	.label_709
	mov	rsp, rsp
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	nop	
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_580
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_594
	lea	rsi, [rsi]
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_721
	lea	rsi, [rsi]
	test	al, al
	jne	.label_721
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x468], rdx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x4a0], r9b
	movsxd	rax, r14d
	lea	rsi, [rsi]
	dec	rax
	lea	rdi, [rdi]
	cmp	r13d, 0x30
	nop	
	je	.label_727
	mov	rbp, rbp
	cmp	r13d, 0x2b
	lea	rsi, [rsi]
	jne	.label_734
.label_727:
	mov	esi, 0x30
	nop	
	jmp	.label_737
.label_642:
	mov	rsp, rsp
	mov	rdi, r8
	mov	rsp, rsp
	mov	r14d, r10d
	jmp	.label_569
.label_717:
	mov	r9d, r10d
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x59
.label_595:
	nop	
	xor	ebx, ebx
.label_633:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x498], eax
	mov	r12, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x493], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x495]
	mov	rsp, rsp
	je	.label_573
	mov	byte ptr [rsp + 0x495], r9b
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x496]
.label_573:
	mov	byte ptr [rcx], r8b
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x50]
	lea	rdx, [rsp + 0x493]
	mov	rbp, rbp
	mov	esi, 0x400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	call	strftime
	test	rax, rax
	je	.label_598
	nop	
	mov	r8, rbx
	lea	r9, [rax - 1]
	nop	
	mov	qword ptr [rsp + 0x4a0], rax
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	lea	rdi, [rdi]
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rdi, [rdi]
	sub	rcx, rsi
	cmp	rdx, rcx
	mov	ebx, dword ptr [rsp + 0x498]
	lea	rsi, [rsi]
	jae	.label_580
	xor	ecx, ecx
	mov	rdi, r12
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_612
	mov	rbp, rbp
	cmp	r9, rax
	nop	
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_616
	test	al, al
	nop	
	jne	.label_616
	movsxd	r14, r14d
	nop	
	sub	r14, r9
	nop	
	mov	qword ptr [rsp + 0x468], r9
	mov	rsp, rsp
	cmp	r13d, 0x30
	je	.label_617
	nop	
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_622
.label_617:
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_712
.label_598:
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, r12
	lea	rdi, [rdi]
	jmp	.label_578
.label_622:
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_712:
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbx, rdi
	mov	rbp, rbp
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x468]
	mov	ebx, dword ptr [rsp + 0x498]
.label_616:
	lea	rsi, [rsi]
	test	bl, 1
	lea	rsi, [rsi]
	jne	.label_637
	mov	rax, qword ptr [rsp + 0x488]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_639
	lea	rsi, [rsp + 0x51]
	mov	rdx, r9
	mov	rbp, rbp
	mov	r14, rdi
	mov	rsp, rsp
	mov	rbx, r9
	mov	rsp, rsp
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	nop	
	jmp	.label_646
.label_637:
	mov	rbp, rbp
	test	r9, r9
	mov	rsp, rsp
	je	.label_646
	mov	r14, rdi
	mov	rbp, rbp
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rbp, rbp
	lea	ecx, [rdx + 3]
	lea	rdi, [rdi]
	mov	r8, rdx
	add	r8, -2
	mov	rbp, rbp
	test	cl, 3
	mov	rsp, rsp
	mov	rcx, r9
	mov	rbp, rbp
	je	.label_652
	lea	esi, [rdx + 3]
	nop	
	and	esi, 3
	neg	rsi
	lea	rsi, [rsi]
	mov	rcx, r9
	nop	dword ptr [rax]
.label_665:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	mov	bl, byte ptr [rbx + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rdi, [rdi]
	inc	rsi
	jne	.label_665
.label_652:
	lea	rsi, [rsi]
	cmp	r8, 3
	jb	.label_646
	nop	word ptr cs:[rax + rax]
.label_677:
	mov	rbp, rbp
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [rsp + rcx + 0x4f]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x4e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x4d]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	mov	rsp, rsp
	add	rcx, -4
	jne	.label_677
	nop	
	jmp	.label_646
.label_639:
	test	r9, r9
	je	.label_646
	nop	
	mov	r14, rdi
	mov	rbx, r9
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	r9, rbx
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rsp, rsp
	lea	ecx, [rdx + 3]
	mov	rbp, rbp
	mov	r8, rdx
	mov	rbp, rbp
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	mov	rsp, rsp
	je	.label_692
	lea	esi, [rdx + 3]
	and	esi, 3
	lea	rdi, [rdi]
	neg	rsi
	mov	rbp, rbp
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_702:
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	lea	rdi, [rdi]
	dec	rcx
	nop	
	inc	rsi
	jne	.label_702
.label_692:
	cmp	r8, 3
	jb	.label_646
	nop	word ptr cs:[rax + rax]
.label_638:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x4f]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x4e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	nop	
	movzx	edx, byte ptr [rsp + rcx + 0x4d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	nop	
	add	rcx, -4
	jne	.label_638
.label_646:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdx, r12
	nop	
	jmp	.label_612
.label_579:
	mov	r14, qword ptr [rsp + 0x478]
	jmp	.label_732
.label_685:
	mov	esi, 0x20
.label_687:
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x470], rdx
	mov	r14, rdi
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	add	r14, qword ptr [rsp + 0x470]
	mov	rdi, r14
.label_602:
	mov	edx, dword ptr [rsp + 0x4a0]
	mov	rax, qword ptr [rsp + 0x488]
	lea	rsi, [rsi]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	nop	
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x498]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, rdi
	mov	rbp, rbp
	mov	r9d, r13d
	call	__strftime_internal
	nop	
	mov	rax, qword ptr [rsp + 0x468]
	lea	rdi, [rdi]
	add	rax, r14
	mov	rcx, rax
	mov	rsp, rsp
	jmp	.label_590
.label_673:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x478]
	nop	
	movzx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2d
	sete	sil
.label_668:
	mov	rbp, rbp
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_583
	mov	rbp, rbp
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	mov	rsp, rsp
	shr	rdi, 0x20
	mov	rsp, rsp
	add	edi, r8d
	mov	r9, rbx
	mov	rbp, rbp
	mov	ebx, edi
	lea	rsi, [rsi]
	shr	ebx, 0x1f
	sar	edi, 5
	mov	rsp, rsp
	add	edi, ebx
	lea	rsi, [rsi]
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	lea	rsi, [rsi]
	sar	edx, 0xb
	add	edx, ebx
	lea	rdi, [rdi]
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	lea	rdi, [rdi]
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	lea	rsi, [rsi]
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	lea	rdi, [rdi]
	imul	eax, edi, 0x3c
	lea	rsi, [rsi]
	imul	edi, ebx, 0x3c
	lea	rdi, [rdi]
	sub	ebx, eax
	mov	rbp, rbp
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r9 * 8) + label_600]]
.label_1232:
	imul	edx, edx, 0x64
	mov	rbp, rbp
	add	edx, ebx
	mov	rbp, rbp
	mov	edi, 5
.label_672:
	mov	rbp, rbp
	mov	r8b, 1
	nop	
	xor	ebx, ebx
	jmp	.label_571
.label_583:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_629:
	inc	r12
	nop	
	movzx	eax, byte ptr [rbx - 1]
	mov	rbp, rbp
	dec	rbx
	mov	rbp, rbp
	cmp	eax, 0x25
	jne	.label_629
	nop	
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	lea	rdi, [rdi]
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmova	ecx, r12d
	lea	rdi, [rdi]
	movsxd	r8, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	sub	rcx, rsi
	cmp	r8, rcx
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jae	.label_580
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_644
	movsxd	rdx, r12d
	cmp	r12d, eax
	mov	rsp, rsp
	jae	.label_647
	movsxd	r14, r14d
	sub	r14, rdx
	lea	rsi, [rsi]
	cmp	r13d, 0x30
	nop	
	je	.label_649
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	jne	.label_653
.label_649:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x4a0], rdx
	mov	qword ptr [rsp + 0x498], r8
	mov	rsp, rsp
	mov	esi, 0x30
	nop	
	jmp	.label_654
.label_653:
	mov	qword ptr [rsp + 0x4a0], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x498], r8
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_654:
	mov	rdx, r14
	mov	r13, rdi
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdi, r13
	add	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x4a0]
.label_647:
	mov	qword ptr [rsp + 0x498], r8
	nop	
	mov	qword ptr [rsp + 0x458], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x488]
	mov	rsp, rsp
	test	al, 1
	jne	.label_684
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x498]
	mov	rsp, rsp
	jmp	.label_686
.label_684:
	mov	r13, rdi
	mov	r14, rdx
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	nop	
	mov	r10, r14
	mov	r9, r13
	mov	rsp, rsp
	movsxd	rcx, r12d
	mov	rbp, rbp
	lea	r8, [rcx - 1]
	mov	rbp, rbp
	test	cl, 3
	lea	rsi, [rsi]
	mov	rcx, r10
	nop	
	je	.label_689
	lea	rdi, [rdi]
	and	r12d, 3
	neg	r12
	lea	rsi, [rsi]
	mov	rcx, r10
	nop	dword ptr [rax]
.label_695:
	movzx	esi, byte ptr [rbx + rcx - 1]
	nop	
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_695
.label_689:
	mov	rbp, rbp
	cmp	r8, 3
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	jb	.label_686
	nop	word ptr cs:[rax + rax]
.label_707:
	nop	
	movzx	edx, byte ptr [rbx + rcx - 1]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_707
.label_686:
	lea	rsi, [rsi]
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x458]
.label_644:
	lea	rdi, [rdi]
	add	rsi, r8
	mov	rsp, rsp
	jmp	.label_628
.label_568:
	xor	eax, eax
	mov	r10d, r14d
	mov	rsp, rsp
	add	r10d, -6
	nop	
	cmovs	r10d, eax
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.2_0
	jmp	.label_728
.label_577:
	mov	edi, 9
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	rsp, rsp
	mov	r14d, 9
	nop	
	jmp	.label_586
.label_674:
	mov	esi, edx
	mov	rsp, rsp
	neg	esi
	mov	rbp, rbp
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_651:
	lea	rdi, [rdi]
	cmovl	edx, esi
	lea	rdi, [rdi]
	xor	esi, esi
.label_565:
	mov	eax, dword ptr [rsp + 0x484]
	mov	dword ptr [rsp + 0x484], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	lea	rsi, [rsi]
	jne	.label_571
	mov	rax, rdi
	cmp	eax, 2
	lea	rdi, [rdi]
	mov	r8d, 0x63
	nop	
	mov	edi, 0x270f
	cmove	edi, r8d
	mov	rsp, rsp
	cmp	edi, edx
	lea	rdi, [rdi]
	setb	r9b
	mov	rsp, rsp
	cmp	eax, r14d
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	setl	r8b
	lea	rsi, [rsi]
	or	r8b, r9b
	nop	
	jmp	.label_571
.label_1235:
	lea	rdi, [rdi]
	test	r8d, r8d
	lea	rdi, [rdi]
	je	.label_696
.label_1234:
	lea	rsi, [rsi]
	imul	edx, edx, 0x2710
	nop	
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	nop	
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_571
.label_604:
	mov	eax, dword ptr [rsp + 0x4f0]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_586
.label_655:
	mov	qword ptr [rsp + 0x40], r10
	jmp	.label_606
.label_660:
	mov	qword ptr [rsp + 0x40], r10
.label_671:
	mov	r9b, byte ptr [rsp + 0x4a0]
.label_606:
	nop	
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rsp, rsp
	mov	rdi, r8
	nop	
	mov	r10, qword ptr [rsp + 0x40]
.label_718:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_569
.label_591:
	mov	esi, 0x20
.label_593:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	lea	rsi, [rsi]
	add	r13, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x478]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x498]
.label_732:
	test	r12b, r12b
	je	.label_620
	nop	
	test	r9, r9
	lea	rdi, [rdi]
	je	.label_621
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	nop	
	mov	r9, rbx
	lea	rsi, [rsi]
	lea	r8, [r9 - 1]
	lea	rdi, [rdi]
	test	r9b, 3
	je	.label_724
	mov	rbp, rbp
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	word ptr cs:[rax + rax]
.label_635:
	movzx	edx, byte ptr [r14 + rcx - 1]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	mov	rbp, rbp
	dec	rcx
	inc	rsi
	lea	rdi, [rdi]
	jne	.label_635
	lea	rsi, [rsi]
	jmp	.label_641
.label_620:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x488]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_643
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_621
	mov	r12, rbx
	lea	rsi, [rsi]
	mov	r13, rdi
	lea	rdi, [rdi]
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	mov	rsp, rsp
	je	.label_650
	mov	rsp, rsp
	mov	esi, r9d
	mov	rsp, rsp
	and	esi, 3
	nop	
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
.label_658:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rsi, [rsi]
	inc	rsi
	mov	rbp, rbp
	jne	.label_658
	jmp	.label_664
.label_661:
	mov	esi, 0x20
.label_663:
	mov	rdx, r14
	mov	r13, rdi
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_657:
	lea	rsi, [rsi]
	mov	byte ptr [rdi], 0xa
	nop	
	jmp	.label_667
.label_733:
	mov	rbp, rbp
	mov	esi, 0x20
.label_735:
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	r13, rdi
	lea	rsi, [rsi]
	call	memset
	mov	rsp, rsp
	add	r13, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdi, r13
.label_726:
	mov	byte ptr [rdi], 9
.label_667:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_628
.label_678:
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_703:
	mov	rsp, rsp
	mov	rdx, rax
	mov	qword ptr [rsp + 0x468], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0x468]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x4a0]
.label_588:
	mov	byte ptr [rdi], r9b
	nop	
	inc	rdi
	lea	rdi, [rdi]
	mov	rcx, rdi
.label_584:
	add	rsi, rbx
	mov	rsp, rsp
	mov	rdi, rcx
	jmp	.label_569
.label_724:
	mov	rcx, r9
	mov	rdi, r13
.label_641:
	cmp	r8, 3
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	jb	.label_621
	nop	word ptr [rax + rax]
.label_699:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 2]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 2], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_699
	jmp	.label_621
.label_643:
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	r9, rbx
	mov	rbx, r12
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	jmp	.label_621
.label_623:
	mov	eax, 9
	lea	rdi, [rdi]
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_683:
	mov	rsp, rsp
	movsxd	rdx, edx
	mov	rbp, rbp
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	nop	
	shr	rsi, 0x3f
	mov	rsp, rsp
	sar	rdx, 0x2c
	lea	rdi, [rdi]
	add	edx, esi
	mov	rsp, rsp
	add	eax, -4
	lea	rdi, [rdi]
	jne	.label_683
	mov	rsp, rsp
	mov	edi, r14d
	nop	
	jmp	.label_586
.label_734:
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_737:
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	qword ptr [rsp + 0x470], rdx
	mov	r14, rdi
	mov	rbp, rbp
	call	memset
	add	r14, qword ptr [rsp + 0x470]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rdx, qword ptr [rsp + 0x468]
.label_721:
	mov	byte ptr [rdi], r9b
	lea	rsi, [rsi]
	inc	rdi
	nop	
	mov	rcx, rdi
.label_594:
	lea	rdi, [rdi]
	add	rsi, rdx
	nop	
	mov	rdi, rcx
.label_709:
	xor	r14d, r14d
	test	rdi, rdi
	mov	rbp, rbp
	movsxd	rcx, ebx
	mov	ebx, 0
	lea	rsi, [rsi]
	je	.label_659
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x458], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbx, rdi
	nop	
	call	memset
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x458]
	add	rbx, rcx
.label_659:
	lea	rsi, [rsi]
	add	rsi, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
.label_569:
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x37]
	lea	rsi, [rsi]
	sub	rbx, r12
	lea	rsi, [rsi]
	xor	eax, eax
	test	r14d, r14d
	lea	rsi, [rsi]
	cmovns	eax, r14d
	nop	
	cdqe	
	lea	rdi, [rdi]
	cmp	rbx, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_580
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_612
	lea	rsi, [rsi]
	cmp	rbx, rax
	setae	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_613
	mov	rbp, rbp
	test	al, al
	jne	.label_619
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_693
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_698
.label_693:
	mov	qword ptr [rsp + 0x458], rsi
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	jmp	.label_625
.label_612:
	add	rsi, rdx
	lea	rsi, [rsi]
	jmp	.label_628
.label_613:
	mov	qword ptr [rsp + 0x458], rsi
	jmp	.label_630
.label_619:
	mov	qword ptr [rsp + 0x458], rsi
	jmp	.label_630
.label_698:
	mov	qword ptr [rsp + 0x458], rsi
	mov	esi, 0x20
.label_625:
	mov	qword ptr [rsp + 0x40], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, r13
	add	rdi, r14
.label_630:
	mov	r13, rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x488]
	test	al, al
	je	.label_640
	nop	
	lea	rax, [rsp + 0x37]
	cmp	rax, r12
	lea	rdi, [rdi]
	je	.label_608
	mov	r14, rdi
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	mov	rdi, r14
	mov	rbp, rbp
	lea	rcx, [rsp + 0x37]
	sub	ecx, r12d
	lea	rdi, [rdi]
	lea	r8, [rsp + 0x36]
	sub	r8, r12
	test	cl, 3
	mov	rbp, rbp
	mov	rcx, rbx
	mov	r9, rbx
	mov	rbp, rbp
	je	.label_648
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x37]
	lea	rdi, [rdi]
	sub	esi, r12d
	nop	
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_605:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	dec	rcx
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	jne	.label_605
.label_648:
	mov	rsp, rsp
	cmp	r8, 3
	mov	rbp, rbp
	mov	rbx, r9
	jb	.label_608
	nop	word ptr [rax + rax]
.label_670:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [r12 + rcx - 1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	movzx	edx, byte ptr [r12 + rcx - 2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 4], dl
	lea	rsi, [rsi]
	add	rcx, -4
	lea	rdi, [rdi]
	jne	.label_670
	lea	rsi, [rsi]
	jmp	.label_608
.label_640:
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_608:
	add	rdi, rbx
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdx, r13
	add	rsi, rdx
	mov	rsp, rsp
	jmp	.label_628
.label_696:
	nop	
	test	ebx, ebx
	je	.label_697
.label_1233:
	mov	rbp, rbp
	imul	edx, edx, 0x64
	lea	rsi, [rsi]
	add	edx, ebx
	nop	
	mov	edi, 6
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_571
.label_706:
	mov	r12, rsi
	mov	esi, 0x20
.label_708:
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp]
.label_701:
	mov	byte ptr [rdi], cl
	mov	rbp, rbp
	jmp	.label_713
.label_650:
	mov	rcx, r9
	mov	rdi, r13
.label_664:
	mov	rbp, rbp
	cmp	r8, 3
	mov	rbx, r12
	nop	
	jb	.label_621
.label_716:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 3], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_716
.label_621:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x478], r14
	mov	rsp, rsp
	add	rdi, r9
	mov	rbp, rbp
	mov	rcx, rdi
.label_590:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x458]
.label_575:
	mov	rbp, rbp
	add	rsi, rbx
	nop	dword ptr [rax + rax]
.label_628:
	nop	
	mov	rdi, rcx
.label_578:
	mov	al, byte ptr [rbp + 1]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_566
.label_669:
	cmp	qword ptr [rsp + 0x48], 0
	lea	rdi, [rdi]
	je	.label_574
	test	rdi, rdi
	je	.label_574
	lea	rdi, [rdi]
	mov	byte ptr [rdi], 0
	mov	rbp, rbp
	jmp	.label_574
.label_580:
	nop	
	xor	esi, esi
.label_574:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a060

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
	je	.label_739
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
	jl	.label_741
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_741
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
	jne	.label_740
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_740:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_741:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_739:
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
	.align	32
	#Procedure 0x40a150
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
	.align	32
	#Procedure 0x40a1a0
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
	.align	32
	#Procedure 0x40a1c0
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
	.align	32
	#Procedure 0x40a1e0
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
	.align	32
	#Procedure 0x40a250
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
	.align	32
	#Procedure 0x40a270
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
	je	.label_742
	test	rdx, rdx
	nop	
	je	.label_742
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_742:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a2b0
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a360

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_795:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_770
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_778]]
.label_1224:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_1225:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_804
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_804
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_822:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_816
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_816:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_822
.label_804:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_773
.label_1217:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_773
.label_1220:
	lea	rsi, [rsi]
	mov	al, 1
.label_1218:
	mov	rbp, rbp
	mov	r12b, 1
.label_1221:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_853
	lea	rsi, [rsi]
	mov	cl, al
.label_853:
	mov	rsp, rsp
	mov	al, cl
.label_1219:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_857
	test	r10, r10
	je	.label_864
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_752
.label_857:
	xor	ecx, ecx
	jmp	.label_752
.label_1222:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_753
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_757
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_762
.label_1223:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_773
.label_864:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_752:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_773
.label_753:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_762
.label_757:
	lea	rdi, [rdi]
	mov	eax, 1
.label_762:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_773:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_814
	nop	word ptr cs:[rax + rax]
.label_774:
	nop	
	inc	rdi
.label_814:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_854
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_823
	jmp	.label_860
	nop	dword ptr [rax + rax]
.label_854:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_863
.label_823:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_745
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_750
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_750
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_750:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_792
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_755
	nop	dword ptr [rax + rax]
.label_745:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_755
	nop	word ptr cs:[rax + rax]
.label_792:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_817
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_755
	jmp	.label_747
.label_817:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_755:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_841
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_844]]
.label_1246:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_790
	mov	rbp, rbp
	jmp	.label_851
.label_1250:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_852
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_855
	nop	
	cmp	rbp, 1
	je	.label_851
	xor	r13d, r13d
	jmp	.label_772
.label_1239:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_858
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_747
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_754
	mov	al, r14b
	and	al, 1
	jne	.label_756
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_761
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_761:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_775
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_775:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_785
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_785:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_784
.label_1240:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_802
.label_1241:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_798
.label_1242:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_802
.label_1243:
	mov	bl, 0x66
	jmp	.label_802
.label_1244:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_798
.label_1247:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_810
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_812
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_865
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_865:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_766
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_766:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_838
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_838:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_810:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_772
.label_1248:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_850
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_790
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_790
	mov	rbp, rbp
	jmp	.label_859
.label_1249:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_861
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_867
	lea	rdi, [rdi]
	jmp	.label_748
.label_841:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_856
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_796:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_783
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_783
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_772
.label_852:
	test	rdi, rdi
	jne	.label_801
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_801
.label_851:
	mov	dl, 1
.label_1245:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_807
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_772
.label_858:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_774
	jmp	.label_790
.label_861:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_798
.label_867:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_794
.label_798:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_819
.label_802:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_772
	lea	rsi, [rsi]
	jmp	.label_797
.label_856:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_830
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_830:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_749:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_862
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_743
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_818
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_760
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_791:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_781
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_777
.label_781:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_791
.label_760:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_780
	xor	r13d, r13d
.label_780:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_749
	mov	rsp, rsp
	jmp	.label_796
.label_801:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_772
.label_850:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_790
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_790
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_790
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_829
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_831
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_836
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_840
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_840:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_847
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_847:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_803
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_803:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_839
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_839:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_772
.label_790:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_772:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_821
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_764
	lea	rsi, [rsi]
	jmp	.label_771
.label_821:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_771
.label_764:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_776
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_787
	nop	word ptr cs:[rax + rax]
.label_771:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_787:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_794
	mov	rsp, rsp
	jmp	.label_797
.label_776:
	mov	bl, r15b
.label_797:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_747
	nop	
	cmp	r9d, 2
	jne	.label_811
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_811
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_834
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_834:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_815
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_815:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_805
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_805:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_811:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_827
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_827:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_767
.label_855:
	xor	r13d, r13d
	nop	
	jmp	.label_772
.label_783:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_835
	nop	dword ptr [rax + rax]
.label_765:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_835:
	test	cl, cl
	je	.label_843
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_782
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_849
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_849:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_782
	nop	dword ptr [rax]
.label_843:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_747
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_746
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_746
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_786
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_786:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_758
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_758:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_866
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_866:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_746:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_788
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_788:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_793
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_793:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_806
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_806:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_782:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_794
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_824
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_824
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_828
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_828:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_833
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_833:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_824:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_765
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_765
	nop	word ptr cs:[rax + rax]
.label_794:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_826
	mov	rsp, rsp
	and	al, 1
	jne	.label_826
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_845
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_845:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_768
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_768:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_826:
	mov	rsp, rsp
	mov	bl, r15b
.label_767:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_832
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_832:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_774
.label_754:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_784
.label_756:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_784:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_789
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_789:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_779
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_800
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_799
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_809
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_809:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_813
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_813:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_772
.label_779:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_772
.label_800:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_772
.label_799:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_772
.label_743:
	xor	r13d, r13d
.label_862:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_796
.label_818:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_837
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_848:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_846
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_848
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_796
.label_837:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_796
.label_846:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_796
.label_829:
	xor	r13d, r13d
	jmp	.label_772
.label_831:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_772
.label_860:
	nop	
	mov	r13, rdi
.label_863:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_751
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_763
.label_751:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_769
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_769
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_842
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_769
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_795
.label_769:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_808
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_808
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_808
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_820:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_744
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_744:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_820
.label_808:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_825
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_825
.label_807:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_747
.label_777:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_747
.label_763:
	nop	
	mov	rbp, r13
	jmp	.label_747
.label_819:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_747:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_759:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_825:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_842:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_759
.label_812:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_747
.label_748:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_747
.label_859:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_747
.label_836:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_747
.label_770:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8e0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba20
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
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
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
	call	xmalloc
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
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_868
	mov	qword ptr [rax], rbx
.label_868:
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
	.align	32
	#Procedure 0x40bb70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_869
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_873:
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
	jl	.label_873
.label_869:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_872
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_870]], OFFSET FLAT:slot0
.label_872:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_871
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_871:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc30
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bc40

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
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_878
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_880
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_876
.label_880:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_879
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
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
	jne	.label_875
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_875:
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
.label_876:
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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
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
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_874
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
	je	.label_877
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_877:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_874:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
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
.label_878:
	lea	rdi, [rdi]
	call	abort
.label_879:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40beb0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bec0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bef0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf20
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_881
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_881:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bfb0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_882
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_882:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c050
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_883
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_883:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0e0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_884:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c150
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_885]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c1f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c290

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_885]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c300
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c370

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_888
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_888:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c450
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_885]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_889
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_889
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_889:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c4e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_885]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_890
	test	rdx, rdx
	je	.label_890
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_890:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c570
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_885]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_891
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_891
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_891:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c610
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_885]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_886]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_887]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_892
	test	rsi, rsi
	je	.label_892
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_892:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6c0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c6e0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c700

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c730

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_894
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_896
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_893
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_893
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_893
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_893
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_893
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_893
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_894
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_894
.label_896:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_893
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_893
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_893
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_893
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_893
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_893
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_895
.label_893:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_894:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_895:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_894
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_894
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c8a0

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
	.align	32
	#Procedure 0x40c8c0

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
	je	.label_897
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
	jmp	.label_899
.label_897:
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
.label_899:
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
	ja	.label_902
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_903]]
.label_1365:
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
.label_902:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_900
.label_1366:
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
.label_1367:
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
.label_1368:
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
	jmp	.label_906
.label_1369:
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
	jmp	.label_905
.label_1370:
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
	jmp	.label_904
.label_1371:
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
.label_904:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_905:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_906:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_901
.label_1373:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_900:
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
	jmp	.label_898
.label_1372:
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
.label_898:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_901:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1364:
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
	.align	32
	#Procedure 0x40ccb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_907:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_907
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cce0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_911:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_908
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_909
	nop	word ptr cs:[rax + rax]
.label_908:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_909:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_910
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_911
.label_910:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_912
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_912:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_914:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_913
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_915
	nop	dword ptr [rax + rax]
.label_913:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_915:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_916
	inc	r9
	cmp	r9, 0xa
	jb	.label_914
.label_916:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ceb0
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
	.align	32
	#Procedure 0x40cf40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_917
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_918
	test	rax, rax
	je	.label_917
.label_918:
	nop	
	pop	rbx
	ret	
.label_917:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cf90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_919
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_920
.label_919:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_920:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfc0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_922
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_921
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_921
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_921:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_923
	test	rax, rax
	je	.label_922
.label_923:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_922:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d040

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_924
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_924
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_924:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_925
	test	rax, rax
	nop	
	je	.label_926
.label_925:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_926:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d090
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_931
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_927
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_933
.label_931:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_930
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_930:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_932
.label_933:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_929
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_929
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_929:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_928
	test	rax, rax
	mov	rbp, rbp
	je	.label_927
.label_928:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_927:
	call	xalloc_die
.label_932:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d170
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_934
	test	rax, rax
	mov	rbp, rbp
	je	.label_935
.label_934:
	pop	rbx
	ret	
.label_935:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40d190

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_939
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_940
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_938
	call	free
	xor	eax, eax
	jmp	.label_936
.label_939:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_937
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_938:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_936
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_937
.label_936:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_937:
	mov	rbp, rbp
	call	xalloc_die
.label_940:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d220
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_941
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_942
.label_941:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_942:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d280
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
	jb	.label_943
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_943
	pop	rcx
	ret	
.label_943:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d2b0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_945
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_944
.label_945:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_944:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d310
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_946
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_947
.label_946:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_947:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d370

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
	.align	32
	#Procedure 0x40d3c0

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
	mov	r12, rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	eax, esi
	mov	r15, rdi
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	call	xstrtoimax
	mov	rsp, rsp
	test	eax, eax
	je	.label_948
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_951
	mov	rbp, rbp
	cmp	eax, 3
	jne	.label_954
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_949
.label_948:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	nop	
	jl	.label_952
	cmp	rbx, r12
	jle	.label_955
.label_952:
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	lea	rsi, [rsi]
	jl	.label_953
.label_951:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_949
.label_954:
	mov	rsp, rsp
	call	__errno_location
.label_949:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	nop	
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ebp, 0x16
	mov	rbp, rbp
	cmove	ebp, eax
	mov	rbp, rbp
	mov	rdi, r15
	call	quote
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rsp, rsp
	mov	rcx, r14
	call	error
	nop	
	mov	rbx, qword ptr [rsp]
.label_955:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_953:
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, -0x40000001
	jg	.label_950
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_949
.label_950:
	mov	dword ptr [rax], 0x22
	jmp	.label_949
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d510

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
	.align	32
	#Procedure 0x40d550

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
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_977
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	cmovne	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, ebp
	call	__strtol_internal
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rcx, r12
	nop	
	je	.label_1005
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_1008
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_967
	mov	rsp, rsp
	mov	r13d, 1
.label_1008:
	test	r14, r14
	nop	
	je	.label_959
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_963
.label_1005:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_967
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_967
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	
	test	rax, rax
	mov	rcx, r15
	je	.label_967
.label_963:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_987
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_973
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_984
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_984
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strchr
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_984
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_962
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_962
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_984
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_979
	mov	r15d, 1
.label_979:
	mov	r8d, 0x400
	jmp	.label_984
.label_959:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_967
.label_987:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_989
.label_962:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_984:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_995
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_997
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1001]]
.label_1253:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_969
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_971
.label_995:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1014
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_957
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_988]]
.label_1276:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_969
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_971
.label_997:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_980
	cmp	r13d, 0x59
	jne	.label_973
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	mov	rbp, rbp
	idiv	r8
	mov	r10, rax
	mov	rsp, rsp
	cmp	rbp, r10
	mov	edi, 1
	nop	
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_985
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	mov	rbp, rbp
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	ebx, al
.label_985:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1007
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_1007:
	mov	rsp, rsp
	or	edi, ebx
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	r11d, 1
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_956
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	ebx, al
.label_956:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_978
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rsi, r9
	mov	rsp, rsp
	movzx	r11d, al
.label_978:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_964
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	nop	
	div	r8
	mov	rcx, rsi
	nop	
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	nop	
	movzx	ebx, al
.label_964:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1003
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	lea	rsi, [rsi]
	movzx	r14d, al
.label_1003:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1010
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	imul	rcx, r8
	nop	
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_1010:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_972
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
.label_972:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_965
.label_1014:
	cmp	r13d, 0x74
	je	.label_980
	cmp	r13d, 0x77
	jne	.label_973
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_983
.label_969:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_965
.label_1255:
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp, rbp
	jl	.label_998
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_998:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_960
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	r10d, al
.label_960:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_974
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_974:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_965
.label_1256:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_965
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rbp
	nop	
	cmp	rax, rbp
	nop	
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
	nop	
	jmp	.label_965
.label_1257:
	lea	r13, [r9 + 1]
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_1006
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_1006:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_966
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_966:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_965
.label_980:
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rbp, rbp
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rbp, rbp
	mov	r11d, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_982
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	lea	rdi, [rdi]
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	edi, al
.label_982:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_981
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	lea	rsi, [rsi]
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r9
	movzx	r11d, al
.label_981:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_1009
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	edi, al
.label_1009:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_970
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	r8, r9
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r8
.label_970:
	or	ebx, edi
	jmp	.label_965
.label_957:
	nop	
	cmp	r13d, 0x5a
	jne	.label_973
	lea	r13, [r9 + 1]
	nop	
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rsp, rsp
	mov	r10, rax
	nop	
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_986
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_986:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_999
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	mov	rsp, rsp
	div	r8
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	edi, al
.label_999:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_1013
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rbp, rbp
	mov	rcx, rsi
	imul	rcx, r8
	lea	rsi, [rsi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	rcx, r9
	movzx	ebx, al
.label_1013:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1012
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	div	r8
	lea	rdi, [rdi]
	mov	rsi, rcx
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	nop	
	setl	al
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r11d, al
.label_1012:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_994
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	ebx, al
.label_994:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_996
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_996:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_1011
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rsi
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r8
.label_1011:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_965
.label_973:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_967
.label_1254:
	lea	r13, [r9 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	nop	
	mov	rcx, r13
	mov	edi, 1
	jl	.label_975
	xor	edx, edx
	nop	
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rsp, rsp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_975:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_992
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	nop	
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbx, r9
	movzx	r14d, al
.label_992:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1004
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	nop	
	setl	al
	lea	rdi, [rdi]
	cmovl	rsi, r9
	movzx	ecx, al
.label_1004:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_958
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	lea	rdi, [rdi]
	imul	rdi, r8
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rdi, r9
	movzx	r11d, al
.label_958:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_993
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r14d, al
.label_993:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_990
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_990:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_965
.label_1258:
	nop	
	lea	r13, [r9 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	lea	rsi, [rsi]
	idiv	r8
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rsp, rsp
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1000
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rcx, r9
	movzx	edi, al
.label_1000:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_961
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	r14d, al
.label_961:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_976
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	mov	rbp, rbp
	imul	rbx, r8
	nop	
	cmp	rax, rsi
	setl	al
	nop	
	cmovl	rbx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_976:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_991
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	mov	rbp, rbp
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_991:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1002
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rbp, rbp
	imul	r8, rsi
	cmp	rax, rsi
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_1002:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_965
.label_983:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_971:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_965:
	mov	rbp, rbp
	or	ebx, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	lea	rax, [rdx + r15]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_968
	or	ebx, 2
.label_968:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_989:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_967:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_977:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2a0

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
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	cmp	ebp, 0x25
	jae	.label_1055
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x10]
	nop	
	cmovne	r15, rsi
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	nop	
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	nop	
	je	.label_1017
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1020
	lea	rdi, [rdi]
	mov	ebp, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_1028
	lea	rdi, [rdi]
	mov	ebp, 1
.label_1020:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1036
	mov	rbp, rbp
	mov	edx, ebp
	jmp	.label_1039
.label_1017:
	nop	
	mov	ebp, 4
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_1028
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_1028
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strchr
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r12d, 1
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rbx
	je	.label_1028
.label_1039:
	lea	rsi, [rsi]
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1054
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], edx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	je	.label_1053
	mov	r8d, 1
	mov	r11d, 0x400
	nop	
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	ja	.label_1027
	movabs	rcx, 0x814400308945
	lea	rdi, [rdi]
	bt	rcx, rax
	jae	.label_1027
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	strchr
	mov	r8d, 1
	lea	rsi, [rsi]
	mov	r11d, 0x400
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1027
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	lea	rdi, [rdi]
	cmp	eax, 0x42
	je	.label_1035
	cmp	eax, 0x44
	lea	rdi, [rdi]
	je	.label_1035
	cmp	eax, 0x69
	mov	rbp, rbp
	jne	.label_1027
	mov	rax, qword ptr [rsp + 0x18]
	movzx	eax, byte ptr [rax + 2]
	mov	r8d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	je	.label_1044
	lea	rdi, [rdi]
	mov	r8d, 1
.label_1044:
	mov	r11d, 0x400
	nop	
	jmp	.label_1027
.label_1036:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], r12
	jmp	.label_1028
.label_1054:
	nop	
	mov	r13, r12
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_1058
.label_1035:
	lea	rsi, [rsi]
	mov	r8d, 2
	lea	rsi, [rsi]
	mov	r11d, 0x3e8
.label_1027:
	mov	rbp, rbp
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_1073
	lea	rdi, [rdi]
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1069
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1071]]
.label_1361:
	movabs	rax, 0xffe0000000000000
	mov	rbp, rbp
	cmp	r12, rax
	lea	rsi, [rsi]
	jl	.label_1018
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	nop	
	jmp	.label_1022
.label_1073:
	cmp	r13d, 0x73
	jg	.label_1030
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	lea	rsi, [rsi]
	ja	.label_1032
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1037]]
.label_1278:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	mov	rsp, rsp
	jl	.label_1018
	lea	rdi, [rdi]
	mov	r13, r12
	lea	rsi, [rsi]
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1022
.label_1069:
	cmp	r13d, 0x54
	je	.label_1034
	lea	rdi, [rdi]
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1053
	nop	
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r11
	mov	rbp, rbp
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	nop	
	mov	ecx, 1
	mov	rsp, rsp
	mov	rbx, r13
	mov	edi, 1
	lea	rdi, [rdi]
	jl	.label_1056
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	lea	rsi, [rsi]
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	mov	rbp, rbp
	movzx	edi, al
.label_1056:
	cmp	rbx, r9
	mov	rbp, rbp
	mov	rsi, r13
	jl	.label_1016
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	nop	
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_1016:
	or	ecx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	jl	.label_1033
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	lea	rsi, [rsi]
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1033:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1050
	xor	edx, edx
	nop	
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rsi, r10
	movzx	ebx, al
.label_1050:
	mov	rsp, rsp
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	jl	.label_1060
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	nop	
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	lea	rdi, [rdi]
	movzx	ecx, al
.label_1060:
	or	ecx, ebx
	cmp	rbp, r9
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_1015
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rbp
	mov	rsi, rbp
	imul	rsi, r11
	nop	
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	edi, al
.label_1015:
	mov	rsp, rsp
	or	edi, ecx
	mov	rsp, rsp
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	jl	.label_1031
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	mov	rbp, rsi
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_1031:
	or	ecx, edi
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_1046
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	mov	rbp, rbp
	cmovl	r11, r10
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r11
.label_1046:
	nop	
	or	ebx, ecx
	jmp	.label_1021
.label_1030:
	mov	rbp, rbp
	cmp	r13d, 0x74
	je	.label_1034
	cmp	r13d, 0x77
	jne	.label_1053
	nop	
	movabs	rax, 0xc000000000000000
	nop	
	cmp	r12, rax
	nop	
	jge	.label_1063
.label_1018:
	lea	rsi, [rsi]
	inc	r10
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	r13, r10
	lea	rsi, [rsi]
	jmp	.label_1021
.label_1279:
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rsi, [rsi]
	cqo	
	mov	rbp, rbp
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rsp, rsp
	jl	.label_1072
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rbp, r12
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbp, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_1072:
	cmp	rbp, rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_1041
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1041:
	mov	rsp, rsp
	or	ecx, ebx
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1051
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_1051:
	or	ebx, ecx
	jmp	.label_1021
.label_1280:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	lea	rdi, [rdi]
	mov	ebx, 1
	jl	.label_1021
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	imul	r11, r12
	lea	rdi, [rdi]
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
	jmp	.label_1021
.label_1281:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	idiv	r11
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	cmp	r12, rdi
	lea	rdi, [rdi]
	mov	ebx, 1
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	ecx, 1
	jl	.label_1023
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	nop	
	div	r11
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	imul	rsi, r11
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	cmovl	rsi, r10
	mov	rbp, rbp
	movzx	ecx, al
.label_1023:
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_1048
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	r11, r10
	movzx	ebx, al
	lea	rsi, [rsi]
	mov	r13, r11
.label_1048:
	or	ebx, ecx
	mov	rsp, rsp
	jmp	.label_1021
.label_1034:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rdi, [rdi]
	mov	r9, rax
	nop	
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	nop	
	mov	rbx, r13
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	jl	.label_1061
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rbx, r12
	nop	
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	nop	
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_1061:
	mov	rbp, rbp
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_1019
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rbx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_1019:
	mov	rsp, rsp
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	ebx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1038
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rbp, rsi
	lea	rdi, [rdi]
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	nop	
	movzx	edi, al
.label_1038:
	lea	rdi, [rdi]
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_1052
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	setl	al
	cmovl	r11, r10
	lea	rsi, [rsi]
	movzx	ebx, al
	mov	rsp, rsp
	mov	r13, r11
.label_1052:
	or	ebx, edi
	jmp	.label_1021
.label_1032:
	nop	
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_1053
	mov	rbp, rbp
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rsi, [rsi]
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1067
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	mov	rsp, rsp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rbx, r10
	lea	rsi, [rsi]
	movzx	edi, al
.label_1067:
	cmp	rbx, r9
	mov	rsi, r13
	lea	rsi, [rsi]
	jl	.label_1047
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_1047:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1045
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	nop	
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_1045:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	jl	.label_1059
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rsp, rsp
	mov	rsi, rbp
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ebx, al
.label_1059:
	lea	rsi, [rsi]
	or	ebx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_1070
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	nop	
	setl	al
	mov	rsp, rsp
	cmovl	rbp, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_1070:
	mov	rsp, rsp
	or	ecx, ebx
	lea	rdi, [rdi]
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	nop	
	jl	.label_1049
	xor	edx, edx
	nop	
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_1049:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_1043
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	nop	
	mov	r13, r11
.label_1043:
	mov	rbp, rbp
	or	ebx, edi
	jmp	.label_1021
.label_1053:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	nop	
	or	eax, 2
	mov	rbp, rbp
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_1028
.label_1362:
	lea	rsi, [rsi]
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	r11
	mov	r9, rax
	nop	
	cmp	r12, r9
	mov	ebx, 1
	mov	rbp, rbp
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1064
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	mov	rbp, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1064:
	mov	rsp, rsp
	cmp	rsi, r9
	mov	rdi, r13
	mov	rbp, rbp
	jl	.label_1025
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_1025:
	or	ebx, ecx
	lea	rdi, [rdi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_1040
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbp, rbp
	mov	rsi, rdi
	lea	rsi, [rsi]
	imul	rsi, r11
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1040:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_1062
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	imul	rdi, r11
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rbp, rbp
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_1062:
	or	r14d, ecx
	lea	rsi, [rsi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1068
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rdi
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1068:
	lea	rsi, [rsi]
	or	ecx, r14d
	mov	rsp, rsp
	cmp	rsi, r9
	jl	.label_1024
	xor	edx, edx
	mov	rax, r10
	nop	
	div	r11
	nop	
	imul	r11, rsi
	mov	rsp, rsp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
.label_1024:
	or	ebx, ecx
	lea	rsi, [rsi]
	jmp	.label_1021
.label_1363:
	nop	
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	nop	
	idiv	r11
	mov	r9, rax
	lea	rsi, [rsi]
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1029
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_1029:
	cmp	rbx, r9
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1057
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rsi, rbx
	nop	
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_1057:
	lea	rdi, [rdi]
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	nop	
	mov	r14d, 1
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1066
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_1066:
	or	ebx, ecx
	mov	rbp, rbp
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rbp, rbp
	jl	.label_1026
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsp, rsp
	imul	rcx, r11
	lea	rdi, [rdi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rcx, r10
	movzx	r14d, al
.label_1026:
	nop	
	or	r14d, ebx
	mov	rsp, rsp
	cmp	rcx, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_1042
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	nop	
	cmovl	r11, r10
	nop	
	movzx	ebx, al
	mov	r13, r11
.label_1042:
	nop	
	or	ebx, r14d
	mov	rsp, rsp
	jmp	.label_1021
.label_1063:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_1022:
	cmp	r12, rax
	lea	rsi, [rsi]
	setg	al
	lea	rdi, [rdi]
	cmovg	r13, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_1021:
	or	ebx, dword ptr [rsp + 0x24]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r8], 0
	je	.label_1065
	or	ebx, 2
.label_1065:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, ebx
.label_1058:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_1028:
	nop	
	mov	eax, ebp
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1055:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	lea	rsi, [rsi]
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f040

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	r15, r8
	mov	eax, esi
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	dec	edi
	nop	
	cmp	edi, 4
	jae	.label_1074
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1076]]
	mov	rbp, rbp
	cdqe	
	test	eax, eax
	nop	
	jns	.label_1077
	nop	
	lea	r14, [rsp + 6]
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str_7
	mov	rsp, rsp
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	mov	rsp, rsp
	jmp	.label_1075
.label_1077:
	mov	rbp, rbp
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str_7
.label_1075:
	xor	edi, edi
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	mov	rbp, rbp
	call	error
.label_1074:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f0f0

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
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1102
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_1096:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1096
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_1078
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_1088
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1100
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_1078
	mov	dword ptr [rsp + 4], 1
.label_1100:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1098
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_1078
.label_1088:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1078
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1078
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_1078
.label_1098:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1091
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1079
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1083
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1083
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_1083
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1087
	cmp	eax, 0x44
	nop	
	je	.label_1087
	cmp	eax, 0x69
	jne	.label_1083
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_1103
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1103:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_1083
.label_1091:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1086
.label_1087:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1083:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_1090
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_1093
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1097]]
.label_1302:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1099
.label_1090:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1101
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_1104
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1081]]
.label_1311:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_1099:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_1085
.label_1093:
	cmp	r13d, 0x54
	nop	
	je	.label_1080
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1079
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_1094
.label_1101:
	cmp	r13d, 0x74
	je	.label_1080
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_1079
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_1085
.label_1304:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1095
.label_1305:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_1082
.label_1306:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1092
.label_1080:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_1089
.label_1104:
	cmp	r13d, 0x5a
	jne	.label_1079
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
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
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_1094:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_1082
.label_1079:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_1078
.label_1303:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
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
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_1092
.label_1307:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_1089:
	or	dl, r10b
.label_1095:
	lea	rsi, [rsi]
	or	dl, bl
.label_1092:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_1082:
	mov	rsp, rsp
	mov	rbp, rsi
.label_1085:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1084
	or	eax, 2
.label_1084:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_1086:
	mov	qword ptr [rax], rbp
.label_1078:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1102:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f9b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1105
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1106
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
	je	.label_1106
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
.label_1105:
	mov	ecx, 1
.label_1106:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_1107
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1109
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
	je	.label_1107
.label_1109:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1107
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1108
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1108:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1107:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40fad0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_1127
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1127:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_1119
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1112
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_1110
	mov	rsp, rsp
	test	esi, esi
	jne	.label_1119
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_1122
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1126
.label_1119:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1114
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_1110
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1115
.label_1112:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1117
.label_1110:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_1118
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1123
.label_1118:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1123:
	mov	edx, dword ptr [rax]
.label_1130:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_1117:
	mov	ebp, eax
.label_1111:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1115:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1114
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1116
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1120
.label_1114:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1125
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1128
.label_1122:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1126:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1130
.label_1116:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1120:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1121
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_1129
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1129
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_1111
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_1113
.label_1129:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1111
.label_1125:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1128:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_1117
.label_1121:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1113:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1111
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_1111
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1124
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_1111
.label_1124:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_1111
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fea0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1131
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1131
	test	byte ptr [rbx + 1], 1
	je	.label_1131
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1131:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fee0

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
	jne	.label_1132
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1132
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1133
.label_1132:
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
.label_1133:
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
	je	.label_1134
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1134:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff90

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
	je	.label_1135
	nop	
	cmp	r15, -2
	jb	.label_1135
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1135
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1135:
	mov	rbp, rbp
	mov	rax, r15
.label_1295:
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
	.align	32
	#Procedure 0x410020

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	mov	rbp, rbp
	je	.label_1136
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_1136:
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x11]
	nop	
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	nop	
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1137
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_1137
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1137:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4100d0
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_1139
	nop	dword ptr [rax]
.label_1138:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_1138
.label_1139:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410100

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
	je	.label_1140
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1142
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_1141
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_1141:
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
	jmp	.label_1143
.label_1140:
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
.label_1142:
	xor	eax, eax
.label_1143:
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
	.align	32
	#Procedure 0x4101e0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_0
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_1145
	lea	rdi, [rdi]
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_1147
	lea	rdi, [rdi]
	lea	rdi, [r14 + 9]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1144
.label_1147:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rsp, rsp
	mov	bpl, 1
	mov	rbp, rbp
	jmp	.label_1146
.label_1145:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	eax, 1
	nop	
	test	bl, bl
	nop	
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_1144
.label_1146:
	lea	rsi, [rsi]
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	lea	rsi, [rsi]
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	mov	rbp, rbp
	je	.label_1144
	lea	rdi, [rdi]
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 8], bpl
	mov	rbp, rbp
	mov	byte ptr [r13 + 9], 0
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_1152
	nop	
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	call	memcpy
	nop	
	mov	byte ptr [rbp + r12], 0
.label_1152:
	lea	rdi, [rdi]
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_1153
	mov	rbp, rbp
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	mov	rsp, rsp
	jmp	.label_1148
.label_1153:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	unsetenv
.label_1148:
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_1151
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	cmp	r13, 2
	jb	.label_1149
	nop	word ptr cs:[rax + rax]
.label_1150:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_1150
.label_1149:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1144
.label_1151:
	nop	
	call	tzset
	lea	rdi, [rdi]
	mov	rax, r13
.label_1144:
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4103b0

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
	mov	r14b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1158
	cmp	r15, rbx
	ja	.label_1164
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_1158
.label_1164:
	mov	ebp, OFFSET FLAT:.str
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_1154
	lea	rbp, [r12 + 9]
	jmp	.label_1156
.label_1155:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_1156:
	lea	r13, [r12 + 9]
.label_1166:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1154
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_1157
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_1159
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_1162
.label_1157:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_1166
	lea	rdi, [rdi]
	jmp	.label_1155
.label_1162:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_1159:
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rdx, [rax + 1]
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	sub	rcx, r13
	mov	rbp, rbp
	mov	rsi, rcx
	not	rsi
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jbe	.label_1163
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_1161:
	xor	r14d, r14d
	jmp	.label_1158
.label_1163:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_1160
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_1158
.label_1160:
	add	rax, 0x12
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rdx, 0x77
	mov	rsp, rsp
	mov	r13, rdx
	mov	rbp, rbp
	mov	edi, 0x80
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_1165
	nop	
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	lea	rsi, [rsi]
	mov	rbp, rax
	add	rbp, 9
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rbx, rax
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_1154:
	mov	qword ptr [r15 + 0x30], rbp
.label_1158:
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1165:
	mov	qword ptr [r12], 0
	jmp	.label_1161
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4105b0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_1171
	nop	
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 8], 0
	je	.label_1173
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_0
	mov	edx, 1
	call	setenv
	jmp	.label_1167
.label_1173:
	mov	edi, OFFSET FLAT:.str_0
	call	unsetenv
.label_1167:
	test	eax, eax
	je	.label_1170
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_1168
.label_1170:
	call	tzset
	mov	r12b, 1
.label_1168:
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_1172
	nop	dword ptr [rax]
.label_1169:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1169
.label_1172:
	mov	dword ptr [r14], r15d
.label_1171:
	mov	al, r12b
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410670

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
	je	.label_1176
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_1177
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_1178
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1175
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	xor	rax, qword ptr [r15]
	mov	rsp, rsp
	xor	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	edx, ecx
	or	edx, eax
	lea	rsi, [rsi]
	shr	rax, 0x20
	or	edx, eax
	nop	
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	lea	rsi, [rsi]
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	nop	
	mov	edx, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	test	edi, edi
	lea	rsi, [rsi]
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	lea	rdi, [rdi]
	or	ecx, eax
	jne	.label_1175
.label_1178:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1175
	mov	qword ptr [rsp + 0x38], -1
.label_1175:
	mov	rdi, r14
	mov	rbp, rbp
	call	revert_tz
	test	al, al
	mov	rsp, rsp
	je	.label_1177
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_1174
.label_1177:
	lea	rdi, [rdi]
	mov	rax, -1
.label_1174:
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
.label_1176:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4107e0

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
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_1179
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1180
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1180
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_1180
.label_1179:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1180
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_1180:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410870

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
	mov	ecx, OFFSET FLAT:.str
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1181
	nop	
	mov	rax, rcx
.label_1181:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x4108b0

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