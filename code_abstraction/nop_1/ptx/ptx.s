	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	#Procedure 0x401f70

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fa0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.27
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.10
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.10
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.41
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
	.align	32
	#Procedure 0x4020f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	r14, [rsp + 8]
	jmp	.label_13
.label_39:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	mov	dword ptr [dword ptr [rip + output_format]],  eax
	nop	word ptr cs:[rax + rax]
.label_13:
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_35
	cmp	eax, 9
	jle	.label_37
	cmp	eax, 0xa
	je	.label_39
	cmp	eax, 0x41
	jne	.label_38
	mov	byte ptr [byte ptr [rip + auto_reference]],  1
	jmp	.label_13
	nop	dword ptr [rax]
.label_35:
	lea	ecx, [rax - 0x46]
	cmp	ecx, 0x11
	jbe	.label_34
	lea	ecx, [rax - 0x62]
	cmp	ecx, 7
	jbe	.label_44
	add	eax, -0x6f
	cmp	eax, 8
	ja	.label_38
	jmp	qword ptr [word ptr [+ (rax * 8) + label_46]]
.label_2335:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + only_file]],  rax
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_34:
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_11]]
.label_2320:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + truncation_string]],  rax
	jmp	.label_13
.label_44:
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_17]]
.label_2167:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + break_file]],  rax
	jmp	.label_13
.label_2321:
	mov	byte ptr [byte ptr [rip + gnu_extensions]],  1
	jmp	.label_13
.label_2322:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + macro_name]],  rax
	jmp	.label_13
.label_2323:
	mov	dword ptr [dword ptr [rip + output_format]],  2
	jmp	.label_13
.label_2324:
	mov	byte ptr [byte ptr [rip + right_reference]],  1
	jmp	.label_13
.label_2325:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + context_regex]],  rax
	jmp	.label_13
.label_2326:
	mov	dword ptr [dword ptr [rip + output_format]],  3
	jmp	.label_13
.label_2327:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	cmp	byte ptr [rax], 0
	jne	.label_40
	xor	eax, eax
.label_40:
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	jmp	.label_13
.label_2168:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_13
.label_2169:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_33
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	jle	.label_33
	mov	qword ptr [word ptr [rip + gap_size]],  rax
	jmp	.label_13
.label_2170:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + ignore_file]],  rax
	jmp	.label_13
.label_2336:
	mov	byte ptr [byte ptr [rip + input_reference]],  1
	jmp	.label_13
.label_2337:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_15
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	jle	.label_15
	mov	qword ptr [word ptr [rip + line_width]],  rax
	jmp	.label_13
.label_37:
	cmp	eax, -1
	jne	.label_29
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebx
	jne	.label_31
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rax], 0
	jmp	.label_16
.label_31:
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	cl, 1
	je	.label_42
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rax, qword ptr [rbp + rax*8]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_12
	movzx	ecx, cl
	cmp	ecx, 0x2d
	jne	.label_18
	cmp	byte ptr [rax + 1], 0
	je	.label_12
.label_18:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rax, qword ptr [rbp + rax*8]
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rcx], rax
	jmp	.label_24
.label_42:
	sub	ebx, eax
	mov	dword ptr [dword ptr [rip + number_input_files]],  ebx
	movsxd	rdi, ebx
	mov	esi, 8
	call	xnmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	mov	esi, 8
	call	xnmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	mov	esi, 0x10
	call	xnmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	jle	.label_16
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	movsxd	rcx,  dword ptr [dword ptr [rip + number_input_files]]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_14:
	movsxd	rsi,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbp + rsi*8]
	mov	bl, byte ptr [rsi]
	test	bl, bl
	je	.label_43
	movzx	edi, bl
	cmp	edi, 0x2d
	jne	.label_45
	cmp	byte ptr [rsi + 1], 0
	je	.label_43
.label_45:
	movsxd	rsi,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbp + rsi*8]
	mov	qword ptr [rax + rdx*8], rsi
	jmp	.label_47
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	qword ptr [rax + rdx*8], 0
.label_47:
	inc	dword ptr [dword ptr [rip + optind]]
	inc	rdx
	cmp	rdx, rcx
	jl	.label_14
	jmp	.label_16
.label_12:
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rax], 0
.label_24:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	cmp	ecx, ebx
	jge	.label_19
	mov	rdi, qword ptr [rbp + rax*8 + 8]
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.22
	call	freopen_safer
	test	rax, rax
	je	.label_27
	inc	dword ptr [dword ptr [rip + optind]]
.label_19:
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	jl	.label_30
.label_16:
	cmp	dword ptr [dword ptr [rip + output_format]],  0
	jne	.label_32
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	eax, 1
	inc	eax
	mov	dword ptr [dword ptr [rip + output_format]],  eax
.label_32:
	call	initialize_regex
	mov	rdi,  qword ptr [word ptr [rip + break_file]]
	test	rdi, rdi
	je	.label_26
	call	digest_break_file
.label_26:
	mov	rdi,  qword ptr [word ptr [rip + ignore_file]]
	test	rdi, rdi
	je	.label_21
	mov	esi, OFFSET FLAT:ignore_table
	call	digest_word_file
	cmp	qword ptr [word ptr [rip + label_20]],  0
	jne	.label_21
	mov	qword ptr [word ptr [rip + ignore_file]],  0
.label_21:
	mov	rdi,  qword ptr [word ptr [rip + only_file]]
	test	rdi, rdi
	je	.label_23
	mov	esi, OFFSET FLAT:only_table
	call	digest_word_file
	cmp	qword ptr [word ptr [rip + label_22]],  0
	jne	.label_23
	mov	qword ptr [word ptr [rip + only_file]],  0
.label_23:
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	mov	qword ptr [word ptr [rip + total_line_count]],  0
	mov	qword ptr [word ptr [rip + maximum_word_length]],  0
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	xor	ebp, ebp
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	jle	.label_41
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_28:
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rdi, qword ptr [rax + rbx*8]
	mov	rsi,  qword ptr [word ptr [rip + text_buffers]]
	add	rsi, rbp
	call	swallow_file_in_memory
	mov	edi, ebx
	call	find_occurs_in_text
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	inc	rax
	mov	qword ptr [word ptr [rip + total_line_count]],  rax
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	add	rbp, 0x10
	cmp	rbx, rax
	jl	.label_28
.label_41:
	call	sort_found_occurs
	call	fix_output_parameters
	call	generate_all_output
	xor	eax, eax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_29:
	cmp	eax, 0xffffff7d
	je	.label_36
	cmp	eax, 0xffffff7e
	jne	.label_38
	xor	edi, edi
	call	usage
.label_36:
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	mov	rbp,  qword ptr [word ptr [rip + Version]]
	mov	edi, OFFSET FLAT:.str.19
	mov	esi, OFFSET FLAT:.str.20
	call	proper_name_utf8
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	xor	r9d, r9d
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	xor	edi, edi
	call	exit
.label_38:
	mov	edi, 1
	call	usage
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbp + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_25
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_25:
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
.label_27:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [rbp + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4027b0

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	cl, byte ptr [rbx]
	test	cl, cl
	mov	r15, rax
	je	.label_62
	mov	r15, rax
	jmp	.label_57
.label_50:
	mov	byte ptr [r15], 0x5c
	mov	cl, byte ptr [rbx + 1]
	add	rbx, 2
	mov	byte ptr [r15 + 1], cl
	add	r15, 2
	mov	rsi, rbx
	jmp	.label_48
.label_55:
	lea	rsi, [rbx + r12 + 2]
	test	r12d, r12d
	je	.label_67
.label_51:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r15], r14b
	inc	r15
	jmp	.label_48
.label_67:
	mov	word ptr [r15], 0x785c
	add	r15, 2
	mov	rax, qword ptr [rsp]
	jmp	.label_48
	nop	dword ptr [rax]
.label_57:
	lea	rsi, [rbx + 1]
	movzx	edx, cl
	cmp	edx, 0x5c
	jne	.label_53
	movsx	ecx, byte ptr [rsi]
	cmp	ecx, 0x6d
	jg	.label_66
	lea	edx, [rcx - 0x61]
	cmp	edx, 5
	ja	.label_60
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_61]]
.label_2343:
	mov	byte ptr [r15], 7
	jmp	.label_52
	nop	dword ptr [rax]
.label_59:
	cmp	byte ptr [rbx + 1], 0
	lea	rbx, [rbx + 1]
	jne	.label_59
	mov	rsi, rbx
	jmp	.label_48
	nop	word ptr cs:[rax + rax]
.label_53:
	mov	byte ptr [r15], cl
	inc	r15
	jmp	.label_48
	nop	dword ptr [rax + rax]
.label_66:
	add	ecx, -0x6e
	cmp	ecx, 0xa
	ja	.label_50
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_54]]
.label_2243:
	mov	byte ptr [r15], 0xa
	jmp	.label_52
.label_60:
	test	ecx, ecx
	je	.label_48
	cmp	ecx, 0x30
	jne	.label_50
	xor	edi, edi
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_63:
	movsx	edx, byte ptr [rbx + rdi + 2]
	mov	esi, edx
	and	esi, 0xf8
	cmp	esi, 0x30
	jne	.label_64
	lea	ecx, [rdx + rcx*8 - 0x30]
	inc	rdi
	cmp	edi, 3
	jl	.label_63
.label_64:
	lea	rsi, [rbx + rdi + 2]
	mov	byte ptr [r15], cl
	inc	r15
	jmp	.label_48
.label_2344:
	mov	byte ptr [r15], 8
	jmp	.label_52
.label_2345:
	mov	byte ptr [r15], 0xc
	jmp	.label_52
.label_2247:
	call	__ctype_b_loc
	mov	r13, qword ptr [rax]
	xor	r12d, r12d
	xor	r14d, r14d
	nop	
.label_49:
	movsx	ebp, byte ptr [rbx + r12 + 2]
	mov	edi, ebp
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r13 + rax*2 + 1], 0x10
	je	.label_55
	mov	eax, r14d
	shl	eax, 4
	mov	cl, bpl
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_58
	add	ebp, -0x57
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	cl, bpl
	add	cl, 0xbf
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_65
	add	ebp, -0x37
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_65:
	add	ebp, -0x30
.label_56:
	mov	r14d, ebp
	add	r14d, eax
	inc	r12
	cmp	r12d, 3
	jl	.label_49
	lea	rsi, [rbx + r12 + 2]
	jmp	.label_51
.label_2244:
	mov	byte ptr [r15], 0xd
	jmp	.label_52
.label_2245:
	mov	byte ptr [r15], 9
	jmp	.label_52
.label_2246:
	mov	byte ptr [r15], 0xb
	nop	dword ptr [rax]
.label_52:
	inc	r15
	add	rbx, 2
	mov	rsi, rbx
.label_48:
	mov	cl, byte ptr [rsi]
	test	cl, cl
	mov	rbx, rsi
	jne	.label_57
.label_62:
	mov	byte ptr [r15], 0
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0

	.globl initialize_regex
	.type initialize_regex, @function
initialize_regex:
	push	rbx
	xor	ebx, ebx
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	edi, ebx
	call	toupper
	mov	byte ptr [byte ptr [rbx + folded_chars]],  al
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_72
.label_78:
	mov	rax,  qword ptr [word ptr [rip + context_regex]]
	test	rax, rax
	je	.label_77
	cmp	byte ptr [rax], 0
	je	.label_79
	cmp	qword ptr [word ptr [rip + context_regex]],  0
	jne	.label_73
	jmp	.label_75
.label_77:
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	jne	.label_80
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
	and	al, 1
	je	.label_68
.label_80:
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.65
	jmp	.label_73
.label_79:
	mov	qword ptr [word ptr [rip + context_regex]],  0
	jmp	.label_75
.label_68:
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.64
.label_73:
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_75:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_81
	mov	edi, OFFSET FLAT:word_regex
	pop	rbx
	jmp	compile_regex
.label_81:
	cmp	qword ptr [word ptr [rip + break_file]],  0
	jne	.label_71
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	je	.label_76
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	edx, 0x100
	call	memset
	mov	byte ptr [byte ptr [rip + label_69]],  0
	mov	word ptr [word ptr [rip + label_70]],  0
	jmp	.label_71
.label_76:
	xor	ebx, ebx
	call	__ctype_b_loc
	nop	
.label_74:
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + word_fastmap]],  cl
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_74
.label_71:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl digest_break_file
	.type digest_break_file, @function
digest_break_file:
	push	rbx
	sub	rsp, 0x10
	lea	rsi, [rsp]
	call	swallow_file_in_memory
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	edx, 0x100
	call	memset
	mov	rbx, qword ptr [rsp]
	jmp	.label_82
	nop	dword ptr [rax + rax]
.label_83:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	mov	byte ptr [byte ptr [rax + word_fastmap]],  0
	inc	rbx
.label_82:
	cmp	rbx, qword ptr [rsp + 8]
	jb	.label_83
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_84
	mov	byte ptr [byte ptr [rip + label_69]],  0
	mov	word ptr [word ptr [rip + label_70]],  0
.label_84:
	mov	rdi, qword ptr [rsp]
	call	free
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	lea	rsi, [rsp]
	call	swallow_file_in_memory
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	r12, qword ptr [rsp]
	cmp	r12, qword ptr [rsp + 8]
	jae	.label_91
	lea	r14, [r15 + 8]
	nop	dword ptr [rax + rax]
.label_89:
	cmp	r12, qword ptr [rsp + 8]
	jae	.label_85
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, r12
	nop	
.label_90:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0xa
	je	.label_88
	inc	rbx
	cmp	rbx, rax
	jb	.label_90
.label_88:
	mov	r13, rbx
	sub	r13, r12
	jbe	.label_86
	mov	rax, qword ptr [r15 + 0x10]
	cmp	rax, qword ptr [r15 + 8]
	jne	.label_87
	mov	rdi, qword ptr [r15]
	mov	edx, 0x10
	mov	rsi, r14
	call	x2nrealloc
	mov	qword ptr [r15], rax
.label_87:
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r13
	inc	qword ptr [r15 + 0x10]
	jmp	.label_86
	nop	word ptr [rax + rax]
.label_85:
	mov	rbx, r12
.label_86:
	mov	rax, qword ptr [rsp + 8]
	lea	r12, [rbx + 1]
	cmp	rbx, rax
	cmovae	r12, rbx
	cmp	r12, rax
	jb	.label_89
.label_91:
	mov	rdi, qword ptr [r15]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	call	qsort
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c70

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_94
	mov	al, byte ptr [r14]
	test	al, al
	je	.label_94
	movzx	eax, al
	cmp	eax, 0x2d
	jne	.label_93
	cmp	byte ptr [r14 + 1], 0
	je	.label_94
.label_93:
	lea	rsi, [rsp]
	mov	rdi, r14
	call	read_file
	mov	qword ptr [rbx], rax
	jmp	.label_92
.label_94:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsp]
	call	fread_file
	mov	qword ptr [rbx], rax
	mov	r14d, OFFSET FLAT:.str.21
.label_92:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_95
	add	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_95:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d10

	.globl find_occurs_in_text
	.type find_occurs_in_text, @function
find_occurs_in_text:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x14], edi
	movsxd	r12, edi
	mov	r15,  qword ptr [word ptr [rip + text_buffers]]
	shl	r12, 4
	lea	rdx, [r15 + r12]
	mov	r13, qword ptr [r15 + r12]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	mov	rcx, r13
	jne	.label_101
	mov	qword ptr [rsp + 0x30], rdx
	lea	rbp, [r15 + r12 + 8]
	cmp	r13, qword ptr [r15 + r12 + 8]
	mov	rcx, r13
	jae	.label_120
	call	__ctype_b_loc
	mov	rbx, qword ptr [rax]
	mov	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_135:
	movsx	edi, byte ptr [rcx]
	mov	r14, rcx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbx + rax*2 + 1], 0x20
	jne	.label_132
	inc	r14
	cmp	r14, qword ptr [rbp]
	mov	rcx, r14
	jb	.label_135
	jmp	.label_120
.label_132:
	mov	rcx, r14
.label_120:
	mov	rax, rcx
	sub	rax, r13
	mov	qword ptr [rsp + 0x20], rax
	cmp	rcx, qword ptr [rbp]
	jae	.label_140
	mov	rbx, rcx
	call	__ctype_b_loc
	mov	rcx, rbx
	mov	r14, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_148:
	movsx	edi, byte ptr [rcx]
	mov	rbx, rcx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r14 + rax*2 + 1], 0x20
	je	.label_146
	inc	rbx
	cmp	rbx, qword ptr [rbp]
	mov	rcx, rbx
	jb	.label_148
	jmp	.label_140
.label_146:
	mov	rcx, rbx
.label_140:
	mov	rdx, qword ptr [rsp + 0x30]
.label_101:
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x18], r13
	mov	r14, qword ptr [rdx]
	mov	rbp, qword ptr [r15 + r12 + 8]
	cmp	r14, rbp
	jae	.label_149
	lea	rax, [r15 + r12 + 8]
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	r13, r14
	cmp	qword ptr [word ptr [rip + context_regex]],  0
	je	.label_107
	mov	rdx, rbp
	sub	rdx, r13
	mov	edi, OFFSET FLAT:label_114
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:context_regs
	mov	rsi, r13
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	mov	r14, rbp
	je	.label_121
	test	rax, rax
	je	.label_126
	cmp	rax, -2
	je	.label_127
	mov	rax,  qword ptr [word ptr [rip + label_129]]
	mov	r14, qword ptr [rax]
	add	r14, r13
	jmp	.label_121
	nop	word ptr cs:[rax + rax]
.label_107:
	mov	r14, rbp
.label_121:
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	r12, rbp
	cmp	r12, r13
	jbe	.label_139
	lea	rbp, [r12 - 1]
	movsx	edi, byte ptr [r12 - 1]
	call	to_uchar
	movzx	ebx, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	jne	.label_141
.label_139:
	mov	r15, r13
	jmp	.label_105
.label_96:
	movups	xmm0, xmmword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, r13
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rbx + rdx + 0x10], rcx
	mov	rcx, r12
	sub	rcx, rax
	mov	qword ptr [rbx + rdx + 0x18], rcx
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rbx + rdx + 0x28], eax
	inc	qword ptr [word ptr [rip + number_of_occurs.0]]
	nop	word ptr [rax + rax]
.label_105:
	mov	rbp, r15
	jmp	.label_122
	nop	word ptr cs:[rax + rax]
.label_143:
	inc	rbp
.label_122:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_108
	mov	rdx, r12
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_111
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbp
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_118
	cmp	rax, -2
	je	.label_154
	mov	rax,  qword ptr [word ptr [rip + label_123]]
	mov	rax, qword ptr [rax]
	add	rax, rbp
	mov	rcx,  qword ptr [word ptr [rip + label_124]]
	mov	r15, rbp
	add	r15, qword ptr [rcx]
	mov	rbp, rax
	jmp	.label_125
	nop	
.label_134:
	inc	rbp
.label_108:
	cmp	rbp, r12
	jae	.label_131
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_134
.label_131:
	cmp	rbp, r12
	je	.label_118
	mov	r15, rbp
	jae	.label_143
	nop	
.label_142:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_125
	inc	r15
	cmp	r15, r12
	jb	.label_142
	nop	dword ptr [rax]
.label_125:
	mov	rax, r15
	sub	rax, rbp
	je	.label_143
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax,  qword ptr [word ptr [rip + maximum_word_length]]
	jle	.label_147
	mov	qword ptr [word ptr [rip + maximum_word_length]],  rax
.label_147:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_151
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, rax
	jae	.label_99
.label_104:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rcx
	nop	word ptr cs:[rax + rax]
.label_113:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0xa
	je	.label_145
	inc	rbp
	cmp	rbp, rax
	jb	.label_113
	jmp	.label_115
.label_145:
	inc	qword ptr [word ptr [rip + total_line_count]]
	lea	rax, [rbp + 1]
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rcx]
	mov	rcx, rax
	jae	.label_117
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x28], rax
	mov	rcx, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_136:
	movsx	edi, byte ptr [rcx]
	mov	rbx, rcx
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_116
	inc	rbx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rbx, qword ptr [rax]
	mov	rcx, rbx
	jb	.label_136
	jmp	.label_117
.label_116:
	mov	rcx, rbx
.label_117:
	mov	rax, rcx
	sub	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rcx, rax
	jb	.label_104
	inc	rbp
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_99
.label_115:
	mov	rcx, rbp
.label_99:
	mov	qword ptr [rsp + 0x28], rcx
	cmp	rcx, rax
	ja	.label_105
.label_151:
	cmp	qword ptr [word ptr [rip + ignore_file]],  0
	je	.label_152
	mov	esi, OFFSET FLAT:ignore_table
	lea	rdi, [rsp + 0x38]
	call	search_table
	test	al, al
	jne	.label_105
.label_152:
	cmp	qword ptr [word ptr [rip + only_file]],  0
	je	.label_97
	mov	esi, OFFSET FLAT:only_table
	lea	rdi, [rsp + 0x38]
	call	search_table
	test	al, al
	je	.label_105
.label_97:
	mov	rax,  qword ptr [word ptr [rip + number_of_occurs.0]]
	cmp	rax,  qword ptr [word ptr [rip + occurs_alloc]]
	jne	.label_110
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	esi, OFFSET FLAT:occurs_alloc
	mov	edx, 0x30
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + occurs_table.0]],  rax
.label_110:
	mov	rbx,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	rax,  qword ptr [word ptr [rip + number_of_occurs.0]]
	lea	rdx, [rax + rax*2]
	shl	rdx, 4
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	cmp	eax, 1
	mov	rcx, qword ptr [rsp + 0x28]
	jne	.label_119
	cmp	rcx, qword ptr [rsp + 0x38]
	jae	.label_109
.label_103:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rcx
.label_137:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0xa
	je	.label_130
	inc	rbp
	cmp	rbp, rax
	jb	.label_137
	jmp	.label_98
.label_130:
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rbx
	inc	qword ptr [word ptr [rip + total_line_count]]
	lea	rax, [rbp + 1]
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rcx]
	mov	rcx, rax
	jae	.label_100
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x28], rax
	mov	rcx, qword ptr [rsp + 0x18]
.label_153:
	movsx	edi, byte ptr [rcx]
	mov	rbx, rcx
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_150
	inc	rbx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rbx, qword ptr [rax]
	mov	rcx, rbx
	jb	.label_153
	jmp	.label_100
.label_150:
	mov	rcx, rbx
.label_100:
	cmp	rcx, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 8]
	jb	.label_103
	inc	rbp
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_109
.label_119:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_112
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rbx + rdx + 0x20], rax
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax,  qword ptr [word ptr [rip + reference_max_width]]
	jle	.label_112
	mov	qword ptr [word ptr [rip + reference_max_width]],  rax
	jmp	.label_112
.label_98:
	mov	rcx, rbp
.label_109:
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	mov	qword ptr [rbx + rdx + 0x20], rax
.label_112:
	lea	rsi, [rbx + rdx]
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_128
	cmp	qword ptr [rsp + 0x18], r13
	jne	.label_128
	cmp	r13, r12
	jae	.label_133
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x28], rcx
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
.label_144:
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_138
	inc	r13
	cmp	r13, r12
	jb	.label_144
	jmp	.label_138
.label_128:
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_96
.label_133:
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x28], rcx
.label_138:
	cmp	r13, r12
	jae	.label_96
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
.label_102:
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_96
	inc	r13
	cmp	r13, r12
	jb	.label_102
	jmp	.label_96
	nop	
.label_118:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax]
	cmp	r14, rbp
	jb	.label_106
.label_149:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_154:
	call	matcher_error
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + context_regex]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_127:
	call	matcher_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl sort_found_occurs
	.type sort_found_occurs, @function
sort_found_occurs:
	mov	rsi,  qword ptr [word ptr [rip + number_of_occurs.0]]
	test	rsi, rsi
	je	.label_155
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	jmp	qsort
.label_155:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl fix_output_parameters
	.type fix_output_parameters, @function
fix_output_parameters:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x20
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_166
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	je	.label_159
	lea	r14, [rsp]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	rax,  qword ptr [word ptr [rip + file_line_count]]
	mov	r8, qword ptr [rax + rbx*8]
	inc	r8
	test	rbx, rbx
	je	.label_174
	sub	r8, qword ptr [rax + rbx*8 - 8]
.label_174:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:.str.69
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	movsxd	r15, eax
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rdi, qword ptr [rax + rbx*8]
	test	rdi, rdi
	je	.label_169
	call	strlen
	add	r15, rax
.label_169:
	cmp	r15,  qword ptr [word ptr [rip + reference_max_width]]
	jle	.label_177
	mov	qword ptr [word ptr [rip + reference_max_width]],  r15
.label_177:
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	cmp	rbx, rax
	jb	.label_160
.label_159:
	mov	rdi,  qword ptr [word ptr [rip + reference_max_width]]
	lea	rax, [rdi + 1]
	mov	qword ptr [word ptr [rip + reference_max_width]],  rax
	add	rdi, 2
	call	xmalloc
	mov	qword ptr [word ptr [rip + reference]],  rax
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_176
.label_166:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_156
.label_176:
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	and	al, 1
	je	.label_165
.label_156:
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	jmp	.label_168
.label_165:
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	add	rcx,  qword ptr [word ptr [rip + reference_max_width]]
	sub	rax, rcx
	mov	qword ptr [word ptr [rip + line_width]],  rax
.label_168:
	test	rax, rax
	jns	.label_157
	mov	qword ptr [word ptr [rip + line_width]],  0
.label_157:
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	qword ptr [word ptr [rip + half_line_width]],  rcx
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rcx
	sub	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	qword ptr [word ptr [rip + before_max_width]],  rcx
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	test	rdi, rdi
	je	.label_164
	cmp	byte ptr [rdi], 0
	je	.label_164
	call	strlen
	mov	qword ptr [word ptr [rip + truncation_string_length]],  rax
	jmp	.label_167
.label_164:
	mov	qword ptr [word ptr [rip + truncation_string]],  0
.label_167:
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	cl, 1
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	add	rax, rax
	test	cl, cl
	je	.label_175
	or	rax, 1
	jmp	.label_158
