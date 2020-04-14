	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	lea	rsi, [rsi]
	call	emit_mandatory_arg_note
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	nop	
	call	exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x401fd0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rsi, [rsi]
	push	rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	mov	rbp, rbp
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402000

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	pop	rax
	mov	rsp, rsp
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402040

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.27
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_8
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	add	rbx, 0x10
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_9
.label_8:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.10
	nop	
	cmovne	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_10
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 3
	mov	rsp, rsp
	mov	rdi, rax
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.18
	nop	
	mov	ecx, OFFSET FLAT:.str.10
	nop	
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.41
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	nop	
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x4021c0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	call	textdomain
	nop	
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rsi, [rsi]
	lea	r14, [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_13
.label_35:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	nop	
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	mov	dword ptr [dword ptr [rip + output_format]],  eax
	nop	dword ptr [rax + rax]
.label_13:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.14
	nop	
	mov	ecx, OFFSET FLAT:long_options
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x45
	mov	rbp, rbp
	jg	.label_29
	cmp	eax, 9
	jle	.label_31
	cmp	eax, 0xa
	je	.label_35
	nop	
	cmp	eax, 0x41
	jne	.label_34
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + auto_reference]],  1
	jmp	.label_13
	nop	
.label_29:
	lea	ecx, [rax - 0x46]
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jbe	.label_15
	lea	ecx, [rax - 0x62]
	cmp	ecx, 7
	nop	
	jbe	.label_39
	lea	rsi, [rsi]
	add	eax, -0x6f
	mov	rbp, rbp
	cmp	eax, 8
	mov	rsp, rsp
	ja	.label_34
	jmp	qword ptr [word ptr [+ (rax * 8) + label_14]]
.label_2206:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + only_file]],  rax
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_15:
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_11]]
.label_2321:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + truncation_string]],  rax
	lea	rdi, [rdi]
	jmp	.label_13
.label_39:
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_18]]
.label_2192:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + break_file]],  rax
	mov	rbp, rbp
	jmp	.label_13
.label_2322:
	mov	byte ptr [byte ptr [rip + gnu_extensions]],  1
	mov	rsp, rsp
	jmp	.label_13
.label_2323:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	qword ptr [word ptr [rip + macro_name]],  rax
	lea	rsi, [rsi]
	jmp	.label_13
.label_2324:
	mov	dword ptr [dword ptr [rip + output_format]],  2
	lea	rsi, [rsi]
	jmp	.label_13
.label_2325:
	mov	byte ptr [byte ptr [rip + right_reference]],  1
	nop	
	jmp	.label_13
.label_2326:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + context_regex]],  rax
	mov	rbp, rbp
	jmp	.label_13
.label_2327:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + output_format]],  3
	jmp	.label_13
.label_2328:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	copy_unescaped_string
	nop	
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	jne	.label_45
	xor	eax, eax
.label_45:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	lea	rsi, [rsi]
	jmp	.label_13
.label_2193:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_13
.label_2194:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rcx, r14
	lea	rsi, [rsi]
	call	xstrtoimax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_16
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	jle	.label_16
	mov	qword ptr [word ptr [rip + gap_size]],  rax
	mov	rbp, rbp
	jmp	.label_13
.label_2195:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + ignore_file]],  rax
	jmp	.label_13
.label_2207:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + input_reference]],  1
	jmp	.label_13
.label_2208:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	lea	rsi, [rsi]
	call	xstrtoimax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_32
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	nop	
	jle	.label_32
	mov	qword ptr [word ptr [rip + line_width]],  rax
	mov	rsp, rsp
	jmp	.label_13
.label_31:
	nop	
	cmp	eax, -1
	jne	.label_24
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebx
	mov	rsp, rsp
	jne	.label_41
	mov	edi, 8
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	rbp, rbp
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	nop	
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	jmp	.label_12
.label_41:
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	mov	rsp, rsp
	and	cl, 1
	nop	
	je	.label_19
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	lea	rsi, [rsi]
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + rax*8]
	mov	cl, byte ptr [rax]
	test	cl, cl
	mov	rsp, rsp
	je	.label_28
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	jne	.label_44
	cmp	byte ptr [rax + 1], 0
	je	.label_28
.label_44:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + rax*8]
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	nop	
	jmp	.label_40
.label_19:
	nop	
	sub	ebx, eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + number_input_files]],  ebx
	mov	rsp, rsp
	movsxd	rdi, ebx
	mov	esi, 8
	lea	rdi, [rdi]
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	mov	esi, 8
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	nop	
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	mov	rsp, rsp
	mov	esi, 0x10
	mov	rbp, rbp
	call	xnmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	lea	rsi, [rsi]
	jle	.label_12
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [rip + number_input_files]]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_37:
	movsxd	rsi,  dword ptr [dword ptr [rip + optind]]
	nop	
	mov	rsi, qword ptr [rbp + rsi*8]
	mov	rbp, rbp
	mov	bl, byte ptr [rsi]
	test	bl, bl
	je	.label_27
	nop	
	movzx	edi, bl
	lea	rsi, [rsi]
	cmp	edi, 0x2d
	lea	rsi, [rsi]
	jne	.label_17
	lea	rsi, [rsi]
	cmp	byte ptr [rsi + 1], 0
	lea	rdi, [rdi]
	je	.label_27
.label_17:
	movsxd	rsi,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbp + rsi*8]
	mov	qword ptr [rax + rdx*8], rsi
	lea	rdi, [rdi]
	jmp	.label_30
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	qword ptr [rax + rdx*8], 0
.label_30:
	inc	dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	inc	rdx
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jl	.label_37
	lea	rdi, [rdi]
	jmp	.label_12
.label_28:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rax], 0
.label_40:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	nop	
	cmp	ecx, ebx
	nop	
	jge	.label_46
	mov	rdi, qword ptr [rbp + rax*8 + 8]
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22
	call	freopen_safer
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_42
	inc	dword ptr [dword ptr [rip + optind]]
.label_46:
	nop	
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	jl	.label_20
.label_12:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + output_format]],  0
	nop	
	jne	.label_23
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	lea	rdi, [rdi]
	and	eax, 1
	inc	eax
	mov	dword ptr [dword ptr [rip + output_format]],  eax
.label_23:
	mov	rsp, rsp
	call	initialize_regex
	nop	
	mov	rdi,  qword ptr [word ptr [rip + break_file]]
	test	rdi, rdi
	nop	
	je	.label_25
	lea	rdi, [rdi]
	call	digest_break_file
.label_25:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + ignore_file]]
	lea	rsi, [rsi]
	test	rdi, rdi
	je	.label_22
	mov	esi, OFFSET FLAT:ignore_table
	lea	rdi, [rdi]
	call	digest_word_file
	cmp	qword ptr [word ptr [rip + label_21]],  0
	mov	rbp, rbp
	jne	.label_22
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + ignore_file]],  0
.label_22:
	mov	rdi,  qword ptr [word ptr [rip + only_file]]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_26
	mov	esi, OFFSET FLAT:only_table
	mov	rsp, rsp
	call	digest_word_file
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + label_38]],  0
	jne	.label_26
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + only_file]],  0
.label_26:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + total_line_count]],  0
	nop	
	mov	qword ptr [word ptr [rip + maximum_word_length]],  0
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	mov	rbp, rbp
	jle	.label_47
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_33:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rdi, qword ptr [rax + rbx*8]
	mov	rsi,  qword ptr [word ptr [rip + text_buffers]]
	mov	rbp, rbp
	add	rsi, rbp
	mov	rbp, rbp
	call	swallow_file_in_memory
	lea	rdi, [rdi]
	mov	edi, ebx
	call	find_occurs_in_text
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	inc	rax
	nop	
	mov	qword ptr [word ptr [rip + total_line_count]],  rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	inc	rbx
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	add	rbp, 0x10
	cmp	rbx, rax
	mov	rbp, rbp
	jl	.label_33
.label_47:
	call	sort_found_occurs
	call	fix_output_parameters
	call	generate_all_output
	xor	eax, eax
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
.label_24:
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_43
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	lea	rsi, [rsi]
	jne	.label_34
	xor	edi, edi
	call	usage
.label_43:
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + Version]]
	mov	edi, OFFSET FLAT:.str.19
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	call	proper_name_utf8
	mov	rsp, rsp
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str.10
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	xor	r9d, r9d
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_34:
	mov	edi, 1
	call	usage
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbp + rax*8]
	call	quote
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_16:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15
	nop	
	jmp	.label_36
.label_32:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_36:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
.label_42:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + rax*8]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	nop	
	push	rbx
	nop	
	push	rax
	mov	rbx, rdi
	mov	rbp, rbp
	call	strlen
	nop	
	lea	rdi, [rax + 1]
	nop	
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	rsp, rsp
	test	cl, cl
	mov	r15, rax
	lea	rsi, [rsi]
	je	.label_64
	mov	r15, rax
	jmp	.label_48
.label_51:
	nop	
	mov	byte ptr [r15], 0x5c
	mov	cl, byte ptr [rbx + 1]
	add	rbx, 2
	mov	byte ptr [r15 + 1], cl
	mov	rsp, rsp
	add	r15, 2
	mov	rsi, rbx
	mov	rbp, rbp
	jmp	.label_50
.label_55:
	lea	rdi, [rdi]
	lea	rsi, [rbx + r12 + 2]
	lea	rdi, [rdi]
	test	r12d, r12d
	je	.label_57
.label_53:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r15], r14b
	inc	r15
	nop	
	jmp	.label_50
.label_57:
	lea	rdi, [rdi]
	mov	word ptr [r15], 0x785c
	mov	rbp, rbp
	add	r15, 2
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_50
	nop	word ptr [rax + rax]
.label_48:
	lea	rsi, [rbx + 1]
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0x5c
	jne	.label_66
	mov	rsp, rsp
	movsx	ecx, byte ptr [rsi]
	mov	rsp, rsp
	cmp	ecx, 0x6d
	mov	rsp, rsp
	jg	.label_67
	lea	edx, [rcx - 0x61]
	cmp	edx, 5
	ja	.label_62
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_52]]
.label_2337:
	mov	byte ptr [r15], 7
	lea	rdi, [rdi]
	jmp	.label_56
	nop	
.label_58:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 1], 0
	nop	
	lea	rbx, [rbx + 1]
	jne	.label_58
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rsp, rsp
	jmp	.label_50
	nop	dword ptr [rax]
.label_66:
	mov	byte ptr [r15], cl
	inc	r15
	mov	rbp, rbp
	jmp	.label_50
	nop	
.label_67:
	mov	rsp, rsp
	add	ecx, -0x6e
	cmp	ecx, 0xa
	ja	.label_51
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_65]]
.label_2279:
	mov	byte ptr [r15], 0xa
	jmp	.label_56
.label_62:
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_50
	lea	rdi, [rdi]
	cmp	ecx, 0x30
	jne	.label_51
	xor	edi, edi
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_60:
	nop	
	movsx	edx, byte ptr [rbx + rdi + 2]
	mov	esi, edx
	nop	
	and	esi, 0xf8
	nop	
	cmp	esi, 0x30
	nop	
	jne	.label_54
	lea	rsi, [rsi]
	lea	ecx, [rdx + rcx*8 - 0x30]
	mov	rbp, rbp
	inc	rdi
	cmp	edi, 3
	mov	rsp, rsp
	jl	.label_60
.label_54:
	nop	
	lea	rsi, [rbx + rdi + 2]
	mov	byte ptr [r15], cl
	lea	rsi, [rsi]
	inc	r15
	mov	rsp, rsp
	jmp	.label_50
.label_2338:
	mov	byte ptr [r15], 8
	jmp	.label_56
.label_2339:
	nop	
	mov	byte ptr [r15], 0xc
	jmp	.label_56
.label_2283:
	call	__ctype_b_loc
	mov	r13, qword ptr [rax]
	lea	rdi, [rdi]
	xor	r12d, r12d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_49:
	nop	
	movsx	ebp, byte ptr [rbx + r12 + 2]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r13 + rax*2 + 1], 0x10
	lea	rdi, [rdi]
	je	.label_55
	mov	eax, r14d
	shl	eax, 4
	mov	cl, bpl
	mov	rsp, rsp
	add	cl, 0x9f
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 5
	ja	.label_59
	add	ebp, -0x57
	nop	
	jmp	.label_61
	nop	word ptr cs:[rax + rax]
.label_59:
	nop	
	mov	cl, bpl
	add	cl, 0xbf
	movzx	ecx, cl
	cmp	ecx, 5
	nop	
	ja	.label_63
	add	ebp, -0x37
	lea	rdi, [rdi]
	jmp	.label_61
	nop	dword ptr [rax + rax]
.label_63:
	mov	rbp, rbp
	add	ebp, -0x30
.label_61:
	mov	r14d, ebp
	lea	rsi, [rsi]
	add	r14d, eax
	inc	r12
	cmp	r12d, 3
	lea	rsi, [rsi]
	jl	.label_49
	lea	rsi, [rsi]
	lea	rsi, [rbx + r12 + 2]
	mov	rsp, rsp
	jmp	.label_53
.label_2280:
	mov	byte ptr [r15], 0xd
	lea	rdi, [rdi]
	jmp	.label_56
.label_2281:
	mov	byte ptr [r15], 9
	jmp	.label_56
.label_2282:
	mov	byte ptr [r15], 0xb
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	rbp, rbp
	inc	r15
	nop	
	add	rbx, 2
	nop	
	mov	rsi, rbx
.label_50:
	mov	rbp, rbp
	mov	cl, byte ptr [rsi]
	lea	rdi, [rdi]
	test	cl, cl
	mov	rbx, rsi
	jne	.label_48
.label_64:
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20

	.globl initialize_regex
	.type initialize_regex, @function
initialize_regex:
	push	rbx
	xor	ebx, ebx
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_73
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rsp, rsp
	mov	edi, ebx
	lea	rdi, [rdi]
	call	toupper
	mov	byte ptr [byte ptr [rbx + folded_chars]],  al
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_69
.label_73:
	mov	rax,  qword ptr [word ptr [rip + context_regex]]
	test	rax, rax
	mov	rsp, rsp
	je	.label_74
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_79
	cmp	qword ptr [word ptr [rip + context_regex]],  0
	lea	rdi, [rdi]
	jne	.label_72
	jmp	.label_75
.label_74:
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	nop	
	jne	.label_68
	nop	
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
	and	al, 1
	je	.label_80
.label_68:
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.65
	jmp	.label_72
.label_79:
	mov	qword ptr [word ptr [rip + context_regex]],  0
	jmp	.label_75
.label_80:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.64
.label_72:
	mov	edi, OFFSET FLAT:context_regex
	mov	rbp, rbp
	call	compile_regex
.label_75:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_71
	nop	
	mov	edi, OFFSET FLAT:word_regex
	lea	rdi, [rdi]
	pop	rbx
	jmp	compile_regex
.label_71:
	cmp	qword ptr [word ptr [rip + break_file]],  0
	lea	rsi, [rsi]
	jne	.label_78
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	je	.label_81
	nop	
	mov	edi, OFFSET FLAT:word_fastmap
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x100
	call	memset
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + label_76]],  0
	nop	
	mov	word ptr [word ptr [rip + label_77]],  0
	jmp	.label_78
.label_81:
	xor	ebx, ebx
	nop	
	call	__ctype_b_loc
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	movzx	ecx, word ptr [rcx + rbx*2]
	nop	
	shr	ecx, 0xa
	nop	
	and	cl, 1
	nop	
	mov	byte ptr [byte ptr [rbx + word_fastmap]],  cl
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_70
.label_78:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e80

	.globl digest_break_file
	.type digest_break_file, @function
digest_break_file:
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsp]
	mov	rsp, rsp
	call	swallow_file_in_memory
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:word_fastmap
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x100
	call	memset
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_82
	nop	word ptr [rax + rax]
.label_83:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rax + word_fastmap]],  0
	inc	rbx
.label_82:
	cmp	rbx, qword ptr [rsp + 8]
	jb	.label_83
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_84
	nop	
	mov	byte ptr [byte ptr [rip + label_76]],  0
	mov	word ptr [word ptr [rip + label_77]],  0
.label_84:
	nop	
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	call	free
	nop	
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	r15, rsi
	nop	
	lea	rsi, [rsp]
	call	swallow_file_in_memory
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	r12, qword ptr [rsp]
	cmp	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jae	.label_86
	lea	r14, [r15 + 8]
	nop	
.label_89:
	cmp	r12, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jae	.label_88
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, r12
	nop	dword ptr [rax]
.label_91:
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0xa
	je	.label_85
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_91
.label_85:
	mov	r13, rbx
	sub	r13, r12
	mov	rsp, rsp
	jbe	.label_87
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	cmp	rax, qword ptr [r15 + 8]
	jne	.label_90
	mov	rdi, qword ptr [r15]
	mov	edx, 0x10
	mov	rsi, r14
	call	x2nrealloc
	mov	qword ptr [r15], rax
.label_90:
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], r13
	nop	
	inc	qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jmp	.label_87
	nop	word ptr [rax + rax]
.label_88:
	nop	
	mov	rbx, r12
.label_87:
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	lea	r12, [rbx + 1]
	cmp	rbx, rax
	cmovae	r12, rbx
	cmp	r12, rax
	nop	
	jb	.label_89
.label_86:
	mov	rdi, qword ptr [r15]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	lea	rdi, [rdi]
	call	qsort
	nop	
	add	rsp, 0x10
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403070

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	test	r14, r14
	je	.label_94
	lea	rdi, [rdi]
	mov	al, byte ptr [r14]
	nop	
	test	al, al
	je	.label_94
	movzx	eax, al
	nop	
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_93
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 1], 0
	je	.label_94
.label_93:
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdi, r14
	call	read_file
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	jmp	.label_95
.label_94:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsp]
	call	fread_file
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	nop	
	mov	r14d, OFFSET FLAT:.str.21
.label_95:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_92
	nop	
	add	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
.label_92:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403150

	.globl find_occurs_in_text
	.type find_occurs_in_text, @function
find_occurs_in_text:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x14], edi
	mov	rbp, rbp
	movsxd	r12, edi
	mov	r15,  qword ptr [word ptr [rip + text_buffers]]
	lea	rdi, [rdi]
	shl	r12, 4
	lea	rdx, [r15 + r12]
	mov	r13, qword ptr [r15 + r12]
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	mov	rcx, r13
	nop	
	jne	.label_151
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	lea	rbp, [r15 + r12 + 8]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r15 + r12 + 8]
	mov	rcx, r13
	nop	
	jae	.label_101
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, r13
	nop	dword ptr [rax + rax]
.label_154:
	mov	rsp, rsp
	movsx	edi, byte ptr [rcx]
	nop	
	mov	r14, rcx
	nop	
	call	to_uchar
	nop	
	movzx	eax, al
	test	byte ptr [rbx + rax*2 + 1], 0x20
	nop	
	jne	.label_136
	nop	
	inc	r14
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbp]
	mov	rcx, r14
	lea	rsi, [rsi]
	jb	.label_154
	jmp	.label_101
.label_136:
	mov	rcx, r14
.label_101:
	mov	rax, rcx
	sub	rax, r13
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp]
	jae	.label_103
	mov	rbx, rcx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r14, qword ptr [rax]
	nop	dword ptr [rax]
.label_122:
	mov	rsp, rsp
	movsx	edi, byte ptr [rcx]
	mov	rbx, rcx
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	test	byte ptr [r14 + rax*2 + 1], 0x20
	je	.label_118
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, qword ptr [rbp]
	mov	rcx, rbx
	jb	.label_122
	lea	rsi, [rsi]
	jmp	.label_103
.label_118:
	nop	
	mov	rcx, rbx
.label_103:
	mov	rdx, qword ptr [rsp + 0x30]
.label_151:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rdx]
	mov	rsp, rsp
	mov	rbp, qword ptr [r15 + r12 + 8]
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_152
	lea	rdi, [rdi]
	lea	rax, [r15 + r12 + 8]
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	rbp, rbp
	mov	r13, r14
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + context_regex]],  0
	mov	rsp, rsp
	je	.label_143
	lea	rdi, [rdi]
	mov	rdx, rbp
	sub	rdx, r13
	nop	
	mov	edi, OFFSET FLAT:label_149
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	r9d, OFFSET FLAT:context_regs
	mov	rbp, rbp
	mov	rsi, r13
	mov	r8, rdx
	call	rpl_re_search
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rdi, [rdi]
	mov	r14, rbp
	mov	rsp, rsp
	je	.label_96
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_102
	lea	rdi, [rdi]
	cmp	rax, -2
	je	.label_107
	mov	rax,  qword ptr [word ptr [rip + label_110]]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax]
	add	r14, r13
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	r14, rbp
.label_96:
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_131:
	mov	r12, rbp
	mov	rsp, rsp
	cmp	r12, r13
	jbe	.label_114
	mov	rsp, rsp
	lea	rbp, [r12 - 1]
	movsx	edi, byte ptr [r12 - 1]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	ebx, al
	nop	
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	nop	
	jne	.label_131
.label_114:
	mov	r15, r13
	jmp	.label_108
.label_99:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x38]
	nop	
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, r13
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + rdx + 0x10], rcx
	mov	rbp, rbp
	mov	rcx, r12
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbx + rdx + 0x18], rcx
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rbx + rdx + 0x28], eax
	inc	qword ptr [word ptr [rip + number_of_occurs.0]]
	nop	
.label_108:
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_145
	nop	dword ptr [rax + rax]
.label_139:
	mov	rsp, rsp
	inc	rbp
.label_145:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	lea	rsi, [rsi]
	je	.label_100
	nop	
	mov	rdx, r12
	lea	rdi, [rdi]
	sub	rdx, rbp
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:label_138
	xor	ecx, ecx
	nop	
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	r8, rdx
	nop	
	call	rpl_re_search
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_129
	cmp	rax, -2
	je	.label_117
	mov	rax,  qword ptr [word ptr [rip + label_119]]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, rbp
	mov	rcx,  qword ptr [word ptr [rip + label_120]]
	mov	r15, rbp
	add	r15, qword ptr [rcx]
	mov	rbp, rax
	nop	
	jmp	.label_121
	nop	word ptr [rax + rax]
.label_134:
	lea	rsi, [rsi]
	inc	rbp
.label_100:
	cmp	rbp, r12
	jae	.label_130
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbp]
	nop	
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_134
.label_130:
	mov	rbp, rbp
	cmp	rbp, r12
	nop	
	je	.label_129
	lea	rdi, [rdi]
	mov	r15, rbp
	jae	.label_139
	nop	dword ptr [rax]
.label_150:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_121
	inc	r15
	cmp	r15, r12
	lea	rsi, [rsi]
	jb	.label_150
	nop	word ptr cs:[rax + rax]
.label_121:
	mov	rbp, rbp
	mov	rax, r15
	sub	rax, rbp
	lea	rsi, [rsi]
	je	.label_139
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax,  qword ptr [word ptr [rip + maximum_word_length]]
	jle	.label_97
	mov	qword ptr [word ptr [rip + maximum_word_length]],  rax
.label_97:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_147
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jae	.label_111
.label_140:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	rbp, rcx
	nop	word ptr [rax + rax]
.label_126:
	movzx	ecx, byte ptr [rbp]
	mov	rbp, rbp
	cmp	ecx, 0xa
	mov	rbp, rbp
	je	.label_123
	inc	rbp
	cmp	rbp, rax
	jb	.label_126
	jmp	.label_127
.label_123:
	inc	qword ptr [word ptr [rip + total_line_count]]
	lea	rax, [rbp + 1]
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	mov	rcx, rax
	jae	.label_128
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	mov	rcx, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_125:
	movsx	edi, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	rbx, rcx
	lea	rdi, [rdi]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_148
	mov	rsp, rsp
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rbx, qword ptr [rax]
	mov	rcx, rbx
	nop	
	jb	.label_125
	jmp	.label_128
.label_148:
	mov	rcx, rbx
.label_128:
	mov	rax, rcx
	mov	rbp, rbp
	sub	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rcx, rax
	jb	.label_140
	inc	rbp
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_111
.label_127:
	nop	
	mov	rcx, rbp
.label_111:
	mov	qword ptr [rsp + 0x28], rcx
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	ja	.label_108
.label_147:
	cmp	qword ptr [word ptr [rip + ignore_file]],  0
	je	.label_116
	mov	esi, OFFSET FLAT:ignore_table
	lea	rdi, [rsp + 0x38]
	call	search_table
	test	al, al
	jne	.label_108
.label_116:
	cmp	qword ptr [word ptr [rip + only_file]],  0
	mov	rsp, rsp
	je	.label_124
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:only_table
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x38]
	call	search_table
	mov	rbp, rbp
	test	al, al
	je	.label_108
.label_124:
	mov	rax,  qword ptr [word ptr [rip + number_of_occurs.0]]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [rip + occurs_alloc]]
	jne	.label_132
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	esi, OFFSET FLAT:occurs_alloc
	mov	edx, 0x30
	nop	
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + occurs_table.0]],  rax
.label_132:
	mov	rbx,  qword ptr [word ptr [rip + occurs_table.0]]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + number_of_occurs.0]]
	lea	rdx, [rax + rax*2]
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	nop	
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	jne	.label_146
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x38]
	jae	.label_142
.label_144:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rcx
.label_141:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0xa
	lea	rsi, [rsi]
	je	.label_104
	inc	rbp
	cmp	rbp, rax
	lea	rsi, [rsi]
	jb	.label_141
	lea	rsi, [rsi]
	jmp	.label_109
.label_104:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rbx
	lea	rdi, [rdi]
	inc	qword ptr [word ptr [rip + total_line_count]]
	lea	rax, [rbp + 1]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, rax
	jae	.label_113
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
.label_137:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx]
	mov	rbp, rbp
	mov	rbx, rcx
	lea	rdi, [rdi]
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_133
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rbx, qword ptr [rax]
	mov	rcx, rbx
	jb	.label_137
	jmp	.label_113
.label_133:
	nop	
	mov	rcx, rbx
.label_113:
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 8]
	jb	.label_144
	mov	rbp, rbp
	inc	rbp
	nop	
	mov	qword ptr [rsp + 0x18], rbp
	nop	
	jmp	.label_142
.label_146:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_98
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbx + rdx + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax,  qword ptr [word ptr [rip + reference_max_width]]
	jle	.label_98
	mov	qword ptr [word ptr [rip + reference_max_width]],  rax
	jmp	.label_98
.label_109:
	mov	rbp, rbp
	mov	rcx, rbp
.label_142:
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	nop	
	mov	qword ptr [rbx + rdx + 0x20], rax
.label_98:
	lea	rsi, [rbx + rdx]
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_115
	cmp	qword ptr [rsp + 0x18], r13
	jne	.label_115
	cmp	r13, r12
	lea	rdi, [rdi]
	jae	.label_112
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rcx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_153:
	mov	rsp, rsp
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	lea	rsi, [rsi]
	test	byte ptr [rbp + rax*2 + 1], 0x20
	mov	rbp, rbp
	jne	.label_135
	inc	r13
	cmp	r13, r12
	lea	rdi, [rdi]
	jb	.label_153
	jmp	.label_135
.label_115:
	mov	qword ptr [rsp], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_99
.label_112:
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rcx
.label_135:
	cmp	r13, r12
	mov	rsp, rsp
	jae	.label_99
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_105:
	mov	rsp, rsp
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	mov	rbp, rbp
	test	byte ptr [rbp + rax*2 + 1], 0x20
	lea	rsi, [rsi]
	je	.label_99
	mov	rbp, rbp
	inc	r13
	nop	
	cmp	r13, r12
	jb	.label_105
	jmp	.label_99
	nop	dword ptr [rax]
.label_129:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax]
	cmp	r14, rbp
	jb	.label_106
.label_152:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_117:
	call	matcher_error
.label_102:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + context_regex]]
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_107:
	call	matcher_error
	.section	.text
	.align	32
	#Procedure 0x4039b0

	.globl sort_found_occurs
	.type sort_found_occurs, @function
sort_found_occurs:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + number_of_occurs.0]]
	lea	rdi, [rdi]
	test	rsi, rsi
	je	.label_155
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	rsp, rsp
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	nop	
	jmp	qsort
.label_155:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039e0

	.globl fix_output_parameters
	.type fix_output_parameters, @function
fix_output_parameters:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x20
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_166
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	lea	rdi, [rdi]
	je	.label_158
	lea	rdi, [rdi]
	lea	r14, [rsp]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_168:
	nop	
	mov	rax,  qword ptr [word ptr [rip + file_line_count]]
	mov	rbp, rbp
	mov	r8, qword ptr [rax + rbx*8]
	nop	
	inc	r8
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_172
	lea	rdi, [rdi]
	sub	r8, qword ptr [rax + rbx*8 - 8]
.label_172:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:.str.69
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	lea	rdi, [rdi]
	movsxd	r15, eax
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rdi, qword ptr [rax + rbx*8]
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_171
	nop	
	call	strlen
	add	r15, rax
.label_171:
	cmp	r15,  qword ptr [word ptr [rip + reference_max_width]]
	jle	.label_162
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + reference_max_width]],  r15
.label_162:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	lea	rdi, [rdi]
	cmp	rbx, rax
	mov	rbp, rbp
	jb	.label_168
.label_158:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + reference_max_width]]
	lea	rsi, [rsi]
	lea	rax, [rdi + 1]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + reference_max_width]],  rax
	add	rdi, 2
	nop	
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + reference]],  rax
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	mov	rbp, rbp
	and	al, 1
	jne	.label_169
.label_166:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_157
.label_169:
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	mov	rsp, rsp
	and	al, 1
	nop	
	je	.label_164
.label_157:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	jmp	.label_167
.label_164:
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	mov	rbp, rbp
	add	rcx,  qword ptr [word ptr [rip + reference_max_width]]
	nop	
	sub	rax, rcx
	mov	qword ptr [word ptr [rip + line_width]],  rax
.label_167:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jns	.label_173
	mov	qword ptr [word ptr [rip + line_width]],  0
.label_173:
	nop	
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x3f
	nop	
	add	rcx, rax
	sar	rcx, 1
	mov	qword ptr [word ptr [rip + half_line_width]],  rcx
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rcx
	mov	rbp, rbp
	sub	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	qword ptr [word ptr [rip + before_max_width]],  rcx
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	test	rdi, rdi
	je	.label_165
	lea	rdi, [rdi]
	cmp	byte ptr [rdi], 0
	je	.label_165
	call	strlen
	mov	qword ptr [word ptr [rip + truncation_string_length]],  rax
	jmp	.label_156
.label_165:
	mov	qword ptr [word ptr [rip + truncation_string]],  0
.label_156:
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	cl, 1
	nop	
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	mov	rsp, rsp
	add	rax, rax
	lea	rsi, [rsi]
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_163
	or	rax, 1
	jmp	.label_174
.label_163:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + before_max_width]]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	sub	rcx, rax
	cmovns	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + before_max_width]],  rdx
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	add	rax, rax
.label_174:
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rcx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_160:
	movzx	edx, word ptr [rax + rcx*2]
	shr	edx, 0xd
	and	dl, 1
	nop	
	mov	byte ptr [byte ptr [rcx + edited_flag]],  dl
	inc	rcx
	cmp	rcx, 0x100
	mov	rsp, rsp
	jne	.label_160
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + label_175]],  1
	nop	
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 3
	nop	
	je	.label_176
	mov	rbp, rbp
	cmp	eax, 2
	jne	.label_159
	nop	
	mov	byte ptr [byte ptr [rip + label_170]],  1
	jmp	.label_159
.label_176:
	mov	al, 0x24
	mov	rbx, -8
	nop	word ptr cs:[rax + rax]
.label_177:
	lea	rsi, [rsi]
	movsx	edi, al
	lea	rsi, [rsi]
	call	to_uchar
	movzx	eax, al
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rax + edited_flag]],  1
	nop	
	mov	al,  byte ptr [byte ptr [rbx + .str.71]]
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_177
	lea	rsi, [rsi]
	mov	rax, -0x80
	nop	word ptr [rax + rax]
.label_161:
	cmp	byte ptr [byte ptr [rax + .str_2]],  0
	mov	rsp, rsp
	setne	byte ptr [byte ptr [rax + tail]]
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	jne	.label_161
.label_159:
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d20

	.globl generate_all_output
	.type generate_all_output, @function
generate_all_output:
	push	r14
	push	rbx
	push	rax
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [word ptr [rip + tail]],  xmm0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	movups	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	jle	.label_178
	mov	r14,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_181:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	define_all_fields
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	mov	rbp, rbp
	cmp	eax, 2
	jb	.label_182
	je	.label_180
	cmp	eax, 3
	jne	.label_179
	lea	rsi, [rsi]
	call	output_one_tex_line
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_182:
	lea	rsi, [rsi]
	call	output_one_dumb_line
	lea	rsi, [rsi]
	jmp	.label_179
	nop	dword ptr [rax]
.label_180:
	mov	rbp, rbp
	call	output_one_roff_line
	nop	dword ptr [rax + rax]
.label_179:
	add	r14, 0x30
	mov	rsp, rsp
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	lea	rdi, [rdi]
	jl	.label_181
.label_178:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e00

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rax
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:folded_chars
	mov	rsp, rsp
	cmovne	rcx, rax
	mov	qword ptr [rdi + 0x30], rcx
	lea	rbx, [rdi + 8]
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	rpl_re_compile_pattern
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_183
	mov	rdi, rbx
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	jmp	rpl_re_compile_fastmap
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	r12, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, r14
	nop	
	mov	r8, rbx
	nop	
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl compare_words
	.type compare_words, @function
compare_words:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	r12, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rax, r12
	lea	rsi, [rsi]
	cmovle	r12, rax
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	mov	rsp, rsp
	je	.label_186
	lea	rsi, [rsi]
	test	r12, r12
	jle	.label_184
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	r13, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rbx, qword ptr [rax]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_187:
	movsx	edi, byte ptr [r13 + r14]
	call	to_uchar
	movzx	eax, al
	movzx	ebp,  byte ptr [byte ptr [rax + folded_chars]]
	movsx	edi, byte ptr [rbx + r14]
	call	to_uchar
	mov	rsp, rsp
	movzx	eax, al
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	sub	ebp, eax
	jne	.label_188
	inc	r14
	lea	rdi, [rdi]
	cmp	r14, r12
	jl	.label_187
	jmp	.label_184
.label_186:
	lea	rsi, [rsi]
	test	r12, r12
	jle	.label_184
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	r14, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rax]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_185:
	movsx	edi, byte ptr [r14 + r15]
	mov	rsp, rsp
	call	to_uchar
	mov	bl, al
	movsx	edi, byte ptr [r13 + r15]
	call	to_uchar
	movzx	ebp, bl
	movzx	eax, al
	sub	ebp, eax
	jne	.label_188
	inc	r15
	lea	rdi, [rdi]
	cmp	r15, r12
	jl	.label_185
.label_184:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	setg	al
	mov	rsp, rsp
	movzx	eax, al
	nop	
	mov	ebp, 0xffffffff
	cmovge	ebp, eax
.label_188:
	nop	
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0x18
	nop	
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404040

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.68
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090

	.globl search_table
	.type search_table, @function
search_table:
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r14, rdi
	mov	rbx, qword ptr [rsi + 0x10]
	test	rbx, rbx
	mov	rsp, rsp
	jle	.label_193
	mov	r15, qword ptr [rsi]
	mov	rbp, rbp
	xor	r12d, r12d
.label_192:
	mov	r13, rbx
	mov	rbp, rbp
	dec	r13
	nop	word ptr [rax + rax]
.label_191:
	lea	rax, [r12 + r13]
	mov	rbx, rax
	mov	rsp, rsp
	shr	rbx, 0x3f
	add	rbx, rax
	sar	rbx, 1
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	shl	rsi, 4
	mov	rsp, rsp
	add	rsi, r15
	lea	rdi, [rdi]
	mov	rdi, r14
	call	compare_words
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	js	.label_189
	mov	al, 1
	jle	.label_190
	cmp	rbx, r13
	mov	rbp, rbp
	lea	r12, [rbx + 1]
	mov	rsp, rsp
	jl	.label_191
	mov	rsp, rsp
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	r12, rbx
	nop	
	jl	.label_192
	jmp	.label_190
.label_193:
	xor	eax, eax
.label_190:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	r14
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	call	compare_words
	test	eax, eax
	jne	.label_194
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14]
	nop	
	mov	eax, 0xffffffff
	cmp	rcx, rdx
	jb	.label_194
	lea	rdi, [rdi]
	cmp	rdx, rcx
	sbb	eax, eax
	and	eax, 1
.label_194:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0

	.globl define_all_fields
	.type define_all_fields, @function
define_all_fields:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15]
	mov	qword ptr [word ptr [rip + keyafter]],  r12
	mov	rax, qword ptr [r15 + 8]
	lea	rbx, [r12 + rax]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_197]],  rbx
	mov	rcx, qword ptr [r15 + 0x10]
	add	rcx, r12
	mov	qword ptr [rsp], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x18]
	add	r12, rcx
	mov	rbp, rbp
	movsxd	rdx, dword ptr [r15 + 0x28]
	mov	rsi,  qword ptr [word ptr [rip + text_buffers]]
	shl	rdx, 4
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + rdx]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsi + rdx + 8]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_209
	mov	ebp, 1
	nop	word ptr [rax + rax]