.label_175:
	mov	rcx,  qword ptr [word ptr [rip + before_max_width]]
	xor	edx, edx
	sub	rcx, rax
	cmovns	rdx, rcx
	mov	qword ptr [word ptr [rip + before_max_width]],  rdx
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	add	rax, rax
.label_158:
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_161:
	movzx	edx, word ptr [rax + rcx*2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [byte ptr [rcx + edited_flag]],  dl
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_161
	mov	byte ptr [byte ptr [rip + label_171]],  1
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 3
	je	.label_172
	cmp	eax, 2
	jne	.label_163
	mov	byte ptr [byte ptr [rip + label_162]],  1
	jmp	.label_163
.label_172:
	mov	al, 0x24
	mov	rbx, -8
	nop	word ptr cs:[rax + rax]
.label_170:
	movsx	edi, al
	call	to_uchar
	movzx	eax, al
	mov	byte ptr [byte ptr [rax + edited_flag]],  1
	mov	al,  byte ptr [byte ptr [rbx + .str.71]]
	inc	rbx
	jne	.label_170
	mov	rax, -0x80
	nop	word ptr cs:[rax + rax]
.label_173:
	cmp	byte ptr [byte ptr [rax + .str_2]],  0
	setne	byte ptr [byte ptr [rax + tail]]
	inc	rax
	jne	.label_173
.label_163:
	add	rsp, 0x20
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl generate_all_output
	.type generate_all_output, @function
generate_all_output:
	push	r14
	push	rbx
	push	rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	movups	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	cmp	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	jle	.label_180
	mov	r14,  qword ptr [word ptr [rip + occurs_table.0]]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_182:
	mov	rdi, r14
	call	define_all_fields
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 2
	jb	.label_181
	je	.label_178
	cmp	eax, 3
	jne	.label_179
	call	output_one_tex_line
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_181:
	call	output_one_dumb_line
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_178:
	call	output_one_roff_line
	nop	word ptr cs:[rax + rax]
.label_179:
	add	r14, 0x30
	inc	rbx
	cmp	rbx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	jl	.label_182
.label_180:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036f0

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 8], xmm0
	mov	qword ptr [rdi + 0x28], rax
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	xor	ecx, ecx
	and	al, 1
	mov	eax, OFFSET FLAT:folded_chars
	cmovne	rcx, rax
	mov	qword ptr [rdi + 0x30], rcx
	lea	rbx, [rdi + 8]
	mov	rdi, r15
	call	strlen
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, rbx
	call	rpl_re_compile_pattern
	mov	r14, rax
	test	r14, r14
	jne	.label_183
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	rpl_re_compile_fastmap
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403790

	.globl compare_words
	.type compare_words, @function
compare_words:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi + 8]
	mov	r12, qword ptr [rsi + 8]
	cmp	rax, r12
	cmovle	r12, rax
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	je	.label_187
	test	r12, r12
	jle	.label_184
	mov	rax, qword ptr [rsp + 8]
	mov	r13, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rax]
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_186:
	movsx	edi, byte ptr [r13 + r14]
	call	to_uchar
	movzx	eax, al
	movzx	ebp,  byte ptr [byte ptr [rax + folded_chars]]
	movsx	edi, byte ptr [rbx + r14]
	call	to_uchar
	movzx	eax, al
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	sub	ebp, eax
	jne	.label_188
	inc	r14
	cmp	r14, r12
	jl	.label_186
	jmp	.label_184
.label_187:
	test	r12, r12
	jle	.label_184
	mov	rax, qword ptr [rsp + 8]
	mov	r14, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rax]
	xor	r15d, r15d
	nop	
.label_185:
	movsx	edi, byte ptr [r14 + r15]
	call	to_uchar
	mov	bl, al
	movsx	edi, byte ptr [r13 + r15]
	call	to_uchar
	movzx	ebp, bl
	movzx	eax, al
	sub	ebp, eax
	jne	.label_188
	inc	r15
	cmp	r15, r12
	jl	.label_185
.label_184:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, qword ptr [rcx + 8]
	setg	al
	movzx	eax, al
	mov	ebp, 0xffffffff
	cmovge	ebp, eax
.label_188:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403890

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038c0

	.globl search_table
	.type search_table, @function
search_table:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [rsi + 0x10]
	test	rbx, rbx
	jle	.label_189
	mov	r15, qword ptr [rsi]
	xor	r12d, r12d
.label_190:
	mov	r13, rbx
	dec	r13
	nop	word ptr cs:[rax + rax]
.label_191:
	lea	rax, [r12 + r13]
	mov	rbx, rax
	shr	rbx, 0x3f
	add	rbx, rax
	sar	rbx, 1
	mov	rsi, rbx
	shl	rsi, 4
	add	rsi, r15
	mov	rdi, r14
	call	compare_words
	test	eax, eax
	js	.label_193
	mov	al, 1
	jle	.label_192
	cmp	rbx, r13
	lea	r12, [rbx + 1]
	jl	.label_191
	jmp	.label_189
	nop	word ptr cs:[rax + rax]
.label_193:
	xor	eax, eax
	cmp	r12, rbx
	jl	.label_190
	jmp	.label_192
.label_189:
	xor	eax, eax
.label_192:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	call	compare_words
	test	eax, eax
	jne	.label_194
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [r14]
	mov	eax, 0xffffffff
	cmp	rcx, rdx
	jb	.label_194
	cmp	rdx, rcx
	sbb	eax, eax
	and	eax, 1
.label_194:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403990

	.globl define_all_fields
	.type define_all_fields, @function
define_all_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdi
	mov	r12, qword ptr [r15]
	mov	qword ptr [word ptr [rip + keyafter]],  r12
	mov	rax, qword ptr [r15 + 8]
	lea	rbx, [r12 + rax]
	mov	qword ptr [word ptr [rip + label_202]],  rbx
	mov	rcx, qword ptr [r15 + 0x10]
	add	rcx, r12
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [r15 + 0x18]
	add	r12, rcx
	movsxd	rdx, dword ptr [r15 + 0x28]
	mov	rsi,  qword ptr [word ptr [rip + text_buffers]]
	shl	rdx, 4
	mov	rdi, qword ptr [rsi + rdx]
	mov	qword ptr [rsp + 0x10], rdi
	mov	r13, qword ptr [rsi + rdx + 8]
	cmp	rax, rcx
	jge	.label_195
	mov	ebp, 1
	nop	word ptr [rax + rax]
.label_243:
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	add	rax,  qword ptr [word ptr [rip + keyafter_max_width]]
	cmp	rbx, rax
	ja	.label_195
	mov	qword ptr [word ptr [rip + label_202]],  rbx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_206
	mov	rdx, r12
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_111
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_219
	cmp	rax, -1
	cmove	rax, rbp
	add	rbx, rax
	jmp	.label_204
	nop	word ptr [rax + rax]
.label_206:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	jne	.label_231
	inc	rbx
	jmp	.label_204
	nop	dword ptr [rax]
.label_238:
	inc	rbx
.label_231:
	cmp	rbx, r12
	jae	.label_204
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	jne	.label_238
	nop	dword ptr [rax]
.label_204:
	cmp	rbx, r12
	jb	.label_243
.label_195:
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	add	rax,  qword ptr [word ptr [rip + keyafter_max_width]]
	cmp	rbx, rax
	ja	.label_246
	mov	qword ptr [word ptr [rip + label_202]],  rbx
.label_246:
	mov	rbx,  qword ptr [word ptr [rip + label_202]]
	cmp	rbx, r12
	sbb	al, al
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	cl
	and	cl, al
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  cl
	cmp	rbx,  qword ptr [word ptr [rip + keyafter]]
	jbe	.label_198
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	r14,  qword ptr [word ptr [rip + keyafter]]
	dec	rbx
	nop	dword ptr [rax]
.label_203:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_198
	mov	qword ptr [word ptr [rip + label_202]],  rbx
	cmp	rbx, r14
	lea	rbx, [rbx - 1]
	ja	.label_203
.label_198:
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	rcx, rax
	neg	rcx
	mov	rdx,  qword ptr [word ptr [rip + maximum_word_length]]
	add	rdx,  qword ptr [word ptr [rip + half_line_width]]
	mov	r15,  qword ptr [word ptr [rip + keyafter]]
	cmp	rdx, rcx
	jge	.label_208
	sub	r15, rdx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_223
	mov	edi, OFFSET FLAT:label_111
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, r15
	call	rpl_re_match
	cmp	rax, -2
	je	.label_219
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	r15, rcx
	jmp	.label_217
.label_208:
	add	r15, rax
.label_217:
	mov	qword ptr [word ptr [rip + before]],  r15
	mov	rbx,  qword ptr [word ptr [rip + keyafter]]
	mov	qword ptr [word ptr [rip + label_224]],  rbx
	cmp	rbx, r15
	jbe	.label_237
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	r14,  qword ptr [word ptr [rip + before]]
	dec	rbx
	nop	dword ptr [rax]
.label_255:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_237
	mov	qword ptr [word ptr [rip + label_224]],  rbx
	cmp	rbx, r14
	lea	rbx, [rbx - 1]
	ja	.label_255
.label_237:
	mov	rbx,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + before_max_width]]
	add	rax, rbx
	mov	rdx,  qword ptr [word ptr [rip + label_224]]
	cmp	rax, rdx
	jae	.label_258
	mov	r14d, 1
	nop	dword ptr [rax]
.label_248:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_201
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_111
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_212
	cmp	rax, -1
	cmove	rax, r14
	add	qword ptr [word ptr [rip + before]],  rax
	jmp	.label_213
	nop	word ptr [rax + rax]
.label_201:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_227
	mov	rbx,  qword ptr [word ptr [rip + before]]
	cmp	rbx,  qword ptr [word ptr [rip + label_224]]
	jae	.label_213
	mov	rbp,  qword ptr [word ptr [rip + label_224]]
	nop	dword ptr [rax + rax]
.label_239:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_213
	inc	rbx
	mov	qword ptr [word ptr [rip + before]],  rbx
	cmp	rbx, rbp
	jb	.label_239
	jmp	.label_213
.label_227:
	inc	rbx
	mov	qword ptr [word ptr [rip + before]],  rbx
	nop	
.label_213:
	mov	rbx,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + before_max_width]]
	add	rax, rbx
	mov	rdx,  qword ptr [word ptr [rip + label_224]]
	cmp	rax, rdx
	jb	.label_248
.label_258:
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	je	.label_254
	nop	dword ptr [rax + rax]
.label_260:
	mov	rbp, rbx
	cmp	rbp, qword ptr [rsp + 0x10]
	jbe	.label_257
	lea	rbx, [rbp - 1]
	movsx	edi, byte ptr [rbp - 1]
	call	to_uchar
	movzx	r14d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x20
	jne	.label_260
.label_257:
	cmp	qword ptr [rsp], rbp
	setb	al
	jmp	.label_200
.label_254:
	xor	eax, eax
.label_200:
	mov	byte ptr [byte ptr [rip + before_truncation]],  al
	mov	rbx,  qword ptr [word ptr [rip + before]]
	cmp	rbx, r13
	jae	.label_205
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
.label_233:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_205
	inc	rbx
	mov	qword ptr [word ptr [rip + before]],  rbx
	cmp	rbx, r13
	jb	.label_233
.label_205:
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	sub	r14,  qword ptr [word ptr [rip + label_224]]
	add	r14,  qword ptr [word ptr [rip + before]]
	sub	r14,  qword ptr [word ptr [rip + gap_size]]
	test	r14, r14
	jle	.label_225
	mov	rbx,  qword ptr [word ptr [rip + label_202]]
	mov	qword ptr [word ptr [rip + tail]],  rbx
	cmp	rbx, r13
	jae	.label_236
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_226:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	mov	rbx,  qword ptr [word ptr [rip + tail]]
	je	.label_245
	inc	rbx
	mov	qword ptr [word ptr [rip + tail]],  rbx
	cmp	rbx, r13
	jb	.label_226
.label_236:
	mov	rbx,  qword ptr [word ptr [rip + tail]]
.label_245:
	mov	qword ptr [word ptr [rip + label_214]],  rbx
	mov	rcx,  qword ptr [word ptr [rip + tail]]
	add	rcx, r14
	cmp	rbx, rcx
	setb	al
	cmp	rbx, r12
	jae	.label_253
	cmp	rbx, rcx
	jae	.label_253
	mov	ebp, 1
	nop	dword ptr [rax]
.label_240:
	mov	qword ptr [word ptr [rip + label_214]],  rbx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_261
	mov	rdx, r12
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_111
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_212
	cmp	rax, -1
	cmove	rax, rbp
	add	rbx, rax
	jmp	.label_216
.label_261:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	jne	.label_222
	inc	rbx
	jmp	.label_216
	nop	dword ptr [rax]
.label_235:
	inc	rbx
.label_222:
	cmp	rbx, r12
	jae	.label_216
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	jne	.label_235
	nop	dword ptr [rax]
.label_216:
	mov	rcx,  qword ptr [word ptr [rip + tail]]
	add	rcx, r14
	cmp	rbx, rcx
	setb	al
	cmp	rbx, r12
	jae	.label_253
	cmp	rbx, rcx
	jb	.label_240
.label_253:
	test	al, al
	je	.label_242
	mov	qword ptr [word ptr [rip + label_214]],  rbx
.label_242:
	mov	rax,  qword ptr [word ptr [rip + label_214]]
	cmp	rax,  qword ptr [word ptr [rip + tail]]
	jbe	.label_250
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	cmp	qword ptr [word ptr [rip + label_214]],  r12
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	al
	and	al, cl
	jmp	.label_228
.label_225:
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	jmp	.label_247
.label_250:
	xor	eax, eax
.label_228:
	mov	byte ptr [byte ptr [rip + tail_truncation]],  al
	mov	rbx,  qword ptr [word ptr [rip + label_214]]
	cmp	rbx,  qword ptr [word ptr [rip + tail]]
	jbe	.label_247
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	r14,  qword ptr [word ptr [rip + tail]]
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_215:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_247
	mov	qword ptr [word ptr [rip + label_214]],  rbx
	cmp	rbx, r14
	lea	rbx, [rbx - 1]
	ja	.label_215
.label_247:
	mov	r13,  qword ptr [word ptr [rip + keyafter_max_width]]
	sub	r13,  qword ptr [word ptr [rip + label_202]]
	add	r13,  qword ptr [word ptr [rip + keyafter]]
	sub	r13,  qword ptr [word ptr [rip + gap_size]]
	test	r13, r13
	jle	.label_259
	mov	rbp,  qword ptr [word ptr [rip + before]]
	mov	qword ptr [word ptr [rip + label_218]],  rbp
	cmp	rbp, qword ptr [rsp + 0x10]
	jbe	.label_230
	call	__ctype_b_loc
	mov	r14, qword ptr [rax]
	dec	rbp
	nop	word ptr [rax + rax]
.label_244:
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r14 + rax*2 + 1], 0x20
	je	.label_230
	mov	qword ptr [word ptr [rip + label_218]],  rbp
	cmp	rbp, qword ptr [rsp + 0x10]
	lea	rbp, [rbp - 1]
	ja	.label_244
.label_230:
	mov	qword ptr [word ptr [rip + head]],  r15
	lea	rax, [r15 + r13]
	mov	rdx,  qword ptr [word ptr [rip + label_218]]
	cmp	rax, rdx
	jae	.label_249
	mov	r14d, 1
	nop	word ptr [rax + rax]
.label_221:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_220
	sub	rdx, r15
	mov	edi, OFFSET FLAT:label_111
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, r15
	call	rpl_re_match
	cmp	rax, -2
	je	.label_212
	cmp	rax, -1
	cmove	rax, r14
	add	qword ptr [word ptr [rip + head]],  rax
	jmp	.label_199
	nop	word ptr [rax + rax]
.label_220:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_256
	mov	rbp,  qword ptr [word ptr [rip + head]]
	cmp	rbp,  qword ptr [word ptr [rip + label_218]]
	jae	.label_199
	mov	rbx,  qword ptr [word ptr [rip + label_218]]
	nop	dword ptr [rax]
.label_229:
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_199
	inc	rbp
	mov	qword ptr [word ptr [rip + head]],  rbp
	cmp	rbp, rbx
	jb	.label_229
	jmp	.label_199
.label_256:
	inc	r15
	mov	qword ptr [word ptr [rip + head]],  r15
.label_199:
	mov	r15,  qword ptr [word ptr [rip + head]]
	lea	rax, [r15 + r13]
	mov	rdx,  qword ptr [word ptr [rip + label_218]]
	cmp	rax, rdx
	jb	.label_221
.label_249:
	cmp	rdx, r15
	jbe	.label_241
	mov	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rax, qword ptr [rsp]
	cmp	rax,  qword ptr [word ptr [rip + head]]
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	al
	and	al, cl
	jmp	.label_251
.label_259:
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_207
.label_241:
	xor	eax, eax
.label_251:
	mov	r15, qword ptr [rsp + 8]
	mov	byte ptr [byte ptr [rip + head_truncation]],  al
	mov	rbx,  qword ptr [word ptr [rip + head]]
	cmp	rbx,  qword ptr [word ptr [rip + label_218]]
	jae	.label_207
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	r14,  qword ptr [word ptr [rip + label_218]]
	nop	word ptr [rax + rax]
.label_252:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_207
	inc	rbx
	mov	qword ptr [word ptr [rip + head]],  rbx
	cmp	rbx, r14
	jb	.label_252
.label_207:
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_210
	movsxd	rax, dword ptr [r15 + 0x28]
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	rcx, qword ptr [rcx + rax*8]
	test	rcx, rcx
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rcx
	mov	rbx, qword ptr [r15 + 0x20]
	inc	rbx
	test	rax, rax
	jle	.label_234
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_234:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	call	stpcpy
	mov	r14, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__sprintf_chk
	cdqe	
	add	rax, r14
	mov	qword ptr [word ptr [rip + label_196]],  rax
	jmp	.label_209
.label_210:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_209
	mov	rbx,  qword ptr [word ptr [rip + keyafter]]
	add	rbx, qword ptr [r15 + 0x20]
	mov	qword ptr [word ptr [rip + reference]],  rbx
	mov	qword ptr [word ptr [rip + label_196]],  rbx
	cmp	rbx, r12
	jae	.label_209
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_197:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_209
	inc	rbx
	mov	qword ptr [word ptr [rip + label_196]],  rbx
	cmp	rbx, r12
	jb	.label_197
.label_209:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_223:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_211
	cmp	r15,  qword ptr [word ptr [rip + keyafter]]
	jae	.label_217
	mov	rbx,  qword ptr [word ptr [rip + keyafter]]
	nop	dword ptr [rax]
.label_232:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_217
	inc	r15
	cmp	r15, rbx
	jb	.label_232
	jmp	.label_217
.label_211:
	inc	r15
	jmp	.label_217
.label_212:
	call	matcher_error
.label_219:
	call	matcher_error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404290

	.globl output_one_dumb_line
	.type output_one_dumb_line, @function
output_one_dumb_line:
	push	rbx
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	and	al, 1
	jne	.label_264
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_196]]
	movzx	ebx,  byte ptr [byte ptr [rip + auto_reference]]
	call	print_field
	and	ebx, 1
	cmp	ebx, 1
	jne	.label_271
	mov	edi, 0x3a
	call	putchar_unlocked
	mov	rax,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rax + rcx - 1]
	jmp	.label_276
.label_271:
	mov	rdi,  qword ptr [word ptr [rip + gap_size]]
	add	rdi,  qword ptr [word ptr [rip + reference_max_width]]
.label_276:
	sub	rdi,  qword ptr [word ptr [rip + label_196]]
	add	rdi,  qword ptr [word ptr [rip + reference]]
	call	print_spaces
.label_264:
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_214]]
	cmp	rdi, rsi
	jae	.label_283
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	je	.label_265
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_265:
	mov	rdi,  qword ptr [word ptr [rip + half_line_width]]
	mov	r10,  qword ptr [word ptr [rip + gap_size]]
	mov	r9,  qword ptr [word ptr [rip + label_224]]
	mov	r8,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	neg	rax
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rcx, rax
	jne	.label_273
	xor	ecx, ecx
.label_273:
	mov	rsi,  qword ptr [word ptr [rip + label_214]]
	mov	rdx,  qword ptr [word ptr [rip + tail]]
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	jne	.label_281
	xor	eax, eax
.label_281:
	sub	rdi, r10
	sub	rdi, r9
	add	rdi, r8
	add	rdi, rcx
	sub	rdi, rsi
	add	rdi, rdx
	add	rdi, rax
	jmp	.label_262
.label_283:
	mov	rdi,  qword ptr [word ptr [rip + half_line_width]]
	mov	rsi,  qword ptr [word ptr [rip + gap_size]]
	mov	rdx,  qword ptr [word ptr [rip + label_224]]
	mov	rax,  qword ptr [word ptr [rip + before]]
	xor	ecx, ecx
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_280
	sub	rcx,  qword ptr [word ptr [rip + truncation_string_length]]
	jmp	.label_274
.label_280:
	xor	ecx, ecx
.label_274:
	sub	rdi, rsi
	sub	rdi, rdx
	add	rdi, rax
	add	rdi, rcx
.label_262:
	call	print_spaces
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_268
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_268:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_224]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	mov	rsi,  qword ptr [word ptr [rip + label_202]]
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_269
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_269:
	mov	rdi,  qword ptr [word ptr [rip + head]]
	sub	rdi,  qword ptr [word ptr [rip + label_218]]
	jae	.label_275
	mov	rsi,  qword ptr [word ptr [rip + half_line_width]]
	mov	rdx,  qword ptr [word ptr [rip + label_202]]
	mov	r8,  qword ptr [word ptr [rip + keyafter]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	neg	rax
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	mov	rcx, rax
	jne	.label_279
	xor	ecx, ecx
.label_279:
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	jne	.label_263
	xor	eax, eax
.label_263:
	add	rdi, rsi
	sub	rdi, rdx
	add	rdi, r8
	add	rdi, rcx
	add	rdi, rax
	call	print_spaces
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	je	.label_266
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_266:
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_218]]
	call	print_field
	jmp	.label_277
.label_275:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_278
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_277
.label_278:
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_277
	mov	rdi,  qword ptr [word ptr [rip + half_line_width]]
	mov	rdx,  qword ptr [word ptr [rip + label_202]]
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	xor	ecx, ecx
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_282
	sub	rcx,  qword ptr [word ptr [rip + truncation_string_length]]
	jmp	.label_267
.label_282:
	xor	ecx, ecx
.label_267:
	sub	rdi, rdx
	add	rdi, rax
	add	rdi, rcx
	call	print_spaces
.label_277:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_270
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_272
.label_270:
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_272
	mov	rdi,  qword ptr [word ptr [rip + gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_196]]
	call	print_field
.label_272:
	mov	edi, 0xa
	pop	rbx
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404590

	.globl output_one_roff_line
	.type output_one_roff_line, @function
output_one_roff_line:
	push	rax
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	xor	eax, eax
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_214]]
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	je	.label_289
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_289:
	mov	edi, 0x22
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_288
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_288:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_224]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	mov	rsi,  qword ptr [word ptr [rip + label_202]]
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_287
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_287:
	mov	edi, 0x22
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	je	.label_285
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_285:
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_218]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_284
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_286
.label_284:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_196]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
.label_286:
	mov	edi, 0xa
	pop	rax
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720

	.globl output_one_tex_line
	.type output_one_tex_line, @function
output_one_tex_line:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.90
	xor	eax, eax
	call	__printf_chk
	mov	edi, 0x7b
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_214]]
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_224]]
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	r15,  qword ptr [word ptr [rip + keyafter]]
	mov	r14,  qword ptr [word ptr [rip + label_202]]
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_294
	mov	rdx, r14
	sub	rdx, r15
	mov	edi, OFFSET FLAT:label_111
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, r15
	call	rpl_re_match
	cmp	rax, -2
	je	.label_290
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, r15
	jmp	.label_292
.label_294:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_296
	cmp	r15,  qword ptr [word ptr [rip + label_202]]
	mov	rbx, r15
	jae	.label_292
	mov	r12,  qword ptr [word ptr [rip + label_202]]
	mov	rbx, r15
	nop	dword ptr [rax]
.label_295:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_292
	inc	rbx
	cmp	rbx, r12
	jb	.label_295
	jmp	.label_292
.label_296:
	lea	rbx, [r15 + 1]
.label_292:
	mov	rdi, r15
	mov	rsi, rbx
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsi, r14
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_218]]
	call	print_field
	mov	edi, 0x7d
	call	putchar_unlocked
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_291
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_293
.label_291:
	mov	edi, 0x7b
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_196]]
	call	print_field
	mov	edi, 0x7d
	call	putchar_unlocked
.label_293:
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	putchar_unlocked
.label_290:
	call	matcher_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0

	.globl print_field
	.type print_field, @function
print_field:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_314
	mov	r12d, OFFSET FLAT:.str.77
	jmp	.label_299
.label_315:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.83
	call	fputs_unlocked
	jmp	.label_298
.label_306:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.85
	call	fputs_unlocked
	jmp	.label_298
.label_312:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.75
	call	fputs_unlocked
	jmp	.label_298
.label_309:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.74
	call	fputs_unlocked
	jmp	.label_298
	nop	word ptr [rax + rax]
.label_299:
	movzx	ebx, byte ptr [r15]
	cmp	byte ptr [byte ptr [rbx + edited_flag]],  0
	je	.label_307
	movsx	eax,  byte ptr [byte ptr [rbx + diacrit_diac]]
	test	eax, eax
	je	.label_300
	cmp	dword ptr [dword ptr [rip + output_format]],  3
	jne	.label_300
	dec	eax
	cmp	eax, 8
	ja	.label_298
	movsx	ecx,  byte ptr [byte ptr [rbx + diacrit_base]]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_305]]
.label_2353:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.76
	jmp	.label_301
	nop	dword ptr [rax + rax]
.label_307:
	movsx	edi, bl
	jmp	.label_297
	nop	dword ptr [rax + rax]
.label_300:
	cmp	ebx, 0x5b
	jg	.label_311
	lea	eax, [rbx - 0x23]
	cmp	eax, 4
	jb	.label_313
	cmp	ebx, 0x22
	jne	.label_304
	mov	edi, 0x22
	call	putchar_unlocked
	mov	edi, 0x22
	jmp	.label_297
.label_311:
	cmp	ebx, 0x7a
	jg	.label_302
	cmp	ebx, 0x5c
	je	.label_303
	cmp	ebx, 0x5f
	jne	.label_304
.label_313:
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	edi, ebx
	jmp	.label_297
.label_302:
	cmp	ebx, 0x7b
	je	.label_308
	cmp	ebx, 0x7d
	jne	.label_304
.label_308:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.86
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	jmp	.label_298
.label_2352:
	cmp	ecx, 0x60
	jg	.label_310
	cmp	ecx, 0x41
	je	.label_312
	cmp	ecx, 0x4f
	jne	.label_304
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.73
	call	fputs_unlocked
	jmp	.label_298
.label_2355:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.79
	jmp	.label_301
.label_2354:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.78
	jmp	.label_301
.label_2356:
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.80
.label_301:
	xor	eax, eax
	call	__printf_chk
	jmp	.label_298
.label_2357:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.81
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_298
.label_2358:
	cmp	ecx, 0x41
	je	.label_315
	cmp	ecx, 0x61
	jne	.label_304
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	jmp	.label_298
.label_2359:
	cmp	ecx, 0x4f
	je	.label_306
	cmp	ecx, 0x6f
	jne	.label_304
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.84
	call	fputs_unlocked
	jmp	.label_298
.label_303:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.87
	call	fputs_unlocked
	jmp	.label_298
.label_310:
	cmp	ecx, 0x61
	je	.label_309
	cmp	ecx, 0x6f
	jne	.label_304
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.72
	call	fputs_unlocked
	jmp	.label_298
.label_304:
	mov	edi, 0x20
	nop	word ptr [rax + rax]
.label_297:
	call	putchar_unlocked
.label_298:
	inc	r15
	cmp	r14, r15
	jne	.label_299
.label_314:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl print_spaces
	.type print_spaces, @function
print_spaces:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jle	.label_316
	inc	rbx
	nop	dword ptr [rax]
.label_317:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	rbx
	cmp	rbx, 1
	jg	.label_317
.label_316:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_319
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_318:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_323
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_321
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_322
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_324
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_323
.label_324:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_323
.label_322:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_323:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_318
	jmp	.label_320
.label_319:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_320:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_321:
	mov	rax, rbp
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
	#Procedure 0x404ce0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_325
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_326
.label_325:
	mov	esi, OFFSET FLAT:.str_3
.label_326:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x404d50

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_328
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_330:
	test	rbp, rbp
	je	.label_327
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_329
.label_327:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_331
	nop	word ptr cs:[rax + rax]
.label_329:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_331:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_330
.label_328:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x404e50

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_332
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_332:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_333
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_334:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_333
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_334
.label_333:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_335
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_337
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_337
.label_335:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_336
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_338
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_336:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_338:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	je	.label_346
	cmp	eax, 1
	je	.label_348
	cmp	eax, 2
	je	.label_350
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_350:
	mov	dword ptr [rsp + 4], r14d
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_344
.label_346:
	mov	dword ptr [rsp + 4], 0
	xor	r15d, r15d
	jmp	.label_347
.label_348:
	mov	dword ptr [rsp + 4], 0
.label_344:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_341
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_340
.label_341:
	test	r14b, r14b
	je	.label_343
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_340
.label_343:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_347
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_340
.label_347:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
.label_340:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_345
	mov	edi, 2
	call	close
.label_345:
	test	r14b, r14b
	je	.label_339
	mov	edi, 1
	call	close
.label_339:
	test	r15b, r15b
	je	.label_342
	xor	edi, edi
	call	close
.label_342:
	test	r13, r13
	jne	.label_349
	mov	dword ptr [rbx], ebp
.label_349:
	mov	rax, r13
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
	#Procedure 0x405140

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_2
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_351
	test	ecx, ecx
	js	.label_352
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_352:
	xor	eax, eax
.label_351:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405180

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_353
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_354
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_354
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_355
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_355:
	mov	rbx, r14
.label_354:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_353:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	cmp	r14, rbx
	je	.label_357
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_356
	mov	rbx, r14
	jmp	.label_357
.label_356:
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	mov	rdi, rbx
	call	strlen
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	mov	r15, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_357:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052b0

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rbp, rdi
	mov	esi, 2
	mov	rdi, rax
	call	trim2
	mov	qword ptr [rsp], rax
	cmp	byte ptr [rbp], 0
	je	.label_370
	lea	r12, [rsp + 0x48]
	lea	r15, [rsp + 8]
	nop	dword ptr [rax]
.label_373:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp]
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_370
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_360
	mov	qword ptr [rsp + 0x58], rbp
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_363
	nop	word ptr [rax + rax]
.label_371:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	al, byte ptr [rsp + 0x68]
	mov	edi, dword ptr [rsp + 0x6c]
	test	al, al
	je	.label_369
	test	edi, edi
	je	.label_362
.label_369:
	mov	rcx, qword ptr [rsp + 0x58]
	add	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rsp + 0x54], 0
	cmp	rcx, rbx
	jb	.label_371
	test	al, al
	je	.label_363
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_363:
	mov	qword ptr [rsp + 0x58], rbx
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	jmp	.label_358
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
.label_358:
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_372
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_361
.label_372:
	mov	rdi, r12
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_359
	mov	eax, dword ptr [rsp + 0x6c]
	test	eax, eax
	jne	.label_359
	jmp	.label_362
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_366
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_366:
	mov	rdi, qword ptr [rsp]
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_364
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_364:
	mov	bpl, 1
	test	r14b, r13b
	jne	.label_368
	cmp	byte ptr [rbx], 0
	je	.label_370
	inc	rbx
	jmp	.label_375
	nop	dword ptr [rax + rax]
.label_361:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	edi, dword ptr [rsp + 0x6c]
	test	edi, edi
	sete	cl
	mov	al, byte ptr [rsp + 0x68]
	cmp	al, 0
	setne	dl
	cmp	al, 0
	mov	bpl, 1
	mov	al, 1
	je	.label_365
	and	dl, cl
	mov	al, 1
	jne	.label_365
	call	iswalnum
	test	eax, eax
	sete	al
.label_365:
	test	r13b, r13b
	je	.label_367
	test	al, al
	jne	.label_368
.label_367:
	mov	qword ptr [rsp + 0x58], rbx
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_374
	mov	eax, dword ptr [rsp + 0x6c]
	test	eax, eax
	je	.label_370
.label_374:
	add	rbx, qword ptr [rsp + 0x60]
.label_375:
	mov	rbp, rbx
	cmp	byte ptr [rbp], 0
	jne	.label_373
.label_370:
	xor	ebp, ebp
.label_368:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bpl
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_362:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405530

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_376
	mov	qword ptr [rsp + 8], rbx
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r13
	mov	rdx, r14
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_388
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_389
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_377
.label_376:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_380
.label_388:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r13d, r13d
	jmp	.label_377
.label_389:
	mov	qword ptr [rsp + 0x10], r13
.label_377:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 8]
.label_380:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_385
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_387
	test	r15, r15
	je	.label_384
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_387
.label_384:
	test	r13, r13
	je	.label_378
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_378
.label_387:
	test	rbp, rbp
	je	.label_379
	mov	rdi, rbp
	call	free
.label_379:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_381
	call	free
	jmp	.label_381
.label_385:
	test	rbp, rbp
	je	.label_382
	cmp	rbp, r14
	je	.label_382
	mov	rdi, rbp
	call	free
.label_382:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_383
	cmp	rdi, r14
	je	.label_383
	call	free
.label_383:
	mov	rbx, r14
	jmp	.label_381
.label_378:
	mov	rdi, rbx
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
	test	rbp, rbp
	je	.label_386
	mov	rdi, rbp
	call	free
.label_386:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_381
	call	free
.label_381:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405760
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
	#Procedure 0x4057a0
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
	#Procedure 0x4057b0
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
	#Procedure 0x4057c0

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
	#Procedure 0x405800
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
	#Procedure 0x405820

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_390
	test	rdx, rdx
	je	.label_390
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_390:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850
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
	.align	32
	#Procedure 0x4058d0

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
.label_482:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_462
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_496]]
.label_2161:
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
.label_2162:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_403
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_403
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_423:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_409
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_409:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_423
.label_403:
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
	jmp	.label_434
.label_2154:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_434
.label_2157:
	mov	al, 1
.label_2155:
	mov	r15b, 1
.label_2158:
	test	r15b, 1
	mov	cl, 1
	je	.label_457
	mov	cl, al
.label_457:
	mov	al, cl
.label_2156:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_493
	test	r10, r10
	je	.label_463
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_464
.label_493:
	xor	ecx, ecx
	jmp	.label_464
.label_2159:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_469
	test	r10, r10
	je	.label_452
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_476
.label_2160:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_434
.label_463:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_464:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_434
.label_469:
	xor	eax, eax
	jmp	.label_476
.label_452:
	mov	eax, 1
.label_476:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_434:
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
	jmp	.label_448
	nop	dword ptr [rax + rax]
.label_480:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_448:
	cmp	rbp, -1
	je	.label_437
	cmp	rsi, rbp
	jne	.label_439
	jmp	.label_404
	nop	dword ptr [rax]
.label_437:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_404
.label_439:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_446
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_392
	cmp	rbp, -1
	jne	.label_392
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
.label_392:
	cmp	rbx, rbp
	jbe	.label_445
.label_446:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_486:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_477
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_479]]
.label_2261:
	test	rsi, rsi
	jne	.label_430
	jmp	.label_450
	nop	word ptr cs:[rax + rax]
.label_445:
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
	jne	.label_501
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_486
	jmp	.label_411
.label_501:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_486
.label_2265:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_397
	test	rsi, rsi
	jne	.label_402
	cmp	rbp, 1
	je	.label_450
	xor	r15d, r15d
	jmp	.label_401
.label_2254:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_407
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_411
	cmp	edi, 2
	jne	.label_417
	mov	al, r11b
	and	al, 1
	jne	.label_422
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_425
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_425:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_467
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_467:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_438
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_438:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_424
.label_2255:
	mov	bl, 0x62
	jmp	.label_460
.label_2256:
	mov	cl, 0x74
	jmp	.label_455
.label_2257:
	mov	bl, 0x76
	jmp	.label_460
.label_2258:
	mov	bl, 0x66
	jmp	.label_460
.label_2259:
	mov	cl, 0x72
	jmp	.label_455
.label_2262:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_506
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_461
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
	jae	.label_471
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_471:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_485
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_485:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_491
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_491:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_499
.label_2263:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_504
	cmp	r14d, 2
	jne	.label_505
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_461
.label_505:
	mov	rdi, r14
	jmp	.label_430
.label_2264:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_509
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_461
	mov	rdi, r14
	jmp	.label_510
.label_477:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_512
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
.label_419:
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
	ja	.label_413
	test	dl, dl
	je	.label_413
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_401
.label_397:
	test	rsi, rsi
	jne	.label_435
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_435
.label_450:
	mov	dl, 1
.label_2260:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_411
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_401
.label_407:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_430
	mov	r14, rdi
	inc	rsi
	jmp	.label_448
.label_506:
	mov	rdi, r14
.label_499:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_401
.label_509:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_455
.label_510:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_408
.label_455:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_411
.label_460:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_401
	jmp	.label_473
.label_512:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_475
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_475:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_415:
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
	je	.label_495
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_500
	cmp	rbp, -2
	je	.label_507
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_508
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_399:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_391
	bt	rsi, rdx
	jb	.label_396
.label_391:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_399
.label_508:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_393
	xor	r15d, r15d
.label_393:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_415
	jmp	.label_419
.label_435:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_401
.label_504:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_430
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_430
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_430
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_440
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_443
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_411
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_453
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_453:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_406
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_406:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_470
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_470:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_426
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_426:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_401
.label_430:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_401:
	test	r12b, r12b
	je	.label_410
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_488
	jmp	.label_490
	nop	word ptr cs:[rax + rax]
.label_410:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_490
.label_488:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_497
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_408
	jmp	.label_473
	nop	word ptr cs:[rax + rax]
.label_490:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_473
	jmp	.label_408
.label_497:
	mov	bl, r13b
	mov	rsi, r14
.label_473:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_411
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_395
	mov	al, r11b
	and	al, 1
	jne	.label_395
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_400
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_400:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_478
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_478:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_418
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_418:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_395:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_431
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_431:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_436
.label_402:
	xor	r15d, r15d
	jmp	.label_401
.label_413:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_442
	nop	word ptr cs:[rax + rax]
.label_444:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_442:
	test	dl, dl
	je	.label_454
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_456
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_468
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_468:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_456
	nop	word ptr [rax + rax]
.label_454:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_461
	cmp	r14d, 2
	jne	.label_428
	mov	al, r11b
	and	al, 1
	jne	.label_428
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_483
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_483:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_487
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_487:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_492
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_492:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_428:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_447
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_447:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_449
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_449:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_511
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_511:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_456:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_408
	test	r11b, 1
	je	.label_414
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_416
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_421
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_421:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_451
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_451:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_416
	nop	word ptr cs:[rax + rax]
.label_414:
	mov	r14, rdi
.label_416:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_444
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_444
.label_408:
	test	r11b, 1
	je	.label_459
	and	al, 1
	jne	.label_459
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_441
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_441:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_466
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_466:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_436
	nop	dword ptr [rax + rax]
.label_459:
	mov	bl, r13b
	mov	r14, rdi
.label_436:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_480
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_480
.label_417:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_424
.label_422:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_424:
	cmp	rcx, r10
	jae	.label_489
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_489:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_494
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_502
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_503
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_427
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_427:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_481
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_481:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_401
.label_494:
	xor	r15d, r15d
	jmp	.label_401
.label_502:
	xor	r15d, r15d
	jmp	.label_401
.label_503:
	xor	r15d, r15d
	jmp	.label_401
.label_495:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_405
.label_500:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_412
.label_507:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_420
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_432:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_429
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_432
	xor	r15d, r15d
	jmp	.label_405
.label_420:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_412:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_405:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_419
.label_429:
	xor	r15d, r15d
	jmp	.label_405
.label_440:
	xor	r15d, r15d
	jmp	.label_401
.label_443:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_401
	nop	dword ptr [rax + rax]
.label_404:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_458
	or	dl, al
	je	.label_461
.label_458:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_472
	or	dl, al
	jne	.label_472
	test	r8b, 1
	jne	.label_474
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_472
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_482
.label_472:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_484
	test	cl, cl
	jne	.label_484
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_484
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_498:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_465
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_465:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_498
.label_484:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_398
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_398
.label_411:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_394:
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
.label_433:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_398:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_396:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_394
.label_461:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_394
.label_474:
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
	jmp	.label_433
.label_462:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ae0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406af0

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
	je	.label_513
	mov	qword ptr [rax], rbx
.label_513:
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
	#Procedure 0x406bf0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_514
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_517:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_517
.label_514:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_518
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_515]], OFFSET FLAT:slot0
.label_518:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_516
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_516:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ca0

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
	js	.label_519
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_522
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_525
.label_522:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_521
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
	jne	.label_520
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_520:
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
.label_525:
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
	ja	.label_524
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_523
	mov	rdi, rbx
	call	free
.label_523:
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
.label_524:
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
.label_519:
	call	abort
.label_521:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e80
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e90
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
	.align	32
	#Procedure 0x406ea0

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
	.align	32
	#Procedure 0x406ee0

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
	je	.label_526
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
.label_526:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f40

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
	.align	32
	#Procedure 0x406f80
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
	.align	32
	#Procedure 0x406fa0
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
	.align	32
	#Procedure 0x406fc0

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
	mov	rcx,  qword ptr [word ptr [rip + label_527]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_528]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_529]]
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
	.align	32
	#Procedure 0x407030

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407040

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407050
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407060

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
	.align	32
	#Procedure 0x4070b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070c0

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
	mov	rax,  qword ptr [word ptr [rip + label_527]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_528]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_529]]
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
	.align	32
	#Procedure 0x407130
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
	.align	32
	#Procedure 0x407150
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
	.align	32
	#Procedure 0x407170

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407180
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
	.align	32
	#Procedure 0x407190

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4071a0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071b0

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
	jne	.label_531
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
	je	.label_530
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_531
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_531
.label_530:
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
	je	.label_532
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_531
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_531
.label_532:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_531:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407290

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
	je	.label_534
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_535
	jmp	.label_533
.label_534:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_533
.label_535:
	mov	eax, 1
	test	bpl, bpl
	je	.label_533
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
.label_533:
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
	#Procedure 0x407320

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
	je	.label_537
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_536
	jmp	.label_538
.label_537:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_538
.label_536:
	mov	eax, 1
	test	bpl, bpl
	je	.label_538
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
.label_538:
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
	.align	32
	#Procedure 0x4073b0

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
	je	.label_539
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_541
	jmp	.label_540
.label_539:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_540
.label_541:
	mov	eax, 1
	test	bpl, bpl
	je	.label_540
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
.label_540:
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
	.align	32
	#Procedure 0x407430

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
	je	.label_544
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_543
	jmp	.label_542
.label_544:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_542
.label_543:
	mov	eax, 1
	test	bpl, bpl
	je	.label_542
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
.label_542:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4074a0

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
	je	.label_547
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_545
	jmp	.label_546
.label_547:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_546
.label_545:
	mov	eax, 1
	test	bpl, bpl
	je	.label_546
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_546:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407510

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
	je	.label_549
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_550
	jmp	.label_548
.label_549:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_548
.label_550:
	mov	eax, 1
	test	bpl, bpl
	je	.label_548
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_548:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407560

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
	je	.label_553
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_552
	jmp	.label_551
.label_553:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_551
.label_552:
	mov	eax, 1
	test	bpl, bpl
	je	.label_551
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_551:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075b0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_555
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_556
	jmp	.label_554
.label_555:
	mov	eax, 1
	test	cl, cl
	je	.label_554
.label_556:
	xor	eax, eax
.label_554:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075e0

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	r15, rdi
	call	fileno
	lea	rsi, [rsp + 8]
	mov	edi, eax
	call	__fstat
	mov	ebx, 0x2000
	test	eax, eax
	js	.label_559
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebx, 0x2000
	cmp	eax, 0x8000
	jne	.label_559
	mov	rdi, r15
	call	ftello
	mov	ebx, 0x2000
	test	rax, rax
	js	.label_559
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebx, 0x2000
	sub	rcx, rax
	jle	.label_559
	cmp	rcx, -1
	je	.label_557
	inc	rcx
	mov	rbx, rcx
.label_559:
	mov	rdi, rbx
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_563
	mov	qword ptr [rsp], rbp
	mov	r14, -1
	nop	word ptr cs:[rax + rax]
.label_560:
	mov	r13, rax
	mov	rbp, rbx
	sub	rbp, r12
	lea	rdi, [r13 + r12]
	mov	esi, 1
	mov	rdx, rbp
	mov	rcx, r15
	call	fread
	add	r12, rax
	cmp	rax, rbp
	jne	.label_562
	mov	ebp, 0xc
	cmp	rbx, -1
	je	.label_564
	mov	rbp, rbx
	shr	rbp, 1
	mov	rax, rbp
	not	rax
	add	rbp, rbx
	cmp	rbx, rax
	cmovae	rbp, r14
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	mov	rbx, rbp
	jne	.label_560
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_564
.label_562:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	je	.label_565
.label_564:
	mov	rdi, r13
	call	free
	call	__errno_location
	mov	dword ptr [rax], ebp
.label_558:
	xor	r12d, r12d
.label_563:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_565:
	dec	rbx
	cmp	r12, rbx
	jae	.label_561
	lea	rsi, [r12 + 1]
	mov	rdi, r13
	call	realloc
	test	rax, rax
	cmovne	r13, rax
.label_561:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r13 + r12], 0
	mov	qword ptr [rax], r12
	mov	r12, r13
	jmp	.label_563
.label_557:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_558
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407760

	.globl read_file
	.type read_file, @function
read_file:
	mov	edx, OFFSET FLAT:.str_7
	jmp	internal_read_file
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407770

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rsi, rdx
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_566
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_566
	test	r15, r15
	je	.label_567
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_567:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_566:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077e0
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	mov	edx, OFFSET FLAT:.str.1_3
	jmp	internal_read_file
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077f0

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	test	r12, r12
	je	.label_568
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_570
	test	r14d, r14d
	je	.label_573
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	add	rax, r12
	mov	qword ptr [rsp + 8], rax
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 8]
	jae	.label_577
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_569:
	mov	rdi, rbp
	call	mbiter_multi_next
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_577
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	test	eax, eax
	je	.label_577
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_569
.label_577:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_580
.label_573:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	mov	rcx, r12
	add	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 8]
	jae	.label_580
	xor	ebp, ebp
	lea	r15, [rsp + 8]
	nop	
.label_581:
	mov	rdi, r15
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_571
	test	ebp, ebp
	jne	.label_572
	mov	ebp, 1
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_575
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	test	eax, eax
	je	.label_579
	xor	ebp, ebp
	jmp	.label_575
	nop	word ptr cs:[rax + rax]
.label_571:
	mov	ebp, 1
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_575
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	test	eax, eax
	je	.label_575
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_578
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	test	eax, eax
	je	.label_578
	mov	ebp, 2
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_575
	nop	dword ptr [rax]
.label_572:
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_578
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_575
	jmp	.label_578
.label_579:
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_575
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	test	eax, eax
	je	.label_575
	nop	
.label_578:
	mov	ebp, 1
.label_575:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_581
	cmp	ebp, 2
	jne	.label_580
	mov	byte ptr [r14], 0
	jmp	.label_580
.label_570:
	test	r14d, r14d
	je	.label_582
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_574
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_576:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_574
	mov	bl, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_576
.label_574:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_580
.label_582:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_580
	call	__ctype_b_loc
	nop	dword ptr [rax + rax]
.label_583:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_580
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_583
.label_580:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_568:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407aa0

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
	je	.label_588
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_587
.label_588:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_587:
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
	ja	.label_593
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_584]]
.label_2205:
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
.label_593:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_592
.label_2206:
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
.label_2207:
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
.label_2208:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_591
.label_2209:
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
	jmp	.label_589
.label_2210:
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
	jmp	.label_586
.label_2211:
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
.label_586:
	mov	qword ptr [rsp + 0x10], rdi
.label_589:
	mov	qword ptr [rsp + 8], rsi
.label_591:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_590
.label_2213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_592:
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
	jmp	.label_585
.label_2212:
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
.label_585:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_590:
	call	__fprintf_chk
.label_2204:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_594:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_594
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_596:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_595
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_597
	nop	dword ptr [rax]
.label_595:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_597:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_598
	inc	r9
	cmp	r9, 0xa
	jb	.label_596
.label_598:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_599
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_599:
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
	.align	32
	#Procedure 0x407eb0
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
	mov	ecx, OFFSET FLAT:.str.18
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
	#Procedure 0x407f30

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_600
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_600:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_601
	test	rax, rax
	je	.label_602
.label_601:
	pop	rbx
	ret	
.label_602:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_603
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_603:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fb0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_604
	test	rbx, rbx
	jne	.label_604
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_604:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_606
	test	rax, rax
	je	.label_605
.label_606:
	pop	rbx
	ret	
.label_605:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407fe0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_607
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_610
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_608
.label_607:
	test	rcx, rcx
	jne	.label_611
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_611:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_609
.label_608:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_610:
	call	xalloc_die
.label_609:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408060

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408070
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408080
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
	.align	32
	#Procedure 0x4080b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_612
	call	rpl_calloc
	test	rax, rax
	je	.label_612
	pop	rcx
	ret	
.label_612:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080e0

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
	.align	32
	#Procedure 0x408110
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
	.align	32
	#Procedure 0x408130

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
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
	#Procedure 0x408160
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_614
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_613
.label_614:
	mov	eax, ebx
	pop	rbx
	ret	
.label_613:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408180
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_616
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_615
.label_616:
	mov	rax, rbx
	pop	rbx
	ret	
.label_615:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081b0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_618
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_617
.label_618:
	mov	rax, rbx
	pop	rbx
	ret	
.label_617:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4081e0

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
	jae	.label_635
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
	je	.label_628
	mov	eax, dword ptr [rbx]
	xor	r12d, r12d
	test	eax, eax
	je	.label_629
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_620
	mov	r12d, 1
.label_629:
	test	r15, r15
	jne	.label_634
	jmp	.label_626
.label_628:
	mov	r12d, 4
	test	r15, r15
	je	.label_620
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_620
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_620
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_634:
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_626
	mov	rdi, r15
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_625
	mov	esi, 0x400
	mov	ebp, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_621
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_621
	mov	esi, 0x30
	mov	rdi, r15
	call	strchr
	mov	ebp, 1
	test	rax, rax
	je	.label_637
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebp, 1
	cmp	ecx, 0x42
	je	.label_639
	cmp	ecx, 0x44
	je	.label_639
	cmp	ecx, 0x69
	jne	.label_622
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	mov	esi, 0x400
	je	.label_621
	mov	ebp, 1
	jmp	.label_621
.label_637:
	mov	esi, 0x400
	jmp	.label_621
.label_639:
	mov	esi, 0x3e8
	mov	ebp, 2
	jmp	.label_621
.label_622:
	mov	esi, 0x400
.label_621:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_630
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_631
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_632]]
.label_2291:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_627
.label_630:
	cmp	eax, 0x73
	jg	.label_636
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_638
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_619]]
.label_2249:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_627
.label_631:
	cmp	eax, 0x54
	je	.label_623
	cmp	eax, 0x59
	jne	.label_625
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_624
.label_636:
	cmp	eax, 0x74
	je	.label_623
	cmp	eax, 0x77
	jne	.label_625
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_627:
	call	bkm_scale
	jmp	.label_624
.label_2250:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_624
.label_2251:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_624
.label_2252:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_624
.label_623:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_624
.label_638:
	cmp	eax, 0x5a
	jne	.label_625
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_624
.label_625:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_620
.label_2292:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_624
.label_2293:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_624:
	or	eax, r12d
	mov	rcx, qword ptr [r13]
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	cmp	byte ptr [rcx + rbp], 0
	je	.label_633
	or	eax, 2
.label_633:
	mov	r12d, eax
.label_626:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_620:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_635:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0

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
	jge	.label_640
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_640:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_641
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_641:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408500

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
	je	.label_642
	nop	word ptr cs:[rax + rax]
.label_643:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_643
.label_642:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408540

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_644
	test	rsi, rsi
	mov	ecx, 1
	je	.label_645
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_645
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_644:
	mov	ecx, 1
.label_645:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408590

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_646
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_648
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_646
.label_648:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_646
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_647
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_647:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_646:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408610

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_649
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_649
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_649:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408640

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_650
	ret	
.label_650:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408660

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_651
	test	rbx, rbx
	je	.label_651
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_651
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_651
	mov	edi, OFFSET FLAT:.str_2
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_652
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_651
.label_652:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_651:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408710

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
	jne	.label_653
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_653
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_654
.label_653:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_654:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_655
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_655:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408780

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
	je	.label_656
	cmp	r15, -2
	jb	.label_656
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_656
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_656:
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
	#Procedure 0x4087e0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_657
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_657:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408840

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	dword ptr [rsp + 0xa4], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_658
.label_662:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_659
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_660
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_660
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_660
	test	rbp, rbp
	jne	.label_661
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_661
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_661
	mov	rdi, r14
	call	optimize_utf8
.label_661:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	je	.label_664
	jmp	.label_659
.label_660:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
.label_659:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_664:
	mov	eax, dword ptr [rsp + 0xa4]
.label_663:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_658:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_663
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_662
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089e0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4089f0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_665
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_665:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_666
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_666:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_667
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_667:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ac0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_679
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_686
.label_679:
	mov	qword ptr [rsp + 0x20], rdi
	xor	r14d, r14d