.label_200:
	nop	
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [rip + keyafter_max_width]]
	lea	rdi, [rdi]
	cmp	rbx, rax
	ja	.label_209
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_197]],  rbx
	nop	
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_228
	lea	rdi, [rdi]
	mov	rdx, r12
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_138
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	rpl_re_match
	mov	rbp, rbp
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_207
	cmp	rax, -1
	cmove	rax, rbp
	add	rbx, rax
	jmp	.label_238
	nop	
.label_228:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	lea	rdi, [rdi]
	jne	.label_245
	lea	rsi, [rsi]
	inc	rbx
	mov	rsp, rsp
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
.label_257:
	inc	rbx
.label_245:
	lea	rsi, [rsi]
	cmp	rbx, r12
	lea	rdi, [rdi]
	jae	.label_238
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	nop	
	movzx	eax, al
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	jne	.label_257
	nop	word ptr cs:[rax + rax]
.label_238:
	mov	rbp, rbp
	cmp	rbx, r12
	mov	rbp, rbp
	jb	.label_200
.label_209:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	add	rax,  qword ptr [word ptr [rip + keyafter_max_width]]
	cmp	rbx, rax
	lea	rsi, [rsi]
	ja	.label_208
	nop	
	mov	qword ptr [word ptr [rip + label_197]],  rbx
.label_208:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + label_197]]
	cmp	rbx, r12
	mov	rsp, rsp
	sbb	al, al
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	cl
	and	cl, al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  cl
	cmp	rbx,  qword ptr [word ptr [rip + keyafter]]
	jbe	.label_233
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	nop	
	mov	r14,  qword ptr [word ptr [rip + keyafter]]
	mov	rsp, rsp
	dec	rbx
	nop	word ptr [rax + rax]
.label_239:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_233
	mov	qword ptr [word ptr [rip + label_197]],  rbx
	cmp	rbx, r14
	lea	rbx, [rbx - 1]
	mov	rsp, rsp
	ja	.label_239
.label_233:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 8], r15
	nop	
	mov	rcx, rax
	neg	rcx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + maximum_word_length]]
	add	rdx,  qword ptr [word ptr [rip + half_line_width]]
	mov	r15,  qword ptr [word ptr [rip + keyafter]]
	mov	rsp, rsp
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jge	.label_246
	sub	r15, rdx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	mov	rbp, rbp
	je	.label_256
	nop	
	mov	edi, OFFSET FLAT:label_138
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	rpl_re_match
	cmp	rax, -2
	nop	
	je	.label_207
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	lea	rdi, [rdi]
	add	r15, rcx
	jmp	.label_199
.label_246:
	lea	rsi, [rsi]
	add	r15, rax
.label_199:
	mov	qword ptr [word ptr [rip + before]],  r15
	mov	rbx,  qword ptr [word ptr [rip + keyafter]]
	nop	
	mov	qword ptr [word ptr [rip + label_220]],  rbx
	cmp	rbx, r15
	jbe	.label_221
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	r14,  qword ptr [word ptr [rip + before]]
	mov	rsp, rsp
	dec	rbx
	nop	word ptr [rax + rax]
.label_235:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	nop	
	test	byte ptr [rbp + rax*2 + 1], 0x20
	mov	rsp, rsp
	je	.label_221
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_220]],  rbx
	cmp	rbx, r14
	mov	rbp, rbp
	lea	rbx, [rbx - 1]
	lea	rdi, [rdi]
	ja	.label_235
.label_221:
	mov	rbx,  qword ptr [word ptr [rip + before]]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + before_max_width]]
	add	rax, rbx
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_220]]
	cmp	rax, rdx
	jae	.label_243
	lea	rdi, [rdi]
	mov	r14d, 1
	nop	
.label_247:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_219
	sub	rdx, rbx
	nop	
	mov	edi, OFFSET FLAT:label_138
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_202
	lea	rsi, [rsi]
	cmp	rax, -1
	cmove	rax, r14
	add	qword ptr [word ptr [rip + before]],  rax
	mov	rsp, rsp
	jmp	.label_201
	nop	dword ptr [rax]
.label_219:
	nop	
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	lea	rsi, [rsi]
	je	.label_226
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + before]]
	cmp	rbx,  qword ptr [word ptr [rip + label_220]]
	jae	.label_201
	mov	rbp,  qword ptr [word ptr [rip + label_220]]
	nop	word ptr cs:[rax + rax]
.label_232:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbx]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	eax, al
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_201
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + before]],  rbx
	lea	rdi, [rdi]
	cmp	rbx, rbp
	jb	.label_232
	jmp	.label_201
.label_226:
	lea	rdi, [rdi]
	inc	rbx
	mov	qword ptr [word ptr [rip + before]],  rbx
	nop	word ptr cs:[rax + rax]
.label_201:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + before_max_width]]
	add	rax, rbx
	mov	rdx,  qword ptr [word ptr [rip + label_220]]
	cmp	rax, rdx
	jb	.label_247
.label_243:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	je	.label_253
	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rbp, rbx
	mov	rbp, rbp
	cmp	rbp, qword ptr [rsp + 0x10]
	jbe	.label_195
	mov	rsp, rsp
	lea	rbx, [rbp - 1]
	movsx	edi, byte ptr [rbp - 1]
	mov	rbp, rbp
	call	to_uchar
	nop	
	movzx	r14d, al
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r14*2 + 1], 0x20
	mov	rsp, rsp
	jne	.label_210
.label_195:
	nop	
	cmp	qword ptr [rsp], rbp
	mov	rsp, rsp
	setb	al
	jmp	.label_216
.label_253:
	lea	rdi, [rdi]
	xor	eax, eax
.label_216:
	mov	byte ptr [byte ptr [rip + before_truncation]],  al
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + before]]
	cmp	rbx, r13
	jae	.label_223
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	nop	dword ptr [rax]
.label_214:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	mov	rsp, rsp
	movzx	eax, al
	nop	
	test	byte ptr [rbp + rax*2 + 1], 0x20
	mov	rbp, rbp
	je	.label_223
	inc	rbx
	mov	qword ptr [word ptr [rip + before]],  rbx
	cmp	rbx, r13
	jb	.label_214
.label_223:
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	sub	r14,  qword ptr [word ptr [rip + label_220]]
	add	r14,  qword ptr [word ptr [rip + before]]
	sub	r14,  qword ptr [word ptr [rip + gap_size]]
	test	r14, r14
	mov	rbp, rbp
	jle	.label_237
	mov	rbx,  qword ptr [word ptr [rip + label_197]]
	mov	qword ptr [word ptr [rip + tail]],  rbx
	cmp	rbx, r13
	jae	.label_230
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	nop	
.label_242:
	movsx	edi, byte ptr [rbx]
	lea	rdi, [rdi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	mov	rbx,  qword ptr [word ptr [rip + tail]]
	je	.label_255
	nop	
	inc	rbx
	mov	qword ptr [word ptr [rip + tail]],  rbx
	nop	
	cmp	rbx, r13
	nop	
	jb	.label_242
.label_230:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + tail]]
.label_255:
	mov	qword ptr [word ptr [rip + label_204]],  rbx
	mov	rcx,  qword ptr [word ptr [rip + tail]]
	add	rcx, r14
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rsp, rsp
	setb	al
	nop	
	cmp	rbx, r12
	lea	rdi, [rdi]
	jae	.label_205
	lea	rsi, [rsi]
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_205
	nop	
	mov	ebp, 1
	nop	word ptr [rax + rax]
.label_211:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_204]],  rbx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_236
	mov	rbp, rbp
	mov	rdx, r12
	sub	rdx, rbx
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:label_138
	nop	
	xor	ecx, ecx
	xor	r8d, r8d
	nop	
	mov	rsi, rbx
	call	rpl_re_match
	lea	rdi, [rdi]
	cmp	rax, -2
	je	.label_202
	cmp	rax, -1
	nop	
	cmove	rax, rbp
	add	rbx, rax
	mov	rbp, rbp
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_236:
	nop	
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	nop	
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	nop	
	jne	.label_248
	inc	rbx
	jmp	.label_225
	nop	dword ptr [rax]
.label_259:
	inc	rbx
.label_248:
	lea	rdi, [rdi]
	cmp	rbx, r12
	mov	rsp, rsp
	jae	.label_225
	mov	rsp, rsp
	movsx	edi, byte ptr [rbx]
	mov	rsp, rsp
	call	to_uchar
	nop	
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	mov	rsp, rsp
	jne	.label_259
	nop	dword ptr [rax]
.label_225:
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + tail]]
	add	rcx, r14
	lea	rdi, [rdi]
	cmp	rbx, rcx
	mov	rbp, rbp
	setb	al
	cmp	rbx, r12
	jae	.label_205
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jb	.label_211
.label_205:
	test	al, al
	je	.label_215
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + label_204]],  rbx
.label_215:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_204]]
	nop	
	cmp	rax,  qword ptr [word ptr [rip + tail]]
	mov	rsp, rsp
	jbe	.label_241
	nop	
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	cmp	qword ptr [word ptr [rip + label_204]],  r12
	nop	
	sbb	cl, cl
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	al
	mov	rsp, rsp
	and	al, cl
	mov	rsp, rsp
	jmp	.label_229
.label_237:
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + tail]],  xmm0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	nop	
	jmp	.label_222
.label_241:
	mov	rsp, rsp
	xor	eax, eax
.label_229:
	mov	byte ptr [byte ptr [rip + tail_truncation]],  al
	nop	
	mov	rbx,  qword ptr [word ptr [rip + label_204]]
	mov	rbp, rbp
	cmp	rbx,  qword ptr [word ptr [rip + tail]]
	jbe	.label_222
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rbp, qword ptr [rax]
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + tail]]
	lea	rdi, [rdi]
	dec	rbx
	nop	dword ptr [rax]
.label_258:
	movsx	edi, byte ptr [rbx]
	mov	rsp, rsp
	call	to_uchar
	mov	rsp, rsp
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	je	.label_222
	mov	qword ptr [word ptr [rip + label_204]],  rbx
	mov	rbp, rbp
	cmp	rbx, r14
	lea	rdi, [rdi]
	lea	rbx, [rbx - 1]
	ja	.label_258
.label_222:
	mov	r13,  qword ptr [word ptr [rip + keyafter_max_width]]
	nop	
	sub	r13,  qword ptr [word ptr [rip + label_197]]
	add	r13,  qword ptr [word ptr [rip + keyafter]]
	sub	r13,  qword ptr [word ptr [rip + gap_size]]
	test	r13, r13
	jle	.label_198
	mov	rbp,  qword ptr [word ptr [rip + before]]
	mov	qword ptr [word ptr [rip + label_212]],  rbp
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jbe	.label_213
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax]
	mov	rbp, rbp
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_231:
	nop	
	movsx	edi, byte ptr [rbp]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	eax, al
	mov	rsp, rsp
	test	byte ptr [r14 + rax*2 + 1], 0x20
	je	.label_213
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_212]],  rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	lea	rbp, [rbp - 1]
	mov	rsp, rsp
	ja	.label_231
.label_213:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + head]],  r15
	mov	rbp, rbp
	lea	rax, [r15 + r13]
	mov	rdx,  qword ptr [word ptr [rip + label_212]]
	mov	rsp, rsp
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_240
	mov	rsp, rsp
	mov	r14d, 1
	nop	dword ptr [rax]
.label_251:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	nop	
	je	.label_234
	lea	rsi, [rsi]
	sub	rdx, r15
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:label_138
	lea	rdi, [rdi]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rsi, r15
	call	rpl_re_match
	cmp	rax, -2
	mov	rsp, rsp
	je	.label_202
	cmp	rax, -1
	cmove	rax, r14
	add	qword ptr [word ptr [rip + head]],  rax
	jmp	.label_206
.label_234:
	nop	
	movsx	edi, byte ptr [r15]
	call	to_uchar
	nop	
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	nop	
	je	.label_227
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + head]]
	lea	rdi, [rdi]
	cmp	rbp,  qword ptr [word ptr [rip + label_212]]
	mov	rbp, rbp
	jae	.label_206
	mov	rbx,  qword ptr [word ptr [rip + label_212]]
	nop	dword ptr [rax + rax]
.label_260:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbp]
	lea	rsi, [rsi]
	call	to_uchar
	movzx	eax, al
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_206
	inc	rbp
	mov	qword ptr [word ptr [rip + head]],  rbp
	cmp	rbp, rbx
	lea	rsi, [rsi]
	jb	.label_260
	lea	rdi, [rdi]
	jmp	.label_206
.label_227:
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + head]],  r15
	nop	word ptr cs:[rax + rax]
.label_206:
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + head]]
	lea	rax, [r15 + r13]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + label_212]]
	mov	rsp, rsp
	cmp	rax, rdx
	jb	.label_251
.label_240:
	cmp	rdx, r15
	mov	rsp, rsp
	jbe	.label_252
	mov	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [rip + head]]
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	and	al, cl
	mov	rbp, rbp
	jmp	.label_254
.label_198:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	nop	
	mov	r15, qword ptr [rsp + 8]
	nop	
	jmp	.label_203
.label_252:
	nop	
	xor	eax, eax
.label_254:
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	byte ptr [byte ptr [rip + head_truncation]],  al
	mov	rbx,  qword ptr [word ptr [rip + head]]
	cmp	rbx,  qword ptr [word ptr [rip + label_212]]
	lea	rdi, [rdi]
	jae	.label_203
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	rbp, rbp
	mov	r14,  qword ptr [word ptr [rip + label_212]]
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbx]
	lea	rsi, [rsi]
	call	to_uchar
	movzx	eax, al
	lea	rsi, [rsi]
	test	byte ptr [rbp + rax*2 + 1], 0x20
	mov	rbp, rbp
	je	.label_203
	inc	rbx
	mov	qword ptr [word ptr [rip + head]],  rbx
	cmp	rbx, r14
	mov	rbp, rbp
	jb	.label_244
.label_203:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_196
	movsxd	rax, dword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	rcx, qword ptr [rcx + rax*8]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rcx
	mov	rbx, qword ptr [r15 + 0x20]
	mov	rbp, rbp
	inc	rbx
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_250
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	mov	rsp, rsp
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_250:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	call	stpcpy
	lea	rsi, [rsi]
	mov	r14, rax
	nop	
	mov	esi, 1
	mov	rsp, rsp
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.71
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	mov	rbp, rbp
	call	__sprintf_chk
	cdqe	
	mov	rsp, rsp
	add	rax, r14
	nop	
	mov	qword ptr [word ptr [rip + label_217]],  rax
	jmp	.label_218
.label_196:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_218
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + keyafter]]
	mov	rsp, rsp
	add	rbx, qword ptr [r15 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + reference]],  rbx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_217]],  rbx
	cmp	rbx, r12
	jae	.label_218
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_249:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbx]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	mov	rbp, rbp
	jne	.label_218
	nop	
	inc	rbx
	mov	qword ptr [word ptr [rip + label_217]],  rbx
	cmp	rbx, r12
	mov	rbp, rbp
	jb	.label_249
.label_218:
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	nop	
	ret	
.label_256:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	nop	
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	lea	rsi, [rsi]
	je	.label_261
	lea	rdi, [rdi]
	cmp	r15,  qword ptr [word ptr [rip + keyafter]]
	mov	rbp, rbp
	jae	.label_199
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + keyafter]]
	nop	dword ptr [rax]
.label_224:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_199
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jb	.label_224
	mov	rbp, rbp
	jmp	.label_199
.label_261:
	lea	rdi, [rdi]
	inc	r15
	lea	rsi, [rsi]
	jmp	.label_199
.label_202:
	call	matcher_error
.label_207:
	mov	rbp, rbp
	call	matcher_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl output_one_dumb_line
	.type output_one_dumb_line, @function
output_one_dumb_line:
	push	rbx
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	and	al, 1
	jne	.label_264
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_217]]
	mov	rbp, rbp
	movzx	ebx,  byte ptr [byte ptr [rip + auto_reference]]
	mov	rsp, rsp
	call	print_field
	and	ebx, 1
	cmp	ebx, 1
	jne	.label_273
	mov	rbp, rbp
	mov	edi, 0x3a
	call	putchar_unlocked
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rdi]
	lea	rdi, [rax + rcx - 1]
	nop	
	jmp	.label_277
.label_273:
	mov	rdi,  qword ptr [word ptr [rip + gap_size]]
	add	rdi,  qword ptr [word ptr [rip + reference_max_width]]
.label_277:
	sub	rdi,  qword ptr [word ptr [rip + label_217]]
	add	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rbp, rbp
	call	print_spaces
.label_264:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_204]]
	nop	
	cmp	rdi, rsi
	jae	.label_266
	nop	
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	lea	rdi, [rdi]
	je	.label_271
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_271:
	mov	rdi,  qword ptr [word ptr [rip + half_line_width]]
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [rip + gap_size]]
	mov	r9,  qword ptr [word ptr [rip + label_220]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	mov	rbp, rbp
	neg	rax
	nop	
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rcx, rax
	jne	.label_278
	xor	ecx, ecx
.label_278:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_204]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + tail]]
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	jne	.label_265
	lea	rsi, [rsi]
	xor	eax, eax
.label_265:
	sub	rdi, r10
	lea	rdi, [rdi]
	sub	rdi, r9
	mov	rsp, rsp
	add	rdi, r8
	add	rdi, rcx
	sub	rdi, rsi
	add	rdi, rdx
	nop	
	add	rdi, rax
	mov	rsp, rsp
	jmp	.label_275
.label_266:
	mov	rdi,  qword ptr [word ptr [rip + half_line_width]]
	mov	rsi,  qword ptr [word ptr [rip + gap_size]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + label_220]]
	mov	rax,  qword ptr [word ptr [rip + before]]
	xor	ecx, ecx
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rsp, rsp
	je	.label_279
	lea	rdi, [rdi]
	sub	rcx,  qword ptr [word ptr [rip + truncation_string_length]]
	jmp	.label_262
.label_279:
	mov	rsp, rsp
	xor	ecx, ecx
.label_262:
	lea	rsi, [rsi]
	sub	rdi, rsi
	sub	rdi, rdx
	mov	rsp, rsp
	add	rdi, rax
	add	rdi, rcx
.label_275:
	nop	
	call	print_spaces
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_268
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_268:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_220]]
	mov	rsp, rsp
	call	print_field
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + gap_size]]
	lea	rsi, [rsi]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	mov	rsi,  qword ptr [word ptr [rip + label_197]]
	mov	rsp, rsp
	call	print_field
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	lea	rsi, [rsi]
	je	.label_280
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_280:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + head]]
	sub	rdi,  qword ptr [word ptr [rip + label_212]]
	jae	.label_270
	nop	
	mov	rsi,  qword ptr [word ptr [rip + half_line_width]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + label_197]]
	mov	r8,  qword ptr [word ptr [rip + keyafter]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	nop	
	neg	rax
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	jne	.label_276
	xor	ecx, ecx
.label_276:
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	lea	rsi, [rsi]
	jne	.label_263
	lea	rsi, [rsi]
	xor	eax, eax
.label_263:
	add	rdi, rsi
	sub	rdi, rdx
	nop	
	add	rdi, r8
	lea	rsi, [rsi]
	add	rdi, rcx
	nop	
	add	rdi, rax
	call	print_spaces
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	je	.label_269
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_269:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_212]]
	call	print_field
	jmp	.label_267
.label_270:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	nop	
	and	al, 1
	jne	.label_281
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_267
.label_281:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_267
	mov	rdi,  qword ptr [word ptr [rip + half_line_width]]
	mov	rdx,  qword ptr [word ptr [rip + label_197]]
	nop	
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	lea	rdi, [rdi]
	je	.label_272
	mov	rsp, rsp
	sub	rcx,  qword ptr [word ptr [rip + truncation_string_length]]
	nop	
	jmp	.label_274
.label_272:
	xor	ecx, ecx
.label_274:
	nop	
	sub	rdi, rdx
	mov	rbp, rbp
	add	rdi, rax
	lea	rsi, [rsi]
	add	rdi, rcx
	mov	rbp, rbp
	call	print_spaces
.label_267:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_282
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	mov	rbp, rbp
	and	eax, 1
	nop	
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_283
.label_282:
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	and	eax, 1
	nop	
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_283
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_217]]
	call	print_field
.label_283:
	mov	edi, 0xa
	pop	rbx
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405160

	.globl output_one_roff_line
	.type output_one_roff_line, @function
output_one_roff_line:
	lea	rdi, [rdi]
	push	rax
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.88
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_204]]
	lea	rdi, [rdi]
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	je	.label_286
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
.label_286:
	mov	edi, 0x22
	call	putchar_unlocked
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.89
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rsp, rsp
	je	.label_287
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_287:
	mov	rdi,  qword ptr [word ptr [rip + before]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + label_220]]
	call	print_field
	mov	edi, 0x22
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.89
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_197]]
	mov	rsp, rsp
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	mov	rbp, rbp
	je	.label_284
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_284:
	mov	edi, 0x22
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.89
	lea	rsi, [rsi]
	call	fputs_unlocked
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	je	.label_285
	nop	
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
.label_285:
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + label_212]]
	mov	rbp, rbp
	call	print_field
	lea	rsi, [rsi]
	mov	edi, 0x22
	call	putchar_unlocked
	nop	
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_288
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_289
.label_288:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + label_217]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
.label_289:
	mov	edi, 0xa
	pop	rax
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl output_one_tex_line
	.type output_one_tex_line, @function
output_one_tex_line:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.90
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, 0x7b
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	mov	rsi,  qword ptr [word ptr [rip + label_204]]
	nop	
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + before]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_220]]
	call	print_field
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	r15,  qword ptr [word ptr [rip + keyafter]]
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + label_197]]
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_292
	mov	rdx, r14
	lea	rsi, [rsi]
	sub	rdx, r15
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:label_138
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r15
	mov	rsp, rsp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_293
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	mov	ebx, 1
	lea	rsi, [rsi]
	cmovne	rbx, rax
	add	rbx, r15
	jmp	.label_291
.label_292:
	movsx	edi, byte ptr [r15]
	call	to_uchar
	movzx	eax, al
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_290
	cmp	r15,  qword ptr [word ptr [rip + label_197]]
	mov	rsp, rsp
	mov	rbx, r15
	lea	rsi, [rsi]
	jae	.label_291
	mov	r12,  qword ptr [word ptr [rip + label_197]]
	lea	rsi, [rsi]
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_295:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_291
	inc	rbx
	cmp	rbx, r12
	jb	.label_295
	jmp	.label_291
.label_290:
	lea	rbx, [r15 + 1]
.label_291:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.91
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + head]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + label_212]]
	mov	rbp, rbp
	call	print_field
	lea	rdi, [rdi]
	mov	edi, 0x7d
	lea	rdi, [rdi]
	call	putchar_unlocked
	nop	
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_294
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_296
.label_294:
	mov	edi, 0x7b
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_217]]
	call	print_field
	mov	edi, 0x7d
	mov	rbp, rbp
	call	putchar_unlocked
.label_296:
	mov	edi, 0xa
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	putchar_unlocked
.label_293:
	call	matcher_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl print_field
	.type print_field, @function
print_field:
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_302
	mov	r12d, OFFSET FLAT:.str.77
	jmp	.label_304
.label_310:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.83
	nop	
	call	fputs_unlocked
	jmp	.label_298
.label_315:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.85
	mov	rbp, rbp
	call	fputs_unlocked
	jmp	.label_298
.label_297:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.75
	lea	rdi, [rdi]
	call	fputs_unlocked
	jmp	.label_298
.label_306:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.74
	mov	rbp, rbp
	call	fputs_unlocked
	jmp	.label_298
	nop	word ptr cs:[rax + rax]
.label_304:
	mov	rbp, rbp
	movzx	ebx, byte ptr [r15]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rbx + edited_flag]],  0
	lea	rsi, [rsi]
	je	.label_312
	movsx	eax,  byte ptr [byte ptr [rbx + diacrit_diac]]
	nop	
	test	eax, eax
	je	.label_311
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + output_format]],  3
	jne	.label_311
	mov	rsp, rsp
	dec	eax
	lea	rsi, [rsi]
	cmp	eax, 8
	nop	
	ja	.label_298
	movsx	ecx,  byte ptr [byte ptr [rbx + diacrit_base]]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_313]]
.label_2215:
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x69
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.76
	jmp	.label_305
	nop	dword ptr [rax + rax]
.label_312:
	mov	rbp, rbp
	movsx	edi, bl
	lea	rdi, [rdi]
	jmp	.label_303
	nop	
.label_311:
	mov	rsp, rsp
	cmp	ebx, 0x5b
	lea	rdi, [rdi]
	jg	.label_308
	mov	rsp, rsp
	lea	eax, [rbx - 0x23]
	nop	
	cmp	eax, 4
	mov	rsp, rsp
	jb	.label_309
	lea	rsi, [rsi]
	cmp	ebx, 0x22
	mov	rsp, rsp
	jne	.label_301
	mov	edi, 0x22
	lea	rsi, [rsi]
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	edi, 0x22
	lea	rsi, [rsi]
	jmp	.label_303
.label_308:
	cmp	ebx, 0x7a
	nop	
	jg	.label_299
	cmp	ebx, 0x5c
	mov	rbp, rbp
	je	.label_300
	lea	rsi, [rsi]
	cmp	ebx, 0x5f
	lea	rsi, [rsi]
	jne	.label_301
.label_309:
	lea	rsi, [rsi]
	mov	edi, 0x5c
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	edi, ebx
	jmp	.label_303
.label_299:
	cmp	ebx, 0x7b
	mov	rbp, rbp
	je	.label_314
	nop	
	cmp	ebx, 0x7d
	jne	.label_301
.label_314:
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.86
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edx, ebx
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_298
.label_2214:
	nop	
	cmp	ecx, 0x60
	mov	rbp, rbp
	jg	.label_307
	cmp	ecx, 0x41
	mov	rbp, rbp
	je	.label_297
	mov	rbp, rbp
	cmp	ecx, 0x4f
	jne	.label_301
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.73
	call	fputs_unlocked
	lea	rsi, [rsi]
	jmp	.label_298
.label_2217:
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rdx, r12
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.79
	mov	rbp, rbp
	jmp	.label_305
.label_2216:
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.78
	jmp	.label_305
.label_2218:
	movzx	eax, cl
	nop	
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.80
.label_305:
	xor	eax, eax
	call	__printf_chk
	nop	
	jmp	.label_298
.label_2219:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_298
.label_2220:
	nop	
	cmp	ecx, 0x41
	je	.label_310
	mov	rsp, rsp
	cmp	ecx, 0x61
	jne	.label_301
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.82
	nop	
	call	fputs_unlocked
	nop	
	jmp	.label_298
.label_2221:
	cmp	ecx, 0x4f
	je	.label_315
	mov	rbp, rbp
	cmp	ecx, 0x6f
	jne	.label_301
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.84
	call	fputs_unlocked
	jmp	.label_298
.label_300:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.87
	nop	
	call	fputs_unlocked
	jmp	.label_298
.label_307:
	cmp	ecx, 0x61
	je	.label_306
	cmp	ecx, 0x6f
	nop	
	jne	.label_301
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.72
	call	fputs_unlocked
	lea	rsi, [rsi]
	jmp	.label_298
.label_301:
	nop	
	mov	edi, 0x20
	nop	dword ptr [rax]
.label_303:
	lea	rdi, [rdi]
	call	putchar_unlocked
.label_298:
	inc	r15
	mov	rsp, rsp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_304
.label_302:
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405920

	.globl print_spaces
	.type print_spaces, @function
print_spaces:
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_316
	lea	rsi, [rsi]
	inc	rbx
	nop	dword ptr [rax + rax]
.label_317:
	mov	edi, 0x20
	lea	rsi, [rsi]
	call	putchar_unlocked
	dec	rbx
	mov	rbp, rbp
	cmp	rbx, 1
	jg	.label_317
.label_316:
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x405970

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_320
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_318
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_321
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_319
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_322
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_318
.label_322:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_318
.label_319:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_318:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_323
	lea	rsi, [rsi]
	jmp	.label_324
.label_320:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_324:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_321:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405af0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_325
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_326
.label_325:
	nop	
	mov	esi, OFFSET FLAT:.str_3
.label_326:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_329
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_328:
	test	rbp, rbp
	je	.label_327
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_331
.label_327:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_330
	nop	
.label_331:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_330:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_328
.label_329:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	putc_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_332
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	call	argmatch_valid
	mov	rsp, rsp
	call	r14
	lea	rsi, [rsi]
	mov	rax, -1
.label_332:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_333
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_334:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_333
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_334
.label_333:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e10
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
	#Procedure 0x405e20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e30

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
	je	.label_336
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_335
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_335
.label_336:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_338
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
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
	jne	.label_337
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
.label_338:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_337:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	.align	32
	#Procedure 0x405f30

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, r12
	nop	
	call	fileno
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_344
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_347
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_348
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_348:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r14d
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r14b
	jmp	.label_350
.label_344:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], 0
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_339
.label_347:
	nop	
	mov	dword ptr [rsp + 4], 0
.label_350:
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_349
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	call	protect_fd
	nop	
	mov	r15b, 1
	test	al, al
	je	.label_341
.label_349:
	test	r14b, r14b
	lea	rsi, [rsi]
	je	.label_342
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	protect_fd
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_341
.label_342:
	nop	
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_339
	mov	edi, 2
	lea	rdi, [rdi]
	call	protect_fd
	lea	rdi, [rdi]
	xor	r13d, r13d
	test	al, al
	je	.label_341
.label_339:
	mov	rdi, rbx
	mov	rsi, rbp
	nop	
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
.label_341:
	nop	
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx]
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_346
	nop	
	mov	edi, 2
	lea	rdi, [rdi]
	call	close
.label_346:
	test	r14b, r14b
	je	.label_340
	mov	rsp, rsp
	mov	edi, 1
	call	close
.label_340:
	test	r15b, r15b
	je	.label_343
	xor	edi, edi
	call	close
.label_343:
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_345
	nop	
	mov	dword ptr [rbx], ebp
.label_345:
	mov	rax, r13
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060d0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	call	open
	mov	ecx, eax
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	cmp	ecx, ebx
	lea	rdi, [rdi]
	je	.label_351
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rsp, rsp
	js	.label_352
	mov	edi, ecx
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
.label_352:
	xor	eax, eax
.label_351:
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406130

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
	je	.label_353
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
	jl	.label_355
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_355
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
	jne	.label_354
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_354:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_355:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_353:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
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
	#Procedure 0x406220
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	r14, rbx
	je	.label_356
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	lea	rdi, [rdi]
	je	.label_357
	mov	rbp, rbp
	mov	rbx, r14
	jmp	.label_356
.label_357:
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	nop	
	mov	rbx, r15
.label_356:
	mov	rsp, rsp
	mov	rax, rbx
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062e0

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, rax
	mov	rsp, rsp
	call	trim2
	mov	qword ptr [rsp], rax
	cmp	byte ptr [rbp], 0
	je	.label_362
	lea	r12, [rsp + 0x48]
	lea	r15, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_371:
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp]
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_362
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	cmp	rax, 2
	nop	
	jb	.label_370
	mov	qword ptr [rsp + 0x58], rbp
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x48], 0
	nop	
	mov	qword ptr [rsp + 0x4c], 0
	nop	
	mov	byte ptr [rsp + 0x54], 0
	mov	r13b, 1
	cmp	rbp, rbx
	mov	rsp, rsp
	jae	.label_369
	nop	dword ptr [rax]
.label_367:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	al, byte ptr [rsp + 0x68]
	nop	
	mov	edi, dword ptr [rsp + 0x6c]
	test	al, al
	nop	
	je	.label_360
	mov	rsp, rsp
	test	edi, edi
	je	.label_365
.label_360:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	add	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x54], 0
	cmp	rcx, rbx
	nop	
	jb	.label_367
	mov	rsp, rsp
	test	al, al
	je	.label_369
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_369:
	mov	qword ptr [rsp + 0x58], rbx
	mov	byte ptr [rsp + 0x48], 0
	nop	
	mov	qword ptr [rsp + 0x4c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_361:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x58], rax
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	add	qword ptr [rsp + 0x18], rax
.label_375:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x28], 0
	mov	rsp, rsp
	je	.label_373
	mov	eax, dword ptr [rsp + 0x2c]
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_358
.label_373:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_361
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x6c]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_361
	jmp	.label_365
	nop	dword ptr [rax + rax]
.label_370:
	mov	rbp, rbp
	mov	r13b, 1
	mov	rsp, rsp
	cmp	rbp, rbx
	mov	r14b, 1
	nop	
	jae	.label_364
	lea	rdi, [rdi]
	movzx	ebp, byte ptr [rbx - 1]
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_364:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	call	strlen
	nop	
	movzx	ebp, byte ptr [rbx + rax]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_374
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbp*2], 8
	mov	rsp, rsp
	sete	r13b
.label_374:
	lea	rdi, [rdi]
	mov	bpl, 1
	test	r14b, r13b
	jne	.label_368
	lea	rdi, [rdi]
	cmp	byte ptr [rbx], 0
	mov	rsp, rsp
	je	.label_362
	inc	rbx
	mov	rsp, rsp
	jmp	.label_366
	nop	
.label_358:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	mov	edi, dword ptr [rsp + 0x6c]
	test	edi, edi
	mov	rsp, rsp
	sete	cl
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0x68]
	mov	rsp, rsp
	cmp	al, 0
	setne	dl
	mov	rsp, rsp
	cmp	al, 0
	mov	bpl, 1
	mov	al, 1
	je	.label_359
	lea	rdi, [rdi]
	and	dl, cl
	lea	rsi, [rsi]
	mov	al, 1
	jne	.label_359
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	sete	al
.label_359:
	test	r13b, r13b
	je	.label_363
	test	al, al
	lea	rdi, [rdi]
	jne	.label_368
.label_363:
	nop	
	mov	qword ptr [rsp + 0x58], rbx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x4c], 0
	nop	
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r12
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_372
	mov	eax, dword ptr [rsp + 0x6c]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_362
.label_372:
	add	rbx, qword ptr [rsp + 0x60]
.label_366:
	mov	rsp, rsp
	mov	rbp, rbx
	cmp	byte ptr [rbp], 0
	jne	.label_371
.label_362:
	xor	ebp, ebp
.label_368:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bpl
	add	rsp, 0x88
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_365:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406630

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r14
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_389
	nop	
	mov	qword ptr [rsp + 8], rbx
	nop	
	mov	esi, OFFSET FLAT:.str.13_0
	nop	
	mov	rdi, r13
	mov	rdx, r14
	lea	rdi, [rdi]
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	call	xstr_iconv
	mov	rsp, rsp
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	mov	rsp, rsp
	je	.label_376
	mov	esi, 0x3f
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_379
	nop	
	mov	rdi, r13
	nop	
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	jmp	.label_383
.label_389:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_386
.label_376:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_383
.label_379:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r13
.label_383:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 8]
.label_386:
	lea	rsi, [rsi]
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	mov	rbp, rbp
	test	r15, r15
	cmovne	r14, r15
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_380
	mov	rdi, rbx
	mov	rsi, r12
	mov	rbp, rbp
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_384
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_385
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	call	mbsstr_trimmed_wordbounded
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_384
.label_385:
	test	r13, r13
	je	.label_378
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	nop	
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_378
.label_384:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_381
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_381:
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_377
	nop	
	call	free
	mov	rsp, rsp
	jmp	.label_377
.label_380:
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_382
	lea	rdi, [rdi]
	cmp	rbp, r14
	mov	rbp, rbp
	je	.label_382
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
.label_382:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_388
	cmp	rdi, r14
	je	.label_388
	nop	
	call	free
.label_388:
	nop	
	mov	rbx, r14
	jmp	.label_377
.label_378:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r8, r15
	nop	
	mov	r9, r14
	lea	rdi, [rdi]
	call	__sprintf_chk
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_387
	mov	rdi, rbp
	call	free
.label_387:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_377
	lea	rsi, [rsi]
	call	free
.label_377:
	mov	rax, rbx
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406920
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
	#Procedure 0x406970
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
	#Procedure 0x406990
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
	#Procedure 0x4069b0

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
	#Procedure 0x406a20
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
	#Procedure 0x406a40

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
	je	.label_390
	test	rdx, rdx
	nop	
	je	.label_390
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_390:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a80
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
	.align	32
	#Procedure 0x406b20

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
.label_423:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_393
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_407]]
.label_2353:
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
.label_2354:
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
	jne	.label_443
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_443
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_478:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_466
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_466:
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
	jne	.label_478
.label_443:
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
	jmp	.label_410
.label_2346:
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
	jmp	.label_410
.label_2349:
	mov	rsp, rsp
	mov	al, 1
.label_2347:
	mov	r15b, 1
.label_2350:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_504
	mov	cl, al
.label_504:
	lea	rdi, [rdi]
	mov	al, cl
.label_2348:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_508
	test	r10, r10
	je	.label_512
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_394
.label_508:
	xor	ecx, ecx
	jmp	.label_394