.label_686:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_677
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_675:
	mov	rax, qword ptr [rsi + 0x18]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	movzx	r12d, byte ptr [rax + rbx + 8]
	add	rax, rbx
	cmp	r12d, 6
	je	.label_674
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	mov	ebp, 0
	mov	r15d, 0
	je	.label_681
	cmp	r12d, 1
	jne	.label_684
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_688
	mov	rbp, rdx
	call	tolower
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_688:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_672
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_672
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	r12, [rsp + 0x40]
	mov	esi, 0x2000ff
	jae	.label_669
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_685:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_669
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	inc	rbp
	inc	r13
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_685
.label_669:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	jne	.label_678
	mov	edi, dword ptr [rsp + 0x154]
	call	towlower
	mov	rdi, r12
	mov	esi, eax
	mov	rdx, r15
	call	wcrtomb
	cmp	rax, -1
	je	.label_678
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_678
	nop	
.label_681:
	mov	rax, qword ptr [rdx]
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_680:
	bt	rbx, r12
	jae	.label_676
	mov	byte ptr [r13 + r12], 1
	test	r14b, r14b
	je	.label_676
	lea	edi, [r15 + r12]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_676:
	inc	r12
	cmp	r12, 0x40
	jne	.label_680
	inc	rbp
	add	r15, 0x40
	cmp	rbp, 4
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_681
	jmp	.label_672
	nop	word ptr [rax + rax]
.label_674:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_670
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_668
	test	byte ptr [r15 + 0x20], 1
	jne	.label_668
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_670
.label_668:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	lea	rbp, [rsp + 0x40]
	nop	dword ptr [rax]
.label_689:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_682
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_682:
	inc	byte ptr [rsp + 0x148]
	jne	.label_689
.label_678:
	mov	rdx, rbx
	jmp	.label_672
	nop	word ptr cs:[rax + rax]
.label_684:
	cmp	r12d, 2
	je	.label_671
	mov	eax, r12d
	or	eax, 2
	cmp	eax, 7
	jne	.label_672
	jmp	.label_671
.label_670:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_672
	xor	ebp, ebp
.label_683:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	mov	rax, qword ptr [r15]
	mov	esi, dword ptr [rax + rbp*4]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	lea	r12, [rsp + 0x148]
	mov	rdx, r12
	call	wcrtomb
	cmp	rax, -1
	je	.label_687
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_687
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_687:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rdx, rbx
	je	.label_673
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_673
	mov	rax, qword ptr [r15]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	call	towlower
	mov	rdi, r13
	mov	esi, eax
	mov	rdx, r12
	call	wcrtomb
	mov	rdx, rbx
	cmp	rax, -1
	je	.label_673
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	nop	
.label_673:
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	jl	.label_683
	nop	dword ptr [rax]
.label_672:
	mov	rcx, qword ptr [rsp + 0x18]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	rcx, qword ptr [rsi + 0x10]
	jl	.label_675
.label_677:
	add	rsp, 0x158
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_671:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_677
	mov	rax, qword ptr [rsp + 0x20]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_677
	nop	
	.section	.text
	.align	32
	#Procedure 0x408ec0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_690
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_692
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_693
.label_692:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_693:
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_691
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_690:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_691:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_690
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fb0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_694
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_696
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_697
.label_695:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_696:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_697:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_695
.label_694:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409030
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_698
	call	free_dfa_content
.label_698:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409070

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	je	.label_700
	xor	r15d, r15d
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_700
	xor	ebx, ebx
	nop	
.label_705:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_705
.label_700:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_709
	xor	r15d, r15d
	mov	ebx, 0x10
.label_710:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_699
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_699:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_702
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_702:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_706
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_706:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_710
.label_709:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_707
	xor	r15d, r15d
.label_708:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_704
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_703:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_703
.label_704:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_708
.label_707:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_701
	call	free
.label_701:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091c0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_711
	test	bpl, 4
	jne	.label_713
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_712
.label_713:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_712:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_715
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_714
.label_715:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_714:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_711:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409260

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x188
	mov	r15, rcx
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	test	rax, rax
	je	.label_735
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	edi, edi
	cmp	ecx, 8
	cmovne	rax, rdi
	cmp	r15, r8
	cmove	rax, rdi
	mov	r10, rax
.label_735:
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	mov	rcx, rdi
	sub	rcx, rax
	xor	ebp, ebp
	cmp	rax, r12
	cmovb	rbp, rcx
	mov	r13d, 1
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_730
	mov	rax, qword ptr [rbx + 0x48]
	test	rax, rax
	je	.label_730
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	je	.label_730
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	je	.label_730
	cmp	qword ptr [rbx + 0x60], 0
	je	.label_730
	mov	qword ptr [rsp + 0x58], r9
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_755
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_717
.label_755:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_763
	mov	qword ptr [rsp + 0x50], r8
.label_717:
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	qword ptr [rsp + 0x18], rdi
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	jne	.label_768
	cmp	qword ptr [rbx + 0x98], 0
	setne	byte ptr [rsp + 0x67]
.label_768:
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r14 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x70], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_723
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_723
	mov	rax, r12
	sub	rax, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_728
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_728
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_756
.label_728:
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_723
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_723
.label_756:
	mov	qword ptr [rsp + 0x180], r15
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	r11d, 0xffffffff
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	mov	rbx, qword ptr [rsp + 0x30]
	je	.label_780
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_746
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	jne	.label_748
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_748
.label_746:
	mov	r9d, 4
.label_748:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	movzx	edx, dl
	lea	esi, [rcx + rdx*2]
	or	esi, r9d
.label_780:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	jl	.label_757
	cmp	rbp, rcx
	jl	.label_727
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	qword ptr [rsp + 0x50], rsi
.label_774:
	cmp	esi, 4
	ja	.label_750
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_778]]
.label_2266:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	jl	.label_724
	nop	dword ptr [rax]
.label_725:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_716
	movzx	eax, byte ptr [r9 + rcx]
.label_716:
	test	rbx, rbx
	je	.label_719
	movzx	eax, byte ptr [rbx + rax]
.label_719:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_724
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	cmp	rax, r13
	jg	.label_725
.label_724:
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_732
	jmp	.label_736
	nop	word ptr [rax + rax]
.label_729:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	jl	.label_736
	cmp	rax, rbp
	jle	.label_750
	jmp	.label_736
.label_776:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_723
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, rbp
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_765
	nop	word ptr cs:[rax + rax]
.label_750:
	mov	rsi, qword ptr [rsp + 0x180]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_776
.label_765:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	ecx, 0
	jge	.label_722
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_722:
	cmp	byte ptr [rdi + rcx], 0
	je	.label_729
	jmp	.label_732
.label_2267:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_733
	nop	word ptr cs:[rax + rax]
.label_747:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_733:
	cmp	rax, rbp
	jge	.label_745
	movzx	ecx, byte ptr [r9 + rax]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_747
	jmp	.label_745
.label_2268:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_751
	nop	word ptr [rax + rax]
.label_754:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_751:
	cmp	rax, rbp
	jge	.label_745
	movzx	ecx, byte ptr [r9 + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_754
.label_745:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	je	.label_760
.label_732:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	jne	.label_773
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_775
	mov	rcx, qword ptr [rsp + 0xb0]
	test	rcx, rcx
	je	.label_775
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	je	.label_752
.label_775:
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	call	check_matching
	cmp	rax, -1
	je	.label_749
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_723
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_770
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 0x10
	je	.label_744
.label_770:
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_740
.label_744:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, rax
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
.label_740:
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_758
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_758
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_762
.label_758:
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_734
.label_762:
	lea	rdi, [rsp + 0x80]
	call	prune_impossible_nodes
	mov	r13d, eax
	mov	dword ptr [rsp + 0x30], 0
	test	r13d, r13d
	je	.label_734
	cmp	r13d, 1
	jne	.label_723
.label_749:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_752:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_738
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_774
	jmp	.label_779
.label_760:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_739
	movzx	eax, byte ptr [r9 + rcx]
.label_739:
	test	rbx, rbx
	je	.label_741
	movzx	eax, byte ptr [rbx + rax]
.label_741:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_732
.label_736:
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_723
.label_757:
	mov	r13d, 1
	jmp	.label_723
.label_727:
	mov	r13d, 1
	jmp	.label_723
.label_734:
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	rdx, r12
	je	.label_743
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_759
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_742:
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x10
	dec	rax
	jne	.label_742
.label_759:
	mov	rbx, rdx
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	mov	rbp, rsi
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_731
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_731
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	test	byte ptr [rcx + 0xb0], 1
	mov	eax, 0
	je	.label_772
	cmp	qword ptr [rcx + 0x98], 0
	setg	al
.label_772:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_723
.label_731:
	mov	rdx, rbx
	cmp	rdx, r12
	je	.label_766
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_718
.label_763:
	cmp	qword ptr [r11 + 0x10], 0
	je	.label_771
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_781
.label_771:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_753
	test	r8, r8
	mov	r15d, 0
	jne	.label_730
	jmp	.label_717
.label_773:
	mov	r13d, eax
	jmp	.label_723
.label_737:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_782
	lea	rcx, [r9 + rbx*8]
.label_782:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_764
	lea	rcx, [r9 + rbx*8]
.label_764:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_777
.label_718:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_720
	test	al, al
	jne	.label_737
.label_777:
	mov	rcx, qword ptr [rsp + 0x180]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_720:
	add	rsi, 0x10
	dec	rdi
	jne	.label_718
.label_766:
	test	rdx, rdx
	mov	rbx, qword ptr [rsp + 0x18]
	jle	.label_721
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	word ptr cs:[rax + rax]
.label_761:
	mov	qword ptr [r12 + 8], -1
	mov	qword ptr [r12], -1
	add	r12, 0x10
	dec	rax
	jne	.label_761
.label_721:
	mov	rdi, qword ptr [rsp + 0x78]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_743
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_743
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	lea	rcx, [rbp + 0x18]
	xor	edx, edx
.label_767:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_726
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_726:
	inc	rdx
	add	rcx, 0x10
	cmp	rbx, rdx
	jne	.label_767
.label_743:
	mov	r13d, dword ptr [rsp + 0x30]
.label_723:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_769
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_769:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_730:
	mov	eax, r13d
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_781:
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_717
.label_753:
	xor	r15d, r15d
	jmp	.label_717
.label_738:
	mov	r13d, 1
	jmp	.label_723
.label_779:
	mov	r13d, 1
	jmp	.label_723
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409c20

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c40

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_783
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], r9
	cmp	rcx, rdx
	jg	.label_783
	mov	r14, qword ptr [rsp + 0x80]
	xor	r15d, r15d
	add	r8, rcx
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_786
	test	r12b, 8
	jne	.label_786
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_786
	mov	rbp, rdi
	mov	r13, rcx
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_786:
	xor	esi, esi
	test	r14, r14
	mov	ebx, 1
	je	.label_792
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	jne	.label_784
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_788
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_790
.label_788:
	mov	rbx, qword ptr [rdi + 0x30]
	inc	rbx
.label_793:
	mov	rsi, r14
	jmp	.label_784
.label_792:
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
.label_784:
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rdi
	mov	rdi, rbx
	shl	rdi, 4
	call	malloc
	mov	r13, rax
	mov	r14, -2
	test	r13, r13
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_783
	mov	al, r12b
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	mov	r14, rbx
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	r8, r15
	mov	r9, qword ptr [rsp + 0x30]
	call	re_search_internal
	test	eax, eax
	je	.label_791
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	jmp	.label_789
.label_791:
	mov	rdx, r14
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_785
	mov	al, byte ptr [rbp + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	dl, al
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	je	.label_789
.label_785:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [r13]
	test	al, al
	je	.label_789
	cmp	r14, rbx
	jne	.label_787
	mov	r14, qword ptr [r13 + 8]
	sub	r14, rbx
.label_789:
	mov	rdi, r13
	call	free
.label_783:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_790:
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebx, 1
	cmovg	rbx, rax
	jmp	.label_793
.label_787:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409e30

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409e50
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rsp], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e90

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_796
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_799
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_796
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_795
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_797
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_796
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_795
.label_799:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_798
.label_796:
	mov	rax, -2
	jmp	.label_794
.label_798:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_795
.label_797:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_795:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_794:
	add	rsp, 0x28
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
	#Procedure 0x409fd0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a010
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_800
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_800:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a040

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_801
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_801:
	cmp	eax, 3
	jne	.label_802
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_802:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a060

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_803
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_803:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a0c0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40a0f0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	movabs	rax, 0x555555555555554
	cmp	rbp, rax
	ja	.label_813
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_811:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_811
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	dec	rbx
	mov	qword ptr [r15 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r15 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_806
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_806
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_806
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_806
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_806
	or	byte ptr [r15 + 0xb0], 4
.label_806:
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_805
	test	al, 4
	jne	.label_808
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	xor	r12d, r12d
	test	rax, rax
	je	.label_813
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_807:
	xor	ebp, ebp
	mov	ebx, r14d
	nop	word ptr cs:[rax + rax]
.label_804:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_809
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r12*8], rdx
.label_809:
	cmp	ebx, 0x7f
	ja	.label_810
	cmp	ebx, eax
	je	.label_810
	or	byte ptr [r15 + 0xb0], 8
.label_810:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_804
	add	r14d, 0x40
	inc	r12
	cmp	r12, 4
	jne	.label_807
	jmp	.label_805
.label_808:
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_805:
	cmp	qword ptr [r15], 0
	je	.label_812
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_813
.label_812:
	mov	r14d, 0xc
.label_813:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a310

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r13d, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x90], 0
	movzx	r8d, r13b
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_string_construct_common
	test	r15, r15
	jle	.label_821
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_816
.label_821:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_817
	mov	rbp, qword ptr [rbx + 8]
.label_817:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_818
	cmp	eax, 2
	jl	.label_820
	nop	
.label_819:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_816
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_816
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_816
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_819
	jmp	.label_816
.label_818:
	cmp	eax, 2
	jl	.label_822
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_814
.label_820:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_814
.label_822:
	test	r12, r12
	je	.label_815
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_814
.label_815:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_814:
	xor	eax, eax
.label_816:
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
	.align	32
	#Procedure 0x40a430

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_823
.label_824:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_824
.label_823:
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	mov	qword ptr [r14 + 0x68], 0
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	qword ptr [r14 + 0x20], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a490

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_825
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_825:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4c0

	.globl parse
	.type parse, @function
parse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	xor	r8d, r8d
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	mov	rcx, rbx
	mov	r9, r14
	call	parse_reg_exp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_829
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_827
.label_829:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	test	rbx, rbx
	je	.label_826
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	create_tree
	mov	r12, rax
	jmp	.label_828
.label_826:
	mov	r12, r13
.label_828:
	test	r13, r13
	je	.label_830
	test	r12, r12
	je	.label_830
.label_827:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_830:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_827
	.section	.text
	.align	32
	#Procedure 0x40a580

	.globl analyze
	.type analyze, @function
analyze:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_832
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_832
	test	rcx, rcx
	je	.label_832
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_832
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_835
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_837
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_831:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_831
.label_837:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_836
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_838:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_836
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_838
.label_836:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_835
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_835:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_832
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_832
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_832
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_832
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_833
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_833
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_834
.label_833:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_832
.label_834:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_832
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_832:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a760

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_851
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_840:
	mov	rsi, rax
	shl	rsi, 4
	movzx	edx, byte ptr [r11 + rsi + 8]
	dec	edx
	cmp	edx, 0xb
	ja	.label_839
	lea	rcx, [r11 + rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_849]]
.label_2298:
	mov	dl, 1
	cmp	byte ptr [rcx], 0
	js	.label_853
	mov	dl, r10b
.label_853:
	mov	r10b, dl
	jmp	.label_846
.label_2299:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
	nop	
.label_842:
	cmp	qword ptr [rsi + rdx*8], 0
	jne	.label_841
	inc	rdx
	cmp	rdx, 3
	jle	.label_842
	jmp	.label_846
.label_2300:
	mov	r9b, 1
	jmp	.label_846
.label_2301:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	ja	.label_850
	bt	r8, rcx
	jb	.label_846
.label_850:
	cmp	edx, 0x80
	jne	.label_841
	nop	word ptr [rax + rax]
.label_846:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_840
	jmp	.label_843
.label_851:
	xor	r9d, r9d
	xor	r10d, r10d
.label_843:
	mov	r8b, r9b
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_847
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_847
	xor	eax, eax
	mov	edx, 8
	nop	word ptr cs:[rax + rax]
.label_852:
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	movzx	ecx, r9b
	cmp	ecx, 1
	jne	.label_845
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_844
.label_845:
	mov	r9, qword ptr [rdi]
	mov	esi, dword ptr [r9 + rdx]
	movzx	ecx, sil
	cmp	ecx, 5
	jne	.label_848
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_848
.label_844:
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	word ptr cs:[rax + rax]
.label_848:
	inc	rax
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_852
.label_847:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_841:
	ret	
.label_839:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a8d0

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_856
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_858
	cmp	qword ptr [rsp + 8], 0
	jle	.label_858
	xor	r13d, r13d
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_860:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	jne	.label_854
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	jle	.label_857
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_861:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_863
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	je	.label_857
.label_863:
	inc	rsi
	cmp	rsi, rax
	jl	.label_861
.label_857:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_854
	test	al, al
	jne	.label_854
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_854
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_856
	nop	word ptr [rax + rax]
.label_854:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	jl	.label_860
.label_858:
	lea	rdi, [rsp + 0x1c]
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_862
	cmp	byte ptr [rax + 0x68], 0
	js	.label_864
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_855
.label_864:
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_859
	test	rax, rax
	je	.label_859
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_859
.label_855:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	xor	eax, eax
.label_856:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_859:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_856
.label_862:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_856
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aae0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	byte ptr [rdx + 0x88], r8b
	test	rcx, rcx
	setne	al
	or	al, r8b
	mov	byte ptr [rdx + 0x8b], al
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rdx + 0x89], al
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	and	al, 1
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab50

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_866
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_865
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_865
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_866
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_865
	mov	qword ptr [rbx + 0x18], rax
.label_866:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_867
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_865
	mov	qword ptr [rbx + 8], rax
.label_867:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_865:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40abe0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_869
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_869
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_872
.label_869:
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_874
.label_872:
	cmp	rbx, r13
	jle	.label_878
	lea	r14, [r15 + 0x20]
	jmp	.label_880
.label_873:
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_882
	cmp	rbx, -2
	jne	.label_887
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_887
.label_882:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_871
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_871
	nop	dword ptr [rax]
.label_880:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_899
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_899
	mov	r12, rbx
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	movzx	eax, byte ptr [rax + r13]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_871:
	mov	rax, r13
	jmp	.label_896
	nop	word ptr cs:[rax + rax]
.label_899:
	mov	rdx, rbx
	sub	rdx, r13
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	ja	.label_873
	mov	qword ptr [rsp + 0x20], rcx
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 0x2c]
	jne	.label_885
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	jmp	.label_888
.label_885:
	mov	rdi, rbp
	mov	esi, r12d
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_893
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_888:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], r12d
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	jge	.label_896
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_896:
	mov	rbx, r12
	cmp	rbx, rax
	mov	r13, rax
	jg	.label_880
	jmp	.label_904
.label_893:
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_905
.label_887:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_878:
	mov	rax, r13
.label_904:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_884
.label_874:
	cmp	r13, rbx
	jge	.label_911
.label_905:
	mov	rdx, rbx
	sub	rdx, r13
	lea	rcx, [r15 + 0x20]
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_912
	mov	rbp, qword ptr [r15]
	add	rbp, qword ptr [r15 + 0x28]
	add	rbp, r12
.label_897:
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_879
	mov	qword ptr [rsp + 0x20], rbx
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_889
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	sub	rax, r14
	jne	.label_894
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	jmp	.label_895
.label_912:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [r15 + 0x90], 0
	jle	.label_897
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_903:
	cmp	rax, rdx
	jge	.label_897
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsi, rbx
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	mov	rbx, rsi
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_903
	jmp	.label_897
.label_879:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_908
	cmp	r14, -2
	jne	.label_910
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_910
.label_908:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r12, qword ptr [rsp + 0x18]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_913
.label_877:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_900
.label_883:
	inc	r12
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	je	.label_881
	mov	rbp, r13
	jmp	.label_874
.label_894:
	cmp	rdx, -1
	je	.label_889
	lea	rbp, [rdx + r13]
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	jbe	.label_891
.label_910:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_911:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_884:
	xor	eax, eax
.label_875:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_889:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_895:
	mov	rdx, r14
	call	memcpy
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_902
	lea	rax, [r13*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_907:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_907
.label_902:
	add	r12, r14
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	lea	rbp, [r14 + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_909
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_870
.label_909:
	mov	rbp, rax
.label_870:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	jmp	.label_874
.label_891:
	cmp	qword ptr [r15 + 0x18], 0
	jne	.label_876
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	mov	rax, qword ptr [rsp + 8]
	je	.label_886
.label_876:
	mov	qword ptr [rsp + 8], rax
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_890
	test	r13, r13
	je	.label_892
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_898:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	jne	.label_898
.label_892:
	mov	byte ptr [r15 + 0x8c], 1
.label_890:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r13*8], rsi
	cmp	rdi, 2
	jb	.label_901
	lea	rax, [r13*4]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_906:
	cmp	rcx, r14
	mov	rdx, r12
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rdi, rcx
	jne	.label_906
.label_901:
	mov	rax, qword ptr [rsp + 8]
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_868
	add	qword ptr [r15 + 0x68], rax
.label_868:
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	add	r12, r14
	mov	r13, rbp
	jmp	.label_874
.label_913:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_877
.label_900:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_883
.label_881:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	rbp, r13
	jmp	.label_874
.label_886:
	mov	eax, 0xc
	jmp	.label_875
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b170

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_914
	jmp	.label_915
.label_916:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_917
	nop	word ptr [rax + rax]
.label_915:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_916
.label_917:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_915
	mov	rbx, r15
.label_914:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b1e0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_926
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_922
	nop	dword ptr [rax + rax]
.label_924:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_918
.label_927:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_920:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_919
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_919:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_922
	jmp	.label_921
.label_923:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_925
	nop	word ptr cs:[rax + rax]
.label_929:
	cmp	rax, rdx
	jge	.label_928
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_929
	lea	rsi, [rsp + 0x10]
	jmp	.label_925
.label_918:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_927
.label_928:
	lea	rsi, [rsp + 0x10]
	jmp	.label_925
	nop	word ptr cs:[rax + rax]
.label_922:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_923
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_925:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_924
	cmp	rax, -2
	jne	.label_920
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_924
	mov	qword ptr [r14], rbp
.label_926:
	mov	rcx, r13
.label_921:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x40b380

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_930
	nop	dword ptr [rax + rax]
.label_931:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_931
	mov	rax, r8
.label_930:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b3d0

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3f0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_935
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_938
.label_935:
	mov	r14, qword ptr [rsp + 0x18]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_937:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_932
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_934
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_936
	cmp	eax, 9
	mov	edx, 0
	je	.label_934
.label_936:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_933
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_939
.label_933:
	mov	rax, qword ptr [rsp + 0x10]
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_934:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_937
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_938
.label_932:
	mov	r14, rbx
.label_938:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_939:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_938
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_938
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b550

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b570

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_965
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	eax, dword ptr [r15 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r15 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_962
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_962
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	je	.label_964
.label_962:
	cmp	r12d, 0x5c
	jne	.label_972
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_966
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r14b, al
	mov	byte ptr [r15], r14b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_971
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_945
.label_965:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_940
.label_972:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_952
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebx, eax
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_960
.label_966:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_940
.label_952:
	movzx	r14d, byte ptr [r15]
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	movzx	ecx, r13b
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_960:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_968
	lea	eax, [r12 - 0x24]
	cmp	eax, 0xa
	ja	.label_956
	jmp	qword ptr [word ptr [+ (rax * 8) + label_941]]
.label_2272:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_942
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_942
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_940
.label_942:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	jmp	.label_940
.label_968:
	cmp	r12d, 0x7a
	jg	.label_953
	cmp	r12d, 0x3f
	je	.label_954
	cmp	r12d, 0x5b
	je	.label_955
	cmp	r12d, 0x5e
	jne	.label_940
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_958
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_958
	test	ch, 8
	je	.label_940
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_940
.label_958:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	jmp	.label_940
.label_971:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_945:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	cmp	eax, 0x5f
	jg	.label_970
	lea	ecx, [rax - 0x27]
	cmp	ecx, 0x2c
	ja	.label_949
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_943]]
.label_2282:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_940
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	cdqe	
	mov	qword ptr [r15], rax
	jmp	.label_940
.label_953:
	cmp	r12d, 0x7b
	je	.label_946
	cmp	r12d, 0x7c
	je	.label_948
	cmp	r12d, 0x7d
	jne	.label_940
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_950
	jmp	.label_940
.label_964:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_940
.label_970:
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_959
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_963]]
.label_2302:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_956:
	cmp	r12d, 0xa
	jne	.label_940
	mov	rax, qword ptr [rsp]
	test	ah, 8
	jne	.label_957
	jmp	.label_940
.label_2273:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_967
	jmp	.label_940
.label_2274:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_969
	jmp	.label_940
.label_2275:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2276:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_940
	jmp	.label_944
.label_2277:
	and	ebx, 0xffffff00
	or	ebx, 5
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_954:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_940
	jmp	.label_947
.label_955:
	and	ebx, 0xffffff00
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_946:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_951
	jmp	.label_940
.label_948:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_940
	test	ax, ax
	js	.label_957
	jmp	.label_940
.label_959:
	cmp	eax, 0x60
	je	.label_961
	cmp	eax, 0x62
	jne	.label_940
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x100
	jmp	.label_940
.label_949:
	cmp	eax, 0x57
	jne	.label_940
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2303:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2304:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_940
.label_951:
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2305:
	mov	rax, r12
	test	ah, 4
	jne	.label_940
	test	ax, ax
	js	.label_940
.label_957:
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2306:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_940
.label_950:
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_961:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_940
.label_2278:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x80
	jmp	.label_940
.label_2279:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_940
.label_967:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2280:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_940
.label_969:
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2281:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_940
.label_944:
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2283:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 6
	jmp	.label_940
.label_2284:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 9
	jmp	.label_940
.label_2285:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_940
.label_947:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2286:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	jmp	.label_940
.label_2287:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_940:
	mov	eax, r14d
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
	#Procedure 0x40bbe0

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_973
.label_976:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rcx + rax + 1]
.label_975:
	movzx	eax, al
	ret	
.label_973:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_978
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_976
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_978
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_976
.label_978:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_974
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_977
.label_974:
	inc	rax
.label_977:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_975
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	je	.label_975
	jmp	.label_976
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc60

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_979
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_979:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc80

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_981
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_981
	jmp	.label_980
	nop	word ptr cs:[rax + rax]
.label_985:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_981:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_983
	test	r12, r12
	je	.label_986
	cmp	eax, 9
	je	.label_987
.label_986:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_982
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_984
.label_982:
	test	rbx, rbx
	je	.label_985
	test	r15, r15
	je	.label_985
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_981
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	jmp	.label_980
.label_984:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_980
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_980
.label_983:
	mov	r15, rbx
	jmp	.label_980
.label_987:
	mov	r15, rbx
.label_980:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bdb0

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_990
.label_988:
	mov	rdi, qword ptr [rcx + 0x10]
.label_990:
	mov	rcx, rdi
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_990
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_989
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_990
	jmp	.label_988
.label_989:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_991:
	mov	rbx, rcx
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_992
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_992
	cmovne	r12, rbx
	mov	rax, rcx
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	cmp	rdi, r12
	mov	r12, rbx
	je	.label_991
	test	rdi, rdi
	mov	r12, rbx
	je	.label_991
	jmp	.label_990
.label_992:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be40

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rax
	lea	rdi, [rsi + 0x28]
	call	free_token
	xor	eax, eax
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40be50

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1003
	nop	word ptr cs:[rax + rax]
.label_1017:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_1003:
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	cmp	eax, 0x23
	ja	.label_996
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1015]]
.label_2316:
	test	r14, r14
	jne	.label_1016
.label_2313:
	test	rbx, rbx
	jne	.label_1016
	test	r15, r15
	jne	.label_1017
.label_2312:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_1018
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_1018
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_998
.label_1016:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
.label_998:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_996:
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1018:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_993
	jmp	.label_995
.label_2317:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_7
	mov	ecx, OFFSET FLAT:.str.2_3
	jmp	.label_1002
.label_2318:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	ecx, OFFSET FLAT:.str_0
.label_1002:
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_1008
.label_2315:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
	jmp	.label_1008
.label_2308:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_995
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_993
	mov	rbx, qword ptr [rsp + 0x20]
.label_1005:
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_993
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_993
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_993
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_995
	test	r14, r14
	jne	.label_1005
	jmp	.label_995
.label_2309:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	je	.label_1007
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_995
	inc	qword ptr [r12 + 0x98]
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_993
.label_2310:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_995
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_993
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_993
.label_2311:
	mov	r8, qword ptr [rsp]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
.label_1008:
	mov	r14, rax
	test	r14, r14
	jne	.label_993
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_996
.label_993:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	ebp, ebx
	mov	r15, rbx
	and	ebp, 0x1000000
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_1011:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x17
	ja	.label_1019
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1006
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_1009
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_1010
.label_1009:
	test	rbp, rbp
	mov	r14, rax
	je	.label_1011
	movzx	ecx, byte ptr [r13 + 8]
	cmp	ecx, 0x17
	je	.label_1013
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_1011
.label_1013:
	test	rax, rax
	je	.label_1014
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_1014:
	mov	dword ptr [rbx], 0xd
	jmp	.label_998
.label_1010:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r14, r14
	je	.label_996
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r14
	call	postorder
	jmp	.label_996
.label_1019:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_996
.label_1006:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_996
.label_2314:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	je	.label_994
	test	byte ptr [r12 + 0xb0], 0x10
	jne	.label_997
	mov	rdi, r12
	call	init_word_char
.label_997:
	mov	eax, dword ptr [r13]
.label_994:
	cmp	eax, 0x200
	je	.label_999
	cmp	eax, 0x100
	jne	.label_1000
.label_999:
	cmp	dword ptr [r13], 0x100
	jne	.label_1001
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_1004
.label_2319:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_998
.label_995:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_998
.label_1000:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1012
	mov	dword ptr [rcx], 0xc
	jmp	.label_998
.label_1001:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_1004:
	mov	r14, qword ptr [rsp + 8]
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_1020
	test	rbp, rbp
	je	.label_1020
	test	rax, rax
	je	.label_1020
.label_1012:
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_996
.label_1007:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_998
.label_1020:
	mov	dword ptr [r14], 0xc
	jmp	.label_998
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c340

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	je	.label_1021
.label_1023:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	je	.label_1024
	mov	qword ptr [r12], rax
.label_1024:
	test	r14, r14
	je	.label_1022
	mov	qword ptr [r14], rax
.label_1022:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1021:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1022
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1023
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c400

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [r14 + 0x30]
	lea	rax, [r12 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	mov	rdi, rbx
	mov	rsi, r15
	call	fetch_token
	movzx	eax, byte ptr [rbx + 8]
	xor	r8d, r8d
	cmp	eax, 9
	je	.label_1026
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1025
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 9
	jne	.label_1030
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1025
.label_1026:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_1027
	mov	eax, 1
	mov	cl, r12b
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_1027:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_1029
	mov	qword ptr [rax + 0x28], r12
.label_1025:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1029:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_1025
.label_1030:
	test	r8, r8
	je	.label_1028
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_1028:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_1025
	.section	.text
	.align	32
	#Procedure 0x40c500

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_1049
	test	r14, r14
	je	.label_1049
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x19
	je	.label_1050
	cmp	eax, 2
	je	.label_1052
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_1051
.label_1050:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_1055
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_1055:
	movsxd	rax, ebp
	add	qword ptr [r13 + 0x48], rax
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 2
	je	.label_1052
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
.label_1051:
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	cmp	ecx, 0x15
	jne	.label_1067
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_1067:
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	mov	r9d, 1
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbp, r13
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1040
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1054
	nop	
.label_1062:
	cmp	eax, 2
	je	.label_1046
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1054
	jmp	.label_1040
.label_1039:
	lea	rax, [r13 + r13]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1060
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_1061
	nop	dword ptr [rax]
.label_1054:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	je	.label_1065
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_1037
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_1057
	cmp	eax, 2
	jne	.label_1032
	jmp	.label_1048
	nop	word ptr cs:[rax + rax]
.label_1065:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_1037
.label_1057:
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x38]
	cmp	ecx, 0x15
	je	.label_1041
	cmp	ecx, 2
	je	.label_1045
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x88], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1053
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	jg	.label_1056
	xor	edx, edx
.label_1056:
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0xb0]
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	call	build_range_exp
	jmp	.label_1043
.label_1041:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_1032:
	mov	eax, dword ptr [rsp + 0x98]
.label_1037:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_1068
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1034]]
.label_2330:
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_1042
.label_2331:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_1039
.label_1061:
	mov	eax, dword ptr [rsp + 0xa0]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp]
	jmp	.label_1042
.label_2332:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_1043
.label_2333:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_1043
.label_2334:
	mov	rdi, qword ptr [rbp + 0x78]
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
.label_1043:
	mov	dword ptr [r13], eax
	test	eax, eax
	jne	.label_1058
.label_1042:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x15
	jne	.label_1062
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_1064
	mov	rdi, r15
	call	bitset_not
.label_1064:
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_1066
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_1066:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_1033
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1033
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_1033
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1033
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1038
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_1033
	test	byte ptr [r14 + 0x20], 1
	jne	.label_1033
.label_1038:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	jmp	.label_1044
.label_1033:
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1036
	nop	dword ptr [rax]
.label_1063:
	cmp	qword ptr [r15 + rbx*8], 0
	jne	.label_1059
	inc	rbx
	cmp	rbx, 3
	jle	.label_1063
	mov	rdi, r15
	call	free
	jmp	.label_1035
.label_1059:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	test	rax, rax
	je	.label_1036
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_1044:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1035
	jmp	.label_1036
.label_1040:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
.label_1058:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1031
.label_1052:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	jmp	.label_1031
.label_1046:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1031
.label_1049:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	jmp	.label_1047
.label_1048:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1031
.label_1045:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1031
.label_1053:
	mov	dword ptr [r13], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1031
.label_1060:
	mov	r14, rbp
.label_1036:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
.label_1031:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_1047:
	xor	ebp, ebp
.label_1035:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1068:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	r15d, 0
	jne	.label_1069
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [r14 + 0xc0], rax
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_1069
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_1074:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1069:
	call	__ctype_b_loc
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_1070:
	mov	rax, rdx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1072:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	je	.label_1071
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_1073
.label_1071:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_1073:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_1072
	inc	r15
	add	rbx, 0x40
	add	rdx, 0x80
	cmp	r15d, 4
	jne	.label_1070
	jmp	.label_1074
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cbc0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1085
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_1081
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1079
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1082
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1086:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1086
.label_1082:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1083
	mov	rdi, rbx
	call	bitset_not
.label_1083:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1080
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_1080:
	mov	byte ptr [rsp + 0x18], 3
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1084
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1078
	mov	byte ptr [rsp + 0x18], 6
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_1084
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_1077
.label_1078:
	mov	rdi, r12
	call	free_charset
	jmp	.label_1077
.label_1084:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_1075
.label_1085:
	mov	dword ptr [r12], 0xc
	jmp	.label_1076
.label_1081:
	mov	rdi, rbx
	call	free
.label_1075:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1076
.label_1079:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_1076:
	xor	ebp, ebp
.label_1077:
	mov	rax, rbp
	add	rsp, 0x28
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
	#Procedure 0x40cd80

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	jne	.label_1087
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_1102
	mov	qword ptr [rsp + 0x10], r13
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_1105
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	cmp	eax, 0x2c
	je	.label_1094
	jmp	.label_1105
.label_1087:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, 0x12
	sete	cl
	movzx	ebx, cl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_1089:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_1092
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_1099
	test	rbx, rbx
	jg	.label_1101
	mov	r15, qword ptr [rsp + 0x18]
.label_1106:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1104
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_1104:
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1088
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_1096
	inc	rbx
	nop	dword ptr [rax + rax]
.label_1090:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	create_tree
	test	r12, r12
	je	.label_1088
	test	rax, rax
	je	.label_1088
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1088
	inc	rbx
	cmp	rbx, r13
	jl	.label_1090
.label_1096:
	test	r14, r14
	je	.label_1091
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_1092
.label_1102:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_1097
.label_1094:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	je	.label_1098
	cmp	eax, 1
	jne	.label_1097
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_1097
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	r13, rax
	cmp	r13, -2
	je	.label_1097
.label_1098:
	cmp	r13, -1
	je	.label_1107
	cmp	rbx, r13
	jg	.label_1105
.label_1107:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_1105
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_1089
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_1092
.label_1105:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_1092
.label_1097:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_1100
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	mov	r14, r12
	jmp	.label_1092
.label_1091:
	mov	r14, rbp
	jmp	.label_1092
.label_1099:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_1092
.label_1101:
	mov	ebp, 1
	mov	r14, r12
	cmp	rbx, 2
	jge	.label_1093
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_1095
.label_1093:
	mov	r15, qword ptr [rsp + 0x18]
.label_1103:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	create_tree
	mov	r14, rax
	test	r12, r12
	je	.label_1088
	test	r14, r14
	je	.label_1088
	inc	rbp
	cmp	rbp, rbx
	jl	.label_1103
.label_1095:
	cmp	rbx, r13
	je	.label_1092
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_1106
.label_1088:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_1092:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1100:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_1092
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0c0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1108
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1112
	mov	rax, qword ptr [rsi + 0x48]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_1112
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1111
.label_1112:
	movzx	ecx, r8b
	test	dl, 1
	je	.label_1109
	cmp	ecx, 0x5c
	jne	.label_1109
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1109
	mov	qword ptr [rsi + 0x48], rax
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	jmp	.label_1111
.label_1108:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1109:
	cmp	ecx, 0x5b
	jne	.label_1116
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1118
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1119
.label_1116:
	cmp	ecx, 0x5e
	je	.label_1120
	cmp	ecx, 0x5d
	je	.label_1110
	cmp	ecx, 0x2d
	jne	.label_1111
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1111:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1118:
	xor	eax, eax
.label_1119:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1114
	cmp	eax, 0x3a
	je	.label_1117
	cmp	eax, 0x2e
	jne	.label_1115
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1110:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1117:
	test	dl, 4
	jne	.label_1113
.label_1115:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_1120:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1114:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1113:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1c0

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	cl, sil
	shl	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1f0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r13, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	jl	.label_1121
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1124
.label_1121:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_1122
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1123]]
.label_2341:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_2340:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	jne	.label_1122
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1125
.label_1122:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_1124:
	xor	eax, eax
.label_1125:
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
	#Procedure 0x40d2d0

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	je	.label_1127
	cmp	ecx, 4
	je	.label_1127
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_1127
	cmp	edx, 4
	je	.label_1127
	cmp	ecx, 3
	jne	.label_1132
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1127
.label_1132:
	cmp	dword ptr [rbx], 3
	jne	.label_1137
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1127
.label_1137:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_1141
	test	eax, eax
	jne	.label_1143
	mov	al, byte ptr [rbp + 8]
	jmp	.label_1144
.label_1141:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_1144
.label_1143:
	xor	eax, eax
.label_1144:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_1147
	test	ecx, ecx
	jne	.label_1126
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_1128
.label_1147:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_1128
.label_1126:
	xor	edx, edx
.label_1128:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_1130
	test	ecx, ecx
	jne	.label_1131
.label_1130:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_1133
.label_1131:
	mov	ebp, dword ptr [rbp + 8]
.label_1133:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_1138
	test	eax, eax
	jne	.label_1136
.label_1138:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_1140
.label_1136:
	mov	ebx, dword ptr [rbx + 8]
.label_1140:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_1127
	cmp	ebx, -1
	je	.label_1127
	test	r12d, 0x10000
	je	.label_1142
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_1127
.label_1142:
	test	r14, r14
	je	.label_1145
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_1146
.label_1134:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_1145:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1139:
	cmp	rbp, rbx
	ja	.label_1135
	cmp	rbx, r14
	ja	.label_1135
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_1135:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1139
.label_1127:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1146:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1129
	test	rax, rax
	je	.label_1129
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	jmp	.label_1134
.label_1129:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	eax, 0xc
	jmp	.label_1127
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d4d0

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1148
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1148:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d510

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1149
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1149:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d550

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_1168
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1184
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1168
.label_1184:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1168:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_1192
.label_1207:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1201
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1206
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1213
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1156
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1162
	mov	esi, OFFSET FLAT:.str.11_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1176
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1174
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1177
	mov	esi, OFFSET FLAT:.str.13_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1203
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1187
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1210
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1157
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1199
.label_1209:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1202
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1202:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1209
	jmp	.label_1157
.label_1201:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1154
	nop	word ptr cs:[rax + rax]
.label_1165:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1160
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1160:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1165
	jmp	.label_1157
	nop	dword ptr [rax + rax]
.label_1154:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1204
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1204:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1154
	jmp	.label_1157
.label_1206:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1183
	nop	dword ptr [rax]
.label_1195:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1188
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1188:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1195
	jmp	.label_1157
	nop	dword ptr [rax + rax]
.label_1183:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1198
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1198:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1183
	jmp	.label_1157
.label_1213:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1172
	nop	dword ptr [rax]
.label_1158:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_1150
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1150:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1158
	jmp	.label_1157
	nop	dword ptr [rax]
.label_1172:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_1163
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1163:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1172
	jmp	.label_1157
.label_1156:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1175
	nop	word ptr [rax + rax]
.label_1186:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1179
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1179:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1186
	jmp	.label_1157
.label_1175:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1191
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1191:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1175
	jmp	.label_1157
.label_1192:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1157
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1207
.label_1162:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1152
	nop	dword ptr [rax]
.label_1205:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_1155
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1155:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1205
	jmp	.label_1157
.label_1152:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_1167
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1167:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1152
	jmp	.label_1157
.label_1176:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1178
	nop	word ptr cs:[rax + rax]
.label_1189:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1151
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1151:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1189
	jmp	.label_1157
.label_1178:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1211
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1211:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1178
	jmp	.label_1157
.label_1174:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1164
	nop	word ptr cs:[rax + rax]
.label_1153:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_1208
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1208:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1153
	jmp	.label_1157
.label_1164:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_1190
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1190:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1164
	jmp	.label_1157
.label_1177:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1173
	nop	word ptr cs:[rax + rax]
.label_1182:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_1170
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1170:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1182
	jmp	.label_1157
.label_1173:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_1166
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1166:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1173
	jmp	.label_1157
.label_1203:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1194
	nop	word ptr cs:[rax + rax]
.label_1196:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_1169
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1169:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1196
	jmp	.label_1157
.label_1194:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_1212
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1212:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1194
	jmp	.label_1157
.label_1187:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1180
.label_1171:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1193
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1193:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1171
	jmp	.label_1157
.label_1180:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1161
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1161:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1180
	jmp	.label_1157
.label_1199:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1159
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1159:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1199
	jmp	.label_1157
.label_1210:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1181
.label_1200:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_1197
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1197:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1200
.label_1157:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1181:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_1185
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1185:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1181
	jmp	.label_1157
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc20

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1214:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_1214
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dc40

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1215:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1215
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc70

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_1216
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1216
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_1217:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1216
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_1217
.label_1216:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dcc0

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_1218
	mov	rbp, -1
	movzx	r13d, byte ptr [r12]
.label_1219:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x1e
	jne	.label_1224
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1220
	nop	word ptr cs:[rax + rax]
.label_1224:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_1220:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1218
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_1223
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_1225
.label_1223:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1219
.label_1218:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1225:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	movzx	eax, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	eax, 0x1e
	je	.label_1221
	cmp	eax, 0x1c
	je	.label_1222
	cmp	eax, 0x1a
	jne	.label_1218
	mov	dword ptr [r15], 3
	jmp	.label_1218
.label_1221:
	mov	dword ptr [r15], 4
	jmp	.label_1218
.label_1222:
	mov	dword ptr [r15], 2
	jmp	.label_1218
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ddb0

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1230
	mov	rax, qword ptr [rbx + 0x48]
.label_1226:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_1229:
	mov	bpl, byte ptr [rcx + rax]
.label_1228:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1230:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1232
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_1227
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1226
.label_1227:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1231
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1228
.label_1232:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_1229
.label_1231:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1228
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de60

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_1233
	jmp	btowc
.label_1233:
	mov	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40de70

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, -1
	mov	r13d, 0x8000
	jmp	.label_1234
.label_1237:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_1234:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_1235
	cmp	edx, 2
	je	.label_1236
	cmp	eax, 0x2c
	je	.label_1235
	cmp	eax, 0x30
	mov	rcx, -2
	jb	.label_1234
	cmp	edx, 1
	jne	.label_1234
	cmp	rbx, -2
	je	.label_1234
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_1234
	cmp	rbx, -1
	jne	.label_1237
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_1234
.label_1236:
	mov	rbx, -2
.label_1235:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40df20

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx]
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1240
	lea	r13, [rsp]
	xor	r14d, r14d
.label_1242:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_1244
	lea	r13, [r12 + 8]
	jmp	.label_1243
	nop	dword ptr [rax]
.label_1244:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1239:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1241
	test	rbp, rbp
	jne	.label_1245
.label_1241:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_1239
	jmp	.label_1238
	nop	word ptr cs:[rax + rax]
.label_1245:
	lea	r13, [r12 + 0x10]
.label_1243:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_1242
	jmp	.label_1240
.label_1238:
	mov	r14, qword ptr [rsp]
.label_1240:
	mov	rax, r14
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
	#Procedure 0x40e000

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	movzx	ecx, al
	cmp	ecx, 0x11
	jne	.label_1246
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_1246
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_1246:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e020

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_1248
.label_1249:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	jne	.label_1251
	nop	dword ptr [rax]
.label_1247:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_1250
	test	r12, r12
	jne	.label_1251
.label_1250:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_1247
	jmp	.label_1248
.label_1251:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_1249
.label_1248:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e090

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1252
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1252
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1252:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	jne	.label_1253
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1253
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1253
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1254
	mov	qword ptr [rdx], rsi
.label_1254:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1253
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1253:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e120

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	je	.label_1255
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_1255
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1255
	mov	qword ptr [rax], rbx
.label_1255:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1256
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_1256
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1256
	mov	qword ptr [rax], rbx
.label_1256:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e1a0

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	jne	.label_1257
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_1258
.label_1257:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_1258
	xor	eax, eax
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	jne	.label_1258
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_1258:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e230

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	je	.label_1259
	cmp	eax, 0xb
	jne	.label_1262
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
.label_1259:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1261
.label_1262:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1263
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1263:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_1260
.label_1261:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1260:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e290

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	edx, [rax - 2]
	cmp	edx, 0xe
	ja	.label_1269
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1266]]
.label_2349:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_1265:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_2350:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	js	.label_1267
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_1264
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_2347:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1268
	mov	edi, OFFSET FLAT:.str.17_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2348:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1268
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1265
.label_1269:
	test	al, 8
	jne	.label_1270
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1268:
	xor	eax, eax
	pop	rcx
	ret	
.label_1267:
	mov	edi, OFFSET FLAT:.str.18_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1264:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1270:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e3e0

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	xor	r12d, r12d
	jmp	.label_1271
	nop	dword ptr [rax]
.label_1274:
	inc	rbx
.label_1271:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1272
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_1273
.label_1272:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1274
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1275
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1274
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_1274
.label_1275:
	mov	ebx, eax
.label_1273:
	mov	eax, ebx
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e470

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 0x10], 0
	je	.label_1278
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_1276:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1276
	xor	eax, eax
	test	rdx, rdx
	je	.label_1278
	xor	r14d, r14d
.label_1279:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_1277
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1280:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1278
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_1280
.label_1277:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1279
.label_1278:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e530

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r13, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_1282
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1282
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1284
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_1284
.label_1282:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r13
	call	create_tree
	mov	r12, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_1285
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_1285:
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_1283
	test	r12, r12
	je	.label_1283
	test	r14, r14
	je	.label_1283
	test	rax, rax
	je	.label_1283
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_1281
.label_1284:
	mov	rax, qword ptr [r15 + 8]
.label_1281:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1283:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_1281
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e640

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	jae	.label_1286
.label_1287:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	jne	.label_1290
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1289
.label_1290:
	cmp	eax, 6
	sete	cl
.label_1289:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1288:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1286:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	ja	.label_1288
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1288
	mov	qword ptr [rsp], r13
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 8]
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1291
	test	rbp, rbp
	je	.label_1291
	test	r13, r13
	je	.label_1291
	test	rax, rax
	je	.label_1291
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1287
.label_1291:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1288
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e810

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1295
	cmp	r14, r15
	jne	.label_1292
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1293
.label_1292:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_1294
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1293
.label_1294:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_1293:
	xor	eax, eax
.label_1295:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e890

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 1
	mov	qword ptr [rbx + 8], 1
	mov	edi, 8
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1297
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1296:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1297:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_1296
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8e0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r15, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_1298
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1301
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1301
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_1301
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r15
	mov	rcx, r15
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1298
.label_1301:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	jne	.label_1299
	mov	rbx, r15
	xor	r15d, r15d
	jmp	.label_1300
.label_1299:
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1303
	xor	r15d, r15d
	xor	r13d, r13d
.label_1308:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r13*8]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1307
	test	rcx, rcx
	jne	.label_1302
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1306
	jmp	.label_1298
	nop	dword ptr [rax]
.label_1302:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1306:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1298
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1304
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1307:
	mov	r15b, 1
.label_1304:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1308
	jmp	.label_1300
.label_1303:
	xor	r15d, r15d
.label_1300:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1298
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1305
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1305
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1309
.label_1305:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1309:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1298:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eac0

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	test	rax, rax
	mov	eax, 0xc
	cmovne	eax, ecx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40eaf0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
.label_1317:
	mov	dword ptr [rsp + 0x10], ebx
	nop	word ptr cs:[rax + rax]
.label_1314:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	movzx	ecx, byte ptr [rcx + rax + 8]
	cmp	ecx, 4
	jne	.label_1318
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	call	duplicate_node
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_1319
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r14, rbx
	mov	r13, rbp
	mov	rbp, r15
	jne	.label_1314
	jmp	.label_1310
	nop	word ptr cs:[rax + rax]
.label_1318:
	mov	rcx, qword ptr [rbp + 0x28]
	lea	r15, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	je	.label_1321
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	cmp	rdx, 1
	je	.label_1311
	mov	rdi, rbp
	mov	rbx, rsi
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1322
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	jne	.label_1316
	jmp	.label_1310
.label_1322:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	edx, r13d
	call	duplicate_node
	mov	r14, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	je	.label_1310
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	je	.label_1310
	mov	rdi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1310
.label_1316:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r14
	mov	edx, r13d
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_1315
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_1314
	jmp	.label_1310
.label_1311:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_1312
	cmp	r13, r14
	jne	.label_1313
.label_1312:
	mov	rcx, qword ptr [rbp]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	ebx, dword ptr [rsp + 0x10]
	or	ebx, eax
	mov	rdi, rbp
	mov	r14, rsi
	mov	edx, ebx
	call	duplicate_node
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	je	.label_1310
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_1317
	jmp	.label_1310
.label_1319:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_1310
.label_1315:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_1310
.label_1321:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
.label_1320:
	mov	dword ptr [rsp + 0x14], 0
.label_1310:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1313:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_1310
	jmp	.label_1320
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ed80

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_1323
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_1323
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	cmp	rbx, rax
	jge	.label_1329
	add	rbx, rdx
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1323
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1329:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1330
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1334
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1326
.label_1328:
	dec	rax
.label_1331:
	dec	rcx
	jmp	.label_1332
	nop	word ptr [rax + rax]
.label_1326:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1328
	jge	.label_1331
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1332:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1326
.label_1334:
	test	rax, rax
	js	.label_1335
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1335:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	r10, [r11 + rax*2 - 1]
	mov	r15, r10
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	je	.label_1323
	lea	rax, [r15 + r11]
	mov	qword ptr [r14 + 8], rax
	lea	r8, [r11 - 1]
.label_1333:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdx, [r15*8]
	lea	rax, [r15 + r8]
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1327:
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_1324
	mov	qword ptr [r12 + rsi*8], rax
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	add	rdi, rsi
	jne	.label_1327
	jmp	.label_1323
	nop	word ptr cs:[rax + rax]
.label_1324:
	mov	qword ptr [r12 + rsi*8], rdi
	add	r15, rsi
	dec	r8
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_1333
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1325
.label_1330:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_1325:
	call	memcpy
	xor	eax, eax
.label_1323:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef40

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_1336
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1342
	cmp	rsi, rax
	jne	.label_1344
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1343
	mov	qword ptr [rbx + 0x10], rax
.label_1344:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1345
	test	rax, rax
	jle	.label_1341
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1338:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1338
	jmp	.label_1341