.label_2351:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_408
	test	r10, r10
	je	.label_415
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_420
.label_2352:
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
	jmp	.label_410
.label_512:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_394:
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
	jmp	.label_410
.label_408:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_420
.label_415:
	mov	rbp, rbp
	mov	eax, 1
.label_420:
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
.label_410:
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
	jmp	.label_451
	nop	word ptr [rax + rax]
.label_425:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_451:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_399
	cmp	rsi, rbp
	jne	.label_402
	jmp	.label_404
	nop	word ptr cs:[rax + rax]
.label_399:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_404
.label_402:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_417
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_422
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_422
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
.label_422:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_454
.label_417:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_471:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_462
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_467]]
.label_2173:
	test	rsi, rsi
	jne	.label_475
	jmp	.label_396
	nop	word ptr [rax + rax]
.label_454:
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
	jne	.label_489
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
	je	.label_471
	mov	rsp, rsp
	jmp	.label_411
.label_489:
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
	jmp	.label_471
.label_2177:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_398
	test	rsi, rsi
	nop	
	jne	.label_397
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_396
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_400
.label_2166:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_458
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_411
	cmp	edi, 2
	nop	
	jne	.label_493
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_421
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_428
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_428:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_476
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_476:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_447
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_447:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_453
.label_2167:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_461
.label_2168:
	mov	cl, 0x74
	jmp	.label_464
.label_2169:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_461
.label_2170:
	mov	bl, 0x66
	jmp	.label_461
.label_2171:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_464
.label_2174:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_472
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_406
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
	jae	.label_481
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_481:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_494
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_494:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_499
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_499:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_488
.label_2175:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_392
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_401
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_406
.label_401:
	mov	rdi, r14
	jmp	.label_475
.label_2176:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_413
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_406
	mov	rdi, r14
	jmp	.label_426
.label_462:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_430
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
.label_450:
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
	ja	.label_440
	test	dl, dl
	mov	rsp, rsp
	je	.label_440
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_400
.label_398:
	test	rsi, rsi
	jne	.label_452
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_452
.label_396:
	mov	rbp, rbp
	mov	dl, 1
.label_2172:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_411
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_400
.label_458:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_475
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_451
.label_472:
	mov	rdi, r14
.label_488:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_400
.label_413:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_464
.label_426:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_456
.label_464:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_411
.label_461:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_400
	lea	rsi, [rsi]
	jmp	.label_482
.label_430:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_503
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
.label_503:
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
.label_483:
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
	je	.label_433
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
	je	.label_437
	cmp	rbp, -2
	nop	
	je	.label_449
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_434
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_470:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_506
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_405
.label_506:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_470
.label_434:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_469
	xor	r15d, r15d
.label_469:
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
	je	.label_483
	jmp	.label_450
.label_452:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_400
.label_392:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_475
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_475
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_475
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_500
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_507
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_411
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_416
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_416:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_495
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_495:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_403
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_403:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_460
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_460:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_400
.label_475:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_400:
	test	r12b, r12b
	je	.label_455
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_457
	jmp	.label_459
	nop	word ptr cs:[rax + rax]
.label_455:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_459
.label_457:
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
	jne	.label_391
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_456
	jmp	.label_482
	nop	word ptr cs:[rax + rax]
.label_459:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_482
	jmp	.label_456
.label_391:
	mov	bl, r13b
	mov	rsi, r14
.label_482:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_411
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_490
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_490
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_491
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_491:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_496
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_496:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_505
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_505:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_490:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_395
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_395:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_409
.label_397:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_400
.label_440:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_497
	nop	word ptr cs:[rax + rax]
.label_473:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_497:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_436
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_438
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_444
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_444:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_438
	nop	dword ptr [rax]
.label_436:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_406
	cmp	r14d, 2
	jne	.label_424
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_424
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_474
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_474:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_468
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_468:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_486
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_486:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_424:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_480:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_431
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
.label_431:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_509
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
.label_509:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_438:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_456
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_429
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_432
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_435
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_435:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_446
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_446:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_432
	nop	word ptr cs:[rax + rax]
.label_429:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_432:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_473
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_473
	nop	word ptr cs:[rax + rax]
.label_456:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_477
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_477
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_492
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_492:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_485
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_485:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_409
	nop	word ptr cs:[rax + rax]
.label_477:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_409:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_425
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_425
.label_493:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_453
.label_421:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_453:
	cmp	rcx, r10
	jae	.label_510
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_510:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_427
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_502
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_419
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_418
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_418:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_441
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_441:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_400
.label_427:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_400
.label_502:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_400
.label_419:
	xor	r15d, r15d
	jmp	.label_400
.label_433:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_445
.label_437:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_439
.label_449:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_479
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_414:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_484
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_414
	xor	r15d, r15d
	nop	
	jmp	.label_445
.label_479:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_439:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_445:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_450
.label_484:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_445
.label_500:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_400
.label_507:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_400
	nop	word ptr cs:[rax + rax]
.label_404:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_501
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_406
.label_501:
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
	je	.label_412
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_412
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_487
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_412
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
	je	.label_423
.label_412:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_442
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_442
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_442
	inc	rdx
	nop	dword ptr [rax + rax]
.label_465:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_448
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_448:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_465
.label_442:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_463
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_463
.label_411:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_498:
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
.label_511:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_463:
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
.label_405:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_498
.label_406:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_498
.label_487:
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
	jmp	.label_511
.label_393:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408270
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
	.align	32
	#Procedure 0x408290

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
	je	.label_513
	mov	qword ptr [rax], rbx
.label_513:
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
	#Procedure 0x4083e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_514
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_518:
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
	jl	.label_518
.label_514:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_517
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_515]], OFFSET FLAT:slot0
.label_517:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_516
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_516:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4084b0

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
	js	.label_524
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_520
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_525
.label_520:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_521
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
	jne	.label_523
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_523:
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
.label_525:
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
	ja	.label_522
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
	je	.label_519
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_519:
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
.label_522:
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
.label_524:
	lea	rdi, [rdi]
	call	abort
.label_521:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408720

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408730
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
	.align	32
	#Procedure 0x408750
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
	.align	32
	#Procedure 0x408770

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
	.align	32
	#Procedure 0x4087d0

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
	je	.label_526
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
.label_526:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408840

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
	.align	32
	#Procedure 0x4088a0
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
	.align	32
	#Procedure 0x4088c0
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
	.align	32
	#Procedure 0x4088e0

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
	mov	rcx,  qword ptr [word ptr [rip + label_527]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_528]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_529]]
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
	.align	32
	#Procedure 0x408980

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
	.align	32
	#Procedure 0x4089a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089c0

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
	.align	32
	#Procedure 0x408a30

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a40

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
	mov	rax,  qword ptr [word ptr [rip + label_527]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_528]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_529]]
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
	.align	32
	#Procedure 0x408ad0
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
	.align	32
	#Procedure 0x408b00
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
	.align	32
	#Procedure 0x408b30

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b40
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
	.align	32
	#Procedure 0x408b60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b70

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
	.align	32
	#Procedure 0x408b80

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
	jne	.label_530
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
	je	.label_531
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_530
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_530
.label_531:
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
	je	.label_532
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_530
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_530
.label_532:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_530:
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
	.align	32
	#Procedure 0x408cb0

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
	je	.label_534
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_533
	jmp	.label_535
.label_534:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_535
.label_533:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_535
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
.label_535:
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
	.align	32
	#Procedure 0x408d70

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
	je	.label_538
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_537
	lea	rsi, [rsi]
	jmp	.label_536
.label_538:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_536
.label_537:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_536
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
.label_536:
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
	.align	32
	#Procedure 0x408e60

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
	je	.label_541
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_540
	jmp	.label_539
.label_541:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_539
.label_540:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_539
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
.label_539:
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
	.align	32
	#Procedure 0x408f30

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
	je	.label_544
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_543
	jmp	.label_542
.label_544:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_542
.label_543:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_542
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
.label_542:
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
	.align	32
	#Procedure 0x408fd0

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
	je	.label_547
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_546
	nop	
	jmp	.label_545
.label_547:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_545
.label_546:
	mov	eax, 1
	test	bpl, bpl
	je	.label_545
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
.label_545:
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
	.align	32
	#Procedure 0x409070

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
	je	.label_550
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_549
	lea	rsi, [rsi]
	jmp	.label_548
.label_550:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_548
.label_549:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_548
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
.label_548:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409100

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
	je	.label_553
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_552
	jmp	.label_551
.label_553:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_551
.label_552:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_551
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_551:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409170

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
	je	.label_554
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_556
	mov	rbp, rbp
	jmp	.label_555
.label_554:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_555
.label_556:
	xor	eax, eax
.label_555:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091c0

	.globl fread_file
	.type fread_file, @function
fread_file:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	call	fileno
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edi, eax
	call	__fstat
	mov	ebx, 0x2000
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_557
	mov	rbp, rbp
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x20]
	mov	ebx, 0x2000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	mov	rsp, rsp
	jne	.label_557
	mov	rdi, r15
	mov	rsp, rsp
	call	ftello
	nop	
	mov	ebx, 0x2000
	nop	
	test	rax, rax
	js	.label_557
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	ebx, 0x2000
	sub	rcx, rax
	jle	.label_557
	cmp	rcx, -1
	je	.label_563
	inc	rcx
	mov	rbx, rcx
.label_557:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	malloc
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_564
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rdi, [rdi]
	mov	r14, -1
	nop	word ptr cs:[rax + rax]
.label_560:
	nop	
	mov	r13, rax
	lea	rdi, [rdi]
	mov	rbp, rbx
	nop	
	sub	rbp, r12
	nop	
	lea	rdi, [r13 + r12]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rcx, r15
	call	fread
	add	r12, rax
	cmp	rax, rbp
	nop	
	jne	.label_558
	mov	rbp, rbp
	mov	ebp, 0xc
	cmp	rbx, -1
	lea	rsi, [rsi]
	je	.label_562
	mov	rbp, rbp
	mov	rbp, rbx
	shr	rbp, 1
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rdi, [rdi]
	not	rax
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	cmp	rbx, rax
	cmovae	rbp, r14
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rbp
	nop	
	jne	.label_560
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	jmp	.label_562
.label_558:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	ferror
	nop	
	test	eax, eax
	je	.label_561
.label_562:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	free
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], ebp
.label_559:
	xor	r12d, r12d
.label_564:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_561:
	dec	rbx
	cmp	r12, rbx
	jae	.label_565
	mov	rbp, rbp
	lea	rsi, [r12 + 1]
	mov	rdi, r13
	nop	
	call	realloc
	test	rax, rax
	cmovne	r13, rax
.label_565:
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	byte ptr [r13 + r12], 0
	mov	rsp, rsp
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	r12, r13
	jmp	.label_564
.label_563:
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	jmp	.label_559
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093e0

	.globl read_file
	.type read_file, @function
read_file:
	mov	edx, OFFSET FLAT:.str_7
	jmp	internal_read_file
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	nop
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	nop	
	test	rbx, rbx
	je	.label_567
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_567
	test	r15, r15
	je	.label_566
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_566:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_567:
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409490
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	nop
	mov	edx, OFFSET FLAT:.str.1_3
	jmp	internal_read_file
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl trim2
	.type trim2, @function
trim2:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_576
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_579
	mov	rbp, rbp
	test	r14d, r14d
	je	.label_581
	nop	
	mov	qword ptr [rsp + 0x20], r12
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strlen
	nop	
	add	rax, r12
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jae	.label_578
	mov	rsp, rsp
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_582:
	mov	rdi, rbp
	call	mbiter_multi_next
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_578
	mov	edi, dword ptr [rsp + 0x34]
	mov	rbp, rbp
	call	iswspace
	nop	
	test	eax, eax
	nop	
	je	.label_578
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	nop	
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_582
.label_578:
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbp
	nop	
	call	memmove
	mov	rbp, rbp
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_573
.label_581:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	mov	rbp, rbp
	mov	rcx, r12
	nop	
	add	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	nop	
	mov	byte ptr [rsp + 0x10], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x1c], 0
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jae	.label_573
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	lea	r15, [rsp + 8]
	nop	dword ptr [rax]
.label_571:
	mov	rbp, rbp
	mov	rdi, r15
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_572
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_577
	mov	ebp, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x30], 0
	mov	rbp, rbp
	je	.label_569
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_575
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_569
	nop	dword ptr [rax + rax]
.label_572:
	mov	ebp, 1
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_569
	nop	
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_569
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_574
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	nop	
	test	eax, eax
	je	.label_574
	lea	rsi, [rsi]
	mov	ebp, 2
	nop	
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_569
	nop	word ptr [rax + rax]
.label_577:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	je	.label_574
	mov	edi, dword ptr [rsp + 0x34]
	call	iswspace
	mov	ebp, 2
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_569
	jmp	.label_574
.label_575:
	nop	
	cmp	byte ptr [rsp + 0x30], 0
	lea	rsi, [rsi]
	je	.label_569
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	call	iswspace
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_569
	nop	dword ptr [rax + rax]
.label_574:
	mov	ebp, 1
.label_569:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jb	.label_571
	cmp	ebp, 2
	mov	rsp, rsp
	jne	.label_573
	mov	byte ptr [r14], 0
	jmp	.label_573
.label_579:
	test	r14d, r14d
	mov	rbp, rbp
	je	.label_580
	mov	bl, byte ptr [r12]
	test	bl, bl
	lea	rsi, [rsi]
	mov	rbp, r12
	je	.label_568
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_570:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_568
	lea	rdi, [rdi]
	mov	bl, byte ptr [rbp + 1]
	inc	rbp
	mov	rbp, rbp
	test	bl, bl
	nop	
	jne	.label_570
.label_568:
	nop	
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	call	memmove
	cmp	r14d, 1
	je	.label_573
.label_580:
	mov	rdi, r12
	nop	
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_573
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_583:
	movzx	ecx, byte ptr [rbp]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_573
	lea	rsi, [rsi]
	mov	byte ptr [rbp], 0
	dec	rbp
	mov	rbp, rbp
	cmp	rbp, r12
	jae	.label_583
.label_573:
	lea	rdi, [rdi]
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_576:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409830

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
	je	.label_591
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_593
.label_591:
	mov	edx, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_593:
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
	ja	.label_585
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_586]]
.label_2223:
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
.label_585:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_590
.label_2224:
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
.label_2225:
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
.label_2226:
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
	jmp	.label_589
.label_2227:
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
	jmp	.label_588
.label_2228:
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
	jmp	.label_587
.label_2229:
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
.label_587:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_588:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_589:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_584
.label_2231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_590:
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
	jmp	.label_592
.label_2230:
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
.label_592:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_584:
	mov	rbp, rbp
	call	__fprintf_chk
.label_2222:
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
	#Procedure 0x409c20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_594:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_594
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_598:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_595
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_597
	nop	word ptr cs:[rax + rax]
.label_595:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_597:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_596
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_598
.label_596:
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
	#Procedure 0x409ce0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_599
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
.label_599:
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
	.align	32
	#Procedure 0x409d90
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
	mov	ecx, OFFSET FLAT:.str.18
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
	#Procedure 0x409e20

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
	jb	.label_600
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_600:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_601
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_602
.label_601:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_602:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e90
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
	jb	.label_603
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_603:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ed0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_604
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_604
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_604:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_605
	test	rax, rax
	nop	
	je	.label_606
.label_605:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_606:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f20

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_607
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_608
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_610
.label_607:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_609
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_609:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_611
.label_610:
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
.label_608:
	call	xalloc_die
.label_611:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409fe0
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
	.align	32
	#Procedure 0x40a020
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
	jb	.label_612
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_612
	pop	rcx
	ret	
.label_612:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a050

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
	.align	32
	#Procedure 0x40a0a0
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
	.align	32
	#Procedure 0x40a0c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_5
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
	#Procedure 0x40a110
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	call	mem_cd_iconv
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jns	.label_614
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	je	.label_613
.label_614:
	mov	eax, ebx
	pop	rbx
	mov	rbp, rbp
	ret	
.label_613:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a150
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	mov	rsp, rsp
	call	str_cd_iconv
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_615
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_616
.label_615:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_616:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	mov	rsp, rsp
	push	rbx
	call	str_iconv
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_617
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_618
.label_617:
	lea	rdi, [rdi]
	mov	rax, rbx
	pop	rbx
	ret	
.label_618:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1d0

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
	jae	.label_633
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
	je	.label_631
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_632
	lea	rsi, [rsi]
	mov	r12d, 4
	mov	rbp, rbp
	cmp	eax, 0x22
	mov	rbp, rbp
	jne	.label_626
	lea	rsi, [rsi]
	mov	r12d, 1
.label_632:
	test	r15, r15
	mov	rsp, rsp
	jne	.label_620
	jmp	.label_630
.label_631:
	nop	
	mov	r12d, 4
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_626
	mov	rbp, rbp
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_626
	lea	rsi, [rsi]
	mov	rdi, r15
	nop	
	call	strchr
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_626
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 1
	mov	rsp, rsp
	xor	r12d, r12d
.label_620:
	mov	rsp, rsp
	mov	rax, qword ptr [r13]
	lea	rdi, [rdi]
	movsx	ebx, byte ptr [rax]
	nop	
	test	ebx, ebx
	je	.label_630
	mov	rdi, r15
	nop	
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_619
	mov	esi, 0x400
	mov	rsp, rsp
	mov	ebp, 1
	add	ebx, -0x45
	lea	rdi, [rdi]
	cmp	ebx, 0x2f
	ja	.label_627
	lea	rsi, [rsi]
	movabs	rax, 0x814400308945
	bt	rax, rbx
	mov	rsp, rsp
	jae	.label_627
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
	je	.label_635
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	ebp, 1
	cmp	ecx, 0x42
	lea	rdi, [rdi]
	je	.label_622
	mov	rbp, rbp
	cmp	ecx, 0x44
	lea	rdi, [rdi]
	je	.label_622
	cmp	ecx, 0x69
	jne	.label_623
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + 2]
	mov	rsp, rsp
	mov	ebp, 3
	cmp	eax, 0x42
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rbp, rbp
	je	.label_627
	mov	ebp, 1
	lea	rdi, [rdi]
	jmp	.label_627
.label_635:
	mov	esi, 0x400
	nop	
	jmp	.label_627
.label_622:
	mov	esi, 0x3e8
	mov	ebp, 2
	nop	
	jmp	.label_627
.label_623:
	mov	esi, 0x400
.label_627:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_636
	lea	ecx, [rax - 0x42]
	mov	rbp, rbp
	cmp	ecx, 0xe
	lea	rsi, [rsi]
	ja	.label_637
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_639]]
.label_2233:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_634
.label_636:
	mov	rsp, rsp
	cmp	eax, 0x73
	jg	.label_621
	lea	ecx, [rax - 0x62]
	lea	rdi, [rdi]
	cmp	ecx, 0xb
	ja	.label_625
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_628]]
.label_2286:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x200
	nop	
	jmp	.label_634
.label_637:
	cmp	eax, 0x54
	je	.label_629
	lea	rsi, [rsi]
	cmp	eax, 0x59
	jne	.label_619
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_624
.label_621:
	cmp	eax, 0x74
	mov	rsp, rsp
	je	.label_629
	lea	rdi, [rdi]
	cmp	eax, 0x77
	jne	.label_619
	lea	rdi, [rsp + 8]
	nop	
	mov	esi, 2
.label_634:
	call	bkm_scale
	jmp	.label_624
.label_2235:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	jmp	.label_624
.label_2236:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_624
.label_2237:
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 2
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_624
.label_629:
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 4
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	jmp	.label_624
.label_625:
	mov	rsp, rsp
	cmp	eax, 0x5a
	mov	rsp, rsp
	jne	.label_619
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 7
	nop	
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_624
.label_619:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	or	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_626
.label_2234:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	mov	rsp, rsp
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	jmp	.label_624
.label_2238:
	nop	
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_624:
	or	eax, r12d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13]
	mov	rsp, rsp
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	mov	rsp, rsp
	cmp	byte ptr [rcx + rbp], 0
	je	.label_638
	lea	rsi, [rsi]
	or	eax, 2
.label_638:
	mov	rsp, rsp
	mov	r12d, eax
.label_630:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
.label_626:
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
.label_633:
	mov	edi, OFFSET FLAT:.str_9
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a5d0

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
	jge	.label_640
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_640:
	mov	rax, r8
	lea	rsi, [rsi]
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_641
	mov	rbp, rbp
	mov	qword ptr [rdi], r8
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_641:
	lea	rdi, [rdi]
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a640

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
	je	.label_642
	nop	
.label_643:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	nop	
	or	ebx, eax
	dec	ebp
	jne	.label_643
.label_642:
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
	.align	32
	#Procedure 0x40a690

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_644
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_645
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
	je	.label_645
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
.label_644:
	mov	ecx, 1
.label_645:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a700

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
	js	.label_646
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_647
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
	je	.label_646
.label_647:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_646
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_648
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_648:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_646:
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
	.align	32
	#Procedure 0x40a7c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_649
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_649
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_649:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a7f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_650
	mov	rbp, rbp
	ret	
.label_650:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a810

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	orig_freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_651
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_651
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_651
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_651
	nop	
	mov	edi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_652
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_651
.label_652:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_651:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a8f0

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a900

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
	jne	.label_655
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_655
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_653
.label_655:
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
.label_653:
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
	je	.label_654
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_654:
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
	#Procedure 0x40a9b0

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
	je	.label_656
	nop	
	cmp	r15, -2
	jb	.label_656
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_656
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_656:
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
	.align	32
	#Procedure 0x40aa40

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_657
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_657:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aab0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	nop	
	mov	r15, rcx
	nop	
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	nop	
	mov	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	rsp, rsp
	mov	r14, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_663
.label_664:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_659
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	lea	rsi, [rsi]
	and	ebp, 0x400000
	nop	
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xa4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_658
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_658
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	analyze
	nop	
	mov	dword ptr [rsp + 0xa4], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_658
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_661
	lea	rdi, [rdi]
	mov	al, byte ptr [r14 + 0xb0]
	lea	rdi, [rdi]
	and	al, 4
	nop	
	je	.label_661
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_661
	mov	rdi, r14
	lea	rsi, [rsi]
	call	optimize_utf8
.label_661:
	mov	rdi, r14
	mov	rbp, rbp
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	free_workarea_compile
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	je	.label_660
	mov	rbp, rbp
	jmp	.label_659
.label_658:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	re_string_destruct
.label_659:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	free_dfa_content
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx], xmm0
.label_660:
	mov	eax, dword ptr [rsp + 0xa4]
.label_662:
	add	rsp, 0xa8
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_663:
	mov	esi, 0xe8
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_662
	mov	qword ptr [rbx + 8], 0xe8
	mov	rsp, rsp
	mov	qword ptr [rbx], r14
	jmp	.label_664
	nop	
	.section	.text
	.align	32
	#Procedure 0x40acd0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acf0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], rsi
	lea	rdi, [rdi]
	je	.label_665
	mov	rdi, r14
	nop	
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_665:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_667
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_667:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_666
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	re_compile_fastmap_iter
.label_666:
	nop	
	or	byte ptr [r14 + 0x38], 8
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae00

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x158
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_668
	nop	
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rdi, [rdi]
	shr	r14b, 6
	lea	rsi, [rsi]
	jmp	.label_683
.label_668:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	nop	
	xor	r14d, r14d
.label_683:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_684
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_689:
	nop	
	mov	rax, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	nop	
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	lea	rdi, [rdi]
	movzx	r12d, byte ptr [rax + rbx + 8]
	mov	rsp, rsp
	add	rax, rbx
	cmp	r12d, 6
	mov	rsp, rsp
	je	.label_669
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	lea	rdi, [rdi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_680
	mov	rbp, rbp
	cmp	r12d, 1
	mov	rsp, rsp
	jne	.label_685
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_688
	mov	rbp, rdx
	call	tolower
	mov	rbp, rbp
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_688:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rbp, rbp
	je	.label_672
	nop	
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_672
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	mov	rbp, rbp
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	jae	.label_674
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_677:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	nop	
	and	ecx, esi
	cmp	ecx, 0x200001
	mov	rbp, rbp
	jne	.label_674
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	mov	rbp, rbp
	inc	rbp
	inc	r13
	lea	rsi, [rsi]
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_677
.label_674:
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	nop	
	mov	rsi, r12
	mov	rdx, rbp
	nop	
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	lea	rsi, [rsi]
	jne	.label_682
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x154]
	lea	rdi, [rdi]
	call	towlower
	mov	rsp, rsp
	mov	rdi, r12
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, r15
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	nop	
	je	.label_682
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	mov	rbp, rbp
	jmp	.label_682
	nop	dword ptr [rax]
.label_680:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	mov	rsp, rsp
	xor	r12d, r12d
	nop	
.label_676:
	bt	rbx, r12
	jae	.label_679
	mov	byte ptr [r13 + r12], 1
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_679
	mov	rsp, rsp
	lea	edi, [r15 + r12]
	lea	rdi, [rdi]
	call	tolower
	cdqe	
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_679:
	nop	
	inc	r12
	cmp	r12, 0x40
	jne	.label_676
	lea	rsi, [rsi]
	inc	rbp
	lea	rdi, [rdi]
	add	r15, 0x40
	cmp	rbp, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jne	.label_680
	jmp	.label_672
	nop	word ptr [rax + rax]
.label_669:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_671
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_681
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x20], 1
	mov	rbp, rbp
	jne	.label_681
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_671
.label_681:
	nop	
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	nop	
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	nop	
	lea	rbp, [rsp + 0x40]
	nop	
.label_670:
	mov	qword ptr [rsp + 0x40], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	mov	rsp, rsp
	jne	.label_686
	mov	rbp, rbp
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 1
.label_686:
	nop	
	inc	byte ptr [rsp + 0x148]
	jne	.label_670
.label_682:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_672
	nop	word ptr [rax + rax]
.label_685:
	cmp	r12d, 2
	je	.label_675
	lea	rsi, [rsi]
	mov	eax, r12d
	or	eax, 2
	nop	
	cmp	eax, 7
	jne	.label_672
	jmp	.label_675
.label_671:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_672
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_687:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rbp, rbp
	lea	r12, [rsp + 0x148]
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_678
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rdi], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_678
	call	tolower
	lea	rdi, [rdi]
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 1
.label_678:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	je	.label_673
	mov	rbp, rbp
	cmp	dword ptr [rdx + 0xb4], 2
	nop	
	jl	.label_673
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	nop	
	call	towlower
	mov	rdi, r13
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	mov	rdx, r12
	call	wcrtomb
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_673
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 1
.label_673:
	mov	rsp, rsp
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	jl	.label_687
	nop	word ptr cs:[rax + rax]
.label_672:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	jl	.label_689
.label_684:
	mov	rsp, rsp
	add	rsp, 0x158
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_675:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_684
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	or	byte ptr [rax + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_684
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b360
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_691
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_690
	and	byte ptr [r15 + 0x38], 0x7f
	lea	rsi, [rsi]
	jmp	.label_692
.label_690:
	lea	rdi, [rdi]
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_692:
	nop	
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
	mov	rbp, rbp
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	nop	
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	re_compile_internal
	mov	rsp, rsp
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_693
	mov	rdi, r15
	nop	
	call	rpl_re_compile_fastmap
	nop	
	xor	ebx, ebx
.label_691:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_693:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_691
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b490
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_694
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_696
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_695
.label_697:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_696:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_695:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_697
.label_694:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b540
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_698
	call	free_dfa_content
.label_698:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5a0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	mov	rbp, rbp
	je	.label_705
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	mov	rbp, rbp
	je	.label_705
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_708:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	lea	rdi, [rdi]
	call	free_token
	inc	rbx
	add	r15, 0x10
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_708
.label_705:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	je	.label_699
	nop	
	xor	r15d, r15d
	mov	ebx, 0x10
	nop	dword ptr [rax]
.label_710:
	nop	
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_709
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	nop	
	call	free
.label_709:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x38]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_700
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_700:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_702
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_702:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_710
.label_699:
	nop	
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_703
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_701:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	lea	rsi, [rsi]
	jle	.label_707
	lea	r13, [rax + rcx*8]
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_704:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_704
.label_707:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_701
.label_703:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	mov	rbp, rbp
	je	.label_706
	mov	rsp, rsp
	call	free
.label_706:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b770
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_711
	test	bpl, 4
	nop	
	jne	.label_715
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_712
.label_715:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_712:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_713
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_714
.label_713:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_714:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_711:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b850

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x188
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_745
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rdi
	mov	rsp, rsp
	cmp	r15, r8
	cmove	rax, rdi
	nop	
	mov	r10, rax
.label_745:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	nop	
	mov	rcx, rdi
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	rax, r12
	lea	rsi, [rsi]
	cmovb	rbp, rcx
	mov	r13d, 1
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_732
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_732
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_732
	lea	rsi, [rsi]
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	nop	
	je	.label_732
	cmp	qword ptr [rbx + 0x60], 0
	nop	
	je	.label_732
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], r9
	lea	rsi, [rsi]
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	nop	
	je	.label_773
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_767
.label_773:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_781
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r8
.label_767:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	lea	rdi, [rdi]
	jne	.label_718
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x67]
.label_718:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	rbp, rbp
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	lea	rdi, [rdi]
	and	r9, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	shr	r9, 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rdx
	mov	rbp, rbp
	call	re_string_allocate
	mov	r13d, eax
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_719
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	match_ctx_init
	lea	rsi, [rsi]
	mov	r13d, eax
	test	r13d, r13d
	lea	rsi, [rsi]
	jne	.label_719
	mov	rax, r12
	sub	rax, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_720
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb0], 2
	nop	
	jne	.label_720
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	lea	rdi, [rdi]
	jmp	.label_735
.label_720:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	nop	
	movabs	rcx, 0x1ffffffffffffffe
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	ja	.label_719
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_719
.label_735:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], r15
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xf0], eax
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	rbp, rbp
	mov	r11d, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	lea	rsi, [rsi]
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_763
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x58], 1
	mov	rsp, rsp
	je	.label_737
	lea	rdi, [rdi]
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_740
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_740
.label_737:
	mov	r9d, 4
.label_740:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	movzx	edx, dl
	nop	
	lea	esi, [rcx + rdx*2]
	mov	rbp, rbp
	or	esi, r9d
.label_763:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jl	.label_756
	lea	rsi, [rsi]
	cmp	rbp, rcx
	nop	
	jl	.label_761
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_717:
	cmp	esi, 4
	ja	.label_760
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_777]]
.label_2330:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rsp, rsp
	cmp	rcx, r13
	mov	rsp, rsp
	jl	.label_727
	nop	
.label_724:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_716
	movzx	eax, byte ptr [r9 + rcx]
.label_716:
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_725
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
.label_725:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rax], 0
	mov	rsp, rsp
	jne	.label_727
	nop	
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	lea	rsi, [rsi]
	cmp	rax, r13
	mov	rbp, rbp
	jg	.label_724
.label_727:
	nop	
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_744
	mov	rbp, rbp
	jmp	.label_731
	nop	word ptr cs:[rax + rax]
.label_754:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	rax, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rbp, rbp
	jl	.label_731
	mov	rbp, rbp
	cmp	rax, rbp
	nop	
	jle	.label_760
	jmp	.label_731
.label_734:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_719
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	nop	
	mov	r8, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_779
	nop	dword ptr [rax]
.label_760:
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	jae	.label_734
.label_779:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	rsp, rsp
	mov	ecx, 0
	jge	.label_748
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_748:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rcx], 0
	mov	rbp, rbp
	je	.label_754
	jmp	.label_744
.label_2331:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_758
	nop	word ptr [rax + rax]
.label_765:
	nop	
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_758:
	nop	
	cmp	rax, rbp
	jge	.label_721
	mov	rsp, rsp
	movzx	ecx, byte ptr [r9 + rax]
	mov	rbp, rbp
	cmp	byte ptr [rdi + rcx], 0
	mov	rsp, rsp
	je	.label_765
	jmp	.label_721
.label_2332:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_771
	nop	word ptr cs:[rax + rax]
.label_782:
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_771:
	cmp	rax, rbp
	jge	.label_721
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r9 + rax]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbx + rcx]
	nop	
	cmp	byte ptr [rdi + rcx], 0
	je	.label_782
.label_721:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	mov	rbp, rbp
	je	.label_738
.label_744:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	nop	
	jne	.label_739
	cmp	dword ptr [rsp + 0x58], 1
	lea	rsi, [rsi]
	je	.label_743
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_743
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_752
.label_743:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_matching
	lea	rdi, [rdi]
	cmp	rax, -1
	nop	
	je	.label_766
	lea	rdi, [rdi]
	mov	r13d, 0xc
	nop	
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_719
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_728
	mov	cl, byte ptr [r14 + 0x38]
	lea	rdi, [rdi]
	and	cl, 0x10
	lea	rsi, [rsi]
	je	.label_759
.label_728:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	je	.label_780
.label_759:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdx, rax
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rax
.label_780:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsp, rsp
	jb	.label_723
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_723
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_747
.label_723:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_722
.label_747:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x80]
	nop	
	call	prune_impossible_nodes
	mov	rbp, rbp
	mov	r13d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], 0
	mov	rbp, rbp
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_722
	nop	
	cmp	r13d, 1
	mov	rsp, rsp
	jne	.label_719
.label_766:
	nop	
	lea	rdi, [rsp + 0x80]
	mov	rsp, rsp
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_752:
	mov	rax, qword ptr [rsp + 0x180]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_733
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_717
	jmp	.label_775
.label_738:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_736
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r9 + rcx]
.label_736:
	test	rbx, rbx
	nop	
	je	.label_742
	movzx	eax, byte ptr [rbx + rax]
.label_742:
	nop	
	cmp	byte ptr [rdi + rax], 0
	jne	.label_744
.label_731:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_719
.label_756:
	mov	r13d, 1
	jmp	.label_719
.label_761:
	mov	r13d, 1
	nop	
	jmp	.label_719
.label_722:
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	cmp	rdx, r12
	mov	rbp, rbp
	je	.label_726
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x40], 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_762
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_770:
	mov	qword ptr [rcx + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx], -1
	lea	rdi, [rdi]
	add	rcx, 0x10
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_770
.label_762:
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_768
	mov	al, byte ptr [r14 + 0x38]
	mov	rbp, rbp
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_768
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	test	byte ptr [rcx + 0xb0], 1
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rbp, rbp
	je	.label_749
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	setg	al
.label_749:
	movzx	r8d, al
	mov	rbp, rbp
	lea	rsi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	mov	rbp, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_719
.label_768:
	mov	rdx, rbx
	mov	rsp, rsp
	cmp	rdx, r12
	mov	rsp, rsp
	je	.label_757
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_755
.label_781:
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_769
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_772
.label_769:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_776
	test	r8, r8
	mov	r15d, 0
	nop	
	jne	.label_732
	lea	rsi, [rsi]
	jmp	.label_767
.label_739:
	mov	r13d, eax
	mov	rbp, rbp
	jmp	.label_719
.label_751:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_750
	lea	rcx, [r9 + rbx*8]
.label_750:
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_729
	mov	rsp, rsp
	lea	rcx, [r9 + rbx*8]
.label_729:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_774
.label_755:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsi - 8]
	nop	
	cmp	rbx, -1
	je	.label_746
	test	al, al
	jne	.label_751
.label_774:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_746:
	add	rsi, 0x10
	dec	rdi
	jne	.label_755
.label_757:
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jle	.label_730
	lea	rsi, [rsi]
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	dword ptr [rax]
.label_764:
	nop	
	mov	qword ptr [r12 + 8], -1
	mov	rsp, rsp
	mov	qword ptr [r12], -1
	add	r12, 0x10
	mov	rbp, rbp
	dec	rax
	mov	rsp, rsp
	jne	.label_764
.label_730:
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_726
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_726
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	mov	rsp, rsp
	lea	rcx, [rbp + 0x18]
	lea	rsi, [rsi]
	xor	edx, edx
.label_741:
	mov	rsi, qword ptr [rax + rdx*8]
	nop	
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_778
	lea	rdi, [rdi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_778:
	inc	rdx
	lea	rdi, [rdi]
	add	rcx, 0x10
	lea	rdi, [rdi]
	cmp	rbx, rdx
	jne	.label_741
.label_726:
	mov	r13d, dword ptr [rsp + 0x30]
.label_719:
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	mov	rbp, rbp
	je	.label_753
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_753:
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	re_string_destruct
.label_732:
	mov	eax, r13d
	add	rsp, 0x188
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_772:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_767
.label_776:
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_767
.label_733:
	mov	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_719
.label_775:
	mov	rsp, rsp
	mov	r13d, 1
	jmp	.label_719
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4f0

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	nop	
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c520

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_783
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jg	.label_783
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	add	r8, rcx
	mov	rbp, rbp
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_785
	mov	rsp, rsp
	test	r12b, 8
	lea	rdi, [rdi]
	jne	.label_785
	mov	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_785
	mov	rbp, rdi
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_785:
	xor	esi, esi
	mov	rsp, rsp
	test	r14, r14
	mov	ebx, 1
	nop	
	je	.label_792
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	mov	rsp, rsp
	jne	.label_786
	lea	rsi, [rsi]
	and	al, 6
	nop	
	movzx	eax, al
	cmp	eax, 4
	nop	
	jne	.label_788
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_789
.label_788:
	mov	rbx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	inc	rbx
.label_791:
	mov	rsi, r14
	jmp	.label_786
.label_792:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rcx
.label_786:
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	nop	
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	shl	rdi, 4
	nop	
	call	malloc
	mov	r13, rax
	lea	rsi, [rsi]
	mov	r14, -2
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	je	.label_783
	mov	al, r12b
	shr	al, 5
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	nop	
	mov	r14, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	rsp, rsp
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	re_search_internal
	test	eax, eax
	nop	
	je	.label_790
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	mov	rsp, rsp
	jmp	.label_784
.label_790:
	nop	
	mov	rdx, r14
	nop	
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_787
	mov	al, byte ptr [rbp + 0x38]
	mov	rbp, rbp
	shr	al, 1
	lea	rdi, [rdi]
	and	al, 3
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	rsp, rsp
	mov	dl, al
	and	dl, 6
	or	dl, cl
	lea	rsi, [rsi]
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	nop	
	je	.label_784
.label_787:
	mov	al, byte ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r14, qword ptr [r13]
	test	al, al
	nop	
	je	.label_784
	cmp	r14, rbx
	jne	.label_793
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	sub	r14, rbx
.label_784:
	mov	rdi, r13
	call	free
.label_783:
	lea	rsi, [rsi]
	mov	rax, r14
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_789:
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	cmovle	r14, rcx
	mov	ebx, 1
	mov	rbp, rbp
	cmovg	rbx, rax
	jmp	.label_791
.label_793:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rdi, [rdi]
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7c0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7f0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	call	re_search_2_stub
	nop	
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c840

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	lea	rsi, [rsi]
	or	rax, r14
	or	rax, rbp
	js	.label_794
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_799
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_794
	nop	
	lea	rdx, [rbx + r14]
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rbx, rbx
	jle	.label_795
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	mov	rbp, rbp
	test	r14, r14
	nop	
	jle	.label_797
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	je	.label_794
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, rax
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, r12
	add	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	mov	rdx, rbx
	nop	
	call	memcpy
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	lea	rdi, [rdi]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_795
.label_799:
	nop	
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	nop	
	jle	.label_798
.label_794:
	mov	rax, -2
	jmp	.label_796
.label_798:
	mov	rsp, rsp
	add	rbx, r14
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rdx, rbx
	jmp	.label_795
.label_797:
	mov	rbp, rbp
	mov	r13, r15
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
.label_795:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rsi, r13
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rbp, rbp
	call	re_search_stub
	mov	rbx, rax
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_796:
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ca00
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca50
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_800
	or	al, 2
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x38], al
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_800:
	mov	byte ptr [rdi + 0x38], al
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	nop	
	mov	qword ptr [rsi + 0x10], 0
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40caa0

	.globl free_token
	.type free_token, @function
free_token:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 8]
	mov	rsp, rsp
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_801
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	jmp	free_charset
.label_801:
	cmp	eax, 3
	jne	.label_802
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	jmp	free
.label_802:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_803
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_803:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cb60

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cba0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xd0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0xc0], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xb0], xmm0
	nop	
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	nop	
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
	nop	
	movabs	rax, 0x555555555555554
	mov	rbp, rbp
	cmp	rbp, rax
	mov	rbp, rbp
	ja	.label_809
	lea	rsi, [rsi]
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15], rax
	mov	rbp, rbp
	mov	eax, 1
	nop	dword ptr [rax]
.label_804:
	mov	rsp, rsp
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	nop	
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_804
	mov	rbp, rbp
	mov	edi, 0x18
	nop	
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	mov	rbp, rbp
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x88], rbx
	lea	rdi, [rdi]
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	mov	dword ptr [r15 + 0xb4], eax
	lea	rsi, [rsi]
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rdi, [rdi]
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_807
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_807
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	nop	
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x66
	jne	.label_807
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	nop	
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	lea	rdi, [rdi]
	cmp	edx, 0x38
	lea	rsi, [rsi]
	jne	.label_807
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rcx + 4], 0
	nop	
	jne	.label_807
	lea	rdi, [rdi]
	or	byte ptr [r15 + 0xb0], 4
.label_807:
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_811
	nop	
	test	al, 4
	nop	
	jne	.label_812
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	test	rax, rax
	je	.label_809
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_810:
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_805:
	mov	edi, ebx
	call	btowc
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_808
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	or	qword ptr [rcx + r12*8], rdx
.label_808:
	lea	rsi, [rsi]
	cmp	ebx, 0x7f
	ja	.label_806
	mov	rsp, rsp
	cmp	ebx, eax
	je	.label_806
	or	byte ptr [r15 + 0xb0], 8
.label_806:
	inc	rbp
	lea	rdi, [rdi]
	inc	ebx
	cmp	rbp, 0x40
	nop	
	jne	.label_805
	lea	rdi, [rdi]
	add	r14d, 0x40
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, 4
	mov	rbp, rbp
	jne	.label_810
	nop	
	jmp	.label_811
.label_812:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_811:
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	je	.label_813
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_809
.label_813:
	mov	r14d, 0xc
.label_809:
	mov	eax, r14d
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce70

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	rsp, rsp
	mov	r13d, r8d
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r15, rdx
	nop	
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x60], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x50], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x20], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], 0
	lea	rsi, [rsi]
	movzx	r8d, r13b
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	mov	rsp, rsp
	call	re_string_construct_common
	test	r15, r15
	mov	rsp, rsp
	jle	.label_814
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_818
.label_814:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_820
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
.label_820:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_822
	cmp	eax, 2
	jl	.label_816
	nop	dword ptr [rax]
.label_819:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_818
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_818
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	rsi, rcx
	jg	.label_818
	lea	rdi, [rdi]
	add	rsi, rsi
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_819
	jmp	.label_818
.label_822:
	cmp	eax, 2
	jl	.label_821
	mov	rsp, rsp
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_817
.label_816:
	mov	rdi, rbx
	nop	
	call	build_upper_buffer
	jmp	.label_817
.label_821:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_815
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
	jmp	.label_817
.label_815:
	mov	rax, qword ptr [rbx + 0x40]
	nop	
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	qword ptr [rbx + 0x38], rax
.label_817:
	xor	eax, eax
.label_818:
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d000

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_823
	nop	dword ptr [rax + rax]
.label_824:
	mov	rbx, qword ptr [rdi]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_824
.label_823:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	nop	
	mov	qword ptr [r14 + 0x68], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x20], 0
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d080

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_825
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	pop	rbx
	jmp	free
.label_825:
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0c0

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r9, r14
	call	parse_reg_exp
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_827
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_830
.label_827:
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_829
	mov	rsp, rsp
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rsp, rsp
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	jmp	.label_826
.label_829:
	nop	
	mov	r12, r13
.label_826:
	mov	rbp, rbp
	test	r13, r13
	je	.label_828
	test	r12, r12
	je	.label_828
.label_830:
	mov	rax, r12
	nop	
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_828:
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0xc
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_830
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1e0

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0
	nop	
	je	.label_831
	cmp	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	je	.label_831
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_831
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_831
	nop	
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	nop	
	je	.label_834
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_837
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_832:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	nop	
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_832
.label_837:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rsp, rsp
	mov	rdx, rbx
	call	preorder
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	lea	rdi, [rdi]
	je	.label_835
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_838:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	jne	.label_835
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	jb	.label_838
.label_835:
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_834
	mov	rdi, qword ptr [rbx + 0xe0]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	qword ptr [rbx + 0xe0], 0
.label_834:
	mov	rdi, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_831
	mov	rdi, qword ptr [rbx + 0x68]
	nop	
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_831
	nop	
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	preorder
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rbp, rbp
	mov	rdx, rbx
	call	preorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_831
	nop	
	mov	rdi, rbx
	call	calc_eclosure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_831
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_833
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_833
	test	byte ptr [rbx + 0xb0], 1
	mov	rsp, rsp
	jne	.label_836
.label_833:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_831
.label_836:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_831
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_831:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d470

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_852
	mov	rsp, rsp
	mov	r11, qword ptr [rdi]
	mov	rsp, rsp
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rsi, [rsi]
	xor	r10d, r10d
	xor	eax, eax
	nop	dword ptr [rax]
.label_839:
	mov	rsi, rax
	mov	rsp, rsp
	shl	rsi, 4
	nop	
	movzx	edx, byte ptr [r11 + rsi + 8]
	mov	rsp, rsp
	dec	edx
	cmp	edx, 0xb
	ja	.label_850
	lea	rcx, [r11 + rsi]
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_853]]
.label_2291:
	mov	dl, 1
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	js	.label_843
	lea	rdi, [rdi]
	mov	dl, r10b
.label_843:
	mov	rbp, rbp
	mov	r10b, dl
	jmp	.label_845
.label_2292:
	nop	
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
.label_841:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	lea	rdi, [rdi]
	jne	.label_844
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, 3
	lea	rsi, [rsi]
	jle	.label_841
	mov	rsp, rsp
	jmp	.label_845
.label_2293:
	mov	rbp, rbp
	mov	r9b, 1
	nop	
	jmp	.label_845
.label_2294:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	ja	.label_848
	bt	r8, rcx
	jb	.label_845
.label_848:
	cmp	edx, 0x80
	mov	rsp, rsp
	jne	.label_844
.label_845:
	inc	rax
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_839
	jmp	.label_851
.label_852:
	xor	r9d, r9d
	xor	r10d, r10d
.label_851:
	mov	rbp, rbp
	mov	r8b, r9b
	and	r8b, 1
	lea	rsi, [rsi]
	or	r10b, r9b
	test	r10b, 1
	mov	rsp, rsp
	je	.label_847
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x10], 0
	nop	
	je	.label_847
	xor	eax, eax
	nop	
	mov	edx, 8
	nop	dword ptr [rax]
.label_849:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	nop	
	movzx	ecx, r9b
	mov	rsp, rsp
	cmp	ecx, 1
	jne	.label_846
	mov	rsp, rsp
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_840
.label_846:
	mov	r9, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	esi, dword ptr [r9 + rdx]
	lea	rsi, [rsi]
	movzx	ecx, sil
	cmp	ecx, 5
	nop	
	jne	.label_842
	lea	rdi, [rdi]
	and	esi, 0xffffff00
	or	esi, 7
	lea	rsi, [rsi]
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_842
.label_840:
	mov	rsp, rsp
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	dword ptr [rax + rax]
.label_842:
	inc	rax
	lea	rsi, [rsi]
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_849
.label_847:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	nop	
	cmp	qword ptr [rdi + 0x98], 0
	lea	rsi, [rsi]
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_844:
	lea	rdi, [rdi]
	ret	
.label_850:
	lea	rsi, [rsi]
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d640

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_copy
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_855
	cmp	qword ptr [r15 + 0x98], 0
	mov	rsp, rsp
	jle	.label_859
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	jle	.label_859
	xor	r13d, r13d
	mov	rbp, rbp
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_860:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	r8, qword ptr [rax + r13*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	mov	rbp, rbp
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	mov	rbp, rbp
	jne	.label_857
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	mov	rsp, rsp
	jle	.label_854
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_863:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_864
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	nop	
	je	.label_854
.label_864:
	inc	rsi
	cmp	rsi, rax
	mov	rsp, rsp
	jl	.label_863
.label_854:
	nop	
	cmp	r9d, 4
	nop	
	setne	al
	nop	
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_857
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_857
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_857
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_855
	nop	word ptr cs:[rax + rax]
.label_857:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jl	.label_860
.label_859:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x1c]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_858
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_861
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x60], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x58], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_862
.label_861:
	mov	rsp, rsp
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	lea	rdi, [rdi]
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r15 + 0x58], rax
	lea	rdi, [rdi]
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_856
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_856
	mov	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_856
.label_862:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_855:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	ret	
.label_856:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_855
.label_858:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	jmp	.label_855
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d900

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x88], r8b
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	setne	al
	or	al, r8b
	lea	rsi, [rsi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rbp, rbp
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	lea	rdi, [rdi]
	mov	al, byte ptr [r9 + 0xb0]
	mov	rsp, rsp
	shr	al, 2
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rdx + 0x89], al
	mov	rsp, rsp
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d990

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_866
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_865
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_865
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_866
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_865
	mov	qword ptr [rbx + 0x18], rax
.label_866:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_867
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_865
	nop	
	mov	qword ptr [rbx + 8], rax
.label_867:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_865:
	mov	eax, ebp
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da60

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x58]
	lea	rsi, [rsi]
	cmp	rbx, rax
	nop	
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_883
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_883
	cmp	byte ptr [r15 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_896
.label_883:
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_868
.label_896:
	cmp	rbx, r13
	mov	rsp, rsp
	jle	.label_899
	lea	r14, [r15 + 0x20]
	nop	
	jmp	.label_901
.label_912:
	nop	
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_905
	lea	rsi, [rsi]
	cmp	rbx, -2
	lea	rdi, [rdi]
	jne	.label_893
	mov	rax, qword ptr [r15 + 0x40]
	nop	
	cmp	rax, qword ptr [r15 + 0x58]
	nop	
	jl	.label_893
.label_905:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + 8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_878
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_878
	nop	dword ptr [rax + rax]
.label_901:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	nop	
	movzx	ebp, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	test	bpl, bpl
	js	.label_881
	mov	rsp, rsp
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_881
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_878:
	mov	rax, r13
	jmp	.label_890
	nop	dword ptr [rax + rax]
.label_881:
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	lea	rsi, [rsi]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rsp, rsp
	mov	rcx, r14
	call	rpl_mbrtowc
	nop	
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	mov	rbp, rbp
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	mov	rsp, rsp
	ja	.label_912
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	lea	rdi, [rdi]
	mov	r12d, eax
	mov	rsp, rsp
	cmp	r12d, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	jne	.label_874
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	lea	rdi, [rdi]
	add	rsi, qword ptr [r15 + 0x28]
	nop	
	add	rsi, r13
	jmp	.label_877
.label_874:
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, r12d
	mov	rsp, rsp
	lea	rdx, [rsp + 0x70]
	nop	
	call	wcrtomb
	mov	rbp, rbp
	cmp	rbx, rax
	jne	.label_884
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	add	rdi, r13
	mov	rsi, rbp
.label_877:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + r13*4], r12d
	mov	rsp, rsp
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	nop	
	jge	.label_890
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	rdi, [rax + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_890:
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r13, rax
	lea	rdi, [rdi]
	jg	.label_901
	mov	rbp, rbp
	jmp	.label_909
.label_884:
	lea	rdi, [rdi]
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_908
.label_893:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_899:
	mov	rbp, rbp
	mov	rax, r13
.label_909:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_880
.label_868:
	mov	rbp, rbp
	cmp	r13, rbx
	mov	rbp, rbp
	jge	.label_869
.label_908:
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_913
	mov	rbp, qword ptr [r15]
	lea	rdi, [rdi]
	add	rbp, qword ptr [r15 + 0x28]
	nop	
	add	rbp, r12
.label_872:
	nop	
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	mov	rbp, rbp
	cmp	r12, -4
	lea	rsi, [rsi]
	ja	.label_888
	nop	
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_870
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	rbp, rbp
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	nop	
	sub	rax, r14
	mov	rsp, rsp
	jne	.label_903
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_907
.label_913:
	nop	
	lea	rbp, [rsp + 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0x90], 0
	lea	rsi, [rsi]
	jle	.label_872
	lea	rsi, [rsi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_875:
	cmp	rax, rdx
	jge	.label_872
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_875
	jmp	.label_872
.label_888:
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_885
	cmp	r14, -2
	mov	rbp, rbp
	jne	.label_887
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	jl	.label_887
.label_885:
	mov	rax, qword ptr [r15 + 0x28]
	nop	
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_895
.label_892:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	byte ptr [rcx + r13], al
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_904
.label_897:
	inc	r12
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	lea	rdi, [rdi]
	je	.label_910
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	jmp	.label_868
.label_903:
	mov	rbp, rbp
	cmp	rdx, -1
	nop	
	je	.label_870
	lea	rsi, [rsi]
	lea	rbp, [rdx + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	nop	
	jbe	.label_873
.label_887:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x18]
.label_869:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_880:
	xor	eax, eax
.label_902:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_870:
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
.label_907:
	mov	rdx, r14
	call	memcpy
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_891
	mov	rbp, rbp
	lea	rax, [r13*8]
	nop	
	add	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rcx, r12
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_889:
	nop	
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	add	rax, 8
	dec	rdx
	lea	rsi, [rsi]
	jne	.label_889
.label_891:
	nop	
	add	r12, r14
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax + r13*4], ebx
	mov	rbp, rbp
	lea	rbp, [r14 + r13]
	mov	rbp, rbp
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_906
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	call	memset
	jmp	.label_871
.label_906:
	nop	
	mov	rbp, rax
.label_871:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	nop	
	jmp	.label_868
.label_873:
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_876
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	je	.label_911
.label_876:
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_886
	test	r13, r13
	mov	rbp, rbp
	je	.label_879
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_894:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	lea	rsi, [rsi]
	jne	.label_894
.label_879:
	mov	byte ptr [r15 + 0x8c], 1
.label_886:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	dword ptr [rax + r13*4], ebx
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rsi
	nop	
	cmp	rdi, 2
	nop	
	jb	.label_898
	lea	rax, [r13*4]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	nop	
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_900:
	mov	rsp, rsp
	cmp	rcx, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	nop	
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdi, rcx
	jne	.label_900
.label_898:
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_882
	add	qword ptr [r15 + 0x68], rax
.label_882:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x40]
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	nop	
	cmp	rbx, rax
	cmovg	rbx, rax
	lea	rdi, [rdi]
	add	r12, r14
	mov	rbp, rbp
	mov	r13, rbp
	nop	
	jmp	.label_868
.label_895:
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_892
.label_904:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_897
.label_910:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	jmp	.label_868
.label_911:
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_902
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e1e0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	nop	
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	r15, rax
	mov	rbp, rbp
	cmovg	r15, rax
	mov	rsp, rsp
	cmp	rbx, r15
	mov	rsp, rsp
	jge	.label_914
	jmp	.label_916
.label_915:
	mov	cl, byte ptr [rax + rdx]
	mov	rbp, rbp
	jmp	.label_917
	nop	dword ptr [rax]
.label_916:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_915
.label_917:
	mov	rsp, rsp
	movzx	edi, cl
	nop	
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r15
	jl	.label_916
	mov	rsp, rsp
	mov	rbx, r15
.label_914:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e290

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_929
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_919
	nop	word ptr [rax + rax]
.label_921:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	nop	
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_925
.label_928:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_918:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0xc]
	nop	
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	mov	rbp, rbp
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_920
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	lea	rsi, [rsi]
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, rbp
.label_920:
	cmp	r12, rcx
	nop	
	mov	r13, rcx
	jg	.label_919
	jmp	.label_927
.label_922:
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	nop	
	jle	.label_924
	nop	word ptr cs:[rax + rax]
.label_923:
	cmp	rax, rdx
	jge	.label_926
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_923
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	jmp	.label_924
.label_925:
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_928
.label_926:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_924
	nop	word ptr cs:[rax + rax]
.label_919:
	nop	
	mov	rdx, r12
	nop	
	sub	rdx, r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x20]
	nop	
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsp, rsp
	jne	.label_922
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	add	rsi, qword ptr [rbx + 0x28]
	nop	
	add	rsi, r13
.label_924:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_921
	cmp	rax, -2
	jne	.label_918
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_921
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_929:
	mov	rbp, rbp
	mov	rcx, r13
.label_927:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e4b0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 0x58]
	mov	rbp, rbp
	cmp	r8, rdx
	mov	rsp, rsp
	cmovg	r8, rdx
	lea	rsi, [rsi]
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_930
	nop	word ptr [rax + rax]
.label_931:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rax + rdx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rbp, rbp
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r8
	jl	.label_931
	lea	rdi, [rdi]
	mov	rax, r8
.label_930:
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e530

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	nop	
	call	peek_token
	mov	rsp, rsp
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e550

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r12, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_939
	mov	rsp, rsp
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_933
.label_939:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_937:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_932
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r14
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	nop	
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_938
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_936
	cmp	eax, 9
	mov	rsp, rsp
	mov	edx, 0
	je	.label_938
.label_936:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	nop	
	mov	rdx, rax
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_935
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_934
.label_935:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_938:
	mov	rbp, rbp
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	test	rbx, rbx
	jne	.label_937
	mov	dword ptr [r12], 0xc
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_933
.label_932:
	mov	r14, rbx
.label_933:
	nop	
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
.label_934:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_933
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	postorder
	jmp	.label_933
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e720

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	nop	
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e740

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_948
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	nop	
	mov	eax, dword ptr [r15 + 8]
	mov	rsp, rsp
	mov	ecx, eax
	and	ecx, 0xff9fffff
	nop	
	mov	dword ptr [r15 + 8], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_956
	mov	rcx, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp + 0x30]
	nop	
	je	.label_956
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	mov	rsp, rsp
	je	.label_960
.label_956:
	mov	rbp, rbp
	cmp	r12d, 0x5c
	mov	rbp, rbp
	jne	.label_964
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jge	.label_967
	mov	rsp, rsp
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	r14b, al
	mov	byte ptr [r15], r14b
	lea	rsi, [rsi]
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	mov	rsp, rsp
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_970
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	mov	rsp, rsp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	mov	rbp, rbp
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	nop	
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_950
.label_948:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_940
.label_964:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_961
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	nop	
	call	re_string_wchar_at
	mov	rbp, rbp
	mov	ebx, eax
	nop	
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	nop	
	setne	al
	mov	rsp, rsp
	cmp	ebx, 0x5f
	sete	cl
	lea	rdi, [rdi]
	or	cl, al
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	shl	eax, 0x16
	lea	rsi, [rsi]
	mov	ebx, 0xffbfffff
	lea	rsi, [rsi]
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_962
.label_967:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_940
.label_961:
	movzx	r14d, byte ptr [r15]
	mov	rbp, rbp
	cmp	r14, 0x5f
	mov	rbp, rbp
	sete	r13b
	lea	rsi, [rsi]
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + r14*2]
	lea	rdi, [rdi]
	movzx	ecx, r13b
	nop	
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	mov	rsp, rsp
	and	ebx, 0xffbfff01
.label_962:
	mov	rbp, rbp
	or	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	nop	
	cmp	r12d, 0x3e
	lea	rdi, [rdi]
	jg	.label_946
	nop	
	lea	eax, [r12 - 0x24]
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	ja	.label_951
	jmp	qword ptr [word ptr [+ (rax * 8) + label_955]]
.label_2158:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_945
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp + 0x58]
	mov	rbp, rbp
	je	.label_945
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	rsp, rsp
	call	peek_token
	nop	
	dec	qword ptr [rbp + 0x48]
	nop	
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	ja	.label_940
.label_945:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	mov	rsp, rsp
	jmp	.label_940
.label_946:
	lea	rsi, [rsi]
	cmp	r12d, 0x7a
	jg	.label_968
	cmp	r12d, 0x3f
	lea	rdi, [rdi]
	je	.label_969
	cmp	r12d, 0x5b
	je	.label_972
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_940
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	rbp, rbp
	test	ecx, 0x800008
	jne	.label_943
	mov	rax, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	test	rax, rax
	je	.label_943
	test	ch, 8
	lea	rdi, [rdi]
	je	.label_940
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_940
.label_943:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	lea	rsi, [rsi]
	jmp	.label_940
.label_970:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	mov	rbp, rbp
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	lea	rdi, [rdi]
	and	ebx, 0xffbfff01
.label_950:
	nop	
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	eax, 0x5f
	nop	
	jg	.label_958
	lea	ecx, [rax - 0x27]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	mov	rsp, rsp
	ja	.label_947
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_965]]
.label_2359:
	mov	rcx, r12
	test	ch, 0x40
	lea	rdi, [rdi]
	jne	.label_940
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	lea	rsi, [rsi]
	cdqe	
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	jmp	.label_940
.label_968:
	nop	
	cmp	r12d, 0x7b
	je	.label_971
	cmp	r12d, 0x7c
	je	.label_941
	mov	rsp, rsp
	cmp	r12d, 0x7d
	lea	rsi, [rsi]
	jne	.label_940
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	lea	rdi, [rdi]
	cmp	rax, 0x1200
	je	.label_944
	lea	rdi, [rdi]
	jmp	.label_940
.label_960:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_940
.label_958:
	mov	rbp, rbp
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_952
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_954]]
.label_2303:
	mov	rbp, rbp
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_951:
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	jne	.label_940
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	test	ah, 8
	lea	rsi, [rsi]
	jne	.label_957
	jmp	.label_940
.label_2159:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_963
	jmp	.label_940
.label_2160:
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	test	ah, 0x20
	lea	rdi, [rdi]
	jne	.label_966
	jmp	.label_940
.label_2161:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2162:
	mov	rax, qword ptr [rsp]
	nop	
	test	ax, 0x402
	mov	rsp, rsp
	jne	.label_940
	lea	rdi, [rdi]
	jmp	.label_942
.label_2163:
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 5
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_940
.label_969:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_940
	lea	rdi, [rdi]
	jmp	.label_949
.label_972:
	and	ebx, 0xffffff00
	nop	
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_940
.label_971:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_953
	jmp	.label_940
.label_941:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	nop	
	jne	.label_940
	test	ax, ax
	js	.label_957
	mov	rsp, rsp
	jmp	.label_940
.label_952:
	cmp	eax, 0x60
	je	.label_959
	mov	rsp, rsp
	cmp	eax, 0x62
	lea	rsi, [rsi]
	jne	.label_940
	lea	rdi, [rdi]
	test	r12d, 0x80000
	lea	rdi, [rdi]
	jne	.label_940
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0xc
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	mov	dword ptr [r15], 0x100
	jmp	.label_940
.label_947:
	cmp	eax, 0x57
	jne	.label_940
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_940
.label_2304:
	test	r12d, 0x80000
	nop	
	jne	.label_940
	mov	rbp, rbp
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	mov	rsp, rsp
	jmp	.label_940
.label_2305:
	lea	rsi, [rsi]
	and	r12d, 0x1200
	nop	
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_940
.label_953:
	and	ebx, 0xffffff00
	mov	rsp, rsp
	or	ebx, 0x17
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_940
.label_2306:
	mov	rax, r12
	nop	
	test	ah, 4
	jne	.label_940
	lea	rsi, [rsi]
	test	ax, ax
	js	.label_940
.label_957:
	nop	
	and	ebx, 0xffffff00
	or	ebx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	jmp	.label_940
.label_2307:
	and	r12d, 0x1200
	mov	rsp, rsp
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_940
.label_944:
	and	ebx, 0xffffff00
	lea	rsi, [rsi]
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_959:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_940
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_940
.label_2355:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_940
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x80
	jmp	.label_940
.label_2356:
	mov	rax, r12
	lea	rsi, [rsi]
	test	ah, 0x20
	nop	
	jne	.label_940
.label_963:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2357:
	mov	rax, r12
	nop	
	test	ah, 0x20
	jne	.label_940
.label_966:
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2358:
	and	r12d, 0x402
	mov	rsp, rsp
	cmp	r12, 2
	nop	
	jne	.label_940
.label_942:
	nop	
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2360:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15], 6
	jmp	.label_940
.label_2361:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	or	ebx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 9
	jmp	.label_940
.label_2362:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_940
.label_949:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_940
.label_2363:
	test	r12d, 0x80000
	jne	.label_940
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	mov	rbp, rbp
	jmp	.label_940
.label_2364:
	lea	rsi, [rsi]
	test	r12d, 0x80000
	jne	.label_940
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_940:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef80

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	cmp	byte ptr [rdi + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_973
.label_976:
	mov	rax, qword ptr [rdi + 8]
	nop	
	mov	rcx, qword ptr [rdi + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rax + 1]
.label_978:
	movzx	eax, al
	mov	rsp, rsp
	ret	
.label_973:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_974
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 4], -1
	mov	rsp, rsp
	je	.label_976
	mov	rsp, rsp
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	mov	rsp, rsp
	je	.label_974
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 8], -1
	nop	
	je	.label_976
.label_974:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_977
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_975
.label_977:
	inc	rax
.label_975:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	nop	
	test	al, al
	jns	.label_978
	mov	cl, byte ptr [rdi + 0x8c]
	lea	rsi, [rsi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_978
	nop	
	jmp	.label_976
	.section	.text
	.align	32
	#Procedure 0x40f020

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	mov	rbp, rbp
	jne	.label_979
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_979:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f050

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	nop	
	call	parse_expression
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	test	rax, rax
	jne	.label_982
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_982
	nop	
	jmp	.label_983
	nop	word ptr cs:[rax + rax]
.label_980:
	test	rbx, rbx
	mov	rsp, rsp
	cmovne	r15, rbx
	mov	rax, r15
.label_982:
	mov	rbx, rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	mov	rbp, rbp
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_981
	test	r12, r12
	mov	rbp, rbp
	je	.label_985
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_986
.label_985:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r9, r14
	lea	rdi, [rdi]
	call	parse_expression
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_984
	mov	eax, dword ptr [r14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_987
.label_984:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_980
	mov	rbp, rbp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_980
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	rdx, r15
	call	create_tree
	mov	rsp, rsp
	test	rax, rax
	jne	.label_982
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	nop	
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	mov	rbp, rbp
	jmp	.label_983
.label_987:
	mov	rbp, rbp
	xor	r15d, r15d
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_983
	mov	rsp, rsp
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	nop	
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	lea	rsi, [rsi]
	jmp	.label_983
.label_981:
	mov	r15, rbx
	mov	rsp, rsp
	jmp	.label_983
.label_986:
	lea	rdi, [rdi]
	mov	r15, rbx
.label_983:
	mov	rbp, rbp
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f210

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r15, rsi
	jmp	.label_991
	nop	word ptr cs:[rax + rax]
.label_992:
	mov	rdi, qword ptr [rcx + 0x10]
.label_991:
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 8]
	nop	
	test	rdi, rdi
	jne	.label_991
	nop	
	cmp	qword ptr [rcx + 0x10], 0
	lea	rsi, [rsi]
	je	.label_990
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_991
	lea	rdi, [rdi]
	jmp	.label_992
.label_990:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_988:
	mov	rbp, rbp
	mov	rbx, rcx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	call	r15
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_989
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_989
	lea	rsi, [rsi]
	cmovne	r12, rbx
	mov	rax, rcx
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rdi, r12
	nop	
	mov	r12, rbx
	je	.label_988
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	mov	r12, rbx
	je	.label_988
	jmp	.label_991
.label_989:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2f0

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rax
	lea	rdi, [rsi + 0x28]
	lea	rdi, [rdi]
	call	free_token
	xor	eax, eax
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f310

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x28
	nop	
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	rbp, rbp
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_993
	nop	word ptr cs:[rax + rax]
.label_1017:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	call	fetch_token
.label_993:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	nop	
	cmp	eax, 0x23
	nop	
	ja	.label_996
	mov	rbp, rbp
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1012]]
.label_2317:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1013
.label_2314:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_1013
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_1017
.label_2313:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	eax, 0x20000
	mov	rsp, rsp
	jne	.label_1015
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	mov	rbp, rbp
	jne	.label_1015
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	lea	rdi, [rdi]
	jmp	.label_997
.label_1013:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xd
.label_997:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_996:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1015:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_1001
	lea	rsi, [rsi]
	jmp	.label_998
.label_2318:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	nop	
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.1_7
	mov	ecx, OFFSET FLAT:.str.2_3
	jmp	.label_1006
.label_2319:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_0
.label_1006:
	nop	
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9, rbx
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rsi, [rsi]
	jmp	.label_995
.label_2316:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_exp
	mov	rsp, rsp
	jmp	.label_995
.label_2309:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rsp, rsp
	mov	r14, rax
	nop	
	test	r14, r14
	je	.label_998
	cmp	dword ptr [r12 + 0xb4], 2
	nop	
	jl	.label_1001
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
.label_1016:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_1001
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	je	.label_1001
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	jne	.label_1001
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_998
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1016
	lea	rdi, [rdi]
	jmp	.label_998
.label_2310:
	mov	rbp, rbp
	mov	cl, byte ptr [r13]
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	shl	eax, cl
	lea	rdi, [rdi]
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	mov	rsp, rsp
	je	.label_1019
	mov	rbp, rbp
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rcx, r13
	lea	rsi, [rsi]
	call	create_token_tree
	mov	r14, rax
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_998
	inc	qword ptr [r12 + 0x98]
	nop	
	or	byte ptr [r12 + 0xb0], 2
	lea	rsi, [rsi]
	jmp	.label_1001
.label_2311:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	mov	rcx, r13
	lea	rdi, [rdi]
	call	create_token_tree
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_998
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1001
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_1001
.label_2312:
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp]
	mov	rbp, rbp
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	lea	rdi, [rdi]
	call	parse_sub_exp
.label_995:
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1001
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rbx]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_996
.label_1001:
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	nop	
	mov	rdx, rbx
	nop	
	call	fetch_token
	nop	
	mov	ebp, ebx
	lea	rdi, [rdi]
	mov	r15, rbx
	and	ebp, 0x1000000
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_1009:
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	rsp, rsp
	cmp	eax, 0x17
	lea	rdi, [rdi]
	ja	.label_1000
	mov	ecx, 0x8c0800
	bt	ecx, eax
	mov	rsp, rsp
	jae	.label_1004
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1007
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_1008
.label_1007:
	test	rbp, rbp
	mov	r14, rax
	je	.label_1009
	movzx	ecx, byte ptr [r13 + 8]
	nop	
	cmp	ecx, 0x17
	je	.label_1011
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_1009
.label_1011:
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_994
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	postorder
.label_994:
	mov	dword ptr [rbx], 0xd
	lea	rsi, [rsi]
	jmp	.label_997
.label_1008:
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_996
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	postorder
	jmp	.label_996
.label_1000:
	nop	
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_996
.label_1004:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_996
.label_2315:
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	ax, 0x30f
	je	.label_999
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0xb0], 0x10
	mov	rsp, rsp
	jne	.label_1002
	lea	rdi, [rdi]
	mov	rdi, r12
	call	init_word_char
.label_1002:
	mov	eax, dword ptr [r13]
.label_999:
	cmp	eax, 0x200
	nop	
	je	.label_1020
	cmp	eax, 0x100
	nop	
	jne	.label_1018
.label_1020:
	cmp	dword ptr [r13], 0x100
	jne	.label_1014
	mov	dword ptr [r13], 6
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	nop	
	mov	rcx, r13
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	eax, 9
	mov	rbp, rbp
	jmp	.label_1010
.label_2320:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	nop	
	jmp	.label_997
.label_998:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_997
.label_1018:
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	
	jne	.label_1003
	mov	rbp, rbp
	mov	dword ptr [rcx], 0xc
	jmp	.label_997
.label_1014:
	mov	dword ptr [r13], 5
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	call	create_token_tree
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	eax, 0xa
.label_1010:
	mov	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	dword ptr [r13], eax
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	nop	
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	create_tree
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1005
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_1005
	test	rax, rax
	je	.label_1005
.label_1003:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	fetch_token
	jmp	.label_996
.label_1019:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	mov	rbp, rbp
	jmp	.label_997
.label_1005:
	mov	dword ptr [r14], 0xc
	jmp	.label_997
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f9c0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r15, rcx
	nop	
	mov	r14, rdx
	mov	r12, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	lea	rsi, [rsi]
	je	.label_1021
.label_1024:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	nop	
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	nop	
	movups	xmm0, xmmword ptr [r15]
	mov	rsp, rsp
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1023
	lea	rdi, [rdi]
	mov	qword ptr [r12], rax
.label_1023:
	test	r14, r14
	je	.label_1022
	mov	rsp, rsp
	mov	qword ptr [r14], rax
.label_1022:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_1021:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1022
	mov	rax, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1024
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fac0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r12 + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [rbx + 8]
	nop	
	xor	r8d, r8d
	nop	
	cmp	eax, 9
	je	.label_1030
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1025
	movzx	eax, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	eax, 9
	jne	.label_1027
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_1025
.label_1030:
	cmp	r12, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	ja	.label_1026
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa8], rax
.label_1026:
	xor	edx, edx
	mov	ecx, 0x11
	nop	
	mov	rsi, r8
	call	create_tree
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1028
	mov	qword ptr [rax + 0x28], r12
.label_1025:
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1028:
	mov	rbp, rbp
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1025
.label_1027:
	test	r8, r8
	je	.label_1029
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	mov	rsp, rsp
	call	postorder
.label_1029:
	mov	dword ptr [r13], 8
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_1025
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fc40

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xc8
	nop	
	mov	qword ptr [rsp + 0x28], r8
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	rsp, rsp
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r14, rax
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_1051
	test	r14, r14
	nop	
	je	.label_1051
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x19
	nop	
	je	.label_1067
	cmp	eax, 2
	je	.label_1048
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	jmp	.label_1031
.label_1067:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_1034
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_1034:
	movsxd	rax, ebp
	lea	rdi, [rdi]
	add	qword ptr [r13 + 0x48], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	rsp, rsp
	mov	ebp, eax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 8]
	lea	rdi, [rdi]
	cmp	eax, 2
	je	.label_1048
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
.label_1031:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x15
	jne	.label_1056
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_1056:
	lea	rax, [rsp + 0x60]
	nop	
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r9d, 1
	nop	
	mov	rsi, r13
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	ecx, ebp
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	parse_bracket_element
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1041
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1049
	nop	word ptr cs:[rax + rax]