.label_1336:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_1337
.label_1342:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1340
.label_1345:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_1341
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1339:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1339
.label_1341:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1340:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1337:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1343:
	xor	eax, eax
	jmp	.label_1337
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f020

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	shl	r15, 4
	mov	rsi, qword ptr [rax + r15]
	mov	rdx, qword ptr [rax + r15 + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1346
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	ebp, 8
	and	ebp, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + r15 + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_1346:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f0a0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1347
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_1347
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_1349:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1348
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_1350
.label_1348:
	dec	r10
	test	r10, r10
	jle	.label_1347
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_1349
	jmp	.label_1347
.label_1350:
	mov	rax, r10
.label_1347:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f120

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1351
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1352
	mov	qword ptr [rbx + 0x10], rax
.label_1351:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1353:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1352:
	xor	eax, eax
	jmp	.label_1353
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f180

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rdi
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1354
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1356
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1355
.label_1354:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1355:
	xor	eax, eax
.label_1357:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1356:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1357
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f1f0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1358
	xor	eax, eax
	dec	r9
	je	.label_1360
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1359:
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	jb	.label_1359
.label_1360:
	mov	rcx, qword ptr [rdi + 0x10]
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1361
	inc	rax
	ret	
.label_1361:
	xor	eax, eax
.label_1358:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f240

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	cmp	qword ptr [rdx + 8], 0
	je	.label_1362
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1367
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_1365:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1363
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1363
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_compare
	test	al, al
	jne	.label_1364
.label_1363:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1365
.label_1367:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1364
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1366
.label_1362:
	mov	dword ptr [rdi], 0
.label_1366:
	xor	ebp, ebp
.label_1364:
	mov	rax, rbp
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
	#Procedure 0x40f320

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1368
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1369:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1369
.label_1368:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f350

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_1370
	test	rsi, rsi
	je	.label_1370
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_1372
	nop	word ptr cs:[rax + rax]
.label_1371:
	mov	al, 1
	test	rcx, rcx
	jle	.label_1370
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1371
.label_1372:
	xor	eax, eax
.label_1370:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f3a0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1378
	mov	r12, r15
	add	r12, 8
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1385
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	mov	qword ptr [rsp + 0x20], r12
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1387
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1374:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	ecx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	ecx, 1
	jne	.label_1373
	test	eax, eax
	je	.label_1375
.label_1373:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1384
	cmp	ecx, 2
	jne	.label_1382
	or	bl, 0x10
	jmp	.label_1381
.label_1384:
	or	bl, 0x40
.label_1381:
	mov	byte ptr [r15 + 0x68], bl
.label_1382:
	test	eax, eax
	je	.label_1386
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	mov	rbx, rdi
	jne	.label_1388
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_1377
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	mov	eax, 0
	jne	.label_1378
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1388:
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_1389
	mov	eax, r13d
	and	eax, 1
	jne	.label_1380
.label_1389:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1376
	mov	eax, r13d
	and	eax, 2
	jne	.label_1380
.label_1376:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1383
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1380
.label_1383:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1375
	and	r13d, 0x40
	je	.label_1375
	nop	word ptr cs:[rax + rax]
.label_1380:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	call	re_node_set_remove_at
	inc	r12
	jmp	.label_1375
.label_1386:
	mov	rbx, rdi
	nop	dword ptr [rax + rax]
.label_1375:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1374
.label_1387:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	call	register_state
	test	eax, eax
	mov	rax, r15
	je	.label_1378
.label_1377:
	mov	rdi, r15
	call	free_state
	jmp	.label_1379
.label_1385:
	mov	rdi, r15
	call	free
.label_1379:
	xor	eax, eax
.label_1378:
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
	.align	32
	#Procedure 0x40f5b0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_1390
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1390
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_1390
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_1391:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_1391
.label_1390:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5f0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	r14d, 0xc
	test	eax, eax
	jne	.label_1395
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1393
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1396:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_1394
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_1395
.label_1394:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1396
.label_1393:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1397
.label_1392:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1395:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1397:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1395
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_1392
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6e0

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	ecx, 2
	je	.label_1405
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_1406
	test	ecx, ecx
	jne	.label_1400
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_1403
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_1408
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_1401
.label_1405:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_1401
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1406:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_1407
.label_1401:
	xor	eax, eax
	test	r14, r14
	jle	.label_1409
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1399:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1399
	mov	rax, r14
.label_1409:
	cmp	rax, qword ptr [r15]
	jae	.label_1398
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1404:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_1404
.label_1398:
	mov	ebp, r12d
.label_1403:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1407:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1403
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1402
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_1401
.label_1408:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_1403
.label_1402:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_1403
.label_1400:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f880

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	r15, qword ptr [rsp + 0x30]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, r8
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1410
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1412
	mov	r12, qword ptr [r13 + 8]
.label_1412:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1411
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1411
	mov	rcx, r14
.label_1411:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1410:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f940

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_1413
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1414
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1414
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	je	.label_1414
.label_1413:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_1414:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f9e0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r14
	jle	.label_1454
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1415
	mov	qword ptr [rbx + 0x20], 0
.label_1415:
	mov	rcx, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	jne	.label_1419
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1419:
	test	r13, r13
	je	.label_1420
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1438
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1446
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1442
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1442:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1440
.label_1441:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_1425:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1420
	add	qword ptr [rbx + 8], r13
.label_1420:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1452
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1456
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1458
	jmp	.label_1417
.label_1452:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1460
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1417
.label_1456:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1417:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1458:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1454:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_1419
.label_1438:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1429
.label_1439:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1435
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1457
	mov	rdx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	cmp	rcx, rdx
	cmovb	rcx, rdx
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_1450:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_1423
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	cmp	edx, 0x80
	je	.label_1450
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1451
.label_1444:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_1423
	cmp	rax, -3
	ja	.label_1423
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_1423:
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	jne	.label_1421
.label_1457:
	lea	rdx, [rsp + 0x24]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	je	.label_1428
.label_1421:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1432
	mov	ecx, dword ptr [rsp + 0x24]
.label_1418:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_1437
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1437
	xor	eax, eax
	jmp	.label_1437
.label_1446:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1449:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_1443
	jge	.label_1447
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1443:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1449
.label_1447:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rbp, [rax + rcx]
	lea	rsi, [rax + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1453
	cmp	rbp, r13
	jne	.label_1453
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1453
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	test	rax, rax
	jle	.label_1425
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1433:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1433
	jmp	.label_1425
.label_1440:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1441
.label_1453:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1434:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1448
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1434
.label_1448:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_1427
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1455:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1427
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_1455
.label_1427:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1445
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1426
.label_1460:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1416
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1417
.label_1435:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	je	.label_1422
	mov	al, byte ptr [rdx + rcx]
.label_1422:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	mov	rsi, r15
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_1431
	xor	ecx, ecx
	cmp	r15d, 0xa
	jne	.label_1431
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1431
	xor	ecx, ecx
.label_1431:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1425
.label_1445:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_1426
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1430
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1430:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_1426
.label_1416:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1417
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1417
.label_1428:
	mov	rsi, qword ptr [rsp]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_1437:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_1459
.label_1426:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1425
.label_1429:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1439
.label_1459:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1436
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1436:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1430
	jmp	.label_1426
.label_1432:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_1437
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	jne	.label_1418
	jmp	.label_1437
.label_1451:
	lea	rsi, [rsp + 0xe]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1444
	lea	rcx, [rbp - 1]
	sub	rcx, rax
	cmp	rcx, -8
	mov	r10, -7
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	sar	r10, 0x20
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	xor	ecx, ecx
.label_1424:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1424
	jmp	.label_1444
.label_2222:
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410010

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	dword ptr [rsp + 0x1c], esi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1465
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_1488
	test	eax, eax
	je	.label_1465
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_1461
	test	sil, sil
	jne	.label_1461
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1465
.label_1488:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1465:
	test	rbx, rbx
	je	.label_1468
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_1478
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r14 + 0x98], 0
	jne	.label_1473
.label_1478:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_1477
.label_1487:
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_1481:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1467
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 0x1c]
	or	r12b, al
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_1489:
	lea	r14, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_1485
.label_1486:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_1469
.label_1462:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1476
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_1476:
	test	rbx, rbx
	jne	.label_1482
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1463
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1467
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1467
.label_1482:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1470
.label_1466:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_1472
	test	al, al
	jns	.label_1480
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1480
.label_1472:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_1489
	jmp	.label_1467
.label_1485:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_1484
	jmp	.label_1486
.label_1469:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1462
.label_1484:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_1491
	jmp	.label_1462
.label_1470:
	cmp	r15, rbx
	je	.label_1464
	mov	dword ptr [rsp + 0x20], 0
.label_1464:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1466
	nop	dword ptr [rax + rax]
.label_1480:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_1481
	jmp	.label_1463
.label_1467:
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_1483
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_1483:
	mov	rax, qword ptr [rsp]
	jmp	.label_1463
.label_1491:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_1463
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1468:
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	je	.label_1463
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1461:
	test	edx, edx
	jne	.label_1479
	test	ecx, ecx
	je	.label_1465
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	mov	rsi, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_1465
.label_1477:
	test	al, al
	js	.label_1490
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	jne	.label_1487
	mov	rax, r12
	jmp	.label_1463
.label_1473:
	lea	r15, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1475
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1471
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1474
.label_1471:
	mov	dword ptr [rsp + 0x20], 0
	jmp	.label_1478
.label_1479:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1465
.label_1490:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	je	.label_1487
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_1487
	mov	rax, r12
.label_1463:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1475:
	cdqe	
	jmp	.label_1463
.label_1474:
	cdqe	
	jmp	.label_1463
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4103b0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r15d, eax
	xor	ebp, ebp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1492
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1493:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1492
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_1493
.label_1492:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410430

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_1503
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	mov	r13d, 0xc
	test	r15, r15
	je	.label_1497
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_1502
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_1506
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	mov	r14, r15
	mov	r15, rax
	jmp	.label_1507
.label_1502:
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, r15
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1496
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	jne	.label_1500
	mov	r13d, 1
	jmp	.label_1501
	nop	word ptr [rax + rax]
.label_1504:
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_1507:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1498
	cmp	qword ptr [r14], 0
	jne	.label_1494
	cmp	qword ptr [r15], 0
	jne	.label_1494
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1499
	mov	rax, qword ptr [rdi + 0xb8]
	dec	rbx
	nop	word ptr [rax + rax]
.label_1495:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_1505
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1504
.label_1505:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_1495
	mov	rbp, r14
	jmp	.label_1501
.label_1497:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_1501
.label_1498:
	mov	rbp, r14
	jmp	.label_1501
.label_1494:
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_1501
.label_1500:
	mov	rdi, qword ptr [r12 + 0xb8]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_1496:
	xor	r15d, r15d
.label_1501:
	mov	rdi, rbp
	call	free
	mov	rdi, r15
	call	free
.label_1503:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1506:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_1501
.label_1499:
	mov	rbp, r14
	jmp	.label_1501
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410680

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1508
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1511:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1509
	nop	word ptr [rax + rax]
.label_1512:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1512
.label_1509:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1510
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1510:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1511
.label_1508:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410740

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r12, rcx
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1524]]
	mov	qword ptr [rbp - 0x60], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1525]]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	xor	r14d, r14d
	test	r8b, r8b
	je	.label_1526
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1515
	lea	r14, [rbp - 0x70]
.label_1526:
	mov	qword ptr [rbp - 0x88], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x50], xmm0
	mov	qword ptr [rbp - 0x40], 0
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	ja	.label_1518
	mov	rdi, rsp
	lea	rax, [r13 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_1529
.label_1518:
	mov	rdi, r13
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1532
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_1529:
	mov	qword ptr [rbp - 0x80], rdi
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x30], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1516
	lea	r13, [r12 + 8]
	jmp	.label_1520
.label_1522:
	cmp	r15, -2
	je	.label_1521
	test	r14, r14
	je	.label_1523
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_1530
	nop	word ptr cs:[rax + rax]
.label_1520:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1514
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_1514
	test	r14, r14
	je	.label_1517
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_1519
	nop	word ptr [rax + rax]
.label_1528:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1513
	cmp	qword ptr [rcx], -1
	je	.label_1519
.label_1513:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1528
.label_1519:
	cmp	rax, rbx
	je	.label_1516
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
.label_1514:
	sub	rsp, 0x10
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x30]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_1522
.label_1530:
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1520
.label_1516:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1527
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1527:
	mov	rdi, r14
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_1515
.label_1517:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	xor	r14d, r14d
	jmp	.label_1531
.label_1521:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1532
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1532:
	mov	rdi, r14
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_1515:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1523:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r14d, 1
.label_1531:
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1515
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	jmp	.label_1515
	nop	
	.section	.text
	.align	32
	#Procedure 0x4109d0

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbx
	mov	rbx, rdi
	call	match_ctx_clean
	mov	rdi, qword ptr [rbx + 0xf8]
	call	free
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410a00

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1533
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1535
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1536
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1540:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1539
	dec	rsi
	test	rsi, rsi
	jg	.label_1540
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1534
.label_1536:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_1534
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1534
	jmp	.label_1537
.label_1539:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1538
.label_1541:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1534
.label_1537:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1534
	xor	edx, edx
	jmp	.label_1534
.label_1533:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1534
.label_1535:
	and	edx, 2
	xor	edx, 0xa
.label_1534:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1538:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1534
	test	eax, eax
	jne	.label_1534
	jmp	.label_1541
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410ac0

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_1542
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_1544
.label_1545:
	xor	ecx, ecx
	cmp	rbp, rbx
	je	.label_1547
	test	rax, rax
	je	.label_1547
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_1547:
	mov	qword ptr [r13], r14
	mov	eax, 1
	jmp	.label_1546
	nop	word ptr cs:[rax + rax]
.label_1544:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1545
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1545
	mov	ecx, dword ptr [rsp + 0x14]
.label_1546:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1544
	jmp	.label_1543
.label_1542:
	mov	qword ptr [rsp + 8], rdx
.label_1543:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
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
	#Procedure 0x410b90

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rax, rsi
	sar	rax, 0x3f
	shr	rax, 0x3a
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410bb0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	jle	.label_1548
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1550:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	jne	.label_1549
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_1549
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1549
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_1548
	nop	word ptr cs:[rax + rax]
.label_1549:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1550
.label_1548:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c50

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r14, rsi
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1564
	mov	r8, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1562:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_1554
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1555
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1565
	test	ecx, ecx
	je	.label_1554
.label_1565:
	test	bh, 8
	je	.label_1563
	test	ecx, ecx
	jne	.label_1554
.label_1563:
	test	bh, 0x20
	je	.label_1552
	mov	ecx, eax
	and	ecx, 2
	je	.label_1554
.label_1552:
	test	bpl, bpl
	jns	.label_1555
	and	eax, 8
	je	.label_1554
	nop	word ptr cs:[rax + rax]
.label_1555:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rdi, r13
	mov	rbx, r8
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1553
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_1554
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr [rax + rax]
.label_1557:
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	jne	.label_1551
	mov	rcx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1551
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	cmp	rsi, rcx
	jne	.label_1558
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_1559
.label_1558:
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_1559:
	mov	rcx, qword ptr [rcx]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, qword ptr [rax + rbp]
	mov	rbx, qword ptr [rsp + 0x40]
	add	r14, rbx
	sub	r14, qword ptr [rax + rbp - 8]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rbx*8]
	test	rcx, rcx
	mov	esi, 0
	je	.label_1556
	mov	rsi, qword ptr [rcx + 0x10]
.label_1556:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_1560
	mov	ebx, eax
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, qword ptr [r8 + 0x50]
	mov	qword ptr [rsp + 0x28], rdx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1567
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x48]
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1566
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1553
.label_1566:
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1561
.label_1560:
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_1561
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1553
	nop	dword ptr [rax]
.label_1561:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1551
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1551
	mov	rdi, r13
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1553
	mov	rdi, r13
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	call	transit_state_bkref
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1553
	nop	dword ptr [rax + rax]
.label_1551:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1557
	nop	word ptr cs:[rax + rax]
.label_1554:
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	jl	.label_1562
.label_1564:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1553
.label_1567:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
.label_1553:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
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
	#Procedure 0x411000

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbx
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1568
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1568
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1569
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1568
	mov	qword ptr [rbx + 0xb8], rcx
.label_1569:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1572
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_1570
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1571
	jmp	.label_1568
.label_1572:
	cmp	eax, 2
	jl	.label_1573
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1571
.label_1570:
	call	build_upper_buffer
	jmp	.label_1571
.label_1573:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1571
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_1571:
	xor	eax, eax
.label_1568:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4110d0

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1577
.label_1575:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1579:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1578
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_1576
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_1579
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_1574
.label_1578:
	mov	rax, qword ptr [rax + r12*8]
.label_1574:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1577:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_1575
	jmp	.label_1574
.label_1576:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_1574
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411180

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1580
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1586
.label_1580:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_1581
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_1583
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1587
	xor	eax, eax
	jmp	.label_1582
.label_1581:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1586
.label_1583:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_1587:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1586
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1586:
	test	rbx, rbx
	je	.label_1584
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1585
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1582
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1582
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1582
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1582
.label_1584:
	mov	rax, rbx
	jmp	.label_1582
.label_1585:
	mov	rax, rbx
.label_1582:
	add	rsp, 0x18
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
	#Procedure 0x4112d0

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_1589:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_1590:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_1588
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_1590
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1588
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_1589
.label_1588:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411340

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	je	.label_1591
.label_1593:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbx + 0xe8]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1592
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1592:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1591:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1592
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1593
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411410

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	rbp, rbx
	cmp	rax, -1
	je	.label_1608
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
.label_1609:
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x50]
	cmp	qword ptr [rcx], rdx
	je	.label_1602
	cmp	byte ptr [rcx + 0x20], 0
	lea	rcx, [rcx + 0x28]
	jne	.label_1609
.label_1608:
	xor	eax, eax
	cmp	qword ptr [rbp + 0xe8], 0
	jle	.label_1602
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_1595
.label_1597:
	mov	r13, r15
	jmp	.label_1594
	nop	word ptr cs:[rax + rax]
.label_1595:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + rax], rdx
	jne	.label_1599
	mov	r15, qword ptr [rbx]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_1613
	mov	r8, qword ptr [rsp + 0x40]
	xor	r14d, r14d
	jmp	.label_1606
.label_1613:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_1594
.label_1612:
	cmp	rsi, qword ptr [rbp + 0x58]
	jg	.label_1597
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], r8
	mov	rdi, rbp
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_1602
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1603
	nop	dword ptr [rax + rax]
.label_1606:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	sub	r12, r15
	jle	.label_1610
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	jg	.label_1612
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_1603:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rax + r8]
	lea	rsi, [rax + r15]
	mov	r13, r8
	mov	rdx, r12
	call	memcmp
	mov	r8, r13
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	jne	.label_1596
.label_1610:
	mov	r15, r8
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	cmp	eax, 1
	ja	.label_1602
	mov	r8, r15
	add	r8, r12
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_1606
	jmp	.label_1594
.label_1596:
	mov	r13, r15
	nop	word ptr cs:[rax + rax]
.label_1594:
	mov	rcx, r13
	cmp	r14, qword ptr [rbx + 0x20]
	jl	.label_1599
	test	r14, r14
	setg	al
	movzx	r13d, al
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_1599
	jmp	.label_1598
.label_1611:
	cmp	r8, qword ptr [rbp + 0x58]
	jge	.label_1599
	lea	esi, [r8 + 1]
	mov	r14, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_1602
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, r14
	jmp	.label_1605
	nop	word ptr cs:[rax + rax]
.label_1598:
	cmp	r13, qword ptr [rbx]
	jle	.label_1600
	cmp	r8, qword ptr [rbp + 0x30]
	jge	.label_1611
.label_1605:
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_1599
	inc	r8
.label_1600:
	mov	r14, rbx
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_1607
	mov	r15, r8
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1601
	cmp	qword ptr [r14 + 0x10], 0
	mov	rdi, rbp
	jne	.label_1604
	mov	rsi, r13
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	call	rpl_calloc
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1602
.label_1604:
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	je	.label_1607
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	jne	.label_1602
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rdi
	call	match_ctx_add_sublast
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1602
	mov	rbx, rdx
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rsi
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rcx, rbp
	cmp	eax, 1
	ja	.label_1602
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_1601:
	mov	r8, r15
.label_1607:
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	jl	.label_1598
	nop	dword ptr [rax + rax]
.label_1599:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	cmp	rcx, qword ptr [rbp + 0xe8]
	jl	.label_1595
.label_1602:
	add	rsp, 0x58
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
	#Procedure 0x4117c0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1614
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1616
	test	rax, rax
	jle	.label_1616
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1626
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1618
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_1617
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_1619:
	mov	rbx, rdx
	mov	rbp, rsi
	nop	word ptr [rax + rax]
.label_1624:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1617
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_1620
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1624
	jmp	.label_1617
.label_1620:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	movzx	esi, sil
	add	rsi, rbp
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1619
	cmp	rcx, rax
	sete	al
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_1617:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_1625
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_1621
.label_1626:
	mov	rax, qword ptr [r12 + 8]
.label_1616:
	test	rax, rax
	jle	.label_1614
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_1623
.label_1614:
	test	r15, r15
	je	.label_1615
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1615
	mov	rdi, r14
	mov	rsi, r15
.label_1623:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1615:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1622
.label_1625:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_1621
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1621:
	mov	qword ptr [r14 + 8], rbx
.label_1622:
	xor	eax, eax
.label_1618:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411980

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_1627
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_1628:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_1628
.label_1627:
	cmp	rax, r8
	jge	.label_1630
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1629
.label_1630:
	mov	rax, -1
.label_1629:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4119f0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x40]
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1631
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1634
.label_1631:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1632
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1632
.label_1634:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1633
.label_1632:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_1633
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_1633:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411a70

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_1635
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1635
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, r12
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_1635:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b00

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1636
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_1638:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_1637
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1639
.label_1637:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_1638
.label_1636:
	mov	rax, -1
.label_1639:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411b50

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x74], 0
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	jle	.label_1652
.label_1648:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	cmp	r14, r13
	jne	.label_1659
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1642
	lea	rsi, [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	mov	ecx, r15d
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rcx, rbx
	je	.label_1641
	jmp	.label_1644
.label_1659:
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	rbp, qword ptr [rcx + r14*8]
	test	rbp, rbp
	mov	rcx, rbx
	je	.label_1653
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1655
	mov	r13d, eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	jmp	.label_1657
.label_1653:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_1640
.label_1655:
	mov	r13d, eax
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1642
.label_1657:
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	je	.label_1640
.label_1641:
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_1650
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	mov	rdi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	mov	rcx, rbx
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1644
.label_1650:
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1645
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1644
.label_1645:
	mov	rcx, rbx
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r14*8], rbp
.label_1640:
	cmp	r14, qword ptr [rsp + 0x38]
	jge	.label_1647
	inc	r14
	lea	rbx, [rsp + 0x50]
	mov	r12, r14
	xor	r13d, r13d
.label_1654:
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_1647
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsi, qword ptr [rax + r12*8]
	test	rsi, rsi
	je	.label_1656
	add	rsi, 8
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1644
.label_1656:
	test	rbp, rbp
	je	.label_1658
	add	rbp, 0x20
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, rbx
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1644
.label_1658:
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	mov	r14, rbx
	je	.label_1649
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1644
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1644
.label_1649:
	mov	r15, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1651
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1644
.label_1651:
	mov	rbx, r14
	inc	r13
	test	rbp, rbp
	mov	rcx, r15
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r12*8], rbp
	mov	eax, 0
	cmovne	r13, rax
	cmp	r12, qword ptr [rsp + 0x38]
	lea	r12, [r12 + 1]
	jl	.label_1654
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_1643
.label_1647:
	mov	rbx, rcx
.label_1643:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_1646
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1642
.label_1646:
	mov	r15d, 1
	jmp	.label_1642
.label_1644:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_1642:
	mov	eax, r15d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1652:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_1642
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1642
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_1642
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	call	memset
	mov	rsi, r15
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_1648
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411fa0

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x18]
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1660
.label_1661:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_1662
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1662:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1660:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1662
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1661
	.section	.text
	.align	32
	#Procedure 0x412020

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	jl	.label_1663
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1664
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_1663:
	test	rax, rax
	jle	.label_1665
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_1665
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1665:
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	xor	eax, eax
	sub	r14, r15
	mov	cx, 0xffff
	cmovne	cx, ax
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rsi, qword ptr [rbx + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	jge	.label_1666
	mov	dword ptr [rbx + 0xe0], r14d
.label_1666:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1664:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_1666
	.section	.text
	.align	32
	#Procedure 0x4121a0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1667
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1670
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1672:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rbp, [rax + rcx*8]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r13
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1669
	mov	rdi, rbx
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1668
	nop	word ptr cs:[rax + rax]
.label_1669:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_1668:
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1671
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1672
.label_1670:
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	xor	r12d, r12d
	jmp	.label_1667
.label_1671:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1667:
	mov	eax, r12d
	add	rsp, 0x28
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
	#Procedure 0x4122a0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_1681
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_1673:
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	dword ptr [rax + rax]
.label_1680:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1676
	mov	rbp, qword ptr [r15 - 8]
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, rax
	jne	.label_1684
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_1679
	mov	rbx, r14
	jmp	.label_1678
	nop	dword ptr [rax + rax]
.label_1684:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_1687
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_1683
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1675
.label_1679:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rdi, r14
	mov	r14d, eax
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x18]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsi, r12
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	or	eax, r14d
	mov	ecx, 2
	or	eax, edx
	jne	.label_1674
.label_1685:
	mov	r14, rbx
	jmp	.label_1678
.label_1687:
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_1686
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1675
.label_1683:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1682
	xor	al, 1
	jne	.label_1682
.label_1686:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x34]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x34], eax
.label_1675:
	mov	r13, qword ptr [rsp + 0x28]
.label_1678:
	test	ecx, ecx
	je	.label_1676
	cmp	ecx, 4
	jne	.label_1688
.label_1676:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_1680
	jmp	.label_1681
.label_1674:
	test	r14d, r14d
	cmovne	ebp, r14d
	test	edx, edx
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], ebp
	jmp	.label_1685
.label_1682:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	mov	dword ptr [rsp + 0x64], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1675
	nop	word ptr cs:[rax + rax]
.label_1688:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_1673
	jmp	.label_1677
.label_1681:
	xor	eax, eax
.label_1677:
	add	rsp, 0x68
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
	#Procedure 0x412570

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1696
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1697:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_1692
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1698
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	add	rbx, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rbp, [rsp + 0x30]
	je	.label_1695
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	call	re_node_set_merge
	mov	rcx, r12
	mov	dword ptr [rsp + 0x54], eax
	test	eax, eax
	jne	.label_1689
.label_1695:
	mov	rdi, rbp
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_1690
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	mov	rdx, rbp
	call	re_acquire_state
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1694
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	je	.label_1694
	jmp	.label_1689
	nop	dword ptr [rax]
.label_1698:
	test	eax, eax
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1694
	nop	dword ptr [rax]
.label_1692:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	call	check_node_accept
	mov	rcx, rbx
	test	al, al
	je	.label_1693
.label_1694:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	mov	rcx, rbx
	test	al, al
	je	.label_1690
.label_1693:
	inc	r15
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_1697
.label_1696:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_1691
.label_1690:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, 0xc
	jmp	.label_1691
.label_1689:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, dword ptr [rsp + 0x54]
.label_1691:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412740

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	jmp	.label_1699
	nop	dword ptr [rax]
.label_1701:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_1699:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1703
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1700
	cmp	qword ptr [rax + rcx], r14
	je	.label_1705
.label_1700:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1702
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_1704
	test	rcx, rcx
	jne	.label_1701
	jmp	.label_1703
	nop	dword ptr [rax + rax]
.label_1704:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_1701
	jmp	.label_1702
.label_1705:
	cmp	r15d, 9
	jne	.label_1703
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1702
.label_1703:
	xor	eax, eax
.label_1702:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412820

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	cmp	qword ptr [r12 + 8], 0
	je	.label_1706
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1709
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1712:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_1707
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_1711
.label_1707:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1712
.label_1709:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1710
.label_1711:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1706:
	mov	dword ptr [rdi], 0
	jmp	.label_1708
.label_1710:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1708:
	xor	ebx, ebx
	jmp	.label_1711
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4128f0

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	xor	eax, eax
	test	r12, r12
	je	.label_1715
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1721
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1722
	xor	eax, eax
.label_1716:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_1714
	movzx	esi, dil
	shr	edi, 0x14
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	esi, 0xc
	je	.label_1720
	cmp	esi, 4
	je	.label_1717
	cmp	esi, 2
	jne	.label_1718
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1714
.label_1717:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1714
.label_1718:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1714
.label_1720:
	or	byte ptr [r12 + 0x68], 0x80
.label_1714:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_1716
.label_1722:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_1719
.label_1715:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1721:
	mov	rdi, r12
	call	free
	jmp	.label_1713
.label_1719:
	mov	rdi, r12
	call	free_state
.label_1713:
	xor	eax, eax
	jmp	.label_1715
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412a20

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	shl	rbp, 4
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	je	.label_1733
	mov	rdi, r13
	mov	rsi, r12
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1744
	xor	eax, eax
	cmp	esi, 2
	jl	.label_1723
	test	byte ptr [rbx + 0xd8], 0x40
	jne	.label_1748
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_1723
.label_1748:
	cmp	byte ptr [rbx + 0xd8], 0
	js	.label_1727
	mov	eax, esi
	jmp	.label_1723
.label_1744:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_1723
	test	cl, cl
	je	.label_1723
	mov	rbp, qword ptr [r14 + rbp]
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_1736
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_1736
	xor	r14d, r14d
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_1742
.label_1736:
	mov	rdi, r13
	mov	ebx, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebx
	mov	r14d, eax
.label_1742:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_1747
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
.label_1750:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1749
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x28]
	jl	.label_1750
.label_1747:
	mov	r15d, esi
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_1724
	xor	ebx, ebx
	nop	
.label_1734:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_1740
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	jl	.label_1734
.label_1724:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	esi, r15d
	jle	.label_1725
	mov	rax, qword ptr [rbp + 8]
	xor	edx, edx
	nop	
.label_1729:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1745
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_1741
.label_1745:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbp + 0x40]
	jl	.label_1729
	jmp	.label_1725
.label_1727:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_1723
	mov	eax, esi
	jmp	.label_1723
.label_1733:
	mov	rsi, qword ptr [r13 + 8]
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_1723
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1751
	xor	eax, eax
	jmp	.label_1723
.label_1740:
	mov	esi, r15d
.label_1749:
	mov	ecx, esi
.label_1725:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_1743
	mov	eax, ecx
	jmp	.label_1723
.label_1743:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_1723
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_1723:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1741:
	mov	ecx, esi
	jmp	.label_1725
.label_1751:
	mov	cl, byte ptr [r12 + rsi + 1]
	movzx	edx, dl
	cmp	edx, 0xdf
	ja	.label_1731
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_1723
.label_1731:
	cmp	edx, 0xef
	ja	.label_1728
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_1726
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_1726
	xor	eax, eax
	jmp	.label_1723
.label_1728:
	cmp	edx, 0xf7
	ja	.label_1732
	mov	eax, 4
	cmp	edx, 0xf0
	jne	.label_1726
	movzx	ecx, cl
	cmp	ecx, 0x90
	jae	.label_1726
	xor	eax, eax
	jmp	.label_1723
.label_1732:
	cmp	edx, 0xfb
	ja	.label_1739
	mov	eax, 5
	cmp	edx, 0xf8
	jne	.label_1726
	movzx	ecx, cl
	cmp	ecx, 0x88
	jae	.label_1726
	xor	eax, eax
	jmp	.label_1723
.label_1739:
	cmp	edx, 0xfd
	ja	.label_1746
	mov	eax, 6
	cmp	edx, 0xfc
	jne	.label_1726
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_1726
	xor	eax, eax
	jmp	.label_1723
.label_1726:
	mov	ecx, eax
	lea	rdx, [rcx + r12]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_1737
	xor	eax, eax
	jmp	.label_1723
.label_1737:
	add	r12, qword ptr [r13 + 8]
	mov	edx, 1
.label_1738:
	mov	bl, byte ptr [r12 + rdx]
	test	bl, bl
	jns	.label_1735
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_1730
	inc	rdx
	cmp	rdx, rcx
	jl	.label_1738
	jmp	.label_1723
.label_1746:
	xor	eax, eax
	jmp	.label_1723
.label_1735:
	xor	eax, eax
	jmp	.label_1723
.label_1730:
	xor	eax, eax
	jmp	.label_1723
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412ce0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	movzx	ecx, byte ptr [rbx + 8]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_1753
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1755]]
.label_2179:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	je	.label_1754
	xor	eax, eax
	jmp	.label_1753
.label_2180:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_1754
	xor	eax, eax
	jmp	.label_1753
.label_2182:
	test	sil, sil
	js	.label_1758
.label_2181:
	test	sil, sil
	je	.label_1760
	movzx	eax, sil
	cmp	eax, 0xa
	jne	.label_1754
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1754
	xor	eax, eax
	jmp	.label_1753
.label_1760:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1757
.label_1754:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_1753
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_1756
	test	ecx, ecx
	jne	.label_1756
	xor	eax, eax
	jmp	.label_1753
.label_1756:
	mov	edx, ebp
	test	dh, 8
	je	.label_1752
	test	ecx, ecx
	je	.label_1752
	xor	eax, eax
	jmp	.label_1753
.label_1758:
	xor	eax, eax
	jmp	.label_1753
.label_1752:
	test	dh, 0x20
	je	.label_1759
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1759
	xor	eax, eax
	jmp	.label_1753
.label_1757:
	xor	eax, eax
	jmp	.label_1753
.label_1759:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1753:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412de0
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412df0

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1762
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1765:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1761
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1767
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1770
	test	ecx, ecx
	je	.label_1761
.label_1770:
	test	bh, 8
	je	.label_1764
	test	ecx, ecx
	jne	.label_1761
.label_1764:
	test	bh, 0x20
	je	.label_1766
	mov	ecx, eax
	and	ecx, 2
	je	.label_1761
.label_1766:
	test	bpl, bpl
	jns	.label_1767
	and	eax, 8
	je	.label_1761
	nop	word ptr cs:[rax + rax]
.label_1767:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1761
	mov	rbp, r12
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	mov	ecx, dword ptr [r15 + 0xe0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	mov	rsi, r12
	call	clean_state_log_if_needed
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	jne	.label_1762
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1768
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_1763
	jmp	.label_1762
.label_1768:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1763:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1769
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1769:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_1761
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1762
	nop	word ptr cs:[rax + rax]
.label_1761:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_1765
.label_1762:
	add	rsp, 0x38
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
	#Procedure 0x412ff0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	je	.label_1775
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rdi, r14
	mov	rsi, rbx
	mov	qword ptr [rbp - 0xb8], rbx
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_1788
	lea	rsi, [r12 + 1]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_1794
	test	eax, eax
	jne	.label_1794
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1784
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1804
.label_1784:
	call	malloc
	test	rax, rax
	je	.label_1794
	mov	qword ptr [rbp - 0xc0], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_1804:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0xb0], rax
.label_1806:
	mov	qword ptr [rbp - 0x78], r13
	mov	qword ptr [rbp - 0x40], 0
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	mov	rbx, r14
	jle	.label_1777
	mov	rcx, qword ptr [rbp - 0x80]
	lea	r14, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1797:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_1809
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_1779
.label_1809:
	inc	r15
	cmp	r15, qword ptr [r14]
	jl	.label_1797
.label_1777:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_1802
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1779
.label_1802:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1807
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r13, rdx
	jmp	.label_1798
	nop	word ptr cs:[rax + rax]
.label_1807:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	lea	rdx, [rbp - 0x48]
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_1776
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1779
.label_1776:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	je	.label_1781
	mov	al, 1
	cmp	dword ptr [rsi + 0xb4], 1
	jg	.label_1785
	mov	rax, qword ptr [rbp - 0xb0]
.label_1785:
	mov	qword ptr [rbp - 0xb0], rax
.label_1781:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	mov	r13, rbx
	test	rax, rax
	jne	.label_1795
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	mov	rsi, r14
	je	.label_1798
	jmp	.label_1779
.label_1795:
	mov	rsi, r14
	nop	dword ptr [rax + rax]
.label_1798:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	call	bitset_merge
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_1806
	mov	rax, qword ptr [rbp - 0xb0]
	and	al, 1
	jne	.label_1808
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	test	r15, r15
	mov	r11, r14
	je	.label_1779
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1801:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	test	rdi, rdi
	je	.label_1780
	mov	rdx, r8
	mov	esi, 1
	jmp	.label_1783
	nop	word ptr cs:[rax + rax]
.label_1787:
	add	rax, 8
	test	qword ptr [rcx], rsi
	lea	rcx, [rcx + 0x20]
	je	.label_1787
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	je	.label_1790
	mov	rax, qword ptr [rax + r12*8]
	jmp	.label_1792
.label_1790:
	mov	rax, qword ptr [rax]
.label_1792:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_1803
	nop	word ptr cs:[rax + rax]
.label_1783:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_1787
.label_1803:
	add	rsi, rsi
	shr	rdi, 1
	inc	rdx
	test	rdi, rdi
	jne	.label_1783
.label_1780:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1801
.label_1793:
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	je	.label_1782
	test	r12, r12
	jle	.label_1782
	mov	rax, qword ptr [rbp - 0x80]
	lea	r15, [rax + 0x1800]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1811:
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_contain
	test	al, al
	jne	.label_1810
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_1811
	jmp	.label_1782
.label_1775:
	xor	eax, eax
	jmp	.label_1774
.label_1788:
	mov	rdi, r15
	call	free
	test	r12, r12
	je	.label_1772
	xor	eax, eax
	jmp	.label_1774
.label_1772:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1774
.label_1810:
	mov	rax, r12
	shl	rax, 4
	add	rax, r13
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	je	.label_1782
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_1782:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1791
	mov	rdi, r13
	call	free
.label_1791:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_1796
	mov	rbx, qword ptr [rbp - 0x80]
	add	rbx, 0x10
	nop	dword ptr [rax + rax]
.label_1799:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1799
.label_1796:
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	al, 1
	jmp	.label_1774
.label_1808:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rax + 0x60], r15
	test	r15, r15
	je	.label_1779
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	xor	r8d, r8d
	xor	r9d, r9d
.label_1789:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	test	rsi, rsi
	mov	rdi, r8
	mov	ecx, 1
	jne	.label_1786
	jmp	.label_1771
	nop	word ptr cs:[rax + rax]
.label_1773:
	add	rax, 8
	test	qword ptr [rdx], rcx
	lea	rdx, [rdx + 0x20]
	je	.label_1773
	mov	rdx, qword ptr [rax]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	jmp	.label_1778
	nop	word ptr cs:[rax + rax]
.label_1786:
	test	sil, 1
	mov	rdx, rbx
	mov	rax, r10
	jne	.label_1773
.label_1778:
	add	rcx, rcx
	shr	rsi, 1
	inc	rdi
	test	rsi, rsi
	jne	.label_1786
.label_1771:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1789
	jmp	.label_1793
.label_1779:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	je	.label_1794
	call	free
.label_1794:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_1800
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1805:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1805
.label_1800:
	mov	rdi, r14
	call	free
	xor	eax, eax
.label_1774:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4135e0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1820
	xor	ebp, ebp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1826:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_1823
	movzx	esi, byte ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_set
	jmp	.label_1830
	nop	word ptr cs:[rax + rax]
.label_1823:
	cmp	ebp, 7
	je	.label_1812
	cmp	ebp, 5
	je	.label_1838
	cmp	ebp, 3
	jne	.label_1832
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_merge
	jmp	.label_1830
.label_1812:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x88], -1
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_1844
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_clear
	mov	r8, rbp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1844:
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_1830
	jmp	.label_1813
.label_1838:
	mov	qword ptr [rsp + 0x18], rax
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_1814
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_1822
.label_1814:
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_1822:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_1825
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	call	bitset_clear
	mov	rax, rbp
.label_1825:
	mov	qword ptr [rsp + 0x10], rax
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	jns	.label_1830
.label_1813:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	call	bitset_clear
	nop	
.label_1830:
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_1836
	test	r13b, 0x20
	je	.label_1840
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	call	bitset_contain
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_1824
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1840:
	test	r13b, r13b
	js	.label_1843
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_1847
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	jne	.label_1819
	test	byte ptr [rax + 2], 0x40
	jne	.label_1819
	mov	rbp, r8
	call	bitset_empty
	mov	r8, rbp
	jmp	.label_1832
.label_1819:
	cmp	dword ptr [r8 + 0xb4], 2
	mov	ecx, 0
	mov	edx, 0
	jl	.label_1821
	mov	rdx, qword ptr [r8 + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1837:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_1837
	jmp	.label_1834
	nop	dword ptr [rax]
.label_1821:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1821
.label_1834:
	test	rcx, rcx
	je	.label_1832
.label_1847:
	test	r13b, 8
	je	.label_1836
	cmp	ebp, 1
	jne	.label_1842
	test	byte ptr [rax + 2], 0x40
	jne	.label_1843
.label_1842:
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_1817
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1846:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1846
	jmp	.label_1815
	nop	dword ptr [rax]
.label_1817:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1817
.label_1815:
	test	rax, rax
	je	.label_1824
.label_1836:
	test	r15, r15
	jle	.label_1827
	mov	rbx, qword ptr [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1841:
	cmp	ebp, 1
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	jne	.label_1831
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	call	bitset_contain
	test	al, al
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	je	.label_1839
.label_1831:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_1831
	test	rax, rax
	mov	ebp, 0
	mov	eax, 0
	mov	ecx, 0
	je	.label_1839
	nop	dword ptr [rax + rax]
.label_1828:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_1828
	test	rax, rax
	je	.label_1845
	mov	rdi, r15
	shl	rdi, 5
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1818
	inc	r15
.label_1845:
	lea	rax, [r12 + r12*2]
	lea	rdi, [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	call	re_node_set_insert
	test	al, al
	je	.label_1818
	test	rbp, rbp
	je	.label_1835
.label_1839:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	jl	.label_1841
	jmp	.label_1835
.label_1832:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_1816
.label_1843:
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	jmp	.label_1824
.label_1827:
	xor	r12d, r12d
.label_1835:
	cmp	r12, r15
	jne	.label_1824
	mov	rdi, r15
	shl	rdi, 5
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	r12, [rsp + 0x80]
	mov	rsi, r12
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_1818
	inc	r15
	mov	rdi, r12
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1816
	nop	word ptr [rax + rax]
.label_1824:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_1816:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1826
	jmp	.label_1820
.label_1818:
	test	r15, r15
	jle	.label_1829
	add	r14, 0x10
	nop	word ptr [rax + rax]
.label_1833:
	mov	rdi, qword ptr [r14]
	call	free
	add	r14, 0x18
	dec	r15
	jne	.label_1833
.label_1829:
	mov	r15, -1
.label_1820:
	mov	rax, r15
	add	rsp, 0xa8
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
	#Procedure 0x413b90

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ba0

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1848:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1848
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413bd0

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	mov	qword ptr [rdi], -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x413bf0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	cl, sil
	rol	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413c20

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413c30

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_1852
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_1849
	mov	eax, edx
	and	eax, 1
	jne	.label_1853
	mov	esi, ecx
	and	esi, 4
	je	.label_1853
	xor	eax, eax
	ret	
.label_1852:
	xor	eax, eax
	ret	
.label_1853:
	test	eax, eax
	je	.label_1851
	mov	eax, ecx
	and	eax, 8
	je	.label_1851
	xor	eax, eax
	ret	
.label_1851:
	test	dl, 2
	jne	.label_1850
	mov	eax, ecx
	and	eax, 0x20
	je	.label_1850
	xor	eax, eax
	ret	
.label_1850:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_1849:
	ret	
	.section	.text
	.align	32
	#Procedure 0x413c90

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 0x10], rcx
	mov	qword ptr [rdi + 0x18], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	qword ptr [rdi + 0x30], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413cb0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	call	re_node_set_init_1
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1856
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1857
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1854:
	test	rbx, rbx
	jle	.label_1855
	mov	rdi, qword ptr [r14]
	cmp	qword ptr [rdi + rbx*8], 0
	je	.label_1860
	xor	r13d, r13d
	jmp	.label_1861
	nop	word ptr cs:[rax + rax]
.label_1860:
	inc	r13d
.label_1861:
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1859
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_1858
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1857
.label_1858:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1854
	jmp	.label_1857
.label_1855:
	xor	ebp, ebp
	jmp	.label_1857
.label_1859:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1857:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1856:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413dc0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r14, r14
	jle	.label_1862
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1864:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_1865
	test	rax, rax
	je	.label_1863
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1862
	lea	rdi, [rsp + 0x24]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_1863
	jmp	.label_1862
	nop	dword ptr [rax + rax]
.label_1865:
	mov	qword ptr [rbx + rbp*8], rax
.label_1863:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_1864
.label_1862:
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
	#Procedure 0x413e70

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	mov	r15, rdx
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_1870
	test	r14, r14
	je	.label_1867
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1866
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_1867
	lea	rcx, [rsi + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rdx
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1866
.label_1867:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	je	.label_1869
	jmp	.label_1866
.label_1870:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_1869:
	test	r14, r14
	je	.label_1868
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1868
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1866
.label_1868:
	xor	eax, eax
.label_1866:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413f90

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1875
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 8], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1876:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_1872
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_1873
.label_1872:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_1871
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_1871
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_1871
.label_1873:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1874
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_1871
.label_1874:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1875
.label_1871:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_1876
.label_1875:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4140e0

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	lea	rdi, [rsp + 4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	jne	.label_1878
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1877
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_1878
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1877
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1880:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1879
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1880
	mov	dword ptr [rsp + 4], eax
.label_1877:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_1878:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1879:
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1878
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4141b0

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 8], rdx
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	r11, rdi
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1891
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1882:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	jge	.label_1881
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_1881
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	jne	.label_1894
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1881
	mov	r12, r8
	mov	r9, r14
	mov	r8, qword ptr [rdx + 8]
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsi, -1
	nop	dword ptr [rax]
.label_1896:
	mov	rbx, qword ptr [r10 + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_1893
	cmp	eax, 8
	jne	.label_1885
	cmp	r13, qword ptr [rcx + rbp]
	je	.label_1887
	mov	rbx, rsi
.label_1887:
	mov	rsi, rbx
	jmp	.label_1885
	nop	dword ptr [rax + rax]
.label_1893:
	mov	rax, qword ptr [r11]
	cmp	r13, qword ptr [rax + rbp]
	je	.label_1892
	mov	rbx, r14
.label_1892:
	mov	r14, rbx
.label_1885:
	inc	rdi
	cmp	rdi, r8
	jl	.label_1896
	mov	r13, r14
	test	rsi, rsi
	mov	r14, r9
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	js	.label_1888
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	jne	.label_1891
.label_1888:
	test	r13, r13
	js	.label_1881
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jg	.label_1884
	jmp	.label_1881
.label_1894:
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jle	.label_1881
	nop	dword ptr [rax]
.label_1890:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_1889
	cmp	r13, qword ptr [rax + rcx]
	jne	.label_1889
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	mov	r15, r14
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	test	eax, eax
	jne	.label_1891
.label_1889:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1890
	jmp	.label_1881
.label_1883:
	mov	rdi, r12
	mov	rsi, r14
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_1891
	dec	rbp
	jmp	.label_1895
.label_1884:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	mov	r12, r11
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1886
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1883
.label_1886:
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_1895:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1884
	nop	word ptr [rax + rax]
.label_1881:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1882
.label_1891:
	add	rsp, 0x38
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
	#Procedure 0x414460

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x58], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	cmp	rax, -1
	je	.label_1901
	mov	qword ptr [rsp + 0x60], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1901
	mov	rdx, r14
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax]
.label_1907:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1909
	cmp	eax, 4
	jne	.label_1897
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1905
	jmp	.label_1897
	nop	
.label_1909:
	cmp	eax, 4
	jne	.label_1897
.label_1905:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1903:
	cmp	qword ptr [rbp], r15
	jne	.label_1898
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	sub	rbx, rax
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_1910
	mov	rax, qword ptr [rsi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1902
	nop	word ptr cs:[rax + rax]
.label_1910:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_1902:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1898
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1898
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1900
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_1898
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_1904
	mov	rax, qword ptr [rdx + 0x30]
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, rdx
	call	re_node_set_init_copy
	mov	rdx, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1899
.label_1904:
	mov	qword ptr [rsp + 0x70], r15
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	je	.label_1899
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1899
	mov	rsi, qword ptr [rdx + 8]
	test	rsi, rsi
	je	.label_1908
	mov	rbp, rdx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	call	merge_state_array
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1899
.label_1908:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	jmp	.label_1906
.label_1900:
	mov	rdx, qword ptr [rsp + 0x38]
.label_1906:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_1898:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_1903
.label_1897:
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_1907
.label_1899:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1901
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
.label_1901:
	mov	eax, r12d
	add	rsp, 0x98
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
	#Procedure 0x4147d0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_1914
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1914
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	jle	.label_1927
	add	rbx, rcx
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1914
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_1927:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	add	r8, r9
	dec	rcx
.label_1915:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_1920:
	lea	r9, [rdi - 1]
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_1926:
	cmp	qword ptr [rax + rdx*8], rsi
	je	.label_1923
	jl	.label_1925
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_1926
	jmp	.label_1912
	nop	word ptr cs:[rax + rax]
.label_1925:
	cmp	rdi, 2
	mov	rdi, r9
	jge	.label_1920
	jmp	.label_1912
	nop	dword ptr [rax + rax]
.label_1923:
	test	rcx, rcx
	js	.label_1917
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1922:
	cmp	qword ptr [rax + rcx*8], rsi
	jle	.label_1911
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1922
	jmp	.label_1917
.label_1911:
	test	rcx, rcx
	js	.label_1917
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	je	.label_1918
	nop	dword ptr [rax]
.label_1917:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	dec	r8
.label_1918:
	test	rdx, rdx
	jle	.label_1912
	cmp	rdi, 2
	jge	.label_1915
.label_1912:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	mov	rdx, r11
	sub	rdx, r8
	lea	r9, [rdx + 1]
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	test	rcx, rcx
	jle	.label_1913
	test	rdx, rdx
	js	.label_1913
	add	r10, rax
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	xor	edx, edx
.label_1924:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rax, [rdi + r10*8]
	nop	dword ptr [rax]
.label_1919:
	mov	rsi, qword ptr [rdi + r11*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_1921
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1919
	jmp	.label_1913
.label_1921:
	dec	r11
	dec	r10
	dec	r9
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_1924
	jmp	.label_1916
.label_1913:
	mov	rdx, r9
.label_1916:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1914:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rsi + rsi*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1932
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdx, [rax + rcx*8]
	mov	qword ptr [rsp + 0x18], rdx
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1931:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + r12*8]
	cmp	rax, qword ptr [rsp + 0x28]
	je	.label_1929
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1929
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	jl	.label_1936
	mov	rbp, qword ptr [rax + 8]
.label_1936:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1934
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1928
.label_1934:
	test	rbp, rbp
	jle	.label_1929
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1929
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_1929
.label_1928:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	lea	rdi, [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1937
	nop	word ptr [rax + rax]
.label_1929:
	inc	r12
	mov	rax, qword ptr [r13]
	cmp	r12, rax
	jl	.label_1931
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_1932
	xor	ebx, ebx
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_1935:
	mov	rax, qword ptr [r15]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1930
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_1930:
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_1935
.label_1932:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	ebp, ebp
.label_1933:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1937:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	jmp	.label_1933
	.section	.text
	.align	32
	#Procedure 0x414b70

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1940
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1939:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_1938
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_1939
	xor	eax, eax
	jmp	.label_1938
.label_1940:
	xor	eax, eax
.label_1938:
	add	rsp, 0x38
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
	#Procedure 0x414c60

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_1941
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_1941
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	je	.label_1941
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1941:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414cb0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1953
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1943:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_1947
	cmp	eax, 8
	je	.label_1951
	cmp	eax, 4
	jne	.label_1944
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_1944
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_1942:
	cmp	qword ptr [r14], r12
	jne	.label_1949
	cmp	rbx, 0x3f
	jg	.label_1954
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_1949
.label_1954:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_1945
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_1955
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_1946
	cmp	rbx, 0x3f
	jg	.label_1949
	jmp	.label_1950
.label_1955:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1950
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_1949
	jmp	.label_1946
.label_1950:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_1949:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_1942
	jmp	.label_1944
	nop	word ptr cs:[rax + rax]
.label_1947:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1944
	xor	eax, eax
	jmp	.label_1952
	nop	dword ptr [rax + rax]
.label_1951:
	cmp	dword ptr [rsp + 4], 0
	je	.label_1944
	mov	eax, 0xffffffff
.label_1952:
	cmp	qword ptr [rcx], rbx
	je	.label_1946
.label_1944:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_1943
.label_1953:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_1948
.label_1945:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_1948:
	mov	eax, r13d
.label_1946:
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
	#Procedure 0x414ec0

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, r8
	mov	rbp, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rax, rdi
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	check_node_accept_bytes
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1957
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_1957
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_1956
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1957
.label_1956:
	xor	ebx, ebx
.label_1957:
	mov	eax, ebx
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
	#Procedure 0x414f40

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_1958
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_1960
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1959:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1959
.label_1960:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_1958:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414fa0

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	movzx	edi, cl
	cmp	edi, 9
	je	.label_1961
	cmp	edi, 8
	jne	.label_1964
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1964
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1961:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1964
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1963
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1963:
	test	ecx, 0x80000
	je	.label_1962
	cmp	qword ptr [rdx + rax], -1
	je	.label_1962
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1962:
	mov	qword ptr [rsi + rax + 8], r8
.label_1964:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415030

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	push	rbx
	mov	r14, r8
	mov	r15, rdi
	mov	rdi, qword ptr [r15]
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	test	rdi, rdi
	jle	.label_1965
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [r14 + 0x10], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1965:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4150d0

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r8
	mov	rbx, rcx
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, r13
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	test	cl, 8
	jne	.label_1974
	test	ecx, 0x100000
	jne	.label_1966
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1976
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	mov	rbx, rax
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1972
	cmp	rax, -1
	mov	r12, -1
	je	.label_1967
	cmp	rdi, -1
	je	.label_1967
	cmp	rax, rdi
	je	.label_1972
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, rbx
	jl	.label_1967
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	mov	qword ptr [rsp + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	jne	.label_1967
.label_1972:
	cmp	rax, rdi
	jne	.label_1969
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1967
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1967
	jmp	.label_1969
.label_1974:
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1967
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_1967
	add	r14, 8
	lea	r15, [rbx + rax*8 + 8]
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	r12, -1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1973:
	mov	rbx, qword ptr [r13 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1970
	cmp	r12, -1
	jne	.label_1971
	mov	r12, rbx
.label_1970:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_1973
	jmp	.label_1967
.label_1966:
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	movsxd	rbx, eax
.label_1969:
	test	rbx, rbx
	jne	.label_1975
.label_1976:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	mov	ebx, 1
	test	al, al
	je	.label_1967
.label_1975:
	mov	rax, qword ptr [r15 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	add	rbx, qword ptr [rax]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1968
	mov	r12, -1
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_1967
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	test	rdi, rdi
	je	.label_1967
	add	rdi, 8
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	je	.label_1967
.label_1968:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	jmp	.label_1967
.label_1971:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1977
	mov	r9, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1967
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	je	.label_1967
.label_1977:
	mov	r12, rbx
.label_1967:
	mov	rax, r12
	add	rsp, 0x28
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
	#Procedure 0x4153d0

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	cmp	rcx, rax
	jne	.label_1978
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_1979
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_1978:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r14
	shl	rcx, 4
	lea	r12, [rcx + rcx*2]
	mov	qword ptr [rax + r12], rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + r12 + 8], r13
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r12 + 0x10]
	test	rdi, rdi
	je	.label_1979
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1979:
	mov	eax, 0xc
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
	#Procedure 0x4154b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1980
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1980
.label_1981:
	ret	
.label_1980:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1981
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4154e0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1982
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1982:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415500
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415510
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
	.align	32
	#Procedure 0x415520
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1983
.label_1984:
	ret	
.label_1983:
	cmp	edi, 0x7f
	je	.label_1984
	xor	eax, eax
	jmp	.label_1984
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415540
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415550
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415560
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415570
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415580
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1985
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1985
.label_1986:
	ret	
.label_1985:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1986
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4155b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1987
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1987:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4155d0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4155e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1988
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1988:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415600

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
	.align	32
	#Procedure 0x415610
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
	.align	32
	#Procedure 0x415620

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	xor	ebp, ebp
	cmp	rbx, r14
	je	.label_1989
	nop	word ptr cs:[rax + rax]
.label_1991:
	movzx	edi, byte ptr [rbx]
	call	c_tolower
	mov	ebp, eax
	movzx	edi, byte ptr [r14]
	call	c_tolower
	and	ebp, 0xff
	je	.label_1990
	inc	rbx
	inc	r14
	movzx	ecx, al
	cmp	ebp, ecx
	je	.label_1991
.label_1990:
	movzx	eax, al
	sub	ebp, eax
.label_1989:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x415680

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
	je	.label_1992
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1993
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1993
.label_1992:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1993
	test	cl, cl
	jne	.label_1993
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1993:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4156f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1995
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1996
	cmp	byte ptr [rax + 1], 0
	je	.label_1994
.label_1996:
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1995
.label_1994:
	xor	ebx, ebx
.label_1995:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x415730

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_9
	cmp	byte ptr [rcx], 0
	je	.label_1997
	mov	rax, rcx
.label_1997:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415760

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	jne	.label_2004
	cmp	byte ptr [rbx + 8], 0
	jne	.label_2007
	mov	rax, qword ptr [rbx + 0x18]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	je	.label_1998
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_1999
.label_1998:
	lea	rdi, [rbx + 0xc]
	call	mbsinit
	test	eax, eax
	je	.label_2006
	mov	byte ptr [rbx + 8], 1
.label_2007:
	lea	r15, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x18]
	sub	rdx, rsi
	lea	r14, [rbx + 0xc]
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_2001
	test	rax, rax
	je	.label_2003
	cmp	rax, -1
	jne	.label_2005
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_1999
.label_2001:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_1999
.label_2003:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_2000
	cmp	dword ptr [r15], 0
	jne	.label_2002
.label_2005:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1999
	mov	byte ptr [rbx + 8], 0
.label_1999:
	mov	byte ptr [rbx + 0x14], 1
.label_2004:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2006:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2000:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2002:
	mov	edi, OFFSET FLAT:.str.3_3
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415890
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4158a0
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi], rax
	mov	al, byte ptr [rsi + 8]
	test	al, al
	mov	byte ptr [rdi + 8], al
	je	.label_2008
	mov	rax, qword ptr [rsi + 0xc]
	mov	qword ptr [rdi + 0xc], rax
	jmp	.label_2009
.label_2008:
	mov	qword ptr [rdi + 0xc], 0
.label_2009:
	mov	al, byte ptr [rsi + 0x14]
	mov	byte ptr [rdi + 0x14], al
	add	rdi, 0x18
	add	rsi, 0x18
	jmp	mb_copy
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4158e0

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	r13, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2024
	mov	qword ptr [rsp + 0x138], rbp
	mov	byte ptr [rsp + 0x128], 0
	mov	qword ptr [rsp + 0x12c], 0
	mov	byte ptr [rsp + 0x134], 0
	lea	rdi, [rsp + 0x128]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x148], 0
	je	.label_2020
	mov	eax, dword ptr [rsp + 0x14c]
	test	eax, eax
	je	.label_2023
.label_2020:
	mov	qword ptr [rsp + 0xf8], rbp
	mov	qword ptr [rsp], rbp
	mov	byte ptr [rsp + 0xe8], 0
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	mov	qword ptr [rsp + 0xb8], r13
	mov	byte ptr [rsp + 0xa8], 0
	mov	qword ptr [rsp + 0xac], 0
	mov	byte ptr [rsp + 0xb4], 0
	lea	rdi, [rsp + 0xa8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	cmp	byte ptr [rsp + 0xc8], 0
	je	.label_2034
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	je	.label_2036
.label_2034:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rbx, [rsp + 0xe8]
	xor	r12d, r12d
	xor	r15d, r15d
	xor	ebp, ebp
.label_2037:
	mov	r14, r15
	cmp	rbp, 0xa
	jb	.label_2043
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_2045
	lea	rax, [rbp + rbp*4]
	cmp	r14, rax
	jb	.label_2046
	cmp	r14, r12
	je	.label_2013
	sub	r12, r14
	nop	word ptr cs:[rax + rax]
.label_2022:
	mov	rdi, rbx
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x108], 0
	je	.label_2019
	mov	eax, dword ptr [rsp + 0x10c]
	test	eax, eax
	je	.label_2013
.label_2019:
	mov	rax, qword ptr [rsp + 0x100]
	add	qword ptr [rsp + 0xf8], rax
	mov	byte ptr [rsp + 0xf4], 0
	inc	r12
	jne	.label_2022
.label_2013:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, rbx
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x108], 0
	je	.label_2026
	mov	eax, dword ptr [rsp + 0x10c]
	test	eax, eax
	mov	r12, r14
	jne	.label_2029
	mov	rdi, r13
	mov	rsi, qword ptr [rsp]
	lea	rdx, [rsp + 0x60]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_2025
	mov	dword ptr [rsp + 0x14], 0