.label_1039:
	mov	rsp, rsp
	cmp	eax, 2
	je	.label_1032
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	nop	
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	mov	rbp, rbp
	je	.label_1049
	mov	rbp, rbp
	jmp	.label_1041
.label_1055:
	lea	rax, [r13 + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsi]
	lea	rsi, [rax*4 + 4]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1057
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_1059
	nop	dword ptr [rax]
.label_1049:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_1063
	nop	
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_1064
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_1065
	cmp	eax, 2
	mov	rsp, rsp
	jne	.label_1066
	mov	rsp, rsp
	jmp	.label_1068
	nop	word ptr cs:[rax + rax]
.label_1063:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_1064
.label_1065:
	lea	rdi, [rdi]
	movsxd	rax, r14d
	lea	rsi, [rsi]
	add	qword ptr [rbp + 0x48], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	movzx	ecx, byte ptr [rsp + 0x38]
	mov	rsp, rsp
	cmp	ecx, 0x15
	je	.label_1042
	cmp	ecx, 2
	je	.label_1047
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x88], 3
	mov	rsp, rsp
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_element
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1061
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rbp, rbp
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jg	.label_1043
	nop	
	xor	edx, edx
.label_1043:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	lea	rcx, [rsp + 0xb0]
	mov	rsp, rsp
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	mov	rbp, rbp
	call	build_range_exp
.label_2248:
	mov	rsp, rsp
	jmp	.label_1033
.label_1042:
	lea	rdi, [rdi]
	mov	eax, r14d
	nop	
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	nop	
	mov	byte ptr [r12 + 8], 1
.label_1066:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x98]
.label_1064:
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	eax, 4
	ja	.label_1040
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1044]]
.label_2272:
	nop	
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
	jmp	.label_1052
.label_2273:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_1055
.label_1059:
	mov	eax, dword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp]
	nop	
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_1052
.label_2274:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_equiv_class
	jmp	.label_1033
.label_2275:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_collating_symbol
	nop	
	jmp	.label_1033
.label_2276:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	rsp, rsp
	mov	r9, rbx
	lea	rdi, [rdi]
	call	build_charclass
.label_1033:
	mov	rsp, rsp
	mov	dword ptr [r13], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1037
.label_1052:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	mov	rsp, rsp
	cmp	eax, 0x15
	nop	
	jne	.label_1039
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_1045
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_not
.label_1045:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_1054
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_1054:
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_1060
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1060
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_1060
	cmp	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_1060
	nop	
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1062
	cmp	qword ptr [r14 + 0x48], 0
	lea	rsi, [rsi]
	jne	.label_1060
	test	byte ptr [r14 + 0x20], 1
	jne	.label_1060
.label_1062:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	nop	
	jmp	.label_1036
.label_1060:
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	mov	rsp, rsp
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_1038
	nop	
.label_1053:
	mov	rbp, rbp
	cmp	qword ptr [r15 + rbx*8], 0
	mov	rbp, rbp
	jne	.label_1050
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 3
	mov	rbp, rbp
	jle	.label_1053
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	jmp	.label_1058
.label_1050:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r12
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1038
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_1036:
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_1058
	lea	rsi, [rsi]
	jmp	.label_1038
.label_1041:
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
.label_1037:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1035
.label_1048:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	mov	rbp, rbp
	jmp	.label_1035
.label_1032:
	lea	rdi, [rdi]
	mov	dword ptr [r13], 7
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_1035
.label_1051:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	jmp	.label_1046
.label_1068:
	mov	dword ptr [r13], 7
	nop	
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_1035
.label_1047:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_1035
.label_1061:
	lea	rdi, [rdi]
	mov	dword ptr [r13], eax
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_1035
.label_1057:
	mov	r14, rbp
.label_1038:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_1035:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rdi, r14
	nop	
	call	free_charset
.label_1046:
	xor	ebp, ebp
.label_1058:
	mov	rax, rbp
	nop	
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1040:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	lea	rdi, [rdi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410400

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	test	al, 8
	mov	r15d, 0
	mov	rbp, rbp
	jne	.label_1069
	movabs	rax, 0x3ff000000000000
	mov	rsp, rsp
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xc0], rax
	nop	
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_1069
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_1071:
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_1069:
	call	__ctype_b_loc
	nop	
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_1070:
	mov	rax, rdx
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1074:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	lea	rdi, [rdi]
	je	.label_1073
	nop	
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	mov	rbp, rbp
	je	.label_1072
.label_1073:
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rsp, rsp
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_1072:
	inc	rcx
	lea	rdi, [rdi]
	add	rax, 2
	lea	rsi, [rsi]
	cmp	rcx, 0x40
	nop	
	jne	.label_1074
	mov	rsp, rsp
	inc	r15
	add	rbx, 0x40
	lea	rdi, [rdi]
	add	rdx, 0x80
	lea	rsi, [rsi]
	cmp	r15d, 4
	jne	.label_1070
	mov	rsp, rsp
	jmp	.label_1071
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410530

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1086
	mov	qword ptr [rsp], r12
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_1081
	lea	rdi, [rdi]
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r12 + 0x20], al
	nop	
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_1082
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1085
	lea	rdi, [rdi]
	inc	rbp
	nop	dword ptr [rax + rax]
.label_1080:
	movsx	rsi, al
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1080
.label_1085:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1084
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	bitset_not
.label_1084:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1075
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_1075:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x18], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1076
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1079
	mov	byte ptr [rsp + 0x18], 6
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	nop	
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, r15
	mov	rsp, rsp
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1076
	mov	rsp, rsp
	mov	ecx, 0xa
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	call	create_tree
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	jmp	.label_1078
.label_1079:
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	free_charset
	jmp	.label_1078
.label_1076:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_charset
	mov	rsp, rsp
	jmp	.label_1083
.label_1086:
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_1077
.label_1081:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
.label_1083:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1077
.label_1082:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_1077:
	xor	ebp, ebp
.label_1078:
	lea	rsi, [rsi]
	mov	rax, rbp
	nop	
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410790

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, r9
	mov	rbp, r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	mov	rbp, rbp
	jne	.label_1093
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_1107
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_1091
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	eax, 0x2c
	je	.label_1097
	jmp	.label_1091
.label_1093:
	nop	
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	cmp	eax, 0x12
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ebx, cl
	mov	rsp, rsp
	cmp	eax, 0x13
	mov	eax, 1
	nop	
	mov	r13, -1
	mov	rsp, rsp
	cmove	r13, rax
.label_1099:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fetch_token
	mov	rsp, rsp
	xor	r14d, r14d
	test	r12, r12
	je	.label_1088
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	lea	rdi, [rdi]
	je	.label_1094
	lea	rdi, [rdi]
	test	rbx, rbx
	jg	.label_1098
	mov	r15, qword ptr [rsp + 0x18]
.label_1103:
	movzx	eax, byte ptr [r12 + 0x30]
	nop	
	cmp	eax, 0x11
	nop	
	jne	.label_1105
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	nop	
	call	postorder
.label_1105:
	lea	rdi, [rdi]
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1096
	lea	rax, [rbx + 2]
	lea	rsi, [rsi]
	cmp	rax, r13
	jg	.label_1089
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_1090:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r15
	nop	
	call	duplicate_tree
	mov	r12, rax
	lea	rdi, [rdi]
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, r12
	call	create_tree
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_1096
	mov	rsp, rsp
	test	rax, rax
	je	.label_1096
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	nop	
	je	.label_1096
	inc	rbx
	cmp	rbx, r13
	jl	.label_1090
.label_1089:
	test	r14, r14
	je	.label_1104
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	create_tree
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	jmp	.label_1088
.label_1107:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_1092
.label_1097:
	nop	
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	lea	rsi, [rsi]
	je	.label_1101
	cmp	eax, 1
	jne	.label_1092
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_1092
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	r13, rax
	cmp	r13, -2
	mov	rbp, rbp
	je	.label_1092
.label_1101:
	cmp	r13, -1
	je	.label_1095
	lea	rsi, [rsi]
	cmp	rbx, r13
	jg	.label_1091
.label_1095:
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_1091
	lea	rsi, [rsi]
	cmp	r13, -1
	lea	rsi, [rsi]
	mov	rax, r13
	cmove	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_1099
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	nop	
	xor	r14d, r14d
	nop	
	jmp	.label_1088
.label_1091:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_1088
.label_1092:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	mov	rbp, rbp
	je	.label_1087
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	jmp	.label_1088
.label_1104:
	lea	rdi, [rdi]
	mov	r14, rbp
	jmp	.label_1088
.label_1094:
	nop	
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_1088
.label_1098:
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	cmp	rbx, 2
	lea	rsi, [rsi]
	jge	.label_1102
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_1106
.label_1102:
	nop	
	mov	r15, qword ptr [rsp + 0x18]
.label_1100:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	nop	
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	call	create_tree
	mov	rsp, rsp
	mov	r14, rax
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_1096
	nop	
	test	r14, r14
	je	.label_1096
	nop	
	inc	rbp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jl	.label_1100
.label_1106:
	cmp	rbx, r13
	je	.label_1088
	mov	rdi, r12
	mov	rsi, r15
	lea	rdi, [rdi]
	call	duplicate_tree
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	jne	.label_1103
.label_1096:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_1088:
	lea	rdi, [rdi]
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1087:
	movzx	eax, byte ptr [r15 + 8]
	mov	rbp, rbp
	cmp	eax, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_1088
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410bd0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_1111
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_1116
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_1116
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_1108
.label_1116:
	movzx	ecx, r8b
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	je	.label_1114
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_1114
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1114
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_1108
.label_1111:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1114:
	mov	rbp, rbp
	cmp	ecx, 0x5b
	jne	.label_1117
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1118
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_1120
.label_1117:
	cmp	ecx, 0x5e
	nop	
	je	.label_1110
	lea	rdi, [rdi]
	cmp	ecx, 0x5d
	je	.label_1113
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_1108
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_1108:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_1118:
	mov	rbp, rbp
	xor	eax, eax
.label_1120:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_1109
	cmp	eax, 0x3a
	je	.label_1112
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_1115
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1113:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1112:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_1119
.label_1115:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_1110:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_1109:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1119:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410d50

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	rsp, rsp
	mov	eax, 1
	mov	cl, sil
	shl	rax, cl
	nop	
	mov	rcx, rsi
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	sar	rcx, 6
	mov	rsp, rsp
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410d80

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	nop	
	mov	r13, qword ptr [rbx + 0x48]
	nop	
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	lea	rsi, [rsi]
	jl	.label_1124
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_1125
.label_1124:
	movsxd	rax, ebp
	nop	
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_1123
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1122]]
.label_2334:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_2333:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_1123
	nop	
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	nop	
	cmp	ecx, 0x15
	jne	.label_1121
.label_1123:
	mov	dword ptr [r15], 0
	lea	rsi, [rsi]
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_1125:
	xor	eax, eax
.label_1121:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410ea0

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	rbp, rbp
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_1128
	cmp	ecx, 4
	je	.label_1128
	mov	rsp, rsp
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_1128
	nop	
	cmp	edx, 4
	je	.label_1128
	mov	rsp, rsp
	cmp	ecx, 3
	lea	rdi, [rdi]
	jne	.label_1127
	mov	rdi, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	mov	rbp, rbp
	cmp	rcx, 1
	ja	.label_1128
.label_1127:
	cmp	dword ptr [rbx], 3
	jne	.label_1138
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	ja	.label_1128
.label_1138:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_1144
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1146
	mov	al, byte ptr [rbp + 8]
	jmp	.label_1147
.label_1144:
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax]
	jmp	.label_1147
.label_1146:
	nop	
	xor	eax, eax
.label_1147:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	mov	rbp, rbp
	je	.label_1136
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1130
	nop	
	mov	dl, byte ptr [rbx + 8]
	mov	rsp, rsp
	jmp	.label_1132
.label_1136:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	jmp	.label_1132
.label_1130:
	xor	edx, edx
.label_1132:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	mov	rsp, rsp
	je	.label_1137
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_1139
.label_1137:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_1142
.label_1139:
	mov	ebp, dword ptr [rbp + 8]
.label_1142:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_1143
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1145
.label_1143:
	lea	rsi, [rsi]
	movzx	edi, dl
	mov	rsi, r14
	mov	rbp, rbp
	call	parse_byte
	lea	rdi, [rdi]
	mov	ebx, eax
	jmp	.label_1126
.label_1145:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbx + 8]
.label_1126:
	cmp	ebp, -1
	mov	eax, 3
	mov	rbp, rbp
	je	.label_1128
	lea	rsi, [rsi]
	cmp	ebx, -1
	je	.label_1128
	lea	rdi, [rdi]
	test	r12d, 0x10000
	je	.label_1135
	lea	rdi, [rdi]
	cmp	ebp, ebx
	lea	rdi, [rdi]
	mov	eax, 0xb
	mov	rbp, rbp
	ja	.label_1128
.label_1135:
	test	r14, r14
	mov	rbp, rbp
	je	.label_1140
	mov	rbp, rbp
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	lea	rdi, [rdi]
	je	.label_1141
.label_1134:
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	dword ptr [rcx + rax*4], ebx
.label_1140:
	mov	rsp, rsp
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	
.label_1133:
	mov	rsp, rsp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	ja	.label_1129
	cmp	rbx, r14
	mov	rbp, rbp
	ja	.label_1129
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_1129:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_1133
.label_1128:
	nop	
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1141:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	nop	
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	test	rdi, rdi
	je	.label_1131
	test	rax, rax
	mov	rbp, rbp
	je	.label_1131
	nop	
	lea	rcx, [r12 + r12 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	mov	rsp, rsp
	jmp	.label_1134
.label_1131:
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_1128
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411170

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	nop	
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1148
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	mov	rsp, rsp
	call	bitset_set
	lea	rdi, [rdi]
	xor	eax, eax
.label_1148:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4111c0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1149
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	nop	
	call	bitset_set
	xor	eax, eax
.label_1149:
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411210

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_1155
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_1210
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1155
.label_1210:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1155:
	nop	
	mov	rbp, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [r13], rbp
	je	.label_1183
.label_1159:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_7
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1200
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1209
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1212
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1154
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1162
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1172
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1171
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1184
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_2
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1189
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1168
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1151
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_1152
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_1163
.label_1157:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1204
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_1204:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1157
	jmp	.label_1152
.label_1200:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_1176
	nop	word ptr cs:[rax + rax]
.label_1188:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 8
	je	.label_1182
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	bitset_set
.label_1182:
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_1188
	mov	rsp, rsp
	jmp	.label_1152
	nop	word ptr [rax + rax]
.label_1176:
	nop	
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1197
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
.label_1197:
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1176
	jmp	.label_1152
.label_1209:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	jne	.label_1192
	nop	dword ptr [rax]
.label_1158:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1150
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_1150:
	inc	rbx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rbx, 0x100
	jne	.label_1158
	nop	
	jmp	.label_1152
	nop	
.label_1192:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1165
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	call	bitset_set
.label_1165:
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_1192
	jmp	.label_1152
.label_1212:
	nop	
	call	__ctype_b_loc
	nop	
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r14, r14
	jne	.label_1194
	nop	word ptr cs:[rax + rax]
.label_1195:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	lea	rsi, [rsi]
	je	.label_1187
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_1187:
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	nop	
	jne	.label_1195
	lea	rsi, [rsi]
	jmp	.label_1152
	nop	word ptr [rax + rax]
.label_1194:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	nop	
	test	byte ptr [rax + rbx*2 + 1], 2
	nop	
	je	.label_1207
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_1207:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_1194
	jmp	.label_1152
.label_1154:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	test	r14, r14
	mov	rsp, rsp
	jne	.label_1178
.label_1169:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_1160
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_1160:
	lea	rsi, [rsi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_1169
	jmp	.label_1152
.label_1178:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1179
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	bitset_set
.label_1179:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_1178
	jmp	.label_1152
.label_1183:
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rsp, rsp
	mov	rcx, rax
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_1152
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [r13], rax
	lea	rdi, [rdi]
	jmp	.label_1159
.label_1162:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1174
	nop	
.label_1205:
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	nop	
	je	.label_1202
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1202:
	nop	
	inc	rbx
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_1205
	jmp	.label_1152
.label_1174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	mov	rsp, rsp
	je	.label_1164
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1164:
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1174
	lea	rdi, [rdi]
	jmp	.label_1152
.label_1172:
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1181
	nop	dword ptr [rax + rax]
.label_1196:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1203
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_1203:
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_1196
	mov	rbp, rbp
	jmp	.label_1152
.label_1181:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	mov	rbp, rbp
	je	.label_1201
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1201:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_1181
	jmp	.label_1152
.label_1171:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	mov	rbp, rbp
	jne	.label_1166
	nop	word ptr [rax + rax]
.label_1198:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rsp, rsp
	je	.label_1193
	nop	
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1193:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_1198
	jmp	.label_1152
.label_1166:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rbp, rbp
	je	.label_1170
	movzx	esi, byte ptr [r14 + rbx]
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_set
.label_1170:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1166
	nop	
	jmp	.label_1152
.label_1184:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	nop	
	jne	.label_1186
	nop	word ptr cs:[rax + rax]
.label_1213:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_1191
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_1191:
	inc	rbx
	nop	
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_1213
	lea	rsi, [rsi]
	jmp	.label_1152
.label_1186:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	mov	rsp, rsp
	je	.label_1208
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_1208:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_1186
	jmp	.label_1152
.label_1189:
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1153
	nop	dword ptr [rax + rax]
.label_1173:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2], 1
	je	.label_1161
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	bitset_set
.label_1161:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1173
	jmp	.label_1152
.label_1153:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_1180
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rsp, rsp
	call	bitset_set
.label_1180:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jne	.label_1153
	nop	
	jmp	.label_1152
.label_1168:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	jne	.label_1190
.label_1206:
	nop	
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	lea	rsi, [rsi]
	jns	.label_1211
	mov	rdi, r15
	mov	rsi, rbx
	mov	rbp, rbp
	call	bitset_set
.label_1211:
	lea	rsi, [rsi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_1206
	jmp	.label_1152
.label_1190:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1175
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1175:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1190
	jmp	.label_1152
.label_1163:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1156
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_1156:
	inc	rbx
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_1163
	lea	rsi, [rsi]
	jmp	.label_1152
.label_1151:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1199
.label_1167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_1177
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_1177:
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1167
.label_1152:
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1199:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_1185
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1185:
	inc	rbx
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	jne	.label_1199
	nop	
	jmp	.label_1152
	nop	
	.section	.text
	.align	32
	#Procedure 0x411ad0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1214:
	mov	rbp, rbp
	not	qword ptr [rdi + rax*8]
	mov	rsp, rsp
	inc	rax
	nop	
	cmp	rax, 4
	jne	.label_1214
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b00

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1215:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	lea	rsi, [rsi]
	inc	rax
	cmp	rax, 4
	jne	.label_1215
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b30

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	mov	rsp, rsp
	je	.label_1216
	mov	rsp, rsp
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jge	.label_1216
	lea	rdi, [rdi]
	lea	rcx, [rsi*4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_1217:
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1216
	mov	rsp, rsp
	lea	rdx, [rsi + rax + 1]
	inc	rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_1217
.label_1216:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ba0

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_1218
	mov	rbp, -1
	mov	rbp, rbp
	movzx	r13d, byte ptr [r12]
	nop	word ptr cs:[rax + rax]
.label_1224:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	cmp	eax, 0x1e
	lea	rdi, [rdi]
	jne	.label_1223
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1221
	nop	
.label_1223:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_1221:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1218
	mov	rbp, rbp
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_1225
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_1219
.label_1225:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1224
.label_1218:
	nop	
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1219:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	eax, 0x1e
	je	.label_1220
	cmp	eax, 0x1c
	lea	rsi, [rsi]
	je	.label_1222
	cmp	eax, 0x1a
	nop	
	jne	.label_1218
	lea	rdi, [rdi]
	mov	dword ptr [r15], 3
	mov	rsp, rsp
	jmp	.label_1218
.label_1220:
	mov	dword ptr [r15], 4
	jmp	.label_1218
.label_1222:
	mov	dword ptr [r15], 2
	lea	rsi, [rsi]
	jmp	.label_1218
	.section	.text
	.align	32
	#Procedure 0x411ce0

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1226
	mov	rax, qword ptr [rbx + 0x48]
.label_1231:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
.label_1228:
	mov	rbp, rbp
	mov	bpl, byte ptr [rcx + rax]
.label_1230:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1226:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1232
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	je	.label_1227
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1231
.label_1227:
	nop	
	mov	r14, qword ptr [rbx + 0x48]
	nop	
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1229
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	mov	rsp, rsp
	cdqe	
	nop	
	add	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1230
.label_1232:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	jmp	.label_1228
.label_1229:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1230
	nop	
	.section	.text
	.align	32
	#Procedure 0x411dc0

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_1233
	lea	rsi, [rsi]
	jmp	btowc
.label_1233:
	lea	rdi, [rdi]
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411de0

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdx
	nop	
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rbp, rbp
	mov	r13d, 0x8000
	jmp	.label_1234
.label_1236:
	lea	rcx, [rbx + rbx*4]
	nop	
	lea	rcx, [rax + rcx*2 - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0x8000
	lea	rsi, [rsi]
	cmovg	rcx, r13
	nop	word ptr [rax + rax]
.label_1234:
	mov	rbx, rcx
	nop	
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	rsp, rsp
	call	fetch_token
	movzx	eax, byte ptr [r12]
	mov	rsp, rsp
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_1235
	cmp	edx, 2
	je	.label_1237
	cmp	eax, 0x2c
	lea	rsi, [rsi]
	je	.label_1235
	cmp	eax, 0x30
	mov	rsp, rsp
	mov	rcx, -2
	jb	.label_1234
	nop	
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_1234
	lea	rdi, [rdi]
	cmp	rbx, -2
	lea	rsi, [rsi]
	je	.label_1234
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_1234
	cmp	rbx, -1
	jne	.label_1236
	lea	rdi, [rdi]
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_1234
.label_1237:
	mov	rbx, -2
.label_1235:
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ed0

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1240
	nop	
	lea	r13, [rsp]
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_1245:
	mov	rsp, rsp
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1238
	lea	r13, [r12 + 8]
	mov	rbp, rbp
	jmp	.label_1241
	nop	word ptr cs:[rax + rax]
.label_1238:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1242:
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	nop	
	cmp	rbp, rcx
	je	.label_1243
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1239
.label_1243:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1242
	lea	rsi, [rsi]
	jmp	.label_1244
	nop	
.label_1239:
	nop	
	lea	r13, [r12 + 0x10]
.label_1241:
	lea	rcx, [rbp + 0x28]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	mov	rbx, rbp
	jne	.label_1245
	jmp	.label_1240
.label_1244:
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
.label_1240:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412000

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	cmp	ecx, 0x11
	jne	.label_1246
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x28], rdi
	lea	rsi, [rsi]
	jne	.label_1246
	or	eax, 0x80000
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x30], eax
.label_1246:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412030

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	r15
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1248
.label_1250:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1247
	nop	word ptr [rax + rax]
.label_1251:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	r12, rax
	mov	rbp, rbp
	je	.label_1249
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	jne	.label_1247
.label_1249:
	nop	
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_1251
	lea	rdi, [rdi]
	jmp	.label_1248
	nop	word ptr cs:[rax + rax]
.label_1247:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	r15
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_1250
.label_1248:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412100

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1252
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1252
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	lea	rdi, [rdi]
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1252:
	nop	
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	lea	rdi, [rdi]
	jne	.label_1253
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1253
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1253
	mov	rdx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_1254
	nop	
	mov	qword ptr [rdx], rsi
.label_1254:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	cmp	rcx, 0x3f
	mov	rsp, rsp
	jg	.label_1253
	mov	rax, -2
	mov	rbp, rbp
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_1253:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4121d0

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1256
	mov	rsp, rsp
	movzx	eax, byte ptr [rdx + 0x30]
	lea	rdi, [rdi]
	cmp	eax, 0x11
	jne	.label_1256
	lea	rdi, [rsp + 4]
	mov	rsp, rsp
	mov	rsi, r14
	call	lower_subexp
	nop	
	mov	qword ptr [rbx + 8], rax
	nop	
	test	rax, rax
	je	.label_1256
	mov	qword ptr [rax], rbx
.label_1256:
	mov	rdx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_1255
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	lea	rsi, [rsi]
	jne	.label_1255
	lea	rsi, [rsi]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1255
	nop	
	mov	qword ptr [rax], rbx
.label_1255:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412280

	.globl calc_first
	.type calc_first, @function
calc_first:
	nop
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	nop	
	movzx	eax, byte ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x10
	jne	.label_1258
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_1257
.label_1258:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x18], rbx
	nop	
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	mov	rsp, rsp
	je	.label_1257
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	nop	
	jne	.label_1257
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14]
	nop	
	shl	rcx, 4
	mov	rbp, rbp
	shl	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff00
	lea	rdi, [rdi]
	mov	edi, 0xfffc00ff
	mov	rbp, rbp
	and	edi, dword ptr [rsi + rcx + 8]
	lea	rdi, [rdi]
	or	edi, edx
	mov	rsp, rsp
	mov	dword ptr [rsi + rcx + 8], edi
.label_1257:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412360

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	mov	rbp, rbp
	je	.label_1259
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_1263
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1259:
	mov	rax, qword ptr [rsi + 8]
	nop	
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1260
.label_1263:
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1261
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1261:
	mov	rax, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1262
.label_1260:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1262:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4123d0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rdi, [rdi]
	lea	edx, [rax - 2]
	lea	rsi, [rsi]
	cmp	edx, 0xe
	ja	.label_1269
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1267]]
.label_2266:
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x38]
.label_1270:
	mov	rsp, rsp
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_2267:
	lea	rsi, [rsi]
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_1264
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	js	.label_1265
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	nop	
	pop	rax
	nop	
	jmp	re_node_set_init_2
.label_2264:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1266
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0x59f
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_2265:
	mov	rax, qword ptr [rsi + 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1266
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1270
.label_1269:
	test	al, 8
	nop	
	jne	.label_1268
	nop	
	mov	rax, qword ptr [rsi + 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1266:
	xor	eax, eax
	pop	rcx
	ret	
.label_1264:
	mov	edi, OFFSET FLAT:.str.18_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 0x5af
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
.label_1265:
	nop	
	mov	edi, OFFSET FLAT:.str.19_1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1268:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x412590

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1274
	nop	word ptr cs:[rax + rax]
.label_1271:
	lea	rsi, [rsi]
	inc	rbx
.label_1274:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1272
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_1273
.label_1272:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1271
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1275
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1271
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	nop	
	jmp	.label_1271
.label_1275:
	lea	rdi, [rdi]
	mov	ebx, eax
.label_1273:
	mov	rbp, rbp
	mov	eax, ebx
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412660

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	r13, rdi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x10], 0
	mov	rbp, rbp
	je	.label_1276
	xor	eax, eax
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1277:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rax + 0x10], 0
	lea	rsi, [rsi]
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	nop	
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1277
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1276
	lea	rdi, [rdi]
	xor	r14d, r14d
.label_1278:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + r15*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1280
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1279:
	mov	rax, qword ptr [r13 + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	nop	
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1276
	inc	rbx
	nop	
	mov	rax, qword ptr [r13 + 0x30]
	nop	
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	lea	rsi, [rsi]
	jl	.label_1279
.label_1280:
	lea	rdi, [rdi]
	inc	r14
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1278
.label_1276:
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412760

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsi]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_1281
	mov	rsp, rsp
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1281
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_1284
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_1284
.label_1281:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 8
	mov	rdi, r13
	lea	rdi, [rdi]
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 9
	mov	rsp, rsp
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	rbp, rbp
	mov	r14, rbx
	lea	rdi, [rdi]
	je	.label_1285
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	lea	rsi, [rsi]
	mov	r14, rax
.label_1285:
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	nop	
	test	rbx, rbx
	je	.label_1283
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1283
	test	r14, r14
	je	.label_1283
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1283
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	nop	
	and	ecx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	mov	rbp, rbp
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_1282
.label_1284:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
.label_1282:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1283:
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1282
	nop	
	.section	.text
	.align	32
	#Procedure 0x4128e0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	lea	rdi, [rdi]
	jae	.label_1289
.label_1291:
	mov	rax, qword ptr [rbx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	nop	
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1288
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1290
.label_1288:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1290:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r14 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1286:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1289:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	lea	rdi, [rdi]
	ja	.label_1286
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, rbp
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1286
	mov	qword ptr [rsp], r13
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	test	rdi, rdi
	je	.label_1287
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_1287
	mov	rsp, rsp
	test	r13, r13
	je	.label_1287
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1287
	mov	qword ptr [rbx + 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	nop	
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1291
.label_1287:
	mov	r15, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, r13
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	jmp	.label_1286
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412b60

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	rbp, rbp
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1295
	lea	rsi, [rsi]
	cmp	r14, r15
	nop	
	jne	.label_1292
	mov	qword ptr [rbx + 8], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax], r14
	mov	rbp, rbp
	jmp	.label_1294
.label_1292:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	jge	.label_1293
	nop	
	mov	qword ptr [rax], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1294
.label_1293:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], r14
.label_1294:
	xor	eax, eax
.label_1295:
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c10

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rbx], 1
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], 1
	mov	rbp, rbp
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	nop	
	test	rax, rax
	je	.label_1296
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1297:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
.label_1296:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_1297
	.section	.text
	.align	32
	#Procedure 0x412c70

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r15, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1302
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	nop	
	and	r8d, 0x3ff
	nop	
	je	.label_1298
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1298
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	lea	rsi, [rsi]
	jne	.label_1298
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	rcx, r15
	call	duplicate_node_closure
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1302
.label_1298:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	test	byte ptr [rax + rbx + 8], 8
	lea	rsi, [rsi]
	jne	.label_1299
	mov	rbx, r15
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1300
.label_1299:
	nop	
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1308
	lea	rdi, [rdi]
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1309:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + r13*8]
	nop	
	lea	r12, [rdx + rdx*2]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	nop	
	cmp	rcx, -1
	lea	rsi, [rsi]
	je	.label_1304
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1301
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1307
	lea	rsi, [rsi]
	jmp	.label_1302
	nop	dword ptr [rax]
.label_1301:
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1307:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1302
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1305
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1304:
	mov	rsp, rsp
	mov	r15b, 1
.label_1305:
	nop	
	inc	r13
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1309
	mov	rbp, rbp
	jmp	.label_1300
.label_1308:
	xor	r15d, r15d
.label_1300:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	mov	rsp, rsp
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_1302
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1303
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_1303
	lea	rdi, [rdi]
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1306
.label_1303:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1306:
	nop	
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1302:
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f00

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmovne	eax, ecx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f50

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	nop	
	mov	rbp, rdi
.label_1315:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], ebx
	nop	dword ptr [rax]
.label_1312:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_1313
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	duplicate_node
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	cmp	rbp, -1
	je	.label_1318
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rcx
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	nop	
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	r14, rbx
	mov	rbp, rbp
	mov	r13, rbp
	mov	rbp, r15
	mov	rbp, rbp
	jne	.label_1312
	nop	
	jmp	.label_1310
	nop	dword ptr [rax]
.label_1313:
	mov	rcx, qword ptr [rbp + 0x28]
	nop	
	lea	r15, [r14 + r14*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1317
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	lea	rdi, [rdi]
	cmp	rdx, 1
	je	.label_1319
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rbp, rbp
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1314
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	nop	
	jne	.label_1311
	jmp	.label_1310
.label_1314:
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	edx, r13d
	mov	rbp, rbp
	call	duplicate_node
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	nop	
	je	.label_1310
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	lea	rsi, [rsi]
	je	.label_1310
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8d, r13d
	mov	rsp, rsp
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1310
.label_1311:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	edx, r13d
	lea	rsi, [rsi]
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_1320
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rdi, [rax + r12*8]
	mov	rsp, rsp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	jne	.label_1312
	jmp	.label_1310
.label_1319:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_1321
	cmp	r13, r14
	jne	.label_1322
.label_1321:
	mov	rcx, qword ptr [rbp]
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	lea	rdi, [rdi]
	shr	eax, 8
	mov	rbp, rbp
	and	eax, 0x3ff
	nop	
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	or	ebx, eax
	nop	
	mov	rdi, rbp
	mov	r14, rsi
	nop	
	mov	edx, ebx
	mov	rsp, rsp
	call	duplicate_node
	mov	rsp, rsp
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	lea	rdi, [rdi]
	je	.label_1310
	mov	rax, qword ptr [rbp + 0x28]
	nop	
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1315
	jmp	.label_1310
.label_1318:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_1310
.label_1320:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_1310
.label_1317:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r13*8], rcx
.label_1316:
	nop	
	mov	dword ptr [rsp + 0x14], 0
.label_1310:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1322:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_1310
	jmp	.label_1316
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4132a0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1324
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_1324
	nop	
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	lea	rsi, [rsi]
	cmp	rbx, rax
	jge	.label_1330
	mov	rsp, rsp
	add	rbx, rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	call	realloc
	mov	rcx, rax
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1324
	lea	rsi, [rsi]
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1330:
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_1329
	lea	rsi, [rsi]
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	nop	
	dec	rcx
	mov	rbp, rbp
	mov	rdx, rax
	or	rdx, rcx
	nop	
	js	.label_1325
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1331
.label_1323:
	mov	rbp, rbp
	dec	rax
.label_1327:
	mov	rbp, rbp
	dec	rcx
	jmp	.label_1335
	nop	dword ptr [rax]
.label_1331:
	mov	rdi, qword ptr [rsi + rax*8]
	nop	
	cmp	qword ptr [rdx + rcx*8], rdi
	mov	rsp, rsp
	je	.label_1323
	lea	rsi, [rsi]
	jge	.label_1327
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1335:
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	or	rdi, rcx
	mov	rbp, rbp
	jns	.label_1331
.label_1325:
	test	rax, rax
	mov	rbp, rbp
	js	.label_1334
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	sub	rbx, rcx
	mov	rsp, rsp
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1334:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	r10, [r11 + rax*2 - 1]
	lea	rsi, [rsi]
	mov	r15, r10
	lea	rdi, [rdi]
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_1324
	lea	rax, [r15 + r11]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	lea	r8, [r11 - 1]
.label_1332:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [r15*8]
	nop	
	lea	rax, [r15 + r8]
	nop	
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	dword ptr [rax]
.label_1333:
	nop	
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_1328
	mov	rbp, rbp
	mov	qword ptr [r12 + rsi*8], rax
	nop	
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	mov	rbp, rbp
	add	rdi, rsi
	jne	.label_1333
	lea	rdi, [rdi]
	jmp	.label_1324
	nop	word ptr cs:[rax + rax]
.label_1328:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rsi*8], rdi
	nop	
	add	r15, rsi
	dec	r8
	lea	rsi, [rsi]
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_1332
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1326
.label_1329:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_1326:
	nop	
	call	memcpy
	lea	rsi, [rsi]
	xor	eax, eax
.label_1324:
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413500

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
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1343
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_1338
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [rbx], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1340
	mov	qword ptr [rbx + 0x10], rax
.label_1338:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx], r14
	jle	.label_1345
	test	rax, rax
	jle	.label_1339
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1342:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax*8], rdx
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rax, [rax - 1]
	mov	rsp, rsp
	jg	.label_1342
	jmp	.label_1339
.label_1336:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_node_set_init_1
	mov	rsp, rsp
	test	eax, eax
	sete	al
	lea	rdi, [rdi]
	jmp	.label_1341
.label_1343:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	jmp	.label_1337
.label_1345:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	lea	rdi, [rdi]
	cmp	rcx, r14
	mov	rbp, rbp
	jle	.label_1339
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1344:
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsp, rsp
	mov	rsi, rdx
	mov	rbp, rbp
	jg	.label_1344
.label_1339:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1337:
	lea	rdi, [rdi]
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1341:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_1340:
	xor	eax, eax
	jmp	.label_1341
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413640

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edx
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r15]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + r15 + 8]
	mov	rbp, rbp
	call	re_dfa_add_node
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1346
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	shl	rdx, 4
	shl	ebp, 8
	lea	rsi, [rsi]
	and	ebp, 0x3ff00
	lea	rsi, [rsi]
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	rsp, rsp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	esi, dword ptr [rcx + r15 + 8]
	mov	rsp, rsp
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	nop	
	mov	rcx, qword ptr [rbx + 0x20]
	nop	
	mov	qword ptr [rcx + rax*8], r14
.label_1346:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413700

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1347
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, r10
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	lea	rdi, [rdi]
	mov	ecx, r11d
	mov	rbp, rbp
	and	ecx, 0x40000
	je	.label_1347
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
.label_1349:
	lea	rsi, [rsi]
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1348
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	mov	rbp, rbp
	je	.label_1350
.label_1348:
	lea	rdi, [rdi]
	dec	r10
	test	r10, r10
	jle	.label_1347
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	nop	
	mov	ecx, r11d
	and	ecx, 0x40000
	lea	rdi, [rdi]
	add	r8, -0x10
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_1349
	mov	rsp, rsp
	jmp	.label_1347
.label_1350:
	mov	rax, r10
.label_1347:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4137a0

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1351
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	rbp, rbp
	mov	qword ptr [rbx], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_1352
	mov	qword ptr [rbx + 0x10], rax
.label_1351:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1353:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
.label_1352:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1353
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413820

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r14, rdi
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	mov	rsp, rsp
	jle	.label_1354
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1355
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1356
.label_1354:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1356:
	xor	eax, eax
.label_1357:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_1355:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1357
	nop	
	.section	.text
	.align	32
	#Procedure 0x4138b0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	test	r9, r9
	jle	.label_1358
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	dec	r9
	mov	rbp, rbp
	je	.label_1359
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1361:
	mov	rbp, rbp
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	nop	
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	mov	rbp, rbp
	jb	.label_1361
.label_1359:
	nop	
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1360
	lea	rsi, [rsi]
	inc	rax
	ret	
.label_1360:
	mov	rbp, rbp
	xor	eax, eax
.label_1358:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413930

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	qword ptr [rdx + 8], 0
	lea	rdi, [rdi]
	je	.label_1365
	nop	
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rsp, rsp
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	nop	
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1367
	nop	
	lea	r14, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1366:
	nop	
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1362
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + 0x68]
	mov	rsp, rsp
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1362
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1364
.label_1362:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1366
.label_1367:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_1364
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	jmp	.label_1363
.label_1365:
	mov	dword ptr [rdi], 0
.label_1363:
	xor	ebp, ebp
.label_1364:
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 0x18
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413a60

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1368
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	
.label_1369:
	add	rax, qword ptr [rdx + rsi*8]
	mov	rsp, rsp
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1369
.label_1368:
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a90

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1370
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1370
	nop	
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_1371
.label_1372:
	nop	
	mov	al, 1
	nop	
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_1370
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1372
.label_1371:
	xor	eax, eax
.label_1370:
	ret	
	.section	.text
	.align	32
	#Procedure 0x413ae0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r15, rax
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_1377
	mov	r12, r15
	nop	
	add	r12, 8
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1374
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	mov	rsp, rsp
	and	cl, 0xf
	mov	rbp, rbp
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	nop	
	mov	qword ptr [rsp + 0x20], r12
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1379
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	mov	eax, r14d
	and	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	mov	rsp, rsp
	xor	r12d, r12d
.label_1381:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rbp, rbp
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	ecx, sil
	mov	r13d, esi
	lea	rsi, [rsi]
	shr	r13d, 8
	mov	rbp, rbp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 0x3ff
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_1387
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1373
.label_1387:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	rbp, rbp
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	mov	rsp, rsp
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1389
	cmp	ecx, 2
	lea	rdi, [rdi]
	jne	.label_1383
	mov	rsp, rsp
	or	bl, 0x10
	mov	rsp, rsp
	jmp	.label_1386
.label_1389:
	or	bl, 0x40
.label_1386:
	mov	byte ptr [r15 + 0x68], bl
.label_1383:
	mov	rbp, rbp
	test	eax, eax
	je	.label_1376
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	lea	rdi, [rdi]
	mov	rbx, rdi
	jne	.label_1378
	mov	edi, 0x18
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1385
	mov	rdi, rax
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_1377
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1378:
	cmp	dword ptr [rsp + 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1382
	nop	
	mov	eax, r13d
	and	eax, 1
	jne	.label_1380
.label_1382:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1388
	mov	eax, r13d
	nop	
	and	eax, 2
	jne	.label_1380
.label_1388:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1375
	mov	eax, r13d
	mov	rsp, rsp
	and	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1380
.label_1375:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1373
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_1373
	nop	word ptr cs:[rax + rax]
.label_1380:
	nop	
	mov	rsi, r14
	nop	
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rsp, rsp
	inc	r12
	nop	
	jmp	.label_1373
.label_1376:
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_1373:
	inc	r14
	nop	
	cmp	r14, qword ptr [rbp + 8]
	mov	rbp, rbp
	jl	.label_1381
.label_1379:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	register_state
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r15
	nop	
	je	.label_1377
.label_1385:
	nop	
	mov	rdi, r15
	call	free_state
	mov	rsp, rsp
	jmp	.label_1384
.label_1374:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1384:
	mov	rbp, rbp
	xor	eax, eax
.label_1377:
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413da0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	js	.label_1390
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1390
	mov	rsp, rsp
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rax
	nop	
	cmp	rax, rsi
	jle	.label_1390
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	nop	dword ptr [rax]
.label_1391:
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	nop	
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	jl	.label_1391
.label_1390:
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413df0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	r14d, 0xc
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1395
	cmp	qword ptr [rbx + 0x10], 0
	mov	rsp, rsp
	jle	.label_1392
	mov	rbp, rbp
	xor	ebp, ebp
.label_1393:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13]
	mov	rbp, rbp
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	lea	rsi, [rsi]
	jne	.label_1397
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	mov	rbp, rbp
	je	.label_1395
.label_1397:
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1393
.label_1392:
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1396
.label_1394:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1395:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1396:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15]
	nop	
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1395
	lea	rcx, [r12 + rbp*8 + 8]
	nop	
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	qword ptr [rcx], rdx
	jmp	.label_1394
	nop	
	.section	.text
	.align	32
	#Procedure 0x413f20

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	cmp	ecx, 2
	je	.label_1405
	lea	r13, [r14 + 1]
	nop	
	cmp	ecx, 1
	je	.label_1401
	nop	
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1403
	mov	rbp, rbp
	lea	r12, [r13*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1402
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1406
	lea	rsi, [rsi]
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	mov	r12d, 1
	jmp	.label_1399
.label_1405:
	mov	rsp, rsp
	mov	r12d, 2
	lea	rdi, [rdi]
	cmp	qword ptr [r15], r14
	jae	.label_1399
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1401:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	mov	rbp, rbp
	ja	.label_1407
.label_1399:
	lea	rsi, [rsi]
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_1408
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	nop	
	add	rbx, 8
	mov	rsp, rsp
	mov	rdx, r14
	nop	
.label_1398:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx - 8]
	mov	rsp, rsp
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1398
	mov	rax, r14
.label_1408:
	mov	rsp, rsp
	cmp	rax, qword ptr [r15]
	nop	
	jae	.label_1400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1409:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15]
	lea	rsi, [rsi]
	jb	.label_1409
.label_1400:
	lea	rsi, [rsi]
	mov	ebp, r12d
.label_1402:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1407:
	nop	
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1402
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	call	realloc
	test	rax, rax
	je	.label_1404
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	jmp	.label_1399
.label_1406:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	jmp	.label_1402
.label_1404:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	lea	rsi, [rsi]
	jmp	.label_1402
.label_1403:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.23
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rbp, rbp
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x414140

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	lea	rdi, [rdi]
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rsp, rsp
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	nop	
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1410
	lea	rdi, [rdi]
	lea	rax, [r15 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	mov	rbp, rbp
	shr	al, 4
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1412
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13 + 8]
.label_1412:
	mov	qword ptr [r13 + 8], r12
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1411
	xor	ecx, ecx
	nop	
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1411
	lea	rsi, [rsi]
	mov	rcx, r14
.label_1411:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1410:
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414250

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
	mov	rbp, rbp
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1414
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	nop	
	je	.label_1414
.label_1413:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_1414:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414310

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1421
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1430
	mov	qword ptr [rbx + 0x20], 0
.label_1430:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	lea	rsi, [rsi]
	jne	.label_1437
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1437:
	nop	
	test	r13, r13
	mov	rsp, rsp
	je	.label_1431
	mov	rbp, rbp
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1453
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1456
	lea	rdi, [rdi]
	lea	rsi, [r13 - 1]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	mov	rbp, rbp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1416
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	lea	rsi, [rdi + r13*4]
	mov	rbp, rbp
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1416:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1426
.label_1434:
	sub	qword ptr [rbx + 0x30], r13
	nop	
	sub	qword ptr [rbx + 0x38], r13
.label_1425:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_1431
	add	qword ptr [rbx + 8], r13
.label_1431:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], r14
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x58], r13
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x68], r13
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1436
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1442
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1441
	jmp	.label_1446
.label_1436:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1447
	mov	rax, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1446
.label_1442:
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_1446:
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_1441:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1421:
	lea	rsi, [rsi]
	mov	r13, r14
	sub	r13, rax
	lea	rdi, [rdi]
	jmp	.label_1437
.label_1453:
	nop	
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_1459
.label_1458:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1420
	mov	rbp, rbp
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1457
	mov	rdx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	nop	
	cmp	rcx, rdx
	cmovb	rcx, rdx
	mov	rbp, rbp
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	word ptr [rax + rax]
.label_1444:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_1427
	mov	rsp, rsp
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 0x80
	lea	rdi, [rdi]
	je	.label_1444
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1449
.label_1432:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	mov	rsp, rsp
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, r12
	nop	
	jb	.label_1427
	cmp	rax, -3
	ja	.label_1427
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_1427:
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	cmp	edi, -1
	jne	.label_1417
.label_1457:
	lea	rdx, [rsp + 0x24]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	re_string_skip_chars
	mov	rsp, rsp
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	mov	rbp, rbp
	je	.label_1424
.label_1417:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1429
	mov	ecx, dword ptr [rsp + 0x24]
.label_1445:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_1433
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	nop	
	jne	.label_1433
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_1433
.label_1456:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1454:
	nop	
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	mov	rcx, rdi
	shr	rcx, 0x3f
	mov	rbp, rbp
	add	rcx, rdi
	sar	rcx, 1
	nop	
	cmp	qword ptr [rax + rcx*8], r13
	lea	rdi, [rdi]
	mov	rdi, rcx
	jg	.label_1448
	jge	.label_1452
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1448:
	lea	rsi, [rsi]
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1454
.label_1452:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rdi, [rdi]
	lea	rbp, [rax + rcx]
	mov	rbp, rbp
	lea	rsi, [rax + rcx - 1]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1419
	cmp	rbp, r13
	jne	.label_1419
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1419
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	nop	
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_1425
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1451:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1451
	jmp	.label_1425
.label_1426:
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1434
.label_1419:
	mov	rax, r13
	sub	rax, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rcx, rax
	nop	
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1423:
	mov	rsp, rsp
	mov	rax, rbp
	mov	rsp, rsp
	test	rax, rax
	jle	.label_1438
	lea	rdi, [rdi]
	lea	rbp, [rax - 1]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1423
.label_1438:
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	jge	.label_1428
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1415:
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1428
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_1415
.label_1428:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1439
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1440
.label_1447:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x88], 0
	lea	rdi, [rdi]
	je	.label_1443
	mov	rdi, rbx
	call	build_upper_buffer
	lea	rdi, [rdi]
	jmp	.label_1446
.label_1420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1450
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
.label_1450:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	lea	rdi, [rdi]
	mov	rsi, r15
	call	bitset_contain
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_1418
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	lea	rdi, [rdi]
	jne	.label_1418
	mov	rbp, rbp
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1418
	xor	ecx, ecx
.label_1418:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_1425
.label_1439:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	je	.label_1440
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1435
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	mov	rsp, rsp
	shl	rdx, 2
	nop	
	mov	esi, 0xff
	lea	rdi, [rdi]
	call	memset
.label_1435:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memset
	jmp	.label_1440
.label_1443:
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1446
	mov	rdi, rbx
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_1446
.label_1424:
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
.label_1433:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_1455
.label_1440:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_1425
.label_1459:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	
	jmp	.label_1458
.label_1455:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	jle	.label_1422
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	rbp, rbp
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_1422:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1435
	lea	rsi, [rsi]
	jmp	.label_1440
.label_1429:
	lea	rdi, [rdi]
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_1433
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	lea	rdi, [rdi]
	jne	.label_1445
	jmp	.label_1433
.label_1449:
	lea	rsi, [rsp + 0xe]
	mov	rbp, rbp
	cmp	rdx, 6
	mov	ecx, 6
	nop	
	cmovl	ecx, edx
	test	ecx, ecx
	mov	rsp, rsp
	jle	.label_1432
	lea	rcx, [rbp - 1]
	nop	
	sub	rcx, rax
	cmp	rcx, -8
	mov	rbp, rbp
	mov	r10, -7
	lea	rsi, [rsi]
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	lea	rdi, [rdi]
	sar	r10, 0x20
	lea	rdi, [rdi]
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	mov	rbp, rbp
	xor	ecx, ecx
.label_1460:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	mov	al, byte ptr [rax + rdi]
	lea	rsi, [rsi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	mov	rbp, rbp
	inc	rax
	cmp	rax, 1
	jg	.label_1460
	jmp	.label_1432
	nop	
	.section	.text
	.align	32
	#Procedure 0x414b30

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	mov	r13, rdx
	nop	
	mov	dword ptr [rsp + 0x1c], esi
	lea	rsi, [rsi]
	mov	rbp, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1464
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	nop	
	mov	edx, dword ptr [rbp + 0xa0]
	nop	
	mov	rdi, rbp
	call	re_string_context_at
	mov	rsp, rsp
	test	al, 1
	jne	.label_1475
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1464
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	nop	
	je	.label_1480
	lea	rdi, [rdi]
	test	sil, sil
	jne	.label_1480
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1464
.label_1475:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1464:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1474
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1489
	mov	rsp, rsp
	mov	qword ptr [rax + r12*8], rbx
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x98], 0
	lea	rsi, [rsi]
	jne	.label_1463
.label_1489:
	nop	
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	al, 0x10
	mov	rsp, rsp
	jne	.label_1472
.label_1476:
	nop	
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_1470:
	mov	rsi, qword ptr [rbp + 0x48]
	nop	
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1465
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rdi, [rdi]
	sete	r12b
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	or	r12b, al
	mov	r15, rbx
	nop	dword ptr [rax + rax]
.label_1490:
	lea	r14, [rsi + 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_1461
.label_1469:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_1491
.label_1471:
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1483
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	lea	rsi, [rsi]
	mov	rbx, rax
.label_1483:
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1478
	mov	rax, -2
	nop	
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1462
	cmp	qword ptr [rbp + 0xb8], 0
	mov	rsp, rsp
	setne	al
	nop	
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1465
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1465
.label_1478:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1481
.label_1473:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	lea	rsi, [rsi]
	test	al, 0x10
	je	.label_1468
	lea	rdi, [rdi]
	test	al, al
	nop	
	jns	.label_1466
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1466
.label_1468:
	nop	
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_1490
	jmp	.label_1465
.label_1461:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_1467
	jmp	.label_1469
.label_1491:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1471
.label_1467:
	mov	rsp, rsp
	add	esi, 2
	mov	rsp, rsp
	mov	rdi, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_1479
	lea	rsi, [rsi]
	jmp	.label_1471
.label_1481:
	lea	rdi, [rdi]
	cmp	r15, rbx
	je	.label_1485
	mov	dword ptr [rsp + 0x20], 0
.label_1485:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1473
	nop	
.label_1466:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_1470
	jmp	.label_1462
.label_1465:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1488
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	qword ptr [rcx], rax
.label_1488:
	mov	rax, qword ptr [rsp]
	jmp	.label_1462
.label_1479:
	mov	rax, -2
	mov	rsp, rsp
	cmp	ecx, 0xc
	nop	
	je	.label_1462
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_1474:
	mov	rbp, rbp
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	lea	rsi, [rsi]
	je	.label_1462
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
.label_1480:
	test	edx, edx
	nop	
	jne	.label_1482
	test	ecx, ecx
	mov	rsp, rsp
	je	.label_1464
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	nop	
	mov	rsi, r15
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rsp, rsp
	jmp	.label_1464
.label_1472:
	test	al, al
	js	.label_1477
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	mov	rbp, rbp
	jne	.label_1476
	mov	rbp, rbp
	mov	rax, r12
	mov	rbp, rbp
	jmp	.label_1462
.label_1463:
	lea	r15, [rbx + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_1487
	mov	rsp, rsp
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1486
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1484
.label_1486:
	nop	
	mov	dword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1489
.label_1482:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1464
.label_1477:
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rsp, rsp
	call	check_halt_state_context
	lea	rdi, [rdi]
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	lea	rsi, [rsi]
	je	.label_1476
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1476
	mov	rax, r12
.label_1462:
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1487:
	mov	rbp, rbp
	cdqe	
	jmp	.label_1462
.label_1484:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	jmp	.label_1462
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415010

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	rbp, rbp
	mov	edx, eax
	call	re_string_context_at
	mov	rbp, rbp
	mov	r15d, eax
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1493
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
.label_1492:
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1493
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	mov	rsp, rsp
	jl	.label_1492
.label_1493:
	mov	rax, rbp
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4150b0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	mov	rsp, rsp
	ja	.label_1506
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	lea	rbp, [rbx*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	r13d, 0xc
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1502
	cmp	qword ptr [r14 + 0x98], 0
	nop	
	je	.label_1507
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1499
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	mov	r15, rax
	jmp	.label_1501
.label_1507:
	lea	r14, [rsp + 0x20]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	lea	rsi, [rsi]
	call	sift_states_backward
	nop	
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1494
	lea	rdi, [rdi]
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	lea	rdi, [rdi]
	jne	.label_1503
	mov	r13d, 1
	jmp	.label_1497
.label_1495:
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_1501:
	lea	rdx, [rbx*8 + 8]
	nop	
	xor	esi, esi
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r12
	mov	rbp, rbp
	mov	r8, rbx
	call	sift_ctx_init
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1498
	cmp	qword ptr [r14], 0
	jne	.label_1496
	mov	rsp, rsp
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	jne	.label_1496
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1505
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	dec	rbx
	nop	
.label_1504:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1500
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1495
.label_1500:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	lea	rsi, [rsi]
	jge	.label_1504
	mov	rbp, rbp
	mov	rbp, r14
	lea	rsi, [rsi]
	jmp	.label_1497
.label_1502:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_1497
.label_1498:
	mov	rsp, rsp
	mov	rbp, r14
	lea	rdi, [rdi]
	jmp	.label_1497
.label_1496:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	rbp, rbp
	mov	r13d, eax
	mov	rdi, r15
	nop	
	call	free
	lea	rsi, [rsi]
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_1497
.label_1503:
	mov	rdi, qword ptr [r12 + 0xb8]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_1494:
	xor	r15d, r15d
.label_1497:
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1506:
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1499:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_1497
.label_1505:
	mov	rsp, rsp
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_1497
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4153b0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_1511
	nop	
	xor	r12d, r12d
	nop	
.label_1510:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1508
	nop	word ptr cs:[rax + rax]
.label_1512:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1512
.label_1508:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1509
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1509:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1510
.label_1511:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4154c0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x68
	lea	rdi, [rdi]
	mov	r12, rcx
	nop	
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1527]]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1528]]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r8b, r8b
	je	.label_1529
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1518
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x70]
.label_1529:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r15
	nop	
	mov	r15, qword ptr [r15 + 0x90]
	nop	
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rbp - 0x50], xmm0
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	lea	rsi, [rsi]
	ja	.label_1530
	mov	rdi, rsp
	lea	rsi, [rsi]
	lea	rax, [r13 + 0xf]
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rsp
	mov	rsp, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_1513
.label_1530:
	mov	rsp, rsp
	mov	rdi, r13
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rax
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1520
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_1513:
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	nop	
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1531
	mov	rsp, rsp
	lea	r13, [r12 + 8]
	jmp	.label_1523
.label_1521:
	cmp	r15, -2
	je	.label_1514
	mov	rbp, rbp
	test	r14, r14
	je	.label_1517
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	mov	rbp, rbp
	jmp	.label_1524
	nop	word ptr cs:[rax + rax]
.label_1523:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1525
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_1525
	lea	rdi, [rdi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1516
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_1519
	nop	dword ptr [rax]
.label_1526:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1522
	nop	
	cmp	qword ptr [rcx], -1
	je	.label_1519
.label_1522:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	nop	
	jb	.label_1526
.label_1519:
	nop	
	cmp	rax, rbx
	je	.label_1531
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, r12
	mov	rbp, rbp
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	nop	
	mov	r15, rax
.label_1525:
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	mov	rbp, rbp
	call	proceed_next_node
	add	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	js	.label_1521
.label_1524:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1523
.label_1531:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1532
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1532:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_1518
.label_1516:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
	jmp	.label_1515
.label_1514:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1520
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1520:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	r14d, 0xc
.label_1518:
	mov	rsp, rsp
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1517:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	nop	
	mov	r14d, 1
.label_1515:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1518
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	rsp, rsp
	jmp	.label_1518
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415820

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	match_ctx_clean
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0xf8]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415860

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_1537
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1540
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_1533
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_1538:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_1535
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_1538
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1534
.label_1533:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	mov	rbp, rbp
	test	al, al
	jne	.label_1534
	mov	rsp, rsp
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1534
	nop	
	jmp	.label_1539
.label_1535:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rsp, rsp
	jne	.label_1541
.label_1536:
	xor	edx, edx
	cmp	ebp, 0xa
	nop	
	jne	.label_1534
.label_1539:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1534
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_1534
.label_1537:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1534
.label_1540:
	lea	rdi, [rdi]
	and	edx, 2
	xor	edx, 0xa
.label_1534:
	mov	rbp, rbp
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1541:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1534
	test	eax, eax
	jne	.label_1534
	jmp	.label_1536
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415960

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x38]
	nop	
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_1542
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_1547
.label_1543:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1544
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1544
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbx]
.label_1544:
	mov	qword ptr [r13], r14
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	jmp	.label_1545
	nop	
.label_1547:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12]
	nop	
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1543
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1543
	mov	ecx, dword ptr [rsp + 0x14]
.label_1545:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1547
	jmp	.label_1546
.label_1542:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
.label_1546:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415a60

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rbp, rbp
	mov	rax, rsi
	lea	rdi, [rdi]
	sar	rax, 0x3f
	lea	rdi, [rdi]
	shr	rax, 0x3a
	nop	
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415a90

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1548
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x98]
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1550:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	lea	rdi, [rdi]
	jne	.label_1549
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_1549
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1549
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, r14
	lea	rsi, [rsi]
	call	match_ctx_add_subtop
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1548
	nop	dword ptr [rax]
.label_1549:
	mov	rsp, rsp
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1550
.label_1548:
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415b60

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x68
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1565
	nop	
	mov	r8, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1563:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rsp, rsp
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	eax, bl
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1560
	nop	
	mov	ebp, ebx
	lea	rsi, [rsi]
	shr	ebp, 8
	mov	rsp, rsp
	test	bp, 0x3ff
	je	.label_1567
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1557
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1560
.label_1557:
	test	bh, 8
	nop	
	je	.label_1562
	test	ecx, ecx
	jne	.label_1560
.label_1562:
	mov	rsp, rsp
	test	bh, 0x20
	nop	
	je	.label_1564
	mov	ecx, eax
	and	ecx, 2
	je	.label_1560
.label_1564:
	test	bpl, bpl
	jns	.label_1567
	mov	rbp, rbp
	and	eax, 8
	je	.label_1560
	nop	dword ptr [rax]
.label_1567:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rbx, r8
	mov	rbp, rbp
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1554
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_1560
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1559:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	nop	
	jne	.label_1555
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1555
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	mov	rbp, rbp
	cmp	rsi, rcx
	jne	.label_1552
	mov	qword ptr [rsp + 0x28], rdi
	nop	
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rsi, [rsi]
	jmp	.label_1556
.label_1552:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [r8 + 0x18]
.label_1556:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	add	r14, rbx
	mov	rbp, rbp
	sub	r14, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r13 + 0xa0]
	nop	
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	mov	esi, 0
	mov	rsp, rsp
	je	.label_1561
	mov	rsi, qword ptr [rcx + 0x10]
.label_1561:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_1566
	mov	ebx, eax
	nop	
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	mov	rsi, qword ptr [r8 + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1558
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x48]
	nop	
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r14*8], 0
	mov	rbp, rbp
	jne	.label_1551
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1554
.label_1551:
	mov	r14, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1553
.label_1566:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	nop	
	mov	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	jne	.label_1553
	mov	eax, dword ptr [rsp + 0x64]
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1554
	nop	dword ptr [rax]
.label_1553:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1555
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	nop	
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1555
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	nop	
	test	eax, eax
	jne	.label_1554
	mov	rdi, r13
	mov	r14, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rsp, rsp
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1554
	nop	dword ptr [rax]
.label_1555:
	inc	r12
	add	rbp, 0x28
	nop	
	cmp	r12, qword ptr [r13 + 0xc8]
	lea	rdi, [rdi]
	jl	.label_1559
	nop	dword ptr [rax + rax]
.label_1560:
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	nop	
	jl	.label_1563
.label_1565:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1554
.label_1558:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	free
.label_1554:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416020

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1568
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	add	rsi, rsi
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1568
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1572
	mov	rax, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rsi, [rsi]
	mov	rcx, rax
	test	rcx, rcx
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	je	.label_1568
	mov	rbp, rbp
	mov	qword ptr [rbx + 0xb8], rcx
.label_1572:
	cmp	byte ptr [rbx + 0x88], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1573
	mov	rdi, rbx
	nop	
	cmp	eax, 2
	jl	.label_1571
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1569
	jmp	.label_1568
.label_1573:
	cmp	eax, 2
	jl	.label_1570
	mov	rdi, rbx
	call	build_wcs_buffer
	mov	rsp, rsp
	jmp	.label_1569
.label_1571:
	call	build_upper_buffer
	jmp	.label_1569
.label_1570:
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x78], 0
	nop	
	je	.label_1569
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
.label_1569:
	xor	eax, eax
.label_1568:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416120

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rsp, rsp
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1574
.label_1578:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1579:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1575
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x60]
	mov	rsp, rsp
	test	r13, r13
	mov	rbp, rbp
	jne	.label_1577
	nop	
	mov	rdi, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	build_trtable
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1579
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1576
.label_1575:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12*8]
.label_1576:
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	ret	
.label_1574:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	call	transit_state_mb
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_1578
	jmp	.label_1576
.label_1577:
	mov	rsi, qword ptr [rbx + 0x48]
	nop	
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_context_at
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	shl	rax, 8
	mov	rbp, rbp
	or	rax, r12
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + rax*8]
	lea	rsi, [rsi]
	jmp	.label_1576
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416230

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1587
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1584
.label_1587:
	cmp	qword ptr [rax + r14*8], 0
	lea	rsi, [rsi]
	je	.label_1582
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1586
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1580
	xor	eax, eax
	jmp	.label_1581
.label_1582:
	nop	
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_1584
.label_1586:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	xor	ebp, ebp
.label_1580:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	nop	
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1584
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1584:
	test	rbx, rbx
	je	.label_1583
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1585
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	check_subexp_matching_top
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_1581
	mov	rbp, rbp
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1581
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rsp, rsp
	call	transit_state_bkref
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [r15], ecx
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_1581
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	rax, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	jmp	.label_1581
.label_1583:
	mov	rsp, rsp
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1581
.label_1585:
	nop	
	mov	rax, rbx
.label_1581:
	add	rsp, 0x18
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4163f0

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r14, rdi
.label_1589:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	
.label_1590:
	lea	rsi, [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	mov	eax, 0
	jge	.label_1588
	mov	rbp, rbp
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	nop	
	je	.label_1590
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1588
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	je	.label_1589
.label_1588:
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416470

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	nop	
	mov	r14, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	nop	
	je	.label_1591
.label_1592:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x30
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0xf8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1593
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xe8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	nop	
	xor	eax, eax
.label_1593:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
.label_1591:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rbp, rbp
	shl	rsi, 4
	mov	rsp, rsp
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1593
	nop	
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	nop	
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1592
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416580

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x40], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	rbp, rbx
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1609
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
	nop	dword ptr [rax]
.label_1597:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	qword ptr [rcx], rdx
	je	.label_1596
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + 0x20], 0
	mov	rsp, rsp
	lea	rcx, [rcx + 0x28]
	lea	rdi, [rdi]
	jne	.label_1597
.label_1609:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0xe8], 0
	nop	
	jle	.label_1596
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	jmp	.label_1604
.label_1603:
	mov	rbp, rbp
	mov	r13, r15
	nop	
	jmp	.label_1608
	nop	dword ptr [rax + rax]
.label_1604:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	cmp	qword ptr [rcx + rax], rdx
	mov	rbp, rbp
	jne	.label_1594
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx]
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_1601
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_1606
.label_1601:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_1608
.label_1610:
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jg	.label_1603
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r8
	nop	
	mov	rdi, rbp
	nop	
	call	clean_state_log_if_needed
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1596
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1599
	nop	
.label_1606:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	mov	rbp, rbp
	sub	r12, r15
	nop	
	jle	.label_1600
	lea	rsi, [rsi]
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	jg	.label_1610
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_1599:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rax + r8]
	nop	
	lea	rsi, [rax + r15]
	mov	r13, r8
	nop	
	mov	rdx, r12
	call	memcmp
	nop	
	mov	r8, r13
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x30]
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jne	.label_1598
.label_1600:
	mov	rsp, rsp
	mov	r15, r8
	mov	rdi, rbp
	nop	
	mov	rsi, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	nop	
	call	get_subexp_sub
	cmp	eax, 1
	lea	rdi, [rdi]
	ja	.label_1596
	lea	rsi, [rsi]
	mov	r8, r15
	add	r8, r12
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_1606
	lea	rdi, [rdi]
	jmp	.label_1608
.label_1598:
	mov	r13, r15
	nop	
.label_1608:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jl	.label_1594
	test	r14, r14
	mov	rsp, rsp
	setg	al
	lea	rdi, [rdi]
	movzx	r13d, al
	lea	rdi, [rdi]
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_1594
	mov	rsp, rsp
	jmp	.label_1605
.label_1595:
	cmp	r8, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	jge	.label_1594
	lea	esi, [r8 + 1]
	lea	rsi, [rsi]
	mov	r14, r8
	mov	rbp, rbp
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	nop	
	jne	.label_1596
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	mov	r8, r14
	jmp	.label_1611
	nop	dword ptr [rax + rax]
.label_1605:
	cmp	r13, qword ptr [rbx]
	jle	.label_1607
	cmp	r8, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	jge	.label_1595
.label_1611:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_1594
	inc	r8
.label_1607:
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_1602
	mov	r15, r8
	mov	rsp, rsp
	add	rsi, 8
	nop	
	mov	ecx, 9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbp, rbp
	mov	rbx, rax
	cmp	rbx, -1
	mov	rsp, rsp
	je	.label_1612
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	mov	rdi, rbp
	jne	.label_1613
	mov	rbp, rbp
	mov	rsi, r13
	nop	
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1596
.label_1613:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	lea	rsi, [rsi]
	je	.label_1602
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	jne	.label_1596
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rbx, rdi
	mov	rsp, rsp
	call	match_ctx_add_sublast
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1596
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	ja	.label_1596
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_1612:
	nop	
	mov	r8, r15
.label_1602:
	nop	
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	nop	
	jl	.label_1605
	nop	word ptr cs:[rax + rax]
.label_1594:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	nop	
	cmp	rcx, qword ptr [rbp + 0xe8]
	mov	rsp, rsp
	jl	.label_1604
.label_1596:
	add	rsp, 0x58
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416a80

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1614
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_1615
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1615
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1620
	lea	rsi, [rsi]
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [r14], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1625
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	rbp, rbp
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_1618
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_1619:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rsi
	nop	dword ptr [rax]
.label_1617:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1618
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1622
	mov	rsp, rsp
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	jl	.label_1617
	jmp	.label_1618
.label_1622:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	mov	rsp, rsp
	movzx	esi, sil
	add	rsi, rbp
	lea	rdi, [rdi]
	cmp	r13, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	jl	.label_1619
	cmp	rcx, rax
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_1618:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	sub	rdx, r13
	jle	.label_1626
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	mov	rbp, rbp
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_1621
.label_1620:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
.label_1615:
	test	rax, rax
	jle	.label_1614
	mov	rdi, r14
	mov	rsi, r12
	lea	rdi, [rdi]
	jmp	.label_1624
.label_1614:
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1616
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1616
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
.label_1624:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1616:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1623
.label_1626:
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbp
	jle	.label_1621
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	nop	
	shl	rdx, 3
	call	memcpy
	lea	rsi, [rsi]
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1621:
	mov	qword ptr [r14 + 8], rbx
.label_1623:
	xor	eax, eax
.label_1625:
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416cf0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_1627
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_1630:
	lea	rdi, [rdi]
	lea	r10, [rax + r11]
	lea	rdi, [rdi]
	mov	rdx, r10
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	add	rdx, r10
	sar	rdx, 1
	mov	rbp, rbp
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	nop	
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	lea	rdi, [rdi]
	cmp	rax, r11
	lea	rdi, [rdi]
	jl	.label_1630
.label_1627:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_1628
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1629
.label_1628:
	mov	rax, -1
.label_1629:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416d90

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	nop	
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1631
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jl	.label_1632
.label_1631:
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1633
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	jge	.label_1633
.label_1632:
	lea	esi, [r14 + 1]
	nop	
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1634
.label_1633:
	mov	rsp, rsp
	xor	ebp, ebp
	cmp	r15, r14
	lea	rsi, [rsi]
	jge	.label_1634
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	nop	
	sub	rdx, r15
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc0], r14
.label_1634:
	mov	eax, ebp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416e50

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	rbp, rbp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	rsp, rsp
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_1635
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1635
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_1635:
	mov	rsp, rsp
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
	#Procedure 0x416f10

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_1636
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	xor	r11d, r11d
	nop	dword ptr [rax]
.label_1639:
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + r11*8]
	lea	rdi, [rdi]
	mov	r10, rax
	lea	rsi, [rsi]
	shl	r10, 4
	mov	rbp, rbp
	movzx	edi, byte ptr [r9 + r10 + 8]
	mov	rsp, rsp
	cmp	edi, ecx
	jne	.label_1637
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1638
.label_1637:
	mov	rsp, rsp
	inc	r11
	lea	rdi, [rdi]
	cmp	r11, qword ptr [rsi + 8]
	nop	
	jl	.label_1639
.label_1636:
	mov	rsp, rsp
	mov	rax, -1
.label_1638:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416f80

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	rsp, rsp
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsi + 8]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	mov	rbp, rbp
	cmp	rbp, rcx
	nop	
	jle	.label_1640
.label_1647:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	nop	
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	lea	rsi, [rsi]
	cmp	r14, r13
	jne	.label_1655
	mov	rbp, rbp
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	re_node_set_init_1
	nop	
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	lea	rdi, [rdi]
	test	r15d, r15d
	jne	.label_1644
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	nop	
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	je	.label_1650
	lea	rsi, [rsi]
	jmp	.label_1641
.label_1655:
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	rbp, qword ptr [rcx + r14*8]
	nop	
	test	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_1653
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1657
	lea	rsi, [rsi]
	mov	r13d, eax
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], 0
	nop	
	jmp	.label_1659
.label_1653:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_1646
.label_1657:
	mov	r13d, eax
	mov	rsp, rsp
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	nop	
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1644
.label_1659:
	lea	rsi, [rsi]
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	lea	rdi, [rdi]
	je	.label_1646
.label_1650:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_1658
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	jne	.label_1641
.label_1658:
	mov	rbp, rbp
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	nop	
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1654
	mov	eax, dword ptr [rsp + 0x74]
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1641
.label_1654:
	mov	rsp, rsp
	mov	rcx, rbx
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
.label_1646:
	cmp	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jge	.label_1643
	inc	r14
	mov	rbp, rbp
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	r12, r14
	xor	r13d, r13d
.label_1648:
	mov	rsp, rsp
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_1643
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_1651
	add	rsi, 8
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1641
.label_1651:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1645
	add	rbp, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1641
.label_1645:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	r14, rbx
	je	.label_1652
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	nop	
	mov	ecx, ebx
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1641
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	nop	
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1641
.label_1652:
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1649
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1641
.label_1649:
	mov	rbx, r14
	nop	
	inc	r13
	test	rbp, rbp
	mov	rbp, rbp
	mov	rcx, r15
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12*8], rbp
	lea	rdi, [rdi]
	mov	eax, 0
	cmovne	r13, rax
	lea	rdi, [rdi]
	cmp	r12, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	r12, [r12 + 1]
	nop	
	jl	.label_1648
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_1656
.label_1643:
	mov	rbx, rcx
.label_1656:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_1642
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1644
.label_1642:
	mov	rbp, rbp
	mov	r15d, 1
	lea	rsi, [rsi]
	jmp	.label_1644
.label_1641:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_1644:
	mov	rsp, rsp
	mov	eax, r15d
	lea	rdi, [rdi]
	add	rsp, 0x78
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1640:
	movabs	rdx, 0x7fffffffffffffff
	nop	
	sub	rdx, rbp
	mov	r15d, 0xc
	lea	rdi, [rdi]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jle	.label_1644
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1644
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	mov	rbp, rbp
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_1644
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	mov	rsp, rsp
	call	memset
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_1647
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417530

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r12, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1660
.label_1662:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x28
	lea	rsi, [rsi]
	call	rpl_calloc
	test	rax, rax
	je	.label_1661
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	qword ptr [rax], r15
	nop	
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1661:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_1660:
	lea	rax, [r12 + r12]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	test	rcx, rcx
	je	.label_1661
	mov	rbp, rbp
	lea	rax, [r12 + r12 + 1]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1662
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4175f0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_1666
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	shl	rcx, 4
	mov	rbp, rbp
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1665
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	nop	
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_1666:
	test	rax, rax
	jle	.label_1663
	lea	rdi, [rdi]
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	nop	
	jne	.label_1663
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1663:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	sub	r14, r15
	lea	rdi, [rdi]
	mov	cx, 0xffff
	mov	rbp, rbp
	cmovne	cx, ax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx*4]
	mov	rbp, rbp
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	nop	
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	nop	
	jge	.label_1664
	mov	rsp, rsp
	mov	dword ptr [rbx + 0xe0], r14d