.label_2026:
	mov	r12, r14
	jmp	.label_2029
.label_2046:
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_2029
.label_2043:
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_2029
.label_2045:
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_2029:
	lea	r15, [r14 + 1]
	cmp	byte ptr [rsp + 0xc8], 0
	je	.label_2039
	mov	al, byte ptr [rsp + 0x148]
	test	al, al
	je	.label_2039
	mov	eax, dword ptr [rsp + 0xcc]
	cmp	eax, dword ptr [rsp + 0x14c]
	je	.label_2042
	jmp	.label_2015
	nop	
.label_2039:
	mov	rdx, qword ptr [rsp + 0xc0]
	cmp	rdx, qword ptr [rsp + 0x140]
	jne	.label_2015
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, qword ptr [rsp + 0x138]
	call	memcmp
	test	eax, eax
	jne	.label_2015
.label_2042:
	movups	xmm0, xmmword ptr [rsp + 0xa8]
	movups	xmm1, xmmword ptr [rsp + 0xb8]
	movups	xmm2, xmmword ptr [rsp + 0xc8]
	movups	xmm3, xmmword ptr [rsp + 0xd8]
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_2031
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	je	.label_2032
.label_2031:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_2038
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	je	.label_2011
.label_2038:
	add	r14, 2
	mov	r15, r14
	nop	dword ptr [rax + rax]
.label_2027:
	lea	rdi, [rsp + 0x60]
	call	mbuiter_multi_next
	mov	cl, byte ptr [rsp + 0x80]
	mov	eax, dword ptr [rsp + 0x84]
	test	cl, cl
	je	.label_2044
	test	eax, eax
	je	.label_2036
.label_2044:
	test	cl, cl
	sete	cl
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_2010
	test	cl, cl
	jne	.label_2010
	cmp	eax, dword ptr [rsp + 0x44]
	je	.label_2014
	jmp	.label_2015
	nop	dword ptr [rax]
.label_2010:
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsp + 0x38]
	jne	.label_2015
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x30]
	call	memcmp
	test	eax, eax
	jne	.label_2015
.label_2014:
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	inc	r15
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_2027
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	jne	.label_2027
	jmp	.label_2011
	nop	word ptr cs:[rax + rax]
.label_2015:
	mov	rbp, qword ptr [rsp + 0x18]
	inc	rbp
	mov	rax, qword ptr [rsp + 0xc0]
	add	qword ptr [rsp + 0xb8], rax
	mov	byte ptr [rsp + 0xb4], 0
	lea	rdi, [rsp + 0xa8]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0xc8], 0
	je	.label_2037
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_2037
	jmp	.label_2036
.label_2024:
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_2021
	xor	eax, eax
	cmp	byte ptr [r13], 0
	je	.label_2016
	mov	sil, 1
	xor	edi, edi
	movzx	eax, cl
	mov	dword ptr [rsp + 0x18], eax
	mov	r14, rbp
	xor	r12d, r12d
	xor	r15d, r15d
.label_2041:
	cmp	r15, 0xa
	jb	.label_2012
	mov	al, sil
	and	al, 1
	je	.label_2012
	lea	rax, [r15 + r15*4]
	cmp	r12, rax
	jb	.label_2012
	mov	rbx, rsi
	test	r14, r14
	je	.label_2017
	mov	rsi, r12
	sub	rsi, rdi
	mov	rdi, r14
	call	strnlen
	cmp	byte ptr [r14 + rax], 0
	mov	rdi, r12
	mov	rsi, rbx
	je	.label_2017
	add	r14, rax
	mov	rdi, r12
	jne	.label_2012
.label_2017:
	mov	rbx, rdi
	mov	rdi, rbp
	call	strlen
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0x128]
	call	knuth_morris_pratt
	mov	rdi, rbx
	xor	esi, esi
	test	al, al
	mov	r14d, 0
	jne	.label_2028
.label_2012:
	movzx	eax, byte ptr [r13]
	cmp	eax, dword ptr [rsp + 0x18]
	mov	ecx, 1
	jne	.label_2030
	nop	word ptr cs:[rax + rax]
.label_2035:
	mov	dl, byte ptr [rbp + rcx]
	test	dl, dl
	je	.label_2033
	mov	bl, byte ptr [r13 + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_2016
	movzx	eax, dl
	movzx	edx, bl
	inc	rcx
	cmp	edx, eax
	je	.label_2035
	add	r12, rcx
	jmp	.label_2040
	nop	dword ptr [rax + rax]
.label_2030:
	inc	r12
.label_2040:
	inc	r15
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	mov	eax, 0
	jne	.label_2041
	jmp	.label_2016
.label_2021:
	mov	rax, r13
	jmp	.label_2016
.label_2033:
	mov	rax, r13
	jmp	.label_2016
.label_2011:
	mov	rax, qword ptr [rsp + 0xb8]
.label_2018:
	mov	qword ptr [rsp + 8], rax
.label_2036:
	mov	r13, qword ptr [rsp + 8]
.label_2023:
	mov	rax, r13
.label_2016:
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2028:
	mov	rax, qword ptr [rsp + 0x128]
	jmp	.label_2016
.label_2025:
	mov	rax, qword ptr [rsp + 0x60]
	jmp	.label_2018
.label_2032:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415e40

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	rdi, r13
	call	mbslen
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	cmp	rbx, rax
	jbe	.label_2074
	xor	eax, eax
	jmp	.label_2050
.label_2074:
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_2076
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	r15, [rax + rdi + 0x1f]
	and	r15, 0xffffffffffffffe0
	jmp	.label_2051
.label_2076:
	call	mmalloca
	mov	r15, rax
.label_2051:
	test	r15, r15
	je	.label_2064
	mov	qword ptr [rbp - 0xd8], r12
	mov	qword ptr [rbp - 0xd0], r14
	lea	rax, [rbx + rbx*2]
	mov	qword ptr [rbp - 0xc8], rbx
	mov	rbx, rax
	shl	rbx, 4
	mov	qword ptr [rbp - 0x58], r13
	mov	byte ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2073
	mov	eax, dword ptr [rbp - 0x44]
	test	eax, eax
	je	.label_2048
.label_2073:
	lea	r13, [rbp - 0x58]
	lea	r14, [rbp - 0x68]
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_2065:
	mov	rdi, r12
	mov	rsi, r13
	call	mb_copy
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	eax, dword ptr [rbp - 0x44]
	add	r12, 0x30
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2065
	test	eax, eax
	jne	.label_2065
.label_2048:
	lea	r13, [r15 + rbx]
	mov	qword ptr [r15 + rbx + 8], 1
	mov	ecx, 2
	xor	ebx, ebx
	cmp	qword ptr [rbp - 0xc8], 3
	jb	.label_2069
	nop	word ptr cs:[rax + rax]
.label_2075:
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rax, [rcx + rcx*2]
	shl	rax, 4
	lea	rcx, [rax + r15 - 0x30]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r14b, byte ptr [rax + r15 - 0x20]
	lea	r12, [rax + r15 - 0x28]
	lea	rax, [rax + r15 - 0x1c]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2047
	nop	word ptr cs:[rax + rax]
.label_2055:
	sub	rbx, qword ptr [r13 + rbx*8]
.label_2047:
	test	r14b, r14b
	je	.label_2066
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r15 + rax + 0x10], 0
	je	.label_2066
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	ecx, dword ptr [rcx]
	cmp	ecx, dword ptr [r15 + rax + 0x14]
	jne	.label_2071
	jmp	.label_2054
	nop	dword ptr [rax]
.label_2066:
	mov	rdx, qword ptr [r12]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	rdx, qword ptr [r15 + rax + 8]
	jne	.label_2071
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [r15 + rax]
	call	memcmp
	test	eax, eax
	je	.label_2054
.label_2071:
	test	rbx, rbx
	jne	.label_2055
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [r13 + rcx*8], rcx
	xor	ebx, ebx
	jmp	.label_2057
	nop	
.label_2054:
	inc	rbx
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, rcx
	sub	rax, rbx
	mov	qword ptr [r13 + rcx*8], rax
.label_2057:
	inc	rcx
	cmp	rcx, qword ptr [rbp - 0xc8]
	jne	.label_2075
.label_2069:
	mov	r14, r13
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	mov	qword ptr [rbp - 0x98], rax
	mov	byte ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xa4], 0
	mov	byte ptr [rbp - 0x9c], 0
	lea	rdi, [rbp - 0xa8]
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x88], 0
	setne	cl
	mov	eax, dword ptr [rbp - 0x84]
	je	.label_2062
	test	eax, eax
	je	.label_2049
.label_2062:
	xor	r12d, r12d
	lea	r13, [rbp - 0x68]
	nop	
.label_2061:
	lea	rsi, [r12 + r12*2]
	shl	rsi, 4
	cmp	byte ptr [r15 + rsi + 0x10], 0
	je	.label_2072
	xor	cl, 1
	test	cl, 1
	jne	.label_2072
	cmp	dword ptr [r15 + rsi + 0x14], eax
	je	.label_2056
	jmp	.label_2052
	nop	word ptr cs:[rax + rax]
.label_2072:
	mov	rdx, qword ptr [r15 + rsi + 8]
	cmp	rdx, qword ptr [rbp - 0x90]
	jne	.label_2052
	mov	rdi, qword ptr [r15 + rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	call	memcmp
	test	eax, eax
	je	.label_2056
.label_2052:
	test	r12, r12
	je	.label_2059
	mov	rbx, qword ptr [r14 + r12*8]
	sub	r12, rbx
	test	rbx, rbx
	je	.label_2058
	nop	word ptr [rax + rax]
.label_2070:
	mov	rdi, r13
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2067
	mov	eax, dword ptr [rbp - 0x44]
	test	eax, eax
	je	.label_2068
.label_2067:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	dec	rbx
	jne	.label_2070
	jmp	.label_2058
	nop	dword ptr [rax]
.label_2056:
	inc	r12
	mov	rax, qword ptr [rbp - 0x90]
	add	qword ptr [rbp - 0x98], rax
	mov	byte ptr [rbp - 0x9c], 0
	cmp	r12, qword ptr [rbp - 0xc8]
	jne	.label_2058
	jmp	.label_2053
	nop	word ptr cs:[rax + rax]
.label_2059:
	mov	rdi, r13
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2060
	mov	eax, dword ptr [rbp - 0x44]
	test	eax, eax
	je	.label_2063
.label_2060:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	qword ptr [rbp - 0x98], rax
	mov	byte ptr [rbp - 0x9c], 0
	xor	r12d, r12d
.label_2058:
	lea	rdi, [rbp - 0xa8]
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x88], 0
	setne	cl
	mov	eax, dword ptr [rbp - 0x84]
	je	.label_2061
	test	eax, eax
	jne	.label_2061
	jmp	.label_2049
.label_2064:
	xor	eax, eax
	jmp	.label_2050
.label_2053:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
.label_2049:
	mov	rdi, r15
	call	freea
	mov	al, 1
.label_2050:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2068:
	call	abort
.label_2063:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x416240

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_2077
	xor	eax, eax
	jmp	.label_2085
.label_2077:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_2093
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_2092
.label_2093:
	call	mmalloca
	mov	rdi, rax
.label_2092:
	test	rdi, rdi
	je	.label_2087
	mov	qword ptr [rdi + 8], 1
	mov	eax, 2
	xor	ecx, ecx
	cmp	r12, 3
	jb	.label_2089
	nop	
.label_2079:
	movzx	edx, byte ptr [rax + r13 - 1]
	movzx	esi, byte ptr [r13 + rcx]
	cmp	edx, esi
	je	.label_2078
.label_2083:
	test	rcx, rcx
	je	.label_2081
	sub	rcx, qword ptr [rdi + rcx*8]
	movzx	esi, byte ptr [r13 + rcx]
	movzx	ebx, dl
	cmp	ebx, esi
	jne	.label_2083
.label_2078:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
	jmp	.label_2088
	nop	word ptr cs:[rax + rax]
.label_2081:
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
.label_2088:
	inc	rax
	cmp	rax, r12
	jne	.label_2079
.label_2089:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_2080
.label_2087:
	xor	eax, eax
	jmp	.label_2085
.label_2091:
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	mov	rax, qword ptr [rax + rdx*8]
	add	r15, rax
	sub	r8, rax
	add	r8, rdx
.label_2080:
	lea	rsi, [r12 + r8]
	lea	rcx, [r13 + r8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2082:
	mov	al, byte ptr [r9 + rdx]
	test	al, al
	je	.label_2086
	movzx	ebx, byte ptr [rcx + rdx]
	movzx	eax, al
	cmp	ebx, eax
	jne	.label_2084
	inc	rdx
	mov	rax, rsi
	add	rax, rdx
	jne	.label_2082
	jmp	.label_2090
.label_2084:
	mov	rax, r8
	add	rax, rdx
	jne	.label_2091
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_2080
.label_2090:
	mov	qword ptr [r14], r15
.label_2086:
	call	freea
	mov	al, 1
.label_2085:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x4163a0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_2096
	cmp	byte ptr [rbx], 0
	jne	.label_2103
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	je	.label_2097
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_2094
.label_2097:
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	je	.label_2100
	mov	byte ptr [rbx], 1
.label_2103:
	lea	r14, [rbx + 0x24]
	mov	r12, qword ptr [rbx + 0x10]
	call	__ctype_get_mb_cur_max
	mov	rdi, r12
	mov	rsi, rax
	call	strnlen1
	lea	r15, [rbx + 4]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_2098
	test	rax, rax
	je	.label_2101
	cmp	rax, -1
	jne	.label_2102
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2094
.label_2098:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2094
.label_2101:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_2095
	cmp	dword ptr [r14], 0
	jne	.label_2099
.label_2102:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_2094
	mov	byte ptr [rbx], 0
.label_2094:
	mov	byte ptr [rbx + 0xc], 1
.label_2096:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2100:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2095:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2099:
	mov	edi, OFFSET FLAT:.str.3_3
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4164f0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416500
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	test	al, al
	mov	byte ptr [rdi], al
	je	.label_2104
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	jmp	.label_2105
.label_2104:
	mov	qword ptr [rdi + 4], 0
.label_2105:
	mov	al, byte ptr [rsi + 0xc]
	mov	byte ptr [rdi + 0xc], al
	add	rdi, 0x10
	add	rsi, 0x10
	jmp	mb_copy
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416530

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1058
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	rax, rdx
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rbp
	mov	r14, rdi
	mov	qword ptr [rsp + 0x10], r14
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 0x50], r14
	mov	qword ptr [rsp + 0x48], rbp
	test	rbp, rbp
	je	.label_2119
	xor	ebx, ebx
	lea	r12, [rsp + 0x58]
	lea	r14, [rsp + 0x50]
	lea	rbp, [rsp + 0x48]
	lea	r15, [rsp + 0x40]
	lea	r13, [rsp + 0x38]
.label_2115:
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], 0x1000
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_2108
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	jne	.label_2112
.label_2108:
	sub	rbx, r12
	add	rbx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_2115
.label_2119:
	lea	r14, [rsp + 0x58]
	mov	qword ptr [rsp + 0x40], r14
	mov	qword ptr [rsp + 0x38], 0x1000
	xor	ebp, ebp
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	cmp	rax, -1
	je	.label_2113
	sub	rbx, r14
	add	rbx, qword ptr [rsp + 0x40]
	jmp	.label_2117
.label_2113:
	mov	ebp, 1
	jmp	.label_2117
.label_2112:
	cmp	eax, 0x16
	je	.label_2119
	mov	ebp, 1
.label_2117:
	mov	r12d, 0xffffffff
	test	ebp, ebp
	jne	.label_2114
	test	rbx, rbx
	je	.label_2107
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	je	.label_2110
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], rbx
	jae	.label_2116
.label_2110:
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2120
.label_2116:
	mov	qword ptr [rsp + 8], rbp
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x48], rbp
	mov	qword ptr [rsp + 0x40], rbx
	lea	r13, [rsp + 0x58]
	lea	rbp, [rsp + 0x50]
	lea	r15, [rsp + 0x48]
	lea	r14, [rsp + 0x40]
.label_2118:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2106
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	jne	.label_2118
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2109
.label_2106:
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x40]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	cmp	rax, -1
	je	.label_2109
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_2111
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
	jmp	.label_2114
.label_2107:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], 0
	xor	r12d, r12d
	jmp	.label_2114
.label_2109:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 8]
	cmp	rbp, qword ptr [rax]
	je	.label_2114
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
	jmp	.label_2114
.label_2120:
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_2114:
	mov	eax, r12d
	add	rsp, 0x1058
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2111:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416790

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rdi
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	lea	r13, [rbx + 1]
	mov	rdi, r13
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_2124
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rbp
	call	iconv
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	mov	rdi, rbp
	mov	qword ptr [rsp], rbp
	call	iconv
	cmp	rax, -1
	je	.label_2126
	mov	r12, r15
	mov	rbx, r13
.label_2127:
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	r14, qword ptr [rsp]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_2129
	mov	r15, r12
	mov	rbp, rbx
.label_2125:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r15
	cmp	rsi, rbp
	jae	.label_2122
	mov	rdi, r15
	call	realloc
	test	rax, rax
	cmovne	r15, rax
	jmp	.label_2122
.label_2124:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_2122
.label_2126:
	call	__errno_location
	mov	r14, rax
	nop	dword ptr [rax + rax]
.label_2134:
	mov	eax, dword ptr [r14]
	cmp	eax, 7
	jne	.label_2121
	lea	rbx, [r13 + r13]
	cmp	rbx, r13
	jbe	.label_2130
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	rsi, rbx
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_2133
	sub	rbp, r15
	mov	rax, r12
	add	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	mov	r15, r12
	mov	r13, rbx
	je	.label_2134
	jmp	.label_2127
.label_2129:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_2131:
	cmp	dword ptr [r13], 7
	jne	.label_2132
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_2128
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, r12
	mov	rsi, rbp
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_2128
	sub	rbx, r12
	mov	rax, r15
	add	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	mov	r12, r15
	mov	rbx, rbp
	je	.label_2131
	jmp	.label_2125
.label_2128:
	mov	dword ptr [r13], 0xc
	mov	r15, r12
	jmp	.label_2123
.label_2121:
	cmp	eax, 0x16
	mov	r12, r15
	mov	rbx, r13
	je	.label_2127
	jmp	.label_2123
.label_2130:
	mov	dword ptr [r14], 0xc
	jmp	.label_2123
.label_2133:
	mov	dword ptr [r14], 0xc
	jmp	.label_2123
.label_2132:
	mov	r15, r12
.label_2123:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	xor	r15d, r15d
.label_2122:
	mov	rax, r15
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
	#Procedure 0x416a00

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0
	je	.label_2135
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_2135
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_2137
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_2138
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_2137
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_2139
.label_2135:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_2137
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_2136
.label_2138:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_2139:
	mov	dword ptr [rbx], ebp
.label_2136:
	xor	r14d, r14d
.label_2137:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416ab0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416af0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416b10

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_2140
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_2140
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_2140:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416b50

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_2141
	test	dil, 0x10
	jne	.label_2142
	ret	
.label_2142:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_2141:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x416b70
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2143
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_2143:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416b90

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	cmp	rax, rsi
	je	.label_2144
	mov	qword ptr [r14], rax
	jmp	.label_2145
.label_2144:
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	qword ptr [r14], r15
.label_2145:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2146
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_2146:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416be0

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x416c00

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2150
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_2149
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_2147
.label_2149:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_2148:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_2148
	test	eax, eax
	jne	.label_2148
.label_2147:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_2150:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x416d50

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