.label_1664:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1665:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	call	free
	mov	eax, 0xc
	jmp	.label_1664
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4177f0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_alloc
	mov	r12d, eax
	nop	
	test	r12d, r12d
	jne	.label_1668
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1667
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1670:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	nop	
	lea	rbp, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1671
	mov	rdi, rbx
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	mov	rsp, rsp
	call	check_arrival_expand_ecl_sub
	lea	rsi, [rsi]
	jmp	.label_1669
	nop	dword ptr [rax]
.label_1671:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_1669:
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1672
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	jl	.label_1670
.label_1667:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1668
.label_1672:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1668:
	mov	eax, r12d
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417950

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	nop	
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	lea	rdi, [rdi]
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_1679
	nop	
	lea	rcx, [rax + rax*4]
	nop	
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_1684:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1678:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1675
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	mov	rsp, rsp
	sub	rbp, qword ptr [r15 - 0x10]
	mov	rsp, rsp
	cmp	rbp, rax
	jne	.label_1688
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	mov	ecx, 4
	mov	rbp, rbp
	test	rax, rax
	je	.label_1674
	lea	rsi, [rsi]
	mov	rbx, r14
	lea	rsi, [rsi]
	jmp	.label_1682
	nop	
.label_1688:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1673
	add	rbx, 8
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	re_node_set_contains
	nop	
	mov	ecx, 4
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1683
	mov	r14, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_1677
.label_1674:
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	r14d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	lea	rdi, [rdi]
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	mov	rbp, rbp
	or	eax, r14d
	mov	rsp, rsp
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, edx
	jne	.label_1686
.label_1680:
	mov	r14, rbx
	lea	rdi, [rdi]
	jmp	.label_1682
.label_1673:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_1685
	mov	rbp, rbp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1677
.label_1683:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x64], ebx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	nop	
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbp, rbp
	jne	.label_1687
	xor	al, 1
	mov	rsp, rsp
	jne	.label_1687
.label_1685:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	nop	
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	cmovne	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
.label_1677:
	mov	r13, qword ptr [rsp + 0x28]
.label_1682:
	test	ecx, ecx
	je	.label_1675
	cmp	ecx, 4
	nop	
	jne	.label_1676
.label_1675:
	lea	rdi, [rdi]
	cmp	byte ptr [r15], 0
	lea	rdi, [rdi]
	lea	r15, [r15 + 0x28]
	lea	rsi, [rsi]
	jne	.label_1678
	jmp	.label_1679
.label_1686:
	test	r14d, r14d
	cmovne	ebp, r14d
	lea	rsi, [rsi]
	test	edx, edx
	lea	rdi, [rdi]
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], ebp
	lea	rdi, [rdi]
	jmp	.label_1680
.label_1687:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	rsp, rsp
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x64], ecx
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1677
	nop	dword ptr [rax + rax]
.label_1676:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_1684
	jmp	.label_1681
.label_1679:
	mov	rsp, rsp
	xor	eax, eax
.label_1681:
	add	rsp, 0x68
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417d10

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	rbp, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1694
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1695:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	r13, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	lea	rdi, [rdi]
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	mov	rbp, rbp
	je	.label_1689
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rbp
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1690
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	nop	
	add	rbx, rbp
	nop	
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x30]
	je	.label_1693
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	lea	rsi, [rsi]
	call	re_node_set_merge
	nop	
	mov	rcx, r12
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1696
.label_1693:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_1692
	mov	rbp, rbp
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1697
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1697
	jmp	.label_1696
	nop	
.label_1690:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jne	.label_1697
	nop	word ptr cs:[rax + rax]
.label_1689:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	mov	rsp, rsp
	call	check_node_accept
	lea	rdi, [rdi]
	mov	rcx, rbx
	test	al, al
	je	.label_1698
.label_1697:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1692
.label_1698:
	inc	r15
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_1695
.label_1694:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_1691
.label_1692:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_1691
.label_1696:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
.label_1691:
	add	rsp, 0x58
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417f80

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	nop	
	jmp	.label_1699
	nop	
.label_1701:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	nop	
	mov	rbx, qword ptr [rax]
.label_1699:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1702
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	mov	rbp, rbp
	jne	.label_1704
	nop	
	cmp	qword ptr [rax + rcx], r14
	lea	rdi, [rdi]
	je	.label_1705
.label_1704:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_1700
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	lea	rdi, [rdi]
	cmp	rcx, 2
	lea	rdi, [rdi]
	je	.label_1703
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1701
	jmp	.label_1702
	nop	dword ptr [rax]
.label_1703:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	nop	
	test	eax, eax
	je	.label_1701
	jmp	.label_1700
.label_1705:
	cmp	r15d, 9
	mov	rsp, rsp
	jne	.label_1702
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_insert
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	je	.label_1700
.label_1702:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1700:
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4180d0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	nop	
	cmp	qword ptr [r12 + 8], 0
	lea	rdi, [rdi]
	je	.label_1711
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1709
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1708:
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	jne	.label_1706
	lea	rdi, [rdi]
	lea	rdi, [rbx + 8]
	nop	
	mov	rsi, r12
	nop	
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1710
.label_1706:
	nop	
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1708
.label_1709:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	nop	
	mov	rdx, r13
	lea	rdi, [rdi]
	call	create_ci_newstate
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	test	rbx, rbx
	je	.label_1707
.label_1710:
	mov	rbp, rbp
	mov	rax, rbx
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1711:
	mov	rbp, rbp
	mov	dword ptr [rdi], 0
	jmp	.label_1712
.label_1707:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1712:
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_1710
	nop	
	.section	.text
	.align	32
	#Procedure 0x4181d0

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	test	r12, r12
	je	.label_1715
	lea	rsi, [rsi]
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1717
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rdi, [rdi]
	jle	.label_1719
	xor	eax, eax
	nop	
.label_1718:
	mov	rbp, rbp
	mov	r8, qword ptr [r15]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_1713
	mov	rbp, rbp
	movzx	esi, dil
	shr	edi, 0x14
	mov	rbp, rbp
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	nop	
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	mov	rsp, rsp
	and	cl, 0xdf
	lea	rsi, [rsi]
	or	cl, bl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0x68], cl
	lea	rdi, [rdi]
	cmp	esi, 0xc
	je	.label_1721
	cmp	esi, 4
	je	.label_1720
	lea	rsi, [rsi]
	cmp	esi, 2
	nop	
	jne	.label_1722
	or	cl, 0x10
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0x68], cl
	nop	
	jmp	.label_1713
.label_1720:
	or	cl, 0x40
	nop	
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1713
.label_1722:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1713
.label_1721:
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0x68], 0x80
.label_1713:
	lea	rdi, [rdi]
	inc	rax
	nop	
	cmp	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jl	.label_1718
.label_1719:
	mov	rdi, r15
	mov	rsi, r12
	mov	rbp, rbp
	call	register_state
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r12
	mov	rsp, rsp
	jne	.label_1716
.label_1715:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_1717:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	jmp	.label_1714
.label_1716:
	mov	rsp, rsp
	mov	rdi, r12
	call	free_state
.label_1714:
	xor	eax, eax
	jmp	.label_1715
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418360

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	shl	rbp, 4
	lea	rdi, [rdi]
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	nop	
	je	.label_1745
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_string_char_size_at
	mov	rbp, rbp
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1738
	xor	eax, eax
	mov	rbp, rbp
	cmp	esi, 2
	jl	.label_1725
	test	byte ptr [rbx + 0xd8], 0x40
	lea	rdi, [rdi]
	jne	.label_1744
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_1725
.label_1744:
	cmp	byte ptr [rbx + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_1748
	mov	eax, esi
	jmp	.label_1725
.label_1738:
	mov	rsp, rsp
	cmp	esi, 1
	setg	cl
	nop	
	xor	eax, eax
	nop	
	cmp	r15d, 6
	jne	.label_1725
	test	cl, cl
	je	.label_1725
	mov	rbp, qword ptr [r14 + rbp]
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_1734
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_1734
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1740
.label_1734:
	mov	rdi, r13
	mov	ebx, esi
	nop	
	mov	rsi, r12
	lea	rdi, [rdi]
	call	re_string_wchar_at
	mov	esi, ebx
	mov	rbp, rbp
	mov	r14d, eax
.label_1740:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_1746
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1728:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1723
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp + 0x28]
	nop	
	jl	.label_1728
.label_1746:
	mov	r15d, esi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_1731
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1743:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	nop	
	mov	edi, r14d
	nop	
	call	iswctype
	test	eax, eax
	jne	.label_1729
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	nop	
	jl	.label_1743
.label_1731:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	rbp, rbp
	mov	esi, r15d
	lea	rdi, [rdi]
	jle	.label_1735
	mov	rax, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1732:
	nop	
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1737
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	lea	rdi, [rdi]
	jle	.label_1736
.label_1737:
	nop	
	inc	rdx
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp + 0x40]
	mov	rbp, rbp
	jl	.label_1732
	lea	rsi, [rsi]
	jmp	.label_1735
.label_1748:
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r12], 0
	lea	rdi, [rdi]
	je	.label_1725
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	jmp	.label_1725
.label_1745:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13 + 8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_1725
	lea	rsi, [rsi]
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1742
	xor	eax, eax
	jmp	.label_1725
.label_1729:
	mov	esi, r15d
.label_1723:
	mov	rbp, rbp
	mov	ecx, esi
.label_1735:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_1750
	mov	rsp, rsp
	mov	eax, ecx
	jmp	.label_1725
.label_1750:
	mov	rbp, rbp
	test	ecx, ecx
	mov	rbp, rbp
	mov	eax, 0
	jg	.label_1725
	mov	rbp, rbp
	test	esi, esi
	nop	
	mov	eax, 1
	cmovg	eax, esi
.label_1725:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1736:
	mov	ecx, esi
	lea	rdi, [rdi]
	jmp	.label_1735
.label_1742:
	mov	rsp, rsp
	mov	cl, byte ptr [r12 + rsi + 1]
	nop	
	movzx	edx, dl
	cmp	edx, 0xdf
	nop	
	ja	.label_1741
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	mov	eax, 0
	mov	rsp, rsp
	cmovs	eax, edx
	lea	rsi, [rsi]
	jmp	.label_1725
.label_1741:
	lea	rdi, [rdi]
	cmp	edx, 0xef
	ja	.label_1724
	mov	rbp, rbp
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_1726
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_1726
	nop	
	xor	eax, eax
	jmp	.label_1725
.label_1724:
	lea	rdi, [rdi]
	cmp	edx, 0xf7
	ja	.label_1739
	lea	rsi, [rsi]
	mov	eax, 4
	cmp	edx, 0xf0
	mov	rsp, rsp
	jne	.label_1726
	movzx	ecx, cl
	cmp	ecx, 0x90
	nop	
	jae	.label_1726
	xor	eax, eax
	jmp	.label_1725
.label_1739:
	cmp	edx, 0xfb
	mov	rsp, rsp
	ja	.label_1747
	mov	rsp, rsp
	mov	eax, 5
	lea	rdi, [rdi]
	cmp	edx, 0xf8
	jne	.label_1726
	mov	rsp, rsp
	movzx	ecx, cl
	cmp	ecx, 0x88
	nop	
	jae	.label_1726
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1725
.label_1747:
	cmp	edx, 0xfd
	ja	.label_1733
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rsp, rsp
	cmp	edx, 0xfc
	jne	.label_1726
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_1726
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1725
.label_1726:
	mov	ecx, eax
	mov	rbp, rbp
	lea	rdx, [rcx + r12]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	mov	rbp, rbp
	jle	.label_1751
	xor	eax, eax
	nop	
	jmp	.label_1725
.label_1751:
	nop	
	add	r12, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	edx, 1
.label_1730:
	nop	
	mov	bl, byte ptr [r12 + rdx]
	mov	rsp, rsp
	test	bl, bl
	lea	rsi, [rsi]
	jns	.label_1749
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_1727
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_1730
	jmp	.label_1725
.label_1733:
	xor	eax, eax
	jmp	.label_1725
.label_1749:
	xor	eax, eax
	jmp	.label_1725
.label_1727:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1725
	nop	
	.section	.text
	.align	32
	#Procedure 0x418740

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_1752
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1753]]
.label_2182:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	nop	
	je	.label_1756
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1752
.label_2183:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_1756
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1752
.label_2185:
	test	sil, sil
	js	.label_1754
.label_2184:
	lea	rsi, [rsi]
	test	sil, sil
	je	.label_1757
	nop	
	movzx	eax, sil
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1756
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	mov	rsp, rsp
	jne	.label_1756
	xor	eax, eax
	jmp	.label_1752
.label_1757:
	mov	rax, qword ptr [r15 + 0x98]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1755
.label_1756:
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	lea	rsi, [rsi]
	shr	ebx, 8
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	bx, 0x3ff
	mov	rbp, rbp
	je	.label_1752
	mov	ebp, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0xa0]
	nop	
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 1
	test	bl, 4
	je	.label_1758
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	jne	.label_1758
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1752
.label_1758:
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	test	dh, 8
	je	.label_1760
	test	ecx, ecx
	nop	
	je	.label_1760
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1752
.label_1754:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1752
.label_1760:
	lea	rdi, [rdi]
	test	dh, 0x20
	mov	rbp, rbp
	je	.label_1759
	mov	ecx, eax
	and	ecx, 2
	lea	rsi, [rsi]
	jne	.label_1759
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1752
.label_1755:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1752
.label_1759:
	mov	rbp, rbp
	and	eax, 8
	lea	rdi, [rdi]
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1752:
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4188f0
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418900

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x10], 0
	lea	rsi, [rsi]
	jle	.label_1761
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	
.label_1766:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	lea	rdi, [rdi]
	je	.label_1762
	mov	ebp, ebx
	mov	rbp, rbp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1765
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	lea	rdi, [rdi]
	je	.label_1769
	test	ecx, ecx
	nop	
	je	.label_1762
.label_1769:
	test	bh, 8
	je	.label_1770
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1762
.label_1770:
	lea	rdi, [rdi]
	test	bh, 0x20
	je	.label_1763
	mov	ecx, eax
	and	ecx, 2
	mov	rsp, rsp
	je	.label_1762
.label_1763:
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rsp, rsp
	jns	.label_1765
	and	eax, 8
	je	.label_1762
	nop	word ptr cs:[rax + rax]
.label_1765:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	test	eax, eax
	mov	rsp, rsp
	je	.label_1762
	mov	rbp, r12
	lea	rdi, [rdi]
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	nop	
	mov	ecx, dword ptr [r15 + 0xe0]
	lea	rsi, [rsi]
	cmp	ecx, eax
	mov	rbp, rbp
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	nop	
	mov	rsi, r12
	call	clean_state_log_if_needed
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x34], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1761
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1767
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1768
	mov	rbp, rbp
	jmp	.label_1761
.label_1767:
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1768:
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	nop	
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_1764
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	nop	
	call	free
.label_1764:
	mov	rax, qword ptr [r15 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	mov	rsp, rsp
	jne	.label_1762
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1761
	nop	word ptr cs:[rax + rax]
.label_1762:
	inc	r13
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	jl	.label_1766
.label_1761:
	mov	rbp, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418ba0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	mov	rbp, rbp
	je	.label_1807
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rbp - 0xb8], rbx
	lea	rsi, [rsi]
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_1776
	lea	rsi, [r12 + 1]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	call	re_node_set_alloc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_1786
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1786
	nop	
	lea	rax, [r12*8]
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	mov	rsp, rsp
	cmp	rax, 0xfbf
	mov	rsp, rsp
	ja	.label_1790
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	mov	rbp, rbp
	add	rdi, 0xf
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1794
.label_1790:
	call	malloc
	test	rax, rax
	je	.label_1786
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	nop	
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_1794:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	xor	r13d, r13d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_1775:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	nop	
	mov	rbx, r14
	jle	.label_1773
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	lea	r14, [rcx + rax*8 + 8]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1799:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	cmp	rax, -1
	nop	
	je	.label_1787
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1777
.label_1787:
	lea	rdi, [rdi]
	inc	r15
	cmp	r15, qword ptr [r14]
	lea	rsi, [rsi]
	jl	.label_1799
.label_1773:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	test	rax, rax
	jne	.label_1802
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1777
.label_1802:
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_1800
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rcx + rdx*8], rax
	nop	
	mov	r13, rdx
	jmp	.label_1808
	nop	dword ptr [rax]
.label_1800:
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rbp, rbp
	test	rax, rax
	jne	.label_1781
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1777
.label_1781:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	je	.label_1793
	mov	rsp, rsp
	mov	al, 1
	nop	
	cmp	dword ptr [rsi + 0xb4], 1
	jg	.label_1795
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
.label_1795:
	mov	qword ptr [rbp - 0xb0], rax
.label_1793:
	lea	rdi, [rdi]
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	mov	r13, rbx
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1805
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	lea	rsi, [rsi]
	mov	rsi, r14
	je	.label_1808
	jmp	.label_1777
.label_1805:
	mov	rsi, r14
.label_1808:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_merge
	lea	rdi, [rdi]
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_1775
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_1780
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	nop	
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	mov	rbp, rbp
	test	r15, r15
	mov	r11, r14
	mov	rsp, rsp
	je	.label_1777
	nop	
	mov	r13, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	lea	r10, [r13 - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	nop	
	xor	r9d, r9d
	nop	
.label_1779:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1801
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	esi, 1
	jmp	.label_1792
.label_1788:
	mov	rsp, rsp
	add	rax, 8
	test	qword ptr [rcx], rsi
	nop	
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_1788
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	mov	rsp, rsp
	je	.label_1806
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r12*8]
	nop	
	jmp	.label_1810
.label_1806:
	mov	rax, qword ptr [rax]
.label_1810:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_1811
	nop	word ptr cs:[rax + rax]
.label_1792:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_1788
.label_1811:
	add	rsi, rsi
	nop	
	shr	rdi, 1
	inc	rdx
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	jne	.label_1792
.label_1801:
	inc	r9
	mov	rbp, rbp
	add	r8, 0x40
	lea	rdi, [rdi]
	add	rbx, 8
	mov	rsp, rsp
	cmp	r9, 4
	lea	rdi, [rdi]
	jne	.label_1779
.label_1796:
	mov	rsp, rsp
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0xa
	nop	
	call	bitset_contain
	nop	
	test	al, al
	je	.label_1772
	test	r12, r12
	jle	.label_1772
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	lea	r15, [rax + 0x1800]
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1798:
	mov	esi, 0xa
	mov	rdi, r15
	nop	
	call	bitset_contain
	test	al, al
	jne	.label_1797
	nop	
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_1798
	nop	
	jmp	.label_1772
.label_1807:
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1785
.label_1776:
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1803
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1785
.label_1803:
	mov	edi, 8
	lea	rsi, [rsi]
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1785
.label_1797:
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	mov	rbp, rbp
	je	.label_1772
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_1772:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1782
	mov	rdi, r13
	call	free
.label_1782:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1784
	mov	rbx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1783:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r12
	jne	.label_1783
.label_1784:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	free
	mov	al, 1
	jmp	.label_1785
.label_1780:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], r15
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1777
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rsp, rsp
	xor	r8d, r8d
	xor	r9d, r9d
.label_1791:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rbp, rbp
	jne	.label_1789
	mov	rsp, rsp
	jmp	.label_1771
	nop	word ptr cs:[rax + rax]
.label_1774:
	add	rax, 8
	test	qword ptr [rdx], rcx
	nop	
	lea	rdx, [rdx + 0x20]
	je	.label_1774
	nop	
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	nop	
	jmp	.label_1778
	nop	dword ptr [rax + rax]
.label_1789:
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	jne	.label_1774
.label_1778:
	lea	rsi, [rsi]
	add	rcx, rcx
	mov	rbp, rbp
	shr	rsi, 1
	inc	rdi
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1789
.label_1771:
	inc	r9
	lea	rsi, [rsi]
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1791
	mov	rsp, rsp
	jmp	.label_1796
.label_1777:
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	nop	
	je	.label_1786
	call	free
.label_1786:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1804
	mov	rbp, rbp
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1809:
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r12
	nop	
	jne	.label_1809
.label_1804:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_1785:
	lea	rdi, [rdi]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419330

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xa8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rcx
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	nop	
	mov	rbp, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	mov	rbp, rbp
	jle	.label_1837
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1823:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	lea	rdi, [rdi]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_1839
	nop	
	movzx	esi, byte ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_set
	jmp	.label_1812
	nop	word ptr cs:[rax + rax]
.label_1839:
	cmp	ebp, 7
	je	.label_1815
	nop	
	cmp	ebp, 5
	je	.label_1817
	cmp	ebp, 3
	lea	rsi, [rsi]
	jne	.label_1816
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_merge
	jmp	.label_1812
.label_1815:
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_1825
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	mov	rbp, r8
	lea	rsi, [rsi]
	call	bitset_clear
	mov	r8, rbp
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1825:
	mov	rsp, rsp
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_1812
	mov	rbp, rbp
	jmp	.label_1840
.label_1817:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_1835
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_1833
.label_1835:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_1833:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_1847
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	lea	rsi, [rsi]
	call	bitset_clear
	mov	rsp, rsp
	mov	rax, rbp
.label_1847:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	rbp, rbp
	jns	.label_1812
.label_1840:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	bitset_clear
	nop	word ptr cs:[rax + rax]
.label_1812:
	shr	r13d, 8
	nop	
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_1822
	test	r13b, 0x20
	mov	rbp, rbp
	je	.label_1832
	nop	
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rbp, [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	bitset_contain
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_1827
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rdi, rbp
	mov	rbp, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1832:
	test	r13b, r13b
	js	.label_1843
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	je	.label_1844
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	jne	.label_1813
	test	byte ptr [rax + 2], 0x40
	jne	.label_1813
	mov	rbp, rbp
	mov	rbp, r8
	call	bitset_empty
	lea	rsi, [rsi]
	mov	r8, rbp
	jmp	.label_1816
.label_1813:
	cmp	dword ptr [r8 + 0xb4], 2
	lea	rsi, [rsi]
	mov	ecx, 0
	mov	rbp, rbp
	mov	edx, 0
	jl	.label_1819
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r8 + 0x78]
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1826:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	nop	
	inc	rsi
	lea	rsi, [rsi]
	cmp	rsi, 4
	mov	rbp, rbp
	jne	.label_1826
	mov	rbp, rbp
	jmp	.label_1814
	nop	word ptr [rax + rax]
.label_1819:
	nop	
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	lea	rsi, [rsi]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rcx, rsi
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rdi, [rdi]
	jne	.label_1819
.label_1814:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1816
.label_1844:
	mov	rsp, rsp
	test	r13b, 8
	nop	
	je	.label_1822
	lea	rsi, [rsi]
	cmp	ebp, 1
	jne	.label_1845
	test	byte ptr [rax + 2], 0x40
	jne	.label_1843
.label_1845:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_1829
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rsp, rsp
	xor	eax, eax
	xor	edx, edx
	nop	dword ptr [rax]
.label_1842:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	nop	
	not	rsi
	mov	rsp, rsp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	nop	
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rax, rsi
	inc	rdx
	nop	
	cmp	rdx, 4
	jne	.label_1842
	jmp	.label_1846
	nop	word ptr cs:[rax + rax]
.label_1829:
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	lea	rsi, [rsi]
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	lea	rsi, [rsi]
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1829
.label_1846:
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1827
	nop	dword ptr [rax]
.label_1822:
	test	r15, r15
	jle	.label_1838
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1830:
	cmp	ebp, 1
	mov	rcx, rbx
	nop	
	mov	eax, 0
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_1820
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	mov	rbp, rbp
	call	bitset_contain
	nop	
	test	al, al
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_1824
	nop	word ptr cs:[rax + rax]
.label_1820:
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	lea	rsi, [rsi]
	jne	.label_1820
	test	rax, rax
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	mov	eax, 0
	mov	ecx, 0
	je	.label_1824
	nop	word ptr cs:[rax + rax]
.label_1831:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	nop	
	not	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	mov	rbp, rbp
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	rbp, rbp
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	mov	rbp, rbp
	or	rbp, rsi
	nop	
	inc	rcx
	nop	
	cmp	rcx, 4
	jne	.label_1831
	mov	rbp, rbp
	test	rax, rax
	je	.label_1841
	nop	
	mov	rdi, r15
	shl	rdi, 5
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	lea	rdi, [rdi]
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	mov	rbp, rbp
	call	bitset_copy
	mov	rbp, rbp
	lea	rax, [r15 + r15*2]
	lea	rsi, [rsi]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	mov	rbp, rbp
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1818
	inc	r15
.label_1841:
	lea	rax, [r12 + r12*2]
	nop	
	lea	rdi, [r14 + rax*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_1818
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1836
.label_1824:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	lea	rdi, [rdi]
	jl	.label_1830
	jmp	.label_1836
.label_1816:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_1821
.label_1843:
	nop	
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	lea	rdi, [rdi]
	jmp	.label_1827
.label_1838:
	xor	r12d, r12d
.label_1836:
	lea	rsi, [rsi]
	cmp	r12, r15
	nop	
	jne	.label_1827
	mov	rdi, r15
	mov	rbp, rbp
	shl	rdi, 5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rsp, rsp
	call	bitset_copy
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax*8]
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_1818
	inc	r15
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1821
	nop	word ptr [rax + rax]
.label_1827:
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_1821:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jl	.label_1823
	jmp	.label_1837
.label_1818:
	mov	rbp, rbp
	test	r15, r15
	jle	.label_1828
	add	r14, 0x10
	nop	word ptr cs:[rax + rax]
.label_1834:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	nop	
	add	r14, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_1834
.label_1828:
	mov	r15, -1
.label_1837:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 0xa8
	pop	rbx
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
	#Procedure 0x419ab0

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419ac0

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1848:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + rax*8]
	lea	rsi, [rsi]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	mov	rsp, rsp
	jne	.label_1848
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419af0

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdi], -1
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419b20

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	lea	rdi, [rdi]
	mov	rax, -2
	mov	cl, sil
	lea	rsi, [rsi]
	rol	rax, cl
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rsi
	mov	rbp, rbp
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419b60

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	nop	
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b70

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_1852
	mov	rsp, rsp
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	nop	
	je	.label_1851
	mov	eax, edx
	nop	
	and	eax, 1
	jne	.label_1849
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 4
	je	.label_1849
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1852:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1849:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1850
	lea	rdi, [rdi]
	mov	eax, ecx
	and	eax, 8
	je	.label_1850
	xor	eax, eax
	ret	
.label_1850:
	nop	
	test	dl, 2
	mov	rsp, rsp
	jne	.label_1853
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 0x20
	lea	rdi, [rdi]
	je	.label_1853
	xor	eax, eax
	mov	rbp, rbp
	ret	
.label_1853:
	nop	
	and	edx, 8
	mov	rsp, rsp
	test	cl, cl
	setns	al
	lea	rdi, [rdi]
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_1851:
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419c10

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	rsp, rsp
	mov	qword ptr [rdi], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], r8
	nop	
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x30], 0
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419c50

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_1
	mov	ebp, eax
	nop	
	test	ebp, ebp
	jne	.label_1854
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	update_cur_sifted_state
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1857
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_1856:
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1855
	nop	
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + rbx*8], 0
	lea	rdi, [rdi]
	je	.label_1859
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1861
	nop	dword ptr [rax + rax]
.label_1859:
	inc	r13d
.label_1861:
	lea	rdi, [rdi]
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1858
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rdi, [rdi]
	lea	rbx, [rbx - 1]
	lea	rsi, [rsi]
	je	.label_1860
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, r12
	lea	rsi, [rsi]
	call	build_sifted_states
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1857
.label_1860:
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_1856
	mov	rbp, rbp
	jmp	.label_1857
.label_1855:
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_1857
.label_1858:
	nop	
	shl	rbx, 3
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1857:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1854:
	mov	eax, ebp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419dc0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	nop	
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	r15, rdx
	nop	
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	mov	rsp, rsp
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1862
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1864:
	nop	
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	nop	
	je	.label_1863
	test	rax, rax
	je	.label_1865
	mov	rsi, qword ptr [rbx + rbp*8]
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + rbp*8]
	lea	rdi, [rdi]
	add	rdx, 8
	mov	rsp, rsp
	mov	rdi, r13
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1862
	lea	rdi, [rsp + 0x24]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_1865
	jmp	.label_1862
	nop	word ptr cs:[rax + rax]
.label_1863:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rbp*8], rax
.label_1865:
	mov	rsp, rsp
	inc	rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_1864
.label_1862:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419ed0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	nop	
	mov	r15, rdx
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	mov	rdx, qword ptr [rbx + 0x98]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	lea	rdi, [rdi]
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	je	.label_1869
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1867
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	add_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1866
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_1867
	nop	
	lea	rcx, [rsi + 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, r12
	mov	r9, r15
	lea	rdi, [rdi]
	call	check_subexp_limits
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1866
.label_1867:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r13
	call	re_acquire_state
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1870
	lea	rsi, [rsi]
	jmp	.label_1866
.label_1869:
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rax + r15*8], 0
.label_1870:
	test	r14, r14
	je	.label_1868
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1868
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1866
.label_1868:
	xor	eax, eax
.label_1866:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a060

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	nop	
	mov	r14, qword ptr [rax + rbx*8]
	nop	
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1871
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	lea	rax, [rax + 0x20]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1875:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	nop	
	mov	r13, rbp
	shl	r13, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r13 + 0xa], 0x10
	lea	rdi, [rdi]
	je	.label_1872
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1873
.label_1872:
	mov	rbp, rbp
	add	r13, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	check_node_accept
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1876
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1876
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	call	re_node_set_contains
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 1
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1876
.label_1873:
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1874
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_1876
.label_1874:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	nop	
	test	cl, cl
	je	.label_1871
.label_1876:
	inc	r15
	mov	rbp, rbp
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	jl	.label_1875
.label_1871:
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a240

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], 0
	nop	
	lea	rdi, [rsp + 4]
	nop	
	mov	rsi, r15
	nop	
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1878
	mov	rax, r12
	lea	rsi, [rsi]
	add	r12, 0x38
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1880
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	mov	rbp, rbp
	call	re_node_set_alloc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1878
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1880
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1879:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1877
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1879
	mov	dword ptr [rsp + 4], eax
.label_1880:
	mov	rdi, rbx
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	r13d, eax
.label_1878:
	mov	rsp, rsp
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1877:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1878
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a360

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	r11, rdi
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1883
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1895:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	lea	rdi, [rdi]
	jge	.label_1885
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_1885
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	jne	.label_1896
	nop	
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1885
	lea	rdi, [rdi]
	mov	r12, r8
	mov	rsp, rsp
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, -1
	nop	
.label_1894:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r10 + rdi*8]
	lea	rsi, [rsi]
	mov	rbp, rbx
	shl	rbp, 4
	nop	
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_1881
	mov	rsp, rsp
	cmp	eax, 8
	mov	rsp, rsp
	jne	.label_1889
	cmp	r13, qword ptr [rcx + rbp]
	mov	rbp, rbp
	je	.label_1884
	mov	rsp, rsp
	mov	rbx, rsi
.label_1884:
	mov	rsi, rbx
	lea	rsi, [rsi]
	jmp	.label_1889
	nop	
.label_1881:
	mov	rax, qword ptr [r11]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + rbp]
	lea	rsi, [rsi]
	je	.label_1892
	mov	rbx, r14
.label_1892:
	lea	rdi, [rdi]
	mov	r14, rbx
.label_1889:
	inc	rdi
	nop	
	cmp	rdi, r8
	jl	.label_1894
	mov	rbp, rbp
	mov	r13, r14
	test	rsi, rsi
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	js	.label_1886
	mov	rsp, rsp
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	nop	
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r11, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1883
.label_1886:
	mov	rbp, rbp
	test	r13, r13
	mov	rsp, rsp
	js	.label_1885
	cmp	qword ptr [rdx + 8], 0
	mov	rbp, rbp
	mov	ebp, 0
	jg	.label_1888
	mov	rsp, rsp
	jmp	.label_1885
.label_1896:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	mov	rbp, rbp
	jle	.label_1885
	nop	word ptr cs:[rax + rax]
.label_1882:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	nop	
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	mov	rbp, rbp
	jne	.label_1890
	cmp	r13, qword ptr [rax + rcx]
	mov	rbp, rbp
	jne	.label_1890
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	lea	rsi, [rsi]
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	lea	rsi, [rsi]
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1883
.label_1890:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1882
	mov	rbp, rbp
	jmp	.label_1885
.label_1893:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 8]
	nop	
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_1883
	dec	rbp
	mov	rsp, rsp
	jmp	.label_1891
	nop	
.label_1888:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	r12, r11
	call	re_node_set_contains
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1887
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1893
.label_1887:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_1891:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1888
	nop	
.label_1885:
	inc	r15
	xor	eax, eax
	mov	rsp, rsp
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1895
.label_1883:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a710

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rdx
	nop	
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rbp
	lea	rdi, [rdi]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_1898
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], 0
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1898
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax + rax]
.label_1909:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1907
	lea	rsi, [rsi]
	cmp	eax, 4
	jne	.label_1900
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1905
	mov	rbp, rbp
	jmp	.label_1900
	nop	word ptr cs:[rax + rax]
.label_1907:
	nop	
	cmp	eax, 4
	jne	.label_1900
.label_1905:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	nop	
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	add	rbp, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	nop	
.label_1903:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp], r15
	jne	.label_1897
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	mov	rbp, rbp
	sub	rbx, rax
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_1899
	mov	rax, qword ptr [rsi + 0x28]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	jmp	.label_1904
	nop	
.label_1899:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_1904:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1897
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1897
	nop	
	mov	r12, qword ptr [rax]
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1908
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	nop	
	mov	r9, rbx
	mov	rbp, rbp
	call	check_dst_limits
	nop	
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_1897
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_1902
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x30]
	nop	
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	rdx, rbx
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	jne	.label_1901
.label_1902:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1901
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	nop	
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	rsp, rsp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1901
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1906
	lea	rdi, [rdi]
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	merge_state_array
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1901
.label_1906:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	mov	rsp, rsp
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	nop	
	jmp	.label_1910
.label_1908:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
.label_1910:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	dword ptr [rax + rax]
.label_1897:
	inc	r14
	add	r13, 0x28
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x20], 0
	mov	rbp, rbp
	lea	rbp, [rbp + 0x28]
	jne	.label_1903
.label_1900:
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_1909
.label_1901:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x60], 0
	nop	
	je	.label_1898
	mov	rdi, qword ptr [rsp + 0x90]
	nop	
	call	free
.label_1898:
	lea	rdi, [rdi]
	mov	eax, r12d
	lea	rsi, [rsi]
	add	rsp, 0x98
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab60

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1917
	mov	rcx, qword ptr [r14 + 8]
	nop	
	test	rcx, rcx
	je	.label_1917
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	mov	rsp, rsp
	jle	.label_1922
	add	rbx, rcx
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_1917
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_1922:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	mov	rsp, rsp
	add	r8, r9
	lea	rsi, [rsi]
	dec	rcx
.label_1924:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_1912:
	lea	rsi, [rsi]
	lea	r9, [rdi - 1]
	nop	
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	word ptr cs:[rax + rax]
.label_1927:
	nop	
	cmp	qword ptr [rax + rdx*8], rsi
	lea	rdi, [rdi]
	je	.label_1925
	jl	.label_1926
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rdx, [rdx - 1]
	nop	
	jg	.label_1927
	lea	rsi, [rsi]
	jmp	.label_1921
	nop	word ptr cs:[rax + rax]
.label_1926:
	mov	rsp, rsp
	cmp	rdi, 2
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	jge	.label_1912
	nop	
	jmp	.label_1921
	nop	word ptr cs:[rax + rax]
.label_1925:
	nop	
	test	rcx, rcx
	js	.label_1911
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1923:
	lea	rsi, [rsi]
	cmp	qword ptr [rax + rcx*8], rsi
	lea	rdi, [rdi]
	jle	.label_1913
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1923
	mov	rsp, rsp
	jmp	.label_1911
.label_1913:
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_1911
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	je	.label_1919
	nop	dword ptr [rax]
.label_1911:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	lea	rdi, [rdi]
	dec	r8
.label_1919:
	test	rdx, rdx
	jle	.label_1921
	cmp	rdi, 2
	jge	.label_1924
.label_1921:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	lea	rsi, [rsi]
	mov	rdx, r11
	lea	rdi, [rdi]
	sub	rdx, r8
	lea	r9, [rdx + 1]
	nop	
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1914
	test	rdx, rdx
	js	.label_1914
	add	r10, rax
	mov	rsp, rsp
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	nop	
	xor	edx, edx
.label_1920:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rax, [rdi + r10*8]
	nop	word ptr [rax + rax]
.label_1916:
	mov	rsi, qword ptr [rdi + r11*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_1918
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	lea	rcx, [rcx - 1]
	jg	.label_1916
	jmp	.label_1914
.label_1918:
	dec	r11
	nop	
	dec	r10
	mov	rbp, rbp
	dec	r9
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_1920
	jmp	.label_1915
.label_1914:
	lea	rsi, [rsi]
	mov	rdx, r9
.label_1915:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1917:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ade0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rsi*2]
	nop	
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	nop	
	mov	qword ptr [rsp + 0x40], 0
	mov	rsp, rsp
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1934
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1931:
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12*8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_1930
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	mov	rsp, rsp
	shl	rdx, 4
	lea	rsi, [rsi]
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1930
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	rbp, rbp
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	mov	rsp, rsp
	jl	.label_1935
	mov	rbp, qword ptr [rax + 8]
.label_1935:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1936
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1932
.label_1936:
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_1930
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_1930
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbp
	nop	
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1930
.label_1932:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	nop	
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	lea	rdi, [rdi]
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_1937
	nop	dword ptr [rax]
.label_1930:
	mov	rbp, rbp
	inc	r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	nop	
	cmp	r12, rax
	jl	.label_1931
	lea	rdi, [rdi]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_1934
	xor	ebx, ebx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	
.label_1928:
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1933
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbp
	call	re_node_set_contains
	mov	rbp, rbp
	lea	rsi, [rax - 1]
	lea	rdi, [rdi]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_1933:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_1928
.label_1934:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	xor	ebp, ebp
.label_1929:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1937:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rbp, rbp
	jmp	.label_1929
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b050

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	qword ptr [rsp + 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1939
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1940:
	nop	
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x20]
	nop	
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	nop	
	mov	rdi, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_1938
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_1940
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1938
.label_1939:
	lea	rdi, [rdi]
	xor	eax, eax
.label_1938:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b190

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	mov	r10, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rsi + rsi*4]
	mov	rbp, rbp
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	r11, r8
	jg	.label_1941
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_1941
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	lea	rdi, [rdi]
	je	.label_1941
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1941:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b200

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1942
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1949:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	nop	
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_1950
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_1955
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_1945
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_1945
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_1948:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_1947
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_1946
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_1947
.label_1946:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_1952
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1944
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_1951
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_1947
	lea	rdi, [rdi]
	jmp	.label_1943
.label_1944:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xf], 0
	mov	rsp, rsp
	je	.label_1943
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	nop	
	je	.label_1947
	mov	rbp, rbp
	jmp	.label_1951
.label_1943:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_1947:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_1948
	jmp	.label_1945
	nop	word ptr [rax + rax]
.label_1950:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1945
	xor	eax, eax
	jmp	.label_1954
	nop	dword ptr [rax + rax]
.label_1955:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 4], 0
	nop	
	je	.label_1945
	mov	eax, 0xffffffff
.label_1954:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_1951
.label_1945:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_1949
.label_1942:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_1953
.label_1952:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_1953:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_1951:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b4b0

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r13, r8
	mov	rbp, rbp
	mov	rbp, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jle	.label_1956
	lea	rsi, [rsi]
	movsxd	rax, ebx
	add	rax, rbp
	mov	rbp, rbp
	cmp	rax, r13
	jg	.label_1956
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1957
	add	rdi, 8
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1956
.label_1957:
	mov	rbp, rbp
	xor	ebx, ebx
.label_1956:
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b570

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	test	r14, r14
	je	.label_1958
	nop	
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_1959
	lea	rdi, [rdi]
	xor	r15d, r15d
.label_1960:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1960
.label_1959:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	jmp	free
.label_1958:
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5f0

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	shl	rcx, 4
	mov	rbp, rbp
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	lea	rsi, [rsi]
	movzx	edi, cl
	cmp	edi, 9
	nop	
	je	.label_1963
	cmp	edi, 8
	lea	rsi, [rsi]
	jne	.label_1962
	nop	
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1962
	lea	rsi, [rsi]
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1963:
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r9
	mov	rbp, rbp
	jge	.label_1962
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1964
	nop	
	mov	qword ptr [rsi + rax + 8], r8
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rdx
	nop	
	mov	rdx, r9
	mov	rbp, rbp
	jmp	memcpy
.label_1964:
	test	ecx, 0x80000
	je	.label_1961
	cmp	qword ptr [rdx + rax], -1
	mov	rbp, rbp
	je	.label_1961
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	mov	rdx, r9
	nop	
	jmp	memcpy
.label_1961:
	mov	qword ptr [rsi + rax + 8], r8
.label_1962:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b6c0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, r8
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	jle	.label_1965
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	mov	rbp, rbp
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	ret	
.label_1965:
	mov	edi, OFFSET FLAT:.str.26_0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b7a0

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r13, r8
	mov	rsp, rsp
	mov	rbx, rcx
	nop	
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	r14, r13
	mov	rsp, rsp
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	mov	rsp, rsp
	test	cl, 8
	jne	.label_1970
	test	ecx, 0x100000
	nop	
	jne	.label_1976
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_1974
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1969
	cmp	rax, -1
	mov	r12, -1
	lea	rdi, [rdi]
	je	.label_1968
	cmp	rdi, -1
	mov	rbp, rbp
	je	.label_1968
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rsp, rsp
	je	.label_1969
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, rbx
	jl	.label_1968
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jne	.label_1968
.label_1969:
	mov	rsp, rsp
	cmp	rax, rdi
	mov	rsp, rsp
	jne	.label_1973
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1968
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	lea	rdi, [rdi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1968
	jmp	.label_1973
.label_1970:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	r14, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1968
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_1968
	add	r14, 8
	mov	rbp, rbp
	lea	r15, [rbx + rax*8 + 8]
	mov	rsp, rsp
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	rsp, rsp
	mov	r12, -1
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1966:
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1975
	cmp	r12, -1
	lea	rdi, [rdi]
	jne	.label_1977
	mov	r12, rbx
.label_1975:
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r15]
	jl	.label_1966
	mov	rbp, rbp
	jmp	.label_1968
.label_1976:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	nop	
	movsxd	rbx, eax
.label_1973:
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_1972
.label_1974:
	mov	rbp, rbp
	add	r14, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_1968
.label_1972:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	add	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1967
	mov	rsp, rsp
	mov	r12, -1
	nop	
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_1968
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	nop	
	test	rdi, rdi
	nop	
	je	.label_1968
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r14
	nop	
	call	re_node_set_contains
	nop	
	test	rax, rax
	je	.label_1968
.label_1967:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	lea	rdi, [rdi]
	jmp	.label_1968
.label_1977:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1971
	lea	rdi, [rdi]
	mov	r9, rbp
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1968
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	call	push_fail_stack
	mov	rbp, rbp
	mov	rbx, -2
	test	eax, eax
	je	.label_1968
.label_1971:
	mov	r12, rbx
.label_1968:
	nop	
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bba0

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jne	.label_1978
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1979
	shl	qword ptr [rbx + 8], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], rax
.label_1978:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	shl	rcx, 4
	nop	
	lea	r12, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax + r12 + 8], r13
	mov	rsp, rsp
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + r12 + 0x10]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1979
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	nop	
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	re_node_set_init_copy
.label_1979:
	mov	eax, 0xc
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bcf0
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
	#Procedure 0x41bd20
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
	#Procedure 0x41bd40
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bd50
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
	#Procedure 0x41bd60
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
	#Procedure 0x41bd80
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
	#Procedure 0x41bd90
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
	#Procedure 0x41bda0
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
	#Procedure 0x41bdb0
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
	#Procedure 0x41bdc0
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
	#Procedure 0x41bdf0
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
	#Procedure 0x41be10

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
	#Procedure 0x41be20
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
	#Procedure 0x41be40

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
	#Procedure 0x41be50
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
	#Procedure 0x41be60

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	ebp, ebp
	cmp	rbx, r14
	mov	rsp, rsp
	je	.label_1989
	nop	dword ptr [rax]
.label_1990:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbx]
	mov	rbp, rbp
	call	c_tolower
	mov	rbp, rbp
	mov	ebp, eax
	lea	rsi, [rsi]
	movzx	edi, byte ptr [r14]
	call	c_tolower
	lea	rsi, [rsi]
	and	ebp, 0xff
	mov	rbp, rbp
	je	.label_1991
	inc	rbx
	inc	r14
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	ebp, ecx
	je	.label_1990
.label_1991:
	movzx	eax, al
	lea	rsi, [rsi]
	sub	ebp, eax
.label_1989:
	mov	eax, ebp
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bee0

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
	je	.label_1992
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1993
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_1993
.label_1992:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1993
	test	cl, cl
	jne	.label_1993
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_1993:
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
	.align	32
	#Procedure 0x41bf80

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
	je	.label_1995
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1994
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1996
.label_1994:
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1995
.label_1996:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1995:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41bfd0

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
	mov	eax, OFFSET FLAT:.str.1_9
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1997
	nop	
	mov	rax, rcx
.label_1997:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c010

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	mov	rbp, rbp
	jne	.label_2003
	cmp	byte ptr [rbx + 8], 0
	lea	rdi, [rdi]
	jne	.label_2005
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	nop	
	call	is_basic
	test	al, al
	mov	rbp, rbp
	je	.label_2000
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	nop	
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	mov	rbp, rbp
	jmp	.label_2002
.label_2000:
	lea	rsi, [rsi]
	lea	rdi, [rbx + 0xc]
	call	mbsinit
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_2006
	mov	byte ptr [rbx + 8], 1
.label_2005:
	lea	r15, [rbx + 0x2c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x18]
	nop	
	sub	rdx, rsi
	lea	r14, [rbx + 0xc]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_2007
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1999
	cmp	rax, -1
	jne	.label_2001
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_2002
.label_2007:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2002
.label_1999:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_1998
	cmp	dword ptr [r15], 0
	jne	.label_2004
.label_2001:
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	je	.label_2002
	mov	byte ptr [rbx + 8], 0
.label_2002:
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x14], 1
.label_2003:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2006:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_10
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x8e
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_1998:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.2_4
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rbp, rbp
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	mov	rsp, rsp
	call	__assert_fail
.label_2004:
	mov	edi, OFFSET FLAT:.str.3_3
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_10
	lea	rdi, [rdi]
	mov	edx, 0xaa
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c1b0
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	mov	rbp, rbp
	add	qword ptr [rdi + 0x18], rsi
	lea	rsi, [rsi]
	add	qword ptr [rdi], rsi
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c1c0
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi], rax
	mov	rbp, rbp
	mov	al, byte ptr [rsi + 8]
	test	al, al
	mov	byte ptr [rdi + 8], al
	mov	rbp, rbp
	je	.label_2008
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + 0xc]
	nop	
	mov	qword ptr [rdi + 0xc], rax
	lea	rsi, [rsi]
	jmp	.label_2009
.label_2008:
	mov	qword ptr [rdi + 0xc], 0
.label_2009:
	mov	al, byte ptr [rsi + 0x14]
	mov	rbp, rbp
	mov	byte ptr [rdi + 0x14], al
	lea	rsi, [rsi]
	add	rdi, 0x18
	nop	
	add	rsi, 0x18
	jmp	mb_copy
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c210

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x168
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_2025
	mov	qword ptr [rsp + 0x138], rbp
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x128], 0
	mov	qword ptr [rsp + 0x12c], 0
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x134], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x128]
	nop	
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x148], 0
	lea	rdi, [rdi]
	je	.label_2038
	mov	eax, dword ptr [rsp + 0x14c]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_2041
.label_2038:
	mov	qword ptr [rsp + 0xf8], rbp
	mov	qword ptr [rsp], rbp
	mov	byte ptr [rsp + 0xe8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	mov	qword ptr [rsp + 0xb8], r13
	mov	byte ptr [rsp + 0xa8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xac], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xb4], 0
	lea	rdi, [rsp + 0xa8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	nop	
	cmp	byte ptr [rsp + 0xc8], 0
	lea	rdi, [rdi]
	je	.label_2015
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	nop	
	je	.label_2012
.label_2015:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 8], rax
	nop	
	lea	rbx, [rsp + 0xe8]
	xor	r12d, r12d
	xor	r15d, r15d
	xor	ebp, ebp
.label_2011:
	lea	rdi, [rdi]
	mov	r14, r15
	mov	rsp, rsp
	cmp	rbp, 0xa
	lea	rsi, [rsi]
	jb	.label_2029
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_2033
	lea	rax, [rbp + rbp*4]
	cmp	r14, rax
	jb	.label_2023
	nop	
	cmp	r14, r12
	mov	rbp, rbp
	je	.label_2039
	sub	r12, r14
	nop	word ptr cs:[rax + rax]
.label_2044:
	mov	rdi, rbx
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x108], 0
	lea	rsi, [rsi]
	je	.label_2028
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x10c]
	test	eax, eax
	je	.label_2039
.label_2028:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x100]
	mov	rbp, rbp
	add	qword ptr [rsp + 0xf8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xf4], 0
	inc	r12
	lea	rsi, [rsi]
	jne	.label_2044
.label_2039:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x108], 0
	lea	rdi, [rdi]
	je	.label_2013
	mov	eax, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	mov	r12, r14
	lea	rdi, [rdi]
	jne	.label_2018
	mov	rdi, r13
	mov	rsi, qword ptr [rsp]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x60]
	call	knuth_morris_pratt_multibyte
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2026
	mov	dword ptr [rsp + 0x14], 0
.label_2013:
	mov	r12, r14
	mov	rsp, rsp
	jmp	.label_2018
.label_2023:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_2018
.label_2029:
	mov	qword ptr [rsp + 0x18], rbp
	nop	
	jmp	.label_2018
.label_2033:
	mov	qword ptr [rsp + 0x18], rbp
	nop	
.label_2018:
	lea	rsi, [rsi]
	lea	r15, [r14 + 1]
	cmp	byte ptr [rsp + 0xc8], 0
	je	.label_2035
	mov	al, byte ptr [rsp + 0x148]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_2035
	mov	eax, dword ptr [rsp + 0xcc]
	cmp	eax, dword ptr [rsp + 0x14c]
	nop	
	je	.label_2043
	jmp	.label_2022
	nop	dword ptr [rax + rax]
.label_2035:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsp + 0x140]
	nop	
	jne	.label_2022
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x138]
	call	memcmp
	test	eax, eax
	jne	.label_2022
.label_2043:
	movups	xmm0, xmmword ptr [rsp + 0xa8]
	movups	xmm1, xmmword ptr [rsp + 0xb8]
	nop	
	movups	xmm2, xmmword ptr [rsp + 0xc8]
	movups	xmm3, xmmword ptr [rsp + 0xd8]
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x70], rax
	nop	
	mov	byte ptr [rsp + 0x6c], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x20], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	nop	
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x40], 0
	lea	rsi, [rsi]
	je	.label_2034
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2037
.label_2034:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_2042
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_2036
.label_2042:
	add	r14, 2
	lea	rdi, [rdi]
	mov	r15, r14
	nop	dword ptr [rax]
.label_2017:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x60]
	mov	rsp, rsp
	call	mbuiter_multi_next
	mov	cl, byte ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x84]
	test	cl, cl
	je	.label_2046
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2012
.label_2046:
	test	cl, cl
	sete	cl
	cmp	byte ptr [rsp + 0x40], 0
	mov	rsp, rsp
	je	.label_2014
	mov	rbp, rbp
	test	cl, cl
	jne	.label_2014
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rsp + 0x44]
	mov	rbp, rbp
	je	.label_2019
	nop	
	jmp	.label_2022
	nop	dword ptr [rax + rax]
.label_2014:
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rsp + 0x38]
	jne	.label_2022
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	call	memcmp
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2022
.label_2019:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	inc	r15
	nop	
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_2017
	mov	eax, dword ptr [rsp + 0x44]
	nop	
	test	eax, eax
	jne	.label_2017
	jmp	.label_2036
	nop	word ptr cs:[rax + rax]
.label_2022:
	mov	rbp, qword ptr [rsp + 0x18]
	inc	rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xc0]
	add	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xb4], 0
	nop	
	lea	rdi, [rsp + 0xa8]
	call	mbuiter_multi_next
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc8], 0
	je	.label_2011
	mov	eax, dword ptr [rsp + 0xcc]
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_2011
	jmp	.label_2012
.label_2025:
	mov	rbp, rbp
	mov	cl, byte ptr [rbp]
	nop	
	test	cl, cl
	mov	rsp, rsp
	je	.label_2020
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [r13], 0
	mov	rbp, rbp
	je	.label_2024
	mov	sil, 1
	xor	edi, edi
	nop	
	movzx	eax, cl
	mov	dword ptr [rsp + 0x18], eax
	mov	rsp, rsp
	mov	r14, rbp
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	r15d, r15d
.label_2032:
	cmp	r15, 0xa
	jb	.label_2031
	nop	
	mov	al, sil
	and	al, 1
	je	.label_2031
	mov	rbp, rbp
	lea	rax, [r15 + r15*4]
	cmp	r12, rax
	mov	rsp, rsp
	jb	.label_2031
	mov	rbx, rsi
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_2040
	mov	rsp, rsp
	mov	rsi, r12
	sub	rsi, rdi
	mov	rdi, r14
	mov	rbp, rbp
	call	strnlen
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + rax], 0
	mov	rdi, r12
	mov	rsi, rbx
	je	.label_2040
	lea	rdi, [rdi]
	add	r14, rax
	mov	rdi, r12
	mov	rsp, rsp
	jne	.label_2031
.label_2040:
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rdi, rbp
	call	strlen
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rax
	nop	
	lea	rcx, [rsp + 0x128]
	lea	rsi, [rsi]
	call	knuth_morris_pratt
	mov	rdi, rbx
	xor	esi, esi
	lea	rdi, [rdi]
	test	al, al
	nop	
	mov	r14d, 0
	jne	.label_2010
.label_2031:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13]
	cmp	eax, dword ptr [rsp + 0x18]
	mov	ecx, 1
	jne	.label_2016
	nop	word ptr [rax + rax]
.label_2027:
	mov	dl, byte ptr [rbp + rcx]
	test	dl, dl
	je	.label_2021
	lea	rdi, [rdi]
	mov	bl, byte ptr [r13 + rcx]
	test	bl, bl
	mov	rbp, rbp
	mov	eax, 0
	je	.label_2024
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rbp, rbp
	movzx	edx, bl
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	edx, eax
	je	.label_2027
	add	r12, rcx
	jmp	.label_2030
	nop	word ptr [rax + rax]
.label_2016:
	nop	
	inc	r12
.label_2030:
	lea	rsi, [rsi]
	inc	r15
	mov	rbp, rbp
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	mov	eax, 0
	mov	rbp, rbp
	jne	.label_2032
	jmp	.label_2024
.label_2020:
	mov	rax, r13
	jmp	.label_2024
.label_2021:
	mov	rax, r13
	mov	rsp, rsp
	jmp	.label_2024
.label_2036:
	mov	rax, qword ptr [rsp + 0xb8]
.label_2045:
	mov	qword ptr [rsp + 8], rax
.label_2012:
	mov	r13, qword ptr [rsp + 8]
.label_2041:
	mov	rax, r13
.label_2024:
	add	rsp, 0x168
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	nop	
	pop	rbp
	ret	
.label_2010:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x128]
	mov	rsp, rsp
	jmp	.label_2024
.label_2026:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_2045
.label_2037:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c900

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xb8
	mov	r14, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	r12, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	mbslen
	nop	
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	lea	rdi, [rdi]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jbe	.label_2057
	nop	
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2063
.label_2057:
	nop	
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_2068
	mov	rax, rsp
	add	rdi, 0x2e
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	lea	rdi, [rdi]
	neg	rdi
	nop	
	lea	r15, [rax + rdi + 0x1f]
	nop	
	and	r15, 0xffffffffffffffe0
	lea	rsi, [rsi]
	jmp	.label_2072
.label_2068:
	lea	rdi, [rdi]
	call	mmalloca
	mov	r15, rax
.label_2072:
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_2061
	mov	qword ptr [rbp - 0xd8], r12
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], r14
	lea	rax, [rbx + rbx*2]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rbx
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	shl	rbx, 4
	mov	qword ptr [rbp - 0x58], r13
	mov	byte ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	lea	rdi, [rbp - 0x68]
	mov	rsp, rsp
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2076
	mov	eax, dword ptr [rbp - 0x44]
	test	eax, eax
	je	.label_2048
.label_2076:
	mov	rsp, rsp
	lea	r13, [rbp - 0x58]
	lea	r14, [rbp - 0x68]
	mov	r12, r15
	nop	dword ptr [rax]
.label_2065:
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	call	mb_copy
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	eax, dword ptr [rbp - 0x44]
	add	r12, 0x30
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2065
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_2065
.label_2048:
	lea	r13, [r15 + rbx]
	mov	qword ptr [r15 + rbx + 8], 1
	mov	rbp, rbp
	mov	ecx, 2
	xor	ebx, ebx
	cmp	qword ptr [rbp - 0xc8], 3
	jb	.label_2070
	nop	word ptr cs:[rax + rax]
.label_2053:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rax, [rcx + rcx*2]
	shl	rax, 4
	lea	rcx, [rax + r15 - 0x30]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r14b, byte ptr [rax + r15 - 0x20]
	lea	rsi, [rsi]
	lea	r12, [rax + r15 - 0x28]
	lea	rax, [rax + r15 - 0x1c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2050
	nop	dword ptr [rax]
.label_2058:
	lea	rdi, [rdi]
	sub	rbx, qword ptr [r13 + rbx*8]
.label_2050:
	lea	rdi, [rdi]
	test	r14b, r14b
	lea	rsi, [rsi]
	je	.label_2069
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	nop	
	cmp	byte ptr [r15 + rax + 0x10], 0
	je	.label_2069
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	ecx, dword ptr [rcx]
	mov	rbp, rbp
	cmp	ecx, dword ptr [r15 + rax + 0x14]
	nop	
	jne	.label_2071
	jmp	.label_2049
	nop	dword ptr [rax]
.label_2069:
	mov	rdx, qword ptr [r12]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	rdx, qword ptr [r15 + rax + 8]
	lea	rsi, [rsi]
	jne	.label_2071
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + rax]
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2049
.label_2071:
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_2058
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [r13 + rcx*8], rcx
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_2067
	nop	
.label_2049:
	inc	rbx
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, rcx
	sub	rax, rbx
	nop	
	mov	qword ptr [r13 + rcx*8], rax
.label_2067:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	jne	.label_2053
.label_2070:
	lea	rdi, [rdi]
	mov	r14, r13
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa4], 0
	mov	byte ptr [rbp - 0x9c], 0
	lea	rdi, [rbp - 0xa8]
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x88], 0
	setne	cl
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	je	.label_2059
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2052
.label_2059:
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	lea	r13, [rbp - 0x68]
	nop	dword ptr [rax]
.label_2062:
	lea	rdi, [rdi]
	lea	rsi, [r12 + r12*2]
	shl	rsi, 4
	cmp	byte ptr [r15 + rsi + 0x10], 0
	nop	
	je	.label_2060
	nop	
	xor	cl, 1
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2060
	mov	rsp, rsp
	cmp	dword ptr [r15 + rsi + 0x14], eax
	lea	rsi, [rsi]
	je	.label_2054
	lea	rdi, [rdi]
	jmp	.label_2047
	nop	word ptr cs:[rax + rax]
.label_2060:
	mov	rdx, qword ptr [r15 + rsi + 8]
	nop	
	cmp	rdx, qword ptr [rbp - 0x90]
	nop	
	jne	.label_2047
	mov	rdi, qword ptr [r15 + rsi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	memcmp
	test	eax, eax
	je	.label_2054
.label_2047:
	mov	rbp, rbp
	test	r12, r12
	je	.label_2055
	mov	rbx, qword ptr [r14 + r12*8]
	nop	
	sub	r12, rbx
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_2056
	nop	dword ptr [rax]
.label_2074:
	mov	rdi, r13
	call	mbuiter_multi_next
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2051
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	test	eax, eax
	je	.label_2064
.label_2051:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5c], 0
	dec	rbx
	mov	rsp, rsp
	jne	.label_2074
	mov	rsp, rsp
	jmp	.label_2056
	nop	word ptr cs:[rax + rax]
.label_2054:
	inc	r12
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	qword ptr [rbp - 0x98], rax
	nop	
	mov	byte ptr [rbp - 0x9c], 0
	mov	rbp, rbp
	cmp	r12, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	jne	.label_2056
	jmp	.label_2066
	nop	word ptr cs:[rax + rax]
.label_2055:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x48], 0
	je	.label_2073
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	test	eax, eax
	je	.label_2075
.label_2073:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	add	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_2056:
	lea	rdi, [rbp - 0xa8]
	mov	rbp, rbp
	call	mbuiter_multi_next
	cmp	byte ptr [rbp - 0x88], 0
	setne	cl
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	je	.label_2062
	mov	rsp, rsp
	test	eax, eax
	jne	.label_2062
	mov	rbp, rbp
	jmp	.label_2052
.label_2061:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_2063
.label_2066:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
.label_2052:
	mov	rdi, r15
	mov	rsp, rsp
	call	freea
	mov	al, 1
.label_2063:
	mov	rsp, rsp
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2064:
	nop	
	call	abort
.label_2075:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ce50

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_2084
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2078
.label_2084:
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	lea	rsi, [rsi]
	cmp	rdi, 0xfa0
	ja	.label_2081
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rbp, rbp
	mov	rsp, rcx
	neg	rdi
	mov	rbp, rbp
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_2089
.label_2081:
	call	mmalloca
	nop	
	mov	rdi, rax
.label_2089:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2086
	mov	qword ptr [rdi + 8], 1
	mov	eax, 2
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	r12, 3
	nop	
	jb	.label_2093
	nop	word ptr [rax + rax]
.label_2091:
	nop	
	movzx	edx, byte ptr [rax + r13 - 1]
	mov	rbp, rbp
	movzx	esi, byte ptr [r13 + rcx]
	cmp	edx, esi
	je	.label_2077
	nop	word ptr cs:[rax + rax]
.label_2092:
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_2090
	mov	rsp, rsp
	sub	rcx, qword ptr [rdi + rcx*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r13 + rcx]
	nop	
	movzx	ebx, dl
	mov	rbp, rbp
	cmp	ebx, esi
	mov	rsp, rsp
	jne	.label_2092
.label_2077:
	inc	rcx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], rdx
	lea	rsi, [rsi]
	jmp	.label_2080
	nop	
.label_2090:
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
.label_2080:
	nop	
	inc	rax
	cmp	rax, r12
	jne	.label_2091
.label_2093:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_2085
.label_2086:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2078
.label_2087:
	lea	rdi, [rdi]
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	nop	
	mov	rax, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	add	r15, rax
	nop	
	sub	r8, rax
	mov	rbp, rbp
	add	r8, rdx
.label_2085:
	lea	rsi, [r12 + r8]
	lea	rcx, [r13 + r8]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2088:
	lea	rdi, [rdi]
	mov	al, byte ptr [r9 + rdx]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2079
	movzx	ebx, byte ptr [rcx + rdx]
	movzx	eax, al
	cmp	ebx, eax
	lea	rsi, [rsi]
	jne	.label_2082
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, rsi
	add	rax, rdx
	jne	.label_2088
	jmp	.label_2083
.label_2082:
	mov	rax, r8
	mov	rbp, rbp
	add	rax, rdx
	jne	.label_2087
	lea	rdi, [rdi]
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_2085
.label_2083:
	mov	qword ptr [r14], r15
.label_2079:
	mov	rsp, rsp
	call	freea
	lea	rdi, [rdi]
	mov	al, 1
.label_2078:
	lea	rsp, [rbp - 0x28]
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41d030

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	lea	rsi, [rsi]
	jne	.label_2103
	cmp	byte ptr [rbx], 0
	jne	.label_2095
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	mov	rbp, rbp
	je	.label_2100
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_2094
.label_2100:
	mov	rbp, rbp
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2096
	mov	byte ptr [rbx], 1
.label_2095:
	lea	r14, [rbx + 0x24]
	mov	r12, qword ptr [rbx + 0x10]
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rax
	nop	
	call	strnlen1
	nop	
	lea	r15, [rbx + 4]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, r15
	nop	
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	mov	rsp, rsp
	je	.label_2099
	nop	
	test	rax, rax
	je	.label_2101
	cmp	rax, -1
	jne	.label_2102
	nop	
	mov	qword ptr [rbx + 0x18], 1
	nop	
	mov	byte ptr [rbx + 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_2094
.label_2099:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	nop	
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2094
.label_2101:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_2098
	cmp	dword ptr [r14], 0
	jne	.label_2097
.label_2102:
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x20], 1
	lea	rsi, [rsi]
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	nop	
	je	.label_2094
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0
.label_2094:
	nop	
	mov	byte ptr [rbx + 0xc], 1
.label_2103:
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_2096:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0x96
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2098:
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_11
	mov	rsp, rsp
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2097:
	nop	
	mov	edi, OFFSET FLAT:.str.3_3
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	lea	rdi, [rdi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d1d0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d1e0
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	mov	rsp, rsp
	test	al, al
	mov	byte ptr [rdi], al
	nop	
	je	.label_2104
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	lea	rsi, [rsi]
	jmp	.label_2105
.label_2104:
	mov	qword ptr [rdi + 4], 0
.label_2105:
	mov	al, byte ptr [rsi + 0xc]
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0xc], al
	nop	
	add	rdi, 0x10
	add	rsi, 0x10
	mov	rbp, rbp
	jmp	mb_copy
	nop	
	.section	.text
	.align	32
	#Procedure 0x41d220

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x1058
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x28], rcx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rbp
	mov	r14, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 0x50], r14
	nop	
	mov	qword ptr [rsp + 0x48], rbp
	test	rbp, rbp
	je	.label_2107
	xor	ebx, ebx
	lea	r12, [rsp + 0x58]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x50]
	mov	rsp, rsp
	lea	rbp, [rsp + 0x48]
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x40]
	nop	
	lea	r13, [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_2113:
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], 0x1000
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_2117
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	mov	rbp, rbp
	jne	.label_2120
.label_2117:
	sub	rbx, r12
	add	rbx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_2113
.label_2107:
	lea	r14, [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], 0x1000
	xor	ebp, ebp
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x38]
	nop	
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	nop	
	cmp	rax, -1
	nop	
	je	.label_2108
	lea	rdi, [rdi]
	sub	rbx, r14
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_2106
.label_2108:
	lea	rdi, [rdi]
	mov	ebp, 1
	lea	rdi, [rdi]
	jmp	.label_2106
.label_2120:
	cmp	eax, 0x16
	je	.label_2107
	mov	ebp, 1
.label_2106:
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_2109
	nop	
	test	rbx, rbx
	je	.label_2110
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	je	.label_2111
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], rbx
	nop	
	jae	.label_2115
.label_2111:
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_2119
.label_2115:
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x48], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rbx
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x58]
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x50]
	nop	
	lea	r15, [rsp + 0x48]
	lea	r14, [rsp + 0x40]
	nop	word ptr [rax + rax]
.label_2116:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2114
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	mov	rsi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	rsp, rsp
	mov	r8, r14
	mov	rsp, rsp
	call	iconv
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_2116
	nop	
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_2118
.label_2114:
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x40]
	lea	rsi, [rsi]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	iconv
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2118
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_2112
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
	jmp	.label_2109
.label_2110:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], 0
	xor	r12d, r12d
	jmp	.label_2109
.label_2118:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 8]
	cmp	rbp, qword ptr [rax]
	lea	rsi, [rsi]
	je	.label_2109
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	call	free
	mov	dword ptr [rbx], r14d
	lea	rdi, [rdi]
	jmp	.label_2109
.label_2119:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_2109:
	mov	eax, r12d
	add	rsp, 0x1058
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2112:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d560

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, rax
	mov	rbp, rbp
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	mov	rbp, rbp
	lea	r13, [rbx + 1]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	je	.label_2133
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	nop	
	mov	rdi, rbp
	call	iconv
	mov	qword ptr [rsp + 0x10], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	qword ptr [rsp], rbp
	mov	rbp, rbp
	call	iconv
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_2130
	mov	r12, r15
	nop	
	mov	rbx, r13
.label_2121:
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x10]
	mov	rsp, rsp
	lea	r8, [rsp + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	r14, qword ptr [rsp]
	nop	
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_2127
	lea	rdi, [rdi]
	mov	r15, r12
	mov	rsp, rsp
	mov	rbp, rbx
.label_2125:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	sub	rsi, r15
	mov	rbp, rbp
	cmp	rsi, rbp
	lea	rsi, [rsi]
	jae	.label_2128
	mov	rdi, r15
	call	realloc
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	cmovne	r15, rax
	lea	rdi, [rdi]
	jmp	.label_2128
.label_2133:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	jmp	.label_2128
.label_2130:
	call	__errno_location
	mov	r14, rax
	nop	word ptr cs:[rax + rax]
.label_2124:
	nop	
	mov	eax, dword ptr [r14]
	cmp	eax, 7
	jne	.label_2134
	lea	rbx, [r13 + r13]
	lea	rdi, [rdi]
	cmp	rbx, r13
	nop	
	jbe	.label_2132
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	rsi, rbx
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_2126
	mov	rsp, rsp
	sub	rbp, r15
	lea	rsi, [rsi]
	mov	rax, r12
	lea	rsi, [rsi]
	add	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	lea	rax, [rbx - 1]
	lea	rsi, [rsi]
	sub	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x20]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	lea	r8, [rsp + 8]
	call	iconv
	nop	
	cmp	rax, -1
	mov	rsp, rsp
	mov	r15, r12
	mov	rsp, rsp
	mov	r13, rbx
	mov	rsp, rsp
	je	.label_2124
	jmp	.label_2121
.label_2127:
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_2131:
	nop	
	cmp	dword ptr [r13], 7
	lea	rdi, [rdi]
	jne	.label_2122
	nop	
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_2123
	mov	rbx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbp
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_2123
	sub	rbx, r12
	mov	rax, r15
	nop	
	add	rax, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	lea	rsi, [rsi]
	call	iconv
	cmp	rax, -1
	mov	r12, r15
	mov	rsp, rsp
	mov	rbx, rbp
	mov	rbp, rbp
	je	.label_2131
	jmp	.label_2125
.label_2123:
	mov	dword ptr [r13], 0xc
	mov	r15, r12
	jmp	.label_2129
.label_2134:
	mov	rsp, rsp
	cmp	eax, 0x16
	mov	r12, r15
	mov	rbx, r13
	lea	rdi, [rdi]
	je	.label_2121
	jmp	.label_2129
.label_2132:
	mov	rbp, rbp
	mov	dword ptr [r14], 0xc
	lea	rsi, [rsi]
	jmp	.label_2129
.label_2126:
	mov	rsp, rsp
	mov	dword ptr [r14], 0xc
	lea	rsi, [rsi]
	jmp	.label_2129
.label_2122:
	mov	rsp, rsp
	mov	r15, r12
.label_2129:
	call	__errno_location
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_2128:
	mov	rax, r15
	add	rsp, 0x28
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d8c0

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	nop	
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	byte ptr [rbx], 0
	je	.label_2135
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2135
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	lea	rsi, [rsi]
	call	iconv_open
	mov	r15, rax
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_2138
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_2139
	mov	rdi, r15
	call	iconv_close
	nop	
	test	eax, eax
	jns	.label_2138
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	jmp	.label_2137
.label_2135:
	mov	rdi, rbx
	nop	
	call	__strdup
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_2138
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	jmp	.label_2136
.label_2139:
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	iconv_close
.label_2137:
	lea	rsi, [rsi]
	mov	dword ptr [rbx], ebp
.label_2136:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_2138:
	lea	rdi, [rdi]
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41d9d0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, r14
	call	memchr
	lea	rdi, [rdi]
	mov	ecx, 1
	sub	rcx, rbx
	lea	rdi, [rdi]
	add	rcx, rax
	test	rax, rax
	mov	rbp, rbp
	cmove	rcx, r14
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41da20

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
	.section	.text
	.align	32
	#Procedure 0x41da40

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdi, -0x21
	ja	.label_2140
	push	rax
	lea	rsi, [rsi]
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_2140
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rdi, [rdi]
	lea	rax, [rdx + 0x10]
	lea	rdi, [rdi]
	mov	esi, eax
	sub	esi, ecx
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xf], sil
.label_2140:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41daa0

	.globl freea
	.type freea, @function
freea:
	mov	rsp, rsp
	test	dil, 0xf
	jne	.label_2141
	test	dil, 0x10
	mov	rsp, rsp
	jne	.label_2142
	lea	rsi, [rsi]
	ret	
.label_2142:
	nop	
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_2141:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41dad0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2143
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_2143:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41db00

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_2144
	mov	rbp, rbp
	mov	qword ptr [r14], rax
	mov	rbp, rbp
	jmp	.label_2145
.label_2144:
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rbp, rbp
	mov	qword ptr [r14], r15
.label_2145:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	mov	byte ptr [r14 + 0x10], al
	je	.label_2146
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_2146:
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41db80

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41dbb0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2150
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_2148
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_2149
.label_2148:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	dword ptr [rax]
.label_2147:
	mov	rbp, rbp
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	rdi, r14
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_2147
	nop	
	test	eax, eax
	jne	.label_2147
.label_2149:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_2150:
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	jmp	strlen
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x41dd30

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat