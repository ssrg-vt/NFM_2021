	.section	.text
	.align	32
	#Procedure 0x4019a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	sub	rsp, 0x28
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
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
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
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rdx
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
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
	#Procedure 0x401de0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.55
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.30
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
	mov	ebx, OFFSET FLAT:.str.30
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.30
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.69
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
	#Procedure 0x401f30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	r14, rax
	mov	edi, OFFSET FLAT:.str.32
	mov	esi, OFFSET FLAT:.str.33
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.32
	call	textdomain
	mov	edi, 0x10000
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [rip + decimal_point]],  rax
	test	rax, rax
	je	.label_36
	cmp	byte ptr [rax], 0
	jne	.label_37
.label_36:
	mov	qword ptr [word ptr [rip + decimal_point]], OFFSET FLAT:.str.34
.label_37:
	mov	rdi,  qword ptr [word ptr [rip + decimal_point]]
	call	strlen
	mov	dword ptr [dword ptr [rip + decimal_point_length]],  eax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_17
.label_651:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.43
	mov	edx, OFFSET FLAT:inval_args
	mov	ecx, OFFSET FLAT:inval_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	dword ptr [dword ptr [rip + inval_style]],  eax
	nop	dword ptr [rax]
.label_17:
	mov	edx, OFFSET FLAT:.str.35
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_12
	lea	ecx, [rax - 0x7a]
	cmp	ecx, 0x13
	ja	.label_16
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_18]]
.label_637:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	jmp	.label_17
.label_16:
	cmp	eax, 0x64
	jne	.label_21
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0
	je	.label_22
	cmp	byte ptr [rax + 1], 0
	jne	.label_26
.label_22:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [dword ptr [rip + delimiter]],  eax
	jmp	.label_17
.label_638:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.36
	mov	edx, OFFSET FLAT:scale_from_args
	mov	ecx, OFFSET FLAT:scale_from_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	dword ptr [dword ptr [rip + scale_from]],  eax
	jmp	.label_17
.label_639:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + from_unit_size]],  rax
	jmp	.label_17
.label_640:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.37
	mov	edx, OFFSET FLAT:scale_to_args
	mov	ecx, OFFSET FLAT:scale_to_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	dword ptr [dword ptr [rip + scale_to]],  eax
	jmp	.label_17
.label_641:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + to_unit_size]],  rax
	jmp	.label_17
.label_642:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.38
	mov	edx, OFFSET FLAT:round_args
	mov	ecx, OFFSET FLAT:round_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	dword ptr [dword ptr [rip + round_style]],  eax
	jmp	.label_17
.label_643:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	jmp	.label_17
.label_644:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	jmp	.label_17
.label_645:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:padding_width
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtol
	test	eax, eax
	jne	.label_35
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_35
	jns	.label_17
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	qword ptr [word ptr [rip + padding_width]]
	jmp	.label_17
.label_646:
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	jne	.label_38
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	set_fields
	jmp	.label_17
.label_647:
	mov	byte ptr [byte ptr [rip + debug]],  1
	jmp	.label_17
.label_648:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	byte ptr [byte ptr [rip + debug]],  1
	jmp	.label_17
.label_649:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_44
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:header
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	test	eax, eax
	jne	.label_13
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	jne	.label_17
	jmp	.label_13
.label_650:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + format_str]],  rax
	jmp	.label_17
.label_44:
	mov	qword ptr [word ptr [rip + header]],  1
	jmp	.label_17
.label_12:
	cmp	eax, -1
	jne	.label_43
	cmp	qword ptr [word ptr [rip + format_str]],  0
	je	.label_30
	test	byte ptr [byte ptr [rip + grouping]],  1
	jne	.label_32
.label_30:
	test	r14, r14
	jne	.label_33
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_33
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_33:
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
	test	rdi, rdi
	jne	.label_29
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	jne	.label_29
	test	byte ptr [byte ptr [rip + debug]],  1
	je	.label_29
	mov	eax,  dword ptr [dword ptr [rip + scale_to]]
	or	eax,  dword ptr [dword ptr [rip + scale_from]]
	jne	.label_29
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	xor	al, 1
	test	al, 1
	je	.label_29
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
.label_29:
	test	rdi, rdi
	je	.label_15
	call	parse_format_string
.label_15:
	movzx	eax,  byte ptr [byte ptr [rip + grouping]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_14
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_19
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_14
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	jne	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_14:
	mov	rdi,  qword ptr [word ptr [rip + padding_width]]
	call	setup_padding_buffer
	cmp	qword ptr [word ptr [rip + padding_width]],  0
	sete	al
	cmp	dword ptr [dword ptr [rip + delimiter]],  0x80
	sete	cl
	and	cl, al
	movzx	eax, cl
	mov	dword ptr [dword ptr [rip + auto_padding]],  eax
	cmp	dword ptr [dword ptr [rip + inval_style]],  0
	je	.label_42
	mov	byte ptr [byte ptr [rip + conv_exit_code]],  1
.label_42:
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	jge	.label_39
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_23
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	je	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_23:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, 1
	cmp	eax, ebx
	jge	.label_27
	nop	word ptr cs:[rax + rax]
.label_20:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, 1
	call	process_line
	and	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, ebx
	jl	.label_20
	jmp	.label_24
.label_39:
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	je	.label_25
	xor	r14d, r14d
	lea	rbx, [rsp + 8]
	lea	rbp, [rsp]
	nop	dword ptr [rax]
.label_40:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, r14d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	mov	rsi, rbp
	call	getdelim
	test	rax, rax
	jle	.label_25
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	jne	.label_40
.label_25:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	r12d, r12d
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, r12d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getdelim
	mov	ebp, 1
	test	rax, rax
	jle	.label_34
	lea	r14, [rsp + 8]
	lea	r15, [rsp]
	nop	dword ptr [rax]
.label_31:
	mov	rdx, qword ptr [rsp + 8]
	movsx	ecx, byte ptr [rax + rdx - 1]
	mov	bl,  byte ptr [byte ptr [rip + line_delim]]
	and	bl, 1
	mov	esi, 0xa
	cmovne	esi, r12d
	cmp	ecx, esi
	jne	.label_11
	mov	byte ptr [rdx + rax - 1], 0
.label_11:
	cmp	ecx, esi
	sete	al
	mov	rdi, qword ptr [rsp + 8]
	movzx	esi, al
	call	process_line
	and	ebp, eax
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, r12d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, r14
	mov	rsi, r15
	call	getdelim
	test	rax, rax
	jg	.label_31
.label_34:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	je	.label_24
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_24:
	test	ebp, ebp
	jne	.label_27
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_27:
	mov	eax,  dword ptr [dword ptr [rip + inval_style]]
	and	eax, 0xfffffffe
	cmp	eax, 2
	setne	al
	movzx	ecx, al
	add	ecx, ecx
	xor	eax, eax
	test	ebp, ebp
	cmove	eax, ecx
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_43:
	cmp	eax, 0xffffff7d
	je	.label_41
	cmp	eax, 0xffffff7e
	jne	.label_21
	xor	edi, edi
	call	usage
.label_41:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.45
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_21:
	mov	edi, 1
	call	usage
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	jmp	.label_28
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	jmp	.label_28
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_45
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_28
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
.label_45:
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
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
.label_28:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x10], 0
	mov	r8d, OFFSET FLAT:.str.93
	xor	r15d, r15d
	test	rbx, rbx
	mov	rdi, r14
	je	.label_49
	movsx	edi, byte ptr [rbx + r14 - 1]
	call	c_isdigit
	mov	r8d, OFFSET FLAT:.str.93
	xor	r15d, r15d
	test	al, al
	mov	rdi, r14
	jne	.label_49
	lea	rdi, [rbx + 2]
	call	xmalloc
	mov	r15, rax
	lea	r12, [r15 + rbx - 1]
	mov	qword ptr [rsp + 0x10], r12
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	cmp	rbx, 2
	jb	.label_48
	movzx	eax, byte ptr [r15 + rbx - 1]
	cmp	eax, 0x69
	jne	.label_48
	movsx	edi, byte ptr [r12 - 1]
	call	c_isdigit
	test	al, al
	je	.label_50
.label_48:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rax + 1], 0x42
	mov	rax, qword ptr [rsp + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rax + 1], 0
	mov	r8d, OFFSET FLAT:.str.94
	jmp	.label_46
.label_50:
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0
	mov	r8d, OFFSET FLAT:.str.93
.label_46:
	mov	rdi, r15
.label_49:
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	call	xstrtoumax
	test	eax, eax
	jne	.label_47
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_47
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_47
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_47:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rdi
	mov	qword ptr [rsp + 0x20], 0
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_69
	nop	word ptr cs:[rax + rax]
.label_76:
	inc	r14
	movzx	eax, al
	cmp	eax, 0x25
	sete	al
	movzx	eax, al
	lea	rbx, [rax + rbx + 1]
.label_69:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	eax, 0x25
	jne	.label_73
	movzx	eax, byte ptr [r12 + rbx + 1]
	cmp	eax, 0x25
	jne	.label_75
	mov	al, byte ptr [r12 + rbx]
.label_73:
	test	al, al
	jne	.label_76
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	jmp	.label_52
.label_75:
	inc	rbx
	xor	ebp, ebp
	jmp	.label_55
	nop	word ptr cs:[rax + rax]
.label_67:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	inc	rbx
.label_55:
	lea	rdi, [r12 + rbx]
	mov	esi, 0x20
	call	__strspn_c1
	add	rbx, rax
	movzx	ecx, byte ptr [r12 + rbx]
	cmp	ecx, 0x27
	je	.label_67
	movzx	ecx, cl
	cmp	ecx, 0x30
	je	.label_70
	test	rax, rax
	jne	.label_55
	jmp	.label_71
.label_70:
	inc	rbx
	mov	bpl, 1
	jmp	.label_55
.label_71:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	add	rbx, r12
	lea	rsi, [rsp + 0x20]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtol
	mov	r13, rax
	cmp	dword ptr [r15], 0x22
	je	.label_51
	test	r13, r13
	je	.label_57
	cmp	qword ptr [rsp + 0x20], rbx
	je	.label_57
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_60
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_60
	test	bpl, bpl
	je	.label_66
	test	r13, r13
	jg	.label_60
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_60:
	test	r13, r13
	js	.label_72
	test	bpl, bpl
	je	.label_74
	mov	qword ptr [word ptr [rip + zero_padding_width]],  r13
	jmp	.label_57
.label_72:
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	r13
.label_74:
	mov	qword ptr [word ptr [rip + padding_width]],  r13
.label_57:
	mov	rbx, qword ptr [rsp + 0x20]
	movzx	eax, byte ptr [rbx]
	sub	rbx, r12
	cmp	eax, 0x2e
	je	.label_53
	test	al, al
	jne	.label_58
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_52
.label_53:
	mov	dword ptr [r15], 0
	lea	rbx, [rbx + r12 + 1]
	lea	rsi, [rsp + 0x20]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtol
	mov	qword ptr [word ptr [rip + user_precision]],  rax
	test	rax, rax
	js	.label_62
	cmp	dword ptr [r15], 0x22
	je	.label_62
	movsx	rbx, byte ptr [rbx]
	call	__ctype_b_loc
	cmp	rbx, 0x2b
	je	.label_62
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	test	ax, ax
	jne	.label_62
	mov	rbx, qword ptr [rsp + 0x20]
	sub	rbx, r12
.label_58:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	eax, 0x66
	jne	.label_54
	inc	rbx
	mov	rax, rbx
	jmp	.label_56
.label_61:
	add	rax, rcx
.label_56:
	movzx	ecx, byte ptr [r12 + rax]
	cmp	ecx, 0x25
	je	.label_63
	test	cl, cl
	jne	.label_64
	jmp	.label_65
	nop	word ptr cs:[rax + rax]
.label_63:
	movzx	ecx, byte ptr [rax + r12 + 1]
	cmp	ecx, 0x25
	jne	.label_68
.label_64:
	movzx	ecx, byte ptr [r12 + rax]
	cmp	ecx, 0x25
	mov	ecx, 2
	je	.label_61
	mov	ecx, 1
	jmp	.label_61
.label_65:
	test	r14, r14
	je	.label_77
	mov	rdi, r12
	mov	rsi, r14
	call	xstrndup
	mov	qword ptr [word ptr [rip + format_str_prefix]],  rax
.label_77:
	cmp	byte ptr [r12 + rbx], 0
	je	.label_78
	add	rbx, r12
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [word ptr [rip + format_str_suffix]],  rax
.label_78:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_59
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	rsi, r12
	call	quote_n
	mov	r15, rax
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.114
	mov	r13d, OFFSET FLAT:.str.115
	cmovne	r13, rax
	mov	r12,  qword ptr [word ptr [rip + padding_width]]
	mov	al,  byte ptr [byte ptr [rip + padding_alignment]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.116
	mov	r14d, OFFSET FLAT:.str.117
	cmovne	r14, rax
	mov	rsi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rsi, rsi
	mov	ebx, OFFSET FLAT:.str_0
	cmove	rsi, rbx
	mov	edi, 1
	call	quote_n
	mov	rbp, rax
	mov	rax,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rax, rax
	cmovne	rbx, rax
	mov	edi, 2
	mov	rsi, rbx
	call	quote_n
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r14
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.113
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, r15
	mov	r8, r13
	mov	r9, r12
	call	__fprintf_chk
.label_59:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
.label_52:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	jmp	.label_52
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	jmp	.label_52
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	jmp	.label_52
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bc0

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	mov	rax, rdi
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	ja	.label_79
	push	rax
	inc	rax
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
	add	rsp, 8
.label_79:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00

	.globl process_line
	.type process_line, @function
process_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rsp]
	call	next_field
	mov	rcx, qword ptr [rsp]
	mov	ebp, 1
	mov	ebx, 1
	cmp	byte ptr [rcx], 0
	je	.label_83
	mov	r13b, 1
	mov	r12d, 0x20
	lea	rbp, [rsp]
	nop	dword ptr [rax + rax]
.label_81:
	mov	byte ptr [rcx], 0
	mov	rdi, rax
	mov	rsi, rbx
	call	process_field
	mov	r15b, al
	test	r15b, r15b
	je	.label_82
	mov	r15b, r13b
.label_82:
	mov	edi,  dword ptr [dword ptr [rip + delimiter]]
	cmp	edi, 0x80
	cmove	edi, r12d
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputc_unlocked
	inc	qword ptr [rsp]
	inc	rbx
	mov	rdi, rbp
	call	next_field
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	r13b, r15b
	jne	.label_81
	and	r15b, 1
	movzx	ebp, r15b
.label_83:
	mov	rdi, rax
	mov	rsi, rbx
	call	process_field
	mov	bl, al
	test	r14b, r14b
	je	.label_80
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	ecx, ecx
	and	al, 1
	mov	edi, 0xa
	cmovne	edi, ecx
	call	putchar_unlocked
.label_80:
	xor	eax, eax
	test	bl, bl
	cmovne	eax, ebp
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
	#Procedure 0x402ce0

	.globl next_field
	.type next_field, @function
next_field:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	mov	al, byte ptr [r15]
	cmp	ecx, 0x80
	jne	.label_84
	test	al, al
	mov	rbx, r15
	je	.label_88
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_89:
	movzx	edi, al
	call	field_sep
	test	al, al
	je	.label_88
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_89
.label_88:
	mov	al, byte ptr [rbx]
	jmp	.label_87
	nop	word ptr [rax + rax]
.label_85:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_87:
	test	al, al
	je	.label_86
	movzx	edi, al
	call	field_sep
	test	al, al
	je	.label_85
	jmp	.label_86
.label_84:
	movsx	eax, al
	cmp	eax, ecx
	mov	rbx, r15
	je	.label_86
	mov	al, byte ptr [r15]
	test	al, al
	mov	rbx, r15
	je	.label_86
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_90:
	movsx	eax, al
	cmp	eax, ecx
	je	.label_86
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_90
.label_86:
	mov	qword ptr [r14], rbx
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rsi
	mov	rbx, rdi
	fldz	
	fstp	xword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, rbp
	call	include_field
	test	al, al
	je	.label_93
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	mov	rdi, rbx
	mov	rcx, rbp
	call	process_suffixed_number
	test	eax, eax
	setne	bpl
	je	.label_92
	fld	xword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	call	prepare_padded_number
	test	eax, eax
	setne	bpl
.label_92:
	test	bpl, bpl
	je	.label_94
	call	print_padded_number
	jmp	.label_91
.label_93:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
	mov	bpl, 1
	jmp	.label_91
.label_94:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	ebp, ebp
.label_91:
	mov	al, bpl
	add	rsp, 0x38
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e30

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	ebx, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl include_field
	.type include_field, @function
include_field:
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	test	rcx, rcx
	je	.label_95
	mov	rax, qword ptr [rcx]
	cmp	rax, -1
	je	.label_98
	add	rcx, 0x10
	nop	dword ptr [rax]
.label_97:
	cmp	rax, rdi
	ja	.label_96
	mov	al, 1
	cmp	qword ptr [rcx - 8], rdi
	jae	.label_99
.label_96:
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	cmp	rax, -1
	jne	.label_97
.label_98:
	xor	eax, eax
.label_99:
	ret	
.label_95:
	cmp	rdi, 1
	sete	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r13, rdi
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	je	.label_102
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	call	strlen
	cmp	rbp, rax
	jbe	.label_102
	add	rbp, r13
	sub	rbp, rax
	mov	rdi, rbx
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	je	.label_108
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_102
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.119
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_102
.label_108:
	mov	byte ptr [rbp], 0
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_102
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + suffix]]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.118
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_102:
	mov	r14b, byte ptr [r13]
	test	r14b, r14b
	mov	rbx, r13
	je	.label_101
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	mov	rbx, r13
	nop	word ptr cs:[rax + rax]
.label_103:
	movsx	edi, r14b
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2], 1
	je	.label_101
	mov	r14b, byte ptr [rbx + 1]
	inc	rbx
	test	r14b, r14b
	jne	.label_103
.label_101:
	cmp	dword ptr [dword ptr [rip + auto_padding]],  0
	je	.label_104
	cmp	r12, 1
	jg	.label_106
	mov	eax, r13d
	sub	eax, ebx
	jne	.label_106
	mov	qword ptr [word ptr [rip + padding_width]],  0
	jmp	.label_110
.label_106:
	mov	rdi, r13
	call	strlen
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	mov	rdi, rax
	call	setup_padding_buffer
.label_110:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_104
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx,  qword ptr [word ptr [rip + padding_width]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.120
	xor	eax, eax
	call	__fprintf_chk
.label_104:
	fldz	
	fstp	xword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	mov	rdx, r15
	call	parse_human_number
	mov	ebp, eax
	cmp	ebp, 1
	jne	.label_105
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_105
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.121
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
.label_105:
	mov	rcx,  qword ptr [word ptr [rip + from_unit_size]]
	cmp	rcx, 1
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	jne	.label_100
	cmp	rax, 1
	je	.label_107
.label_100:
	fld	xword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rcx
	test	rcx, rcx
	setns	cl
	movzx	ecx, cl
	fild	qword ptr [rsp + 0x10]
	fadd	dword ptr [dword ptr [+ (rcx * 4) + label_109]]
	fmulp	st(1)
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x18]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_109]]
	fdivp	st(1)
	fstp	xword ptr [rsp + 0x20]
.label_107:
	fld	xword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 8]
	fstp	xword ptr [rax]
	or	ebp, 1
	cmp	ebp, 1
	sete	al
	movzx	eax, al
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
	#Procedure 0x4030e0

	.globl prepare_padded_number
	.type prepare_padded_number, @function
prepare_padded_number:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xb0
	mov	rbx, rdi
	fld	xword ptr [rsp + 0xd0]
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	mov	rax,  qword ptr [word ptr [rip + user_precision]]
	cmp	rax, -1
	cmovne	rbx, rax
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x2c]
	mov	edi, 0xa
	call	expld
	fstp	st(0)
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_112
	lea	rcx, [rax + rbx]
	cmp	rcx, 0x13
	jb	.label_112
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_114
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	xor	r14d, r14d
	xor	edi, edi
	test	rbx, rbx
	je	.label_113
	mov	esi, OFFSET FLAT:.str.133
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x14]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_114
.label_112:
	cmp	eax, 0x1b
	jb	.label_118
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_114
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebx, al
	add	ebx, ebx
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.135
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x14]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
.label_119:
	mov	rdx, rcx
	call	error
	jmp	.label_114
.label_118:
	mov	edx,  dword ptr [dword ptr [rip + scale_to]]
	movzx	ecx,  byte ptr [byte ptr [rip + grouping]]
	and	ecx, 1
	mov	r8d,  dword ptr [dword ptr [rip + round_style]]
	fld	xword ptr [rsp + 0x14]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x30]
	mov	edi, ebx
	call	double_to_human
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	je	.label_115
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	call	strlen
	mov	edx, 0x7f
	sub	rdx, rax
	mov	ecx, 0x80
	mov	rdi, rbp
	mov	rsi, rbx
	call	__strncat_chk
.label_115:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_116
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rsp + 0x30]
	call	quote
	mov	rcx, rax
	fld	xword ptr [rsp + 0x14]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.136
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_116:
	mov	rbx,  qword ptr [word ptr [rip + padding_width]]
	test	rbx, rbx
	je	.label_111
	lea	rdi, [rsp + 0x30]
	call	strlen
	cmp	rax, rbx
	jae	.label_111
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + padding_buffer_size]]
	movzx	r8d,  byte ptr [byte ptr [rip + padding_alignment]]
	and	r8d, 1
	xor	r8d, 1
	lea	rdi, [rsp + 0x30]
	lea	rcx, [rsp + 0x20]
	mov	r9d, 2
	call	mbsalign
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_117
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.137
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	jmp	.label_117
.label_111:
	lea	rbx, [rsp + 0x30]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rax + 1]
	call	setup_padding_buffer
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rbx
	call	strcpy
.label_117:
	mov	r14d, 1
.label_114:
	mov	eax, r14d
	add	rsp, 0xb0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_113:
	mov	esi, OFFSET FLAT:.str.134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x14]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	jmp	.label_119
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rdi, rdi
	je	.label_120
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_120:
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rdi, rdi
	je	.label_121
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	pop	rax
	jmp	fputs_unlocked
.label_121:
	pop	rax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp], 0
	mov	r8d,  dword ptr [dword ptr [rip + scale_from]]
	lea	rsi, [rsp]
	mov	rdx, rcx
	mov	rcx, rax
	call	simple_strtod_human
	mov	ebx, eax
	cmp	ebx, 2
	jb	.label_123
	mov	edi, ebx
	mov	rsi, r14
	call	simple_strtod_fatal
	jmp	.label_122
.label_123:
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_122
	cmp	byte ptr [rax], 0
	je	.label_122
	mov	ebx, 5
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_122
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	mov	ebx, 5
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.122
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	rsi, r14
	call	quote_n
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	edi, 1
	call	quote_n
	mov	r8, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	error
.label_122:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b0

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12d, r8d
	mov	rbx, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	edi, r12d
	call	default_scale_base
	mov	dword ptr [rsp + 0x3c], eax
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_135
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x48], rax
	xor	edi, edi
	mov	rsi, rbp
	call	quote_n
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	mov	edi, 1
	call	quote_n
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.123
	mov	r9d, 0x12
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rcx, r15
	call	__fprintf_chk
.label_135:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r14
	mov	rcx, rbx
	call	simple_strtod_float
	mov	dword ptr [rsp + 0x48], eax
	cmp	eax, 1
	ja	.label_127
	mov	dword ptr [rsp + 0x38], r12d
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_133
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [r14]
	mov	ecx, dword ptr [rbx]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.124
	xor	eax, eax
	call	__fprintf_chk
.label_133:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rax, qword ptr [r13]
	xor	r15d, r15d
	cmp	byte ptr [rax], 0
	je	.label_128
	mov	qword ptr [rsp + 0x28], r14
	mov	rbx, qword ptr [r13]
	mov	r15b, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	movzx	r12d, al
	call	__ctype_b_loc
	mov	rbp, rax
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + r12*2], 1
	je	.label_134
	inc	rbx
	nop	word ptr [rax + rax]
.label_132:
	mov	qword ptr [r13], rbx
	mov	r15b, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [rbp]
	inc	rbx
	test	byte ptr [rcx + rax*2], 1
	jne	.label_132
	dec	rbx
.label_134:
	mov	r12d, dword ptr [rsp + 0x38]
	movsx	ebp, r15b
	mov	edi, ebp
	call	valid_suffix
	mov	ecx, eax
	mov	eax, 5
	test	ecx, ecx
	je	.label_125
	mov	eax, 4
	test	r12d, r12d
	je	.label_125
	mov	edi, ebp
	call	suffix_power
	mov	r15d, eax
	lea	rax, [rbx + 1]
	mov	qword ptr [r13], rax
	cmp	r12d, 1
	jne	.label_124
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x69
	jne	.label_124
	add	rbx, 2
	mov	qword ptr [r13], rbx
	mov	dword ptr [rsp + 0x3c], 0x400
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_124
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	dword ptr [rsp + 0x3c], 0x400
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.125
	mov	ecx, 0x400
	xor	eax, eax
	call	__fprintf_chk
.label_124:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rax], 0
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_126
.label_128:
	mov	r12d, dword ptr [rsp + 0x38]
.label_126:
	cmp	r12d, 4
	jne	.label_131
	mov	rcx, qword ptr [r13]
	mov	eax, 6
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x69
	jne	.label_125
	inc	rcx
	mov	qword ptr [r13], rcx
.label_131:
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	dword ptr [rsp + 0x54], ebp
	fild	dword ptr [rsp + 0x54]
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	powerld
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_130
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.126
	xor	eax, eax
	mov	ecx, ebp
	mov	r8d, r15d
	fstp	xword ptr [rsp + 0x3c]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x3c]
.label_130:
	fld	xword ptr [r14]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [r14]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_129
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.127
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_127
.label_129:
	fstp	st(0)
.label_127:
	mov	eax, dword ptr [rsp + 0x48]
.label_125:
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
	#Procedure 0x403760

	.globl simple_strtod_fatal
	.type simple_strtod_fatal, @function
simple_strtod_fatal:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	xor	esi, esi
	mov	eax, edi
	cmp	edi, 6
	ja	.label_136
	jmp	qword ptr [word ptr [+ (rax * 8) + label_137]]
.label_694:
	mov	esi, OFFSET FLAT:.str.128
	jmp	.label_136
.label_695:
	mov	esi, OFFSET FLAT:.str.129
	jmp	.label_136
.label_696:
	mov	esi, OFFSET FLAT:.str.130
	jmp	.label_136
.label_697:
	mov	esi, OFFSET FLAT:.str.131
	jmp	.label_136
.label_698:
	mov	esi, OFFSET FLAT:.str.132
.label_136:
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	jne	.label_138
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_138:
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
.label_693:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl default_scale_base
	.type default_scale_base, @function
default_scale_base:
	add	edi, -3
	cmp	edi, 2
	mov	ecx, 0x400
	mov	eax, 0x3e8
	cmovb	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x40
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	test	r14, r14
	je	.label_142
	mov	qword ptr [r14], 0
.label_142:
	lea	rcx, [rsp + 0x3f]
	mov	rsi, rbx
	mov	rdx, r15
	call	simple_strtod_int
	mov	ebp, eax
	cmp	ebp, 1
	ja	.label_139
	mov	rdi, qword ptr [rbx]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	call	strncmp
	test	eax, eax
	jne	.label_139
	fldz	
	fstp	xword ptr [rsp + 0x20]
	movsxd	rdi,  dword ptr [dword ptr [rip + decimal_point_length]]
	add	rdi, qword ptr [rbx]
	mov	qword ptr [rbx], rdi
	lea	rsi, [rsp + 0x30]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x1f]
	call	simple_strtod_int
	cmp	eax, 1
	ja	.label_140
	cmove	ebp, eax
	mov	eax, 3
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_143
.label_140:
	mov	ebp, eax
	jmp	.label_139
.label_143:
	mov	r12, qword ptr [rsp + 0x30]
	sub	r12, qword ptr [rbx]
	fld	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp + 0x14]
	fld	dword ptr [dword ptr [rip + label_141]]
	fstp	xword ptr [rsp]
	mov	edi, r12d
	call	powerld
	fld	xword ptr [rsp + 0x14]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	test	r15, r15
	je	.label_144
	cmp	byte ptr [rsp + 0x3f], 0
	fld	xword ptr [r15]
	je	.label_146
	fsubrp	st(1)
	jmp	.label_147
.label_146:
	faddp	st(1)
.label_147:
	fstp	xword ptr [r15]
	fldz	
.label_144:
	fstp	st(0)
	test	r14, r14
	je	.label_145
	mov	qword ptr [r14], r12
.label_145:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rbx], rax
.label_139:
	mov	eax, ebp
	add	rsp, 0x40
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403920

	.globl valid_suffix
	.type valid_suffix, @function
valid_suffix:
	push	rax
	mov	eax, edi
	mov	edi, OFFSET FLAT:.str.93
	mov	edx, 9
	mov	esi, eax
	call	memchr
	test	rax, rax
	setne	al
	movzx	eax, al
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	cmp	edi, 0x53
	jg	.label_148
	add	edi, -0x45
	cmp	edi, 0xb
	ja	.label_150
	mov	eax, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_151]]
.label_663:
	mov	eax, 6
	ret	
.label_148:
	cmp	edi, 0x54
	je	.label_152
	cmp	edi, 0x59
	je	.label_149
	cmp	edi, 0x5a
	jne	.label_150
	mov	eax, 7
	ret	
.label_664:
	mov	eax, 3
	ret	
.label_666:
	mov	eax, 2
	ret	
.label_667:
	mov	eax, 5
	ret	
.label_152:
	mov	eax, 4
	ret	
.label_149:
	mov	eax, 8
	ret	
.label_150:
	xor	eax, eax
.label_665:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039a0

	.globl powerld
	.type powerld, @function
powerld:
	fld	xword ptr [rsp + 8]
	fld1	
	test	edi, edi
	je	.label_153
	fstp	st(0)
	cmp	edi, 1
	je	.label_155
	mov	eax, 1
	sub	eax, edi
	fld	st(0)
	nop	word ptr [rax + rax]
.label_154:
	fmul	st(1)
	inc	eax
	jne	.label_154
.label_153:
	fstp	st(1)
	ret	
.label_155:
	fldz	
	fxch	st(1)
	fstp	st(1)
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039d0

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	r12, rsi
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x2d
	cmovne	rbx, rdi
	sete	byte ptr [rcx]
	mov	qword ptr [r12], rbx
	fldz	
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_159
	fstp	st(0)
	movsx	ebp, byte ptr [rbx]
	mov	edi, ebp
	call	c_isdigit
	fldz	
	xor	r13d, r13d
	test	al, al
	mov	ecx, 0
	je	.label_162
	fstp	st(0)
	inc	rbx
	fldz	
	xor	r13d, r13d
	mov	r14d, 1
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_161:
	mov	eax, r15d
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	setp	cl
	setne	dl
	or	dl, cl
	add	ebp, -0x30
	setne	cl
	or	cl, dl
	movzx	r15d, cl
	add	r15d, eax
	mov	eax, 2
	cmp	r15d, 0x1b
	ja	.label_156
	cmp	r15d, 0x12
	cmova	r13d, r14d
	fmul	dword ptr [dword ptr [rip + label_141]]
	mov	dword ptr [rsp + 0x24], ebp
	fiadd	dword ptr [rsp + 0x24]
	fstp	xword ptr [rsp + 0x18]
	mov	qword ptr [r12], rbx
	movsx	ebp, byte ptr [rbx]
	mov	edi, ebp
	call	c_isdigit
	fld	xword ptr [rsp + 0x18]
	inc	rbx
	mov	cl, 1
	test	al, al
	jne	.label_161
.label_162:
	test	cl, cl
	jne	.label_158
.label_159:
	fstp	xword ptr [rsp + 0x18]
	mov	rdi, qword ptr [r12]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	call	strncmp
	fld	xword ptr [rsp + 0x18]
	mov	ecx, eax
	mov	eax, 3
	test	ecx, ecx
	jne	.label_156
.label_158:
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_160
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	fld	st(0)
	fchs	
	je	.label_163
	fstp	st(1)
	fldz	
.label_163:
	fstp	st(0)
	fstp	xword ptr [rax]
	jmp	.label_157
.label_160:
	fstp	st(0)
.label_157:
	mov	eax, r13d
	fldz	
.label_156:
	fstp	st(0)
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
	#Procedure 0x403b10

	.globl expld
	.type expld, @function
expld:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x30
	mov	r14, rsi
	mov	ebp, edi
	fld	xword ptr [rsp + 0x50]
	xor	ebx, ebx
	fld	xword ptr [word ptr [rip + label_167]]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jb	.label_168
	fld	xword ptr [word ptr [rip + label_169]]
	fucomip	st(1)
	jb	.label_170
	fld	st(0)
	fstp	xword ptr [rsp]
	fstp	xword ptr [rsp + 0x1c]
	call	absld
	mov	eax, ebp
	mov	qword ptr [rsp + 0x28], rax
	fild	qword ptr [rsp + 0x28]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	xor	ebx, ebx
	fxch	st(1)
	fucomip	st(1)
	jae	.label_166
	fstp	st(0)
	fld	xword ptr [rsp + 0x1c]
	fldz	
	jmp	.label_165
.label_168:
	fldz	
	jmp	.label_165
.label_170:
	fldz	
	jmp	.label_165
.label_166:
	fld	xword ptr [rsp + 0x1c]
	fxch	st(1)
	nop	word ptr [rax + rax]
.label_171:
	inc	ebx
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	call	absld
	fld	xword ptr [rsp + 0x10]
	fld	xword ptr [rsp + 0x1c]
	fxch	st(2)
	fucomip	st(1)
	jae	.label_171
.label_165:
	fstp	st(0)
	test	r14, r14
	je	.label_164
	mov	dword ptr [r14], ebx
.label_164:
	add	rsp, 0x30
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15d, r8d
	mov	ebp, ecx
	mov	r12d, edx
	mov	r14, rsi
	mov	r13d, edi
	fld	xword ptr [rsp + 0xe0]
	mov	byte ptr [rsp + 0x60], 0x25
	test	ebp, ebp
	je	.label_185
	lea	rbx, [rsp + 0x62]
	mov	byte ptr [rsp + 0x61], 0x27
	jmp	.label_191
.label_185:
	lea	rbx, [rsp + 0x61]
.label_191:
	mov	r9,  qword ptr [word ptr [rip + zero_padding_width]]
	test	r9, r9
	je	.label_172
	fstp	xword ptr [rsp + 0x44]
	mov	esi, 0x3e
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.138
	xor	eax, eax
	mov	rdi, rbx
	call	__snprintf_chk
	cdqe	
	add	rbx, rax
	jmp	.label_180
.label_172:
	fstp	xword ptr [rsp + 0x44]
.label_180:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_183
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.139
	xor	eax, eax
	call	__fprintf_chk
.label_183:
	test	r12d, r12d
	je	.label_187
	mov	edi, r12d
	call	default_scale_base
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rsp + 0x38], xmm0
	mov	dword ptr [rsp + 0x5c], 0
	fld	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x5c]
	mov	edi, eax
	call	expld
	fstp	xword ptr [rsp + 0x44]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_176
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	ecx, dword ptr [rsp + 0x5c]
	fld	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.144
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x38]
	call	__fprintf_chk
.label_176:
	mov	rdi,  qword ptr [word ptr [rip + user_precision]]
	cmp	rdi, -1
	je	.label_188
	imul	eax, dword ptr [rsp + 0x5c], 3
	cmp	rax, rdi
	cmovl	edi, eax
	jmp	.label_182
.label_187:
	fld	dword ptr [dword ptr [rip + label_141]]
	fstp	xword ptr [rsp]
	mov	edi, r13d
	call	powerld
	fld	st(0)
	fstp	xword ptr [rsp + 0x38]
	fld	xword ptr [rsp + 0x44]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	simple_round
	fld	xword ptr [rsp + 0x38]
	fdivp	st(1)
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_178
	test	ebp, ebp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, OFFSET FLAT:.str.140
	mov	edx, OFFSET FLAT:.str.141
	cmovne	rdx, rax
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	ecx, r13d
	fstp	xword ptr [rsp + 0x44]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x44]
.label_178:
	fld	st(0)
	fstp	xword ptr [rsp + 0x44]
	mov	byte ptr [rbx + 4], 0
	mov	dword ptr [rbx], 0x664c2a2e
	fstp	xword ptr [rsp]
	lea	r8, [rsp + 0x60]
	mov	esi, 0x80
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	mov	rdi, r14
	mov	r9d, r13d
	call	__snprintf_chk
	cmp	eax, 0x80
	jb	.label_177
	jmp	.label_173
.label_188:
	fld	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	call	absld
	xor	edi, edi
	fld	dword ptr [dword ptr [rip + label_141]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_182
	mov	edi, 1
.label_182:
	fld	dword ptr [dword ptr [rip + label_141]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	call	powerld
	fld	st(0)
	fstp	xword ptr [rsp + 0x2c]
	fld	xword ptr [rsp + 0x44]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	simple_round
	fld	xword ptr [rsp + 0x2c]
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	call	absld
	movsd	xmm0, qword ptr [rsp + 0x38]
	movsd	qword ptr [rsp + 0x50], xmm0
	fld	qword ptr [rsp + 0x50]
	fxch	st(1)
	fucomip	st(1)
	jae	.label_174
	fstp	st(0)
	fld	xword ptr [rsp + 0x44]
	jmp	.label_179
.label_174:
	fld	xword ptr [rsp + 0x44]
	fdivrp	st(1)
	inc	dword ptr [rsp + 0x5c]
.label_179:
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_181
	jp	.label_181
	jmp	.label_184
.label_181:
	fld	st(0)
	fstp	xword ptr [rsp]
	fstp	xword ptr [rsp + 0x44]
	call	absld
	fld	xword ptr [rsp + 0x20]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_186
	cmp	dword ptr [rsp + 0x5c], 0
	setne	bpl
	jmp	.label_189
.label_184:
	fstp	xword ptr [rsp + 0x44]
	xor	ebp, ebp
	jmp	.label_189
.label_186:
	xor	ebp, ebp
.label_189:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_190
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	ecx, dword ptr [rsp + 0x5c]
	fld	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.145
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x38]
	call	__fprintf_chk
.label_190:
	mov	byte ptr [rbx + 6], 0
	mov	word ptr [rbx + 4], 0x7325
	mov	dword ptr [rbx], 0x664c2a2e
	mov	rbx,  qword ptr [word ptr [rip + user_precision]]
	cmp	rbx, -1
	movzx	eax, bpl
	cmove	ebx, eax
	mov	edi, dword ptr [rsp + 0x5c]
	call	suffix_power_char
	mov	qword ptr [rsp + 0x10], rax
	fld	xword ptr [rsp + 0x44]
	fld	st(0)
	fstp	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	lea	r8, [rsp + 0x60]
	mov	esi, 0x7f
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	mov	rdi, r14
	mov	r9d, ebx
	call	__snprintf_chk
	cmp	eax, 0x7f
	jae	.label_173
	cmp	r12d, 4
	jne	.label_175
	mov	ecx, dword ptr [rsp + 0x5c]
	test	ecx, ecx
	je	.label_175
	cdqe	
	mov	edx, 0x7f
	sub	rdx, rax
	mov	esi, OFFSET FLAT:.str.147
	mov	rcx, -1
	mov	rdi, r14
	call	__strncat_chk
.label_175:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_177
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.148
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_177:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl absld
	.type absld, @function
absld:
	fld	xword ptr [rsp + 8]
	fldz	
	fucomip	st(1)
	fld	st(0)
	fchs	
	fxch	st(1)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fd0

	.globl simple_round
	.type simple_round, @function
simple_round:
	sub	rsp, 0x38
	fld	xword ptr [rsp + 0x40]
	fld	xword ptr [word ptr [rip + label_193]]
	fld	st(1)
	fdiv	st(1)
	fnstcw	word ptr [rsp + 0x1e]
	mov	ax, word ptr [rsp + 0x1e]
	mov	word ptr [rsp + 0x1e], 0xc7f
	fldcw	word ptr [rsp + 0x1e]
	mov	word ptr [rsp + 0x1e], ax
	fistp	qword ptr [rsp + 0x28]
	fldcw	word ptr [rsp + 0x1e]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x30], rax
	fild	qword ptr [rsp + 0x30]
	fmulp	st(1)
	fsub	st(1), st(0)
	fldz	
	mov	eax, edi
	cmp	edi, 4
	ja	.label_194
	fstp	st(0)
	fstp	xword ptr [rsp + 0x14]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_195]]
.label_674:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	jmp	.label_192
.label_675:
	fstp	xword ptr [rsp]
	call	simple_round_floor
	jmp	.label_192
.label_676:
	fstp	xword ptr [rsp]
	call	simple_round_from_zero
	jmp	.label_192
.label_677:
	fstp	xword ptr [rsp]
	call	simple_round_to_zero
	jmp	.label_192
.label_678:
	fstp	xword ptr [rsp]
	call	simple_round_nearest
.label_192:
	mov	qword ptr [rsp + 0x20], rax
	fild	qword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x14]
	faddp	st(1)
	fldz	
	fldz	
	fxch	st(1)
	fxch	st(2)
.label_194:
	fstp	st(2)
	fstp	st(0)
	add	rsp, 0x38
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl suffix_power_char
	.type suffix_power_char, @function
suffix_power_char:
	cmp	edi, 8
	ja	.label_196
	movsxd	rax, edi
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + label_197]]
	ret	
.label_196:
	mov	eax, OFFSET FLAT:.str.157
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	fld	xword ptr [rsp + 8]
	fnstcw	word ptr [rsp - 0x12]
	mov	ax, word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], 0xc7f
	fldcw	word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], ax
	fld	st(0)
	fistp	qword ptr [rsp - 0x10]
	fldcw	word ptr [rsp - 0x12]
	mov	rcx, qword ptr [rsp - 0x10]
	mov	qword ptr [rsp - 8], rcx
	fild	qword ptr [rsp - 8]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	add	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040f0

	.globl simple_round_floor
	.type simple_round_floor, @function
simple_round_floor:
	sub	rsp, 0x18
	fld	xword ptr [rsp + 0x20]
	fchs	
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	neg	rax
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404110

	.globl simple_round_from_zero
	.type simple_round_from_zero, @function
simple_round_from_zero:
	sub	rsp, 0x18
	fld	xword ptr [rsp + 0x20]
	fldz	
	fucomip	st(1)
	jbe	.label_198
	fstp	xword ptr [rsp]
	call	simple_round_floor
	add	rsp, 0x18
	ret	
.label_198:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	fld	xword ptr [rsp + 8]
	fnstcw	word ptr [rsp - 0xa]
	mov	ax, word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], ax
	fistp	qword ptr [rsp - 8]
	fldcw	word ptr [rsp - 0xa]
	mov	rax, qword ptr [rsp - 8]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170

	.globl simple_round_nearest
	.type simple_round_nearest, @function
simple_round_nearest:
	fld	xword ptr [rsp + 8]
	fldz	
	fucomip	st(1)
	seta	al
	movzx	eax, al
	shl	rax, 4
	fld	xword ptr [word ptr [rax + label_199]]
	faddp	st(1)
	fnstcw	word ptr [rsp - 0xa]
	mov	ax, word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	word ptr [rsp - 0xa], ax
	fistp	qword ptr [rsp - 8]
	fldcw	word ptr [rsp - 0xa]
	mov	rax, qword ptr [rsp - 8]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 8], esi
	mov	r12, rdi
	xor	ebp, ebp
	and	esi, 1
	mov	dword ptr [rsp + 0xc], esi
	mov	ebx, 0
	je	.label_230
	movzx	ecx, byte ptr [r12]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_237
	movzx	eax, byte ptr [r12 + 1]
	neg	eax
.label_237:
	lea	rcx, [r12 + 1]
	test	eax, eax
	sete	bl
	movzx	ebp, bl
	cmove	r12, rcx
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x20], 0
	mov	al, bl
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_208
.label_230:
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_208
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	dword ptr [rsp + 0x24], eax
	inc	r12
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r15
.label_208:
	mov	dword ptr [rsp + 0x1c], ebx
	mov	r15b, bl
	and	r15b, 1
	xor	r14d, r14d
	jmp	.label_218
	nop	
.label_207:
	inc	r12
	mov	r14b, 1
.label_218:
	movsx	ebx, byte ptr [r12]
	cmp	ebx, 0x2c
	je	.label_220
	movzx	eax, bl
	cmp	eax, 0x2d
	je	.label_222
	mov	edi, ebx
	call	to_uchar_0
	movzx	r13d, al
	call	__ctype_b_loc
	test	bl, bl
	je	.label_220
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r13*2]
	and	eax, 1
	test	ax, ax
	jne	.label_220
	add	ebx, -0x30
	cmp	ebx, 9
	ja	.label_213
	cmp	qword ptr [word ptr [rip + set_fields.num_start]],  0
	setne	al
	test	r14b, al
	jne	.label_232
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  r12
.label_232:
	mov	al, 1
	test	r15b, r15b
	je	.label_236
	mov	dword ptr [rsp + 0x20], eax
	jmp	.label_202
	nop	dword ptr [rax]
.label_236:
	mov	dword ptr [rsp + 0x24], eax
.label_202:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	ja	.label_209
	lea	rax, [rbp + rbp*4]
	movsx	rcx, byte ptr [r12]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, rbp
	cmovae	rbp, rax
	jb	.label_209
	cmp	rbp, -1
	jne	.label_207
	jmp	.label_209
	nop	word ptr cs:[rax + rax]
.label_220:
	mov	ebx, dword ptr [rsp + 0x1c]
	test	bl, 1
	jne	.label_212
	test	rbp, rbp
	je	.label_214
	mov	rdi, rbp
	mov	rsi, rbp
	call	add_range_pair
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_217
	nop	word ptr [rax + rax]
.label_212:
	mov	eax, dword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x24]
	or	cl, al
	mov	eax, ecx
	and	al, 1
	mov	r15d, 1
	cmovne	r15, qword ptr [rsp + 0x10]
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_216
	test	al, al
	je	.label_224
.label_216:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_225
	mov	rsi, -1
	mov	rdi, r15
	jmp	.label_231
	nop	dword ptr [rax]
.label_222:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_227
	mov	eax, dword ptr [rsp + 0x24]
	and	al, 1
	sete	cl
	test	rbp, rbp
	jne	.label_229
	test	cl, cl
	je	.label_233
.label_229:
	test	al, al
	mov	r15d, 1
	cmovne	r15, rbp
	mov	bl, 1
	mov	eax, dword ptr [rsp + 0x24]
	jmp	.label_200
.label_225:
	cmp	rbp, r15
	jb	.label_238
	mov	rdi, r15
	mov	rsi, rbp
.label_231:
	call	add_range_pair
	xor	ebx, ebx
.label_217:
	cmp	byte ptr [r12], 0
	je	.label_239
	mov	dword ptr [rsp + 0x20], 0
	xor	eax, eax
	jmp	.label_200
.label_239:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	test	rsi, rsi
	je	.label_203
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	call	qsort
	xor	ebx, ebx
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	je	.label_211
	nop	dword ptr [rax + rax]
.label_234:
	mov	rbp, rbx
	lea	rbx, [rbp + 1]
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jae	.label_215
.label_228:
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	rax, rbx
	shl	rax, 4
	mov	rsi, rbp
	shl	rsi, 4
	mov	rdx, qword ptr [rcx + rsi + 8]
	cmp	qword ptr [rcx + rax], rdx
	ja	.label_215
	lea	rsi, [rcx + rsi + 8]
	mov	rcx, qword ptr [rcx + rax + 8]
	cmp	rcx, rdx
	cmova	rdx, rcx
	mov	qword ptr [rsi], rdx
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rcx + rax]
	lea	rsi, [rcx + rax + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	call	memmove
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	dec	rax
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	cmp	rbx, rax
	jb	.label_228
.label_215:
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jb	.label_234
.label_211:
	mov	eax, dword ptr [rsp + 8]
	test	al, 2
	je	.label_235
	call	complement_rp
.label_235:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rcx + rax - 8], -1
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	shl	rax, 4
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [rax + rcx - 0x10], -1
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_209:
	mov	rbx,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rdi, rbx
	call	strspn
	mov	rdi, rbx
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_219
	mov	esi, OFFSET FLAT:.str.9_0
	jmp	.label_221
.label_213:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_226
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_223
.label_219:
	mov	esi, OFFSET FLAT:.str.8_0
.label_221:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_226:
	mov	esi, OFFSET FLAT:.str.10_0
.label_223:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_214:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_201
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_204
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_204
.label_227:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_206
	mov	esi, OFFSET FLAT:.str.2_0
	jmp	.label_204
.label_233:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_210
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_204
.label_201:
	mov	esi, OFFSET FLAT:.str.3_0
	jmp	.label_204
.label_238:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	jmp	.label_204
.label_206:
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_204
.label_210:
	mov	esi, OFFSET FLAT:.str.3_0
.label_204:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_203:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_205
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_204
.label_205:
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_204
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046b0

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	cmp	rax,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_240
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	esi, OFFSET FLAT:n_frp_allocated
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
.label_240:
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax], rbx
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax + 8], r14
	inc	qword ptr [word ptr [rip + n_frp]]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	cmp	eax, dword ptr [rsi]
	setg	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	r15,  qword ptr [word ptr [rip + n_frp]]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rsi, qword ptr [r14]
	cmp	rsi, 2
	jb	.label_241
	dec	rsi
	mov	edi, 1
	call	add_range_pair
.label_241:
	cmp	r15, 2
	jb	.label_245
	lea	r12, [r15 - 1]
	lea	rbx, [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_244:
	mov	rdi, qword ptr [rbx - 8]
	mov	rsi, qword ptr [rbx]
	inc	rdi
	cmp	rdi, rsi
	je	.label_243
	dec	rsi
	call	add_range_pair
.label_243:
	add	rbx, 0x10
	dec	r12
	jne	.label_244
.label_245:
	shl	r15, 4
	mov	rdi, qword ptr [r15 + r14 - 8]
	cmp	rdi, -1
	je	.label_242
	inc	rdi
	mov	rsi, -1
	call	add_range_pair
.label_242:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404850

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
	je	.label_249
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_246:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_247
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_251
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_252
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_248
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_247
.label_248:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_247
.label_252:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_247:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_246
	jmp	.label_250
.label_249:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_250:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_251:
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
	#Procedure 0x404950

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
	je	.label_253
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_254
.label_253:
	mov	esi, OFFSET FLAT:.str_1
.label_254:
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
	#Procedure 0x4049c0

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
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_259
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_256:
	test	rbp, rbp
	je	.label_258
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_255
.label_258:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_257:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_256
.label_259:
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
	#Procedure 0x404ac0

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
	jns	.label_260
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
.label_260:
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
	#Procedure 0x404b30
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
	je	.label_261
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_262:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_261
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_262
.label_261:
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
	#Procedure 0x404ba0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_263
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_263
.label_264:
	ret	
.label_263:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_264
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_265
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_265:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00
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
	#Procedure 0x404c10
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_266
.label_267:
	ret	
.label_266:
	cmp	edi, 0x7f
	je	.label_267
	xor	eax, eax
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

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
	#Procedure 0x404c40
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
	#Procedure 0x404c50
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
	#Procedure 0x404c60
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
	#Procedure 0x404c70
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_268
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_268
.label_269:
	ret	
.label_268:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_269
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_270
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_270:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0

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
	#Procedure 0x404cd0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_271
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_271:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404cf0
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
	#Procedure 0x404d00
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
	#Procedure 0x404d10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_272
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_274
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_274
.label_272:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_273
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_274:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_275
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_273:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_275:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
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
	#Procedure 0x404df0

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	ebp, r9d
	mov	dword ptr [rsp + 0x1c], r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	strlen
	mov	ecx, ebp
	mov	r14, rax
	test	cl, 2
	jne	.label_282
	mov	dword ptr [rsp + 4], ecx
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_287
	mov	qword ptr [rsp + 8], r15
	xor	r13d, r13d
	xor	edi, edi
	xor	edx, edx
	mov	rsi, rbx
	call	mbstowcs
	mov	r15, rax
	cmp	r15, -1
	je	.label_279
	lea	rdi, [r15*4 + 4]
	call	malloc
	mov	r13, rax
	test	r13, r13
	je	.label_279
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	lea	rbx, [r15 + 1]
	mov	rdi, r13
	mov	rdx, rbx
	call	mbstowcs
	test	rax, rax
	je	.label_277
	mov	rbp, r12
	mov	dword ptr [r13 + r15*4], 0
	mov	rdi, r13
	call	wc_ensure_printable
	mov	r15b, al
	mov	rdi, r13
	mov	rsi, rbx
	call	wcswidth
	mov	rsi, r13
	movsxd	r13, eax
	test	r15b, r15b
	je	.label_288
	xor	edi, edi
	xor	edx, edx
	mov	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	call	wcstombs
	mov	r15, rax
	jmp	.label_281
.label_282:
	mov	qword ptr [rsp + 8], r15
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbp, r12
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	r13, r14
	jmp	.label_283
.label_287:
	mov	qword ptr [rsp + 8], r15
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbp, r12
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	r13, r14
.label_278:
	mov	ecx, dword ptr [rsp + 4]
	jmp	.label_283
.label_279:
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbp, r12
	mov	qword ptr [rsp + 0x30], r13
	mov	r15, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rsp + 4]
	test	cl, 1
	mov	r13, r14
	jne	.label_283
	jmp	.label_280
.label_277:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, r12
	mov	qword ptr [rsp + 0x30], r13
	mov	r13, r14
	jmp	.label_278
.label_288:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r13, qword ptr [rax]
	mov	r15, r14
	jbe	.label_286
.label_281:
	inc	r15
	mov	rdi, r15
	call	malloc
	mov	rcx, rax
	test	rcx, rcx
	je	.label_276
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r12, rcx
	mov	qword ptr [rsp + 0x28], r12
	mov	rdi, rbx
	call	wc_truncate
	mov	r13, rax
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r15
	call	wcstombs
	mov	r14, rax
	mov	qword ptr [rsp + 0x10], r12
	jmp	.label_278
.label_286:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_278
.label_276:
	mov	r15, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rsp + 4]
	test	cl, 1
	je	.label_280
.label_283:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax]
	cmp	r13, r12
	cmova	r13, r12
	cmova	r14, r12
	xor	r15d, r15d
	sub	r12, r13
	cmovbe	r12, r15
	mov	qword ptr [rax], r13
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_284
	cmp	eax, 1
	jne	.label_285
	mov	r15, r12
	xor	r12d, r12d
	jmp	.label_284
.label_285:
	mov	rax, r12
	shr	rax, 1
	and	r12d, 1
	add	r12, rax
	mov	r15, r12
	mov	r12, rax
.label_284:
	xor	eax, eax
	test	cl, 4
	cmovne	r15, rax
	test	cl, 8
	cmovne	r12, rax
	test	rbp, rbp
	je	.label_289
	mov	rdi, qword ptr [rsp + 8]
	lea	rbp, [rdi + rbp - 1]
	mov	rsi, rbp
	mov	rdx, r15
	call	mbs_align_pad
	mov	rdx, rbp
	sub	rdx, rax
	cmp	r14, rdx
	cmovb	rdx, r14
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	__mempcpy_chk
	mov	rdi, rax
	mov	rsi, rbp
	mov	rdx, r12
	call	mbs_align_pad
.label_289:
	add	r15, r14
	add	r15, r12
.label_280:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050c0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	je	.label_290
	add	rbx, 4
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_291:
	call	iswprint
	test	eax, eax
	jne	.label_293
	mov	dword ptr [rbx - 4], 0xfffd
	mov	bpl, 1
.label_293:
	mov	edi, dword ptr [rbx]
	add	rbx, 4
	test	edi, edi
	jne	.label_291
	jmp	.label_292
.label_290:
	xor	ebp, ebp
.label_292:
	and	bpl, 1
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405110

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	xor	r15d, r15d
	test	edi, edi
	je	.label_294
	nop	word ptr cs:[rax + rax]
.label_297:
	call	wcwidth
	cmp	eax, -1
	jne	.label_296
	mov	dword ptr [rbx], 0xfffd
	mov	eax, 1
.label_296:
	cdqe	
	add	rax, r15
	cmp	rax, r14
	ja	.label_295
	mov	edi, dword ptr [rbx + 4]
	add	rbx, 4
	test	edi, edi
	mov	r15, rax
	jne	.label_297
	jmp	.label_298
.label_294:
	xor	eax, eax
	jmp	.label_298
.label_295:
	mov	rax, r15
.label_298:
	mov	dword ptr [rbx], 0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405180

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, rbx
	sub	rax, r14
	jae	.label_299
	test	r15, r15
	je	.label_299
	mov	rdx, r15
	neg	rdx
	cmp	rax, rdx
	cmovae	rdx, rax
	neg	rdx
	mov	esi, 0x20
	mov	rdi, rbx
	call	memset
	mov	eax, 1
	sub	rax, r15
.label_300:
	inc	rbx
	cmp	rbx, r14
	jae	.label_299
	test	rax, rax
	lea	rax, [rax + 1]
	jne	.label_300
.label_299:
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], ecx
	mov	dword ptr [rsp], edx
	mov	r13, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r13]
	xor	ebp, ebp
	mov	rax, r15
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_303:
	cmp	rax, rbx
	jb	.label_301
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbp
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_302
	mov	qword ptr [r13], r15
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r13
	mov	r8d, dword ptr [rsp]
	mov	r9d, dword ptr [rsp + 4]
	call	mbsalign
	cmp	rax, -1
	mov	rbp, r14
	jne	.label_303
	mov	rdi, r14
	jmp	.label_304
.label_302:
	mov	rdi, rbp
.label_304:
	call	free
	xor	ebp, ebp
.label_301:
	mov	rax, rbp
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
	#Procedure 0x405280

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_305
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_306
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_306
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_307
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_307:
	mov	rbx, r14
.label_306:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_305:
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
	#Procedure 0x405330
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
	#Procedure 0x405370
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
	#Procedure 0x405380
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
	#Procedure 0x405390

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
	#Procedure 0x4053d0
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
	#Procedure 0x4053f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_308
	test	rdx, rdx
	je	.label_308
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_308:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405420
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
	#Procedure 0x4054a0

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
.label_314:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_390
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_397]]
.label_661:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_662:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_413
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_413
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_326:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_312
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_312:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_326
.label_413:
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
	jmp	.label_338
.label_654:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_338
.label_657:
	mov	al, 1
.label_655:
	mov	r15b, 1
.label_658:
	test	r15b, 1
	mov	cl, 1
	je	.label_358
	mov	cl, al
.label_358:
	mov	al, cl
.label_656:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_362
	test	r10, r10
	je	.label_366
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_367
.label_362:
	xor	ecx, ecx
	jmp	.label_367
.label_659:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_370
	test	r10, r10
	je	.label_376
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_377
.label_660:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_338
.label_366:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_367:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_338
.label_370:
	xor	eax, eax
	jmp	.label_377
.label_376:
	mov	eax, 1
.label_377:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_338:
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
	jmp	.label_353
	nop	dword ptr [rax + rax]
.label_380:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_353:
	cmp	rbp, -1
	je	.label_342
	cmp	rsi, rbp
	jne	.label_345
	jmp	.label_348
	nop	dword ptr [rax]
.label_342:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_348
.label_345:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_351
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_352
	cmp	rbp, -1
	jne	.label_352
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
.label_352:
	cmp	rbx, rbp
	jbe	.label_374
.label_351:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_333:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_378
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_379]]
.label_621:
	test	rsi, rsi
	jne	.label_334
	jmp	.label_383
	nop	word ptr cs:[rax + rax]
.label_374:
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
	jne	.label_403
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_333
	jmp	.label_313
.label_403:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_333
.label_625:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_422
	test	rsi, rsi
	jne	.label_427
	cmp	rbp, 1
	je	.label_383
	xor	r15d, r15d
	jmp	.label_329
.label_614:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_309
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_313
	cmp	edi, 2
	jne	.label_320
	mov	al, r11b
	and	al, 1
	jne	.label_324
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_328
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_328:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_429
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_429:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_344
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_344:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_386
.label_615:
	mov	bl, 0x62
	jmp	.label_321
.label_616:
	mov	cl, 0x74
	jmp	.label_356
.label_617:
	mov	bl, 0x76
	jmp	.label_321
.label_618:
	mov	bl, 0x66
	jmp	.label_321
.label_619:
	mov	cl, 0x72
	jmp	.label_356
.label_622:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_364
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_363
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
	jae	.label_372
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_372:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_384
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_384:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_393
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_393:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_401
.label_623:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_406
	cmp	r14d, 2
	jne	.label_407
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_363
.label_407:
	mov	rdi, r14
	jmp	.label_334
.label_624:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_412
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_363
	mov	rdi, r14
	jmp	.label_415
.label_378:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_417
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
.label_327:
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
	ja	.label_316
	test	dl, dl
	je	.label_316
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_329
.label_422:
	test	rsi, rsi
	jne	.label_339
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_339
.label_383:
	mov	dl, 1
.label_620:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_313
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_329
.label_309:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_334
	mov	r14, rdi
	inc	rsi
	jmp	.label_353
.label_364:
	mov	rdi, r14
.label_401:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_329
.label_412:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_356
.label_415:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_311
.label_356:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_313
.label_321:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_329
	jmp	.label_373
.label_417:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_375
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_375:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_424:
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
	je	.label_396
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_402
	cmp	rbp, -2
	je	.label_409
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_410
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_426:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_418
	bt	rsi, rdx
	jb	.label_421
.label_418:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_426
.label_410:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_331
	xor	r15d, r15d
.label_331:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_424
	jmp	.label_327
.label_339:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_329
.label_406:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_334
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_334
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_334
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_346
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_349
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_313
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_355
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_355:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_343
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_343:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_371
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_371:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_310
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_310:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_329
.label_334:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_329:
	test	r12b, r12b
	je	.label_387
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_389
	jmp	.label_392
	nop	word ptr cs:[rax + rax]
.label_387:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_392
.label_389:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_398
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_311
	jmp	.label_373
	nop	word ptr cs:[rax + rax]
.label_392:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_373
	jmp	.label_311
.label_398:
	mov	bl, r13b
	mov	rsi, r14
.label_373:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_313
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_420
	mov	al, r11b
	and	al, 1
	jne	.label_420
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_399
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_399:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_319
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_319:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_365
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_365:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_420:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_335
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_335:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_341
.label_427:
	xor	r15d, r15d
	jmp	.label_329
.label_316:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
.label_350:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_347:
	test	dl, dl
	je	.label_428
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_357
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_391
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_391:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_357
	nop	word ptr [rax + rax]
.label_428:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_363
	cmp	r14d, 2
	jne	.label_360
	mov	al, r11b
	and	al, 1
	jne	.label_360
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_381
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_381:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_385
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_385:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_394
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_394:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_360:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_388
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_388:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_369
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_369:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_416
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_416:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_357:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_311
	test	r11b, 1
	je	.label_317
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_318
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_323
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_323:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_340
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_340:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
.label_317:
	mov	r14, rdi
.label_318:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_350
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_350
.label_311:
	test	r11b, 1
	je	.label_361
	and	al, 1
	jne	.label_361
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_354
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_354:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_368
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_368:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_341
	nop	dword ptr [rax + rax]
.label_361:
	mov	bl, r13b
	mov	r14, rdi
.label_341:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_380
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_380
.label_320:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_386
.label_324:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_386:
	cmp	rcx, r10
	jae	.label_419
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_419:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_395
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_404
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_425
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_411
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_411:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_430
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_430:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_329
.label_395:
	xor	r15d, r15d
	jmp	.label_329
.label_404:
	xor	r15d, r15d
	jmp	.label_329
.label_425:
	xor	r15d, r15d
	jmp	.label_329
.label_396:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_325
.label_402:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_315
.label_409:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_322
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_336:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_332
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_336
	xor	r15d, r15d
	jmp	.label_325
.label_322:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_315:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_325:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_327
.label_332:
	xor	r15d, r15d
	jmp	.label_325
.label_346:
	xor	r15d, r15d
	jmp	.label_329
.label_349:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_329
	nop	dword ptr [rax + rax]
.label_348:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_414
	or	dl, al
	je	.label_363
.label_414:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_359
	or	dl, al
	jne	.label_359
	test	r8b, 1
	jne	.label_408
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_359
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_314
.label_359:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_382
	test	cl, cl
	jne	.label_382
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_382
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_400:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_423
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_423:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_400
.label_382:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_405
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_405
.label_313:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_330:
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
.label_337:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_405:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_421:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_330
.label_363:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_330
.label_408:
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
	jmp	.label_337
.label_390:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0
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
	#Procedure 0x4066c0

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
	je	.label_431
	mov	qword ptr [rax], rbx
.label_431:
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
	#Procedure 0x4067c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_432
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_434:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_434
.label_432:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_436
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_435]], OFFSET FLAT:slot0
.label_436:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_433
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_433:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406860

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406870

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
	js	.label_437
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_442
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_438
.label_442:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_441
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
	jne	.label_440
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_440:
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
.label_438:
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
	ja	.label_443
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_439
	mov	rdi, rbx
	call	free
.label_439:
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
.label_443:
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
.label_437:
	call	abort
.label_441:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a50
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
	#Procedure 0x406a60
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
	#Procedure 0x406a70

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
	#Procedure 0x406ab0

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
	je	.label_444
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
.label_444:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b10

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
	#Procedure 0x406b50
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
	#Procedure 0x406b70
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
	#Procedure 0x406b90

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
	mov	rcx,  qword ptr [word ptr [rip + label_445]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_446]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_447]]
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
	#Procedure 0x406c00

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
	#Procedure 0x406c10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c30
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
	#Procedure 0x406c80

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

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
	mov	rax,  qword ptr [word ptr [rip + label_445]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_446]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_447]]
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
	#Procedure 0x406d00
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
	#Procedure 0x406d20
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
	#Procedure 0x406d40

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50
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
	#Procedure 0x406d60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d70

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
	#Procedure 0x406d80

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
	jne	.label_449
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
	je	.label_448
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_449
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_449
.label_448:
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
	je	.label_450
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_449
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_449
.label_450:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_449:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e60

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
	je	.label_452
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_453
	jmp	.label_451
.label_452:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_451
.label_453:
	mov	eax, 1
	test	bpl, bpl
	je	.label_451
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
.label_451:
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
	#Procedure 0x406ef0

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
	je	.label_456
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_454
	jmp	.label_455
.label_456:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_455
.label_454:
	mov	eax, 1
	test	bpl, bpl
	je	.label_455
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
.label_455:
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
	#Procedure 0x406f80

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
	je	.label_459
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_458
	jmp	.label_457
.label_459:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_457
.label_458:
	mov	eax, 1
	test	bpl, bpl
	je	.label_457
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
.label_457:
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
	#Procedure 0x407000

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
	je	.label_462
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_461
	jmp	.label_460
.label_462:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_460
.label_461:
	mov	eax, 1
	test	bpl, bpl
	je	.label_460
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
.label_460:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407070

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
	je	.label_465
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_463
	jmp	.label_464
.label_465:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_464
.label_463:
	mov	eax, 1
	test	bpl, bpl
	je	.label_464
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_464:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070e0

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
	je	.label_466
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_468
	jmp	.label_467
.label_466:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_467
.label_468:
	mov	eax, 1
	test	bpl, bpl
	je	.label_467
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_467:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407130

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
	je	.label_471
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_470
	jmp	.label_469
.label_471:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_469
.label_470:
	mov	eax, 1
	test	bpl, bpl
	je	.label_469
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_469:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407180

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_474
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_473
	jmp	.label_472
.label_474:
	mov	eax, 1
	test	cl, cl
	je	.label_472
.label_473:
	xor	eax, eax
.label_472:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4071b0

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
	je	.label_481
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_480
.label_481:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_476
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_477]]
.label_628:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_476:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_475
.label_629:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_630:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_631:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_482
.label_632:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_484
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_479
.label_634:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_479:
	mov	qword ptr [rsp + 0x10], rdi
.label_484:
	mov	qword ptr [rsp + 8], rsi
.label_482:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_483
.label_636:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_475:
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
	jmp	.label_478
.label_635:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_478:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_483:
	call	__fprintf_chk
.label_627:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_485:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_485
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_487:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_486
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_488
	nop	dword ptr [rax]
.label_486:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_488:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_489
	inc	r9
	cmp	r9, 0xa
	jb	.label_487
.label_489:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407530

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_490
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_490:
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
	#Procedure 0x4075c0
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
	mov	edx, OFFSET FLAT:.str.17_0
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
	#Procedure 0x407640
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_491
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_491:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_492
	test	rax, rax
	je	.label_493
.label_492:
	pop	rbx
	ret	
.label_493:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407690
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_494
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_494:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_495
	test	rbx, rbx
	jne	.label_495
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_495:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_497
	test	rax, rax
	je	.label_496
.label_497:
	pop	rbx
	ret	
.label_496:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4076f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_498
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_501
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_499
.label_498:
	test	rcx, rcx
	jne	.label_502
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_502:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_500
.label_499:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_501:
	call	xalloc_die
.label_500:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407770

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407780
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407790
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
	#Procedure 0x4077c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_503
	call	rpl_calloc
	test	rax, rax
	je	.label_503
	pop	rcx
	ret	
.label_503:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077f0

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
	#Procedure 0x407820

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
	#Procedure 0x407840

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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407870

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_504
	pop	rcx
	ret	
.label_504:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407890

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
	jae	.label_511
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
	je	.label_521
	mov	eax, dword ptr [rbx]
	xor	r12d, r12d
	test	eax, eax
	je	.label_522
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_510
	mov	r12d, 1
.label_522:
	test	r15, r15
	jne	.label_507
	jmp	.label_518
.label_521:
	mov	r12d, 4
	test	r15, r15
	je	.label_510
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_510
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_510
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_507:
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_518
	mov	rdi, r15
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_519
	mov	esi, 0x400
	mov	ebp, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_520
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_520
	mov	esi, 0x30
	mov	rdi, r15
	call	strchr
	mov	ebp, 1
	test	rax, rax
	je	.label_513
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebp, 1
	cmp	ecx, 0x42
	je	.label_515
	cmp	ecx, 0x44
	je	.label_515
	cmp	ecx, 0x69
	jne	.label_516
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	mov	esi, 0x400
	je	.label_520
	mov	ebp, 1
	jmp	.label_520
.label_513:
	mov	esi, 0x400
	jmp	.label_520
.label_515:
	mov	esi, 0x3e8
	mov	ebp, 2
	jmp	.label_520
.label_516:
	mov	esi, 0x400
.label_520:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_524
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_525
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_505]]
.label_702:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_508
.label_524:
	cmp	eax, 0x73
	jg	.label_512
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_514
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_523]]
.label_609:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_508
.label_525:
	cmp	eax, 0x54
	je	.label_517
	cmp	eax, 0x59
	jne	.label_519
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_509
.label_512:
	cmp	eax, 0x74
	je	.label_517
	cmp	eax, 0x77
	jne	.label_519
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_508:
	call	bkm_scale
	jmp	.label_509
.label_610:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_509
.label_611:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_509
.label_612:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_509
.label_517:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_509
.label_514:
	cmp	eax, 0x5a
	jne	.label_519
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_509
.label_519:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_510
.label_703:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_509
.label_704:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_509:
	or	eax, r12d
	mov	rcx, qword ptr [r13]
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	cmp	byte ptr [rcx + rbp], 0
	je	.label_506
	or	eax, 2
.label_506:
	mov	r12d, eax
.label_518:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_510:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_511:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b60

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
	jge	.label_526
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_526:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_527
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_527:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bb0

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
	je	.label_528
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_529
.label_528:
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
	#Procedure 0x407bf0

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
	jae	.label_551
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_547:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_547
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_536
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_554
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_533
	cmp	eax, 0x22
	jne	.label_536
	mov	r12d, 1
.label_533:
	test	rbp, rbp
	jne	.label_540
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_542
.label_554:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_536
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_536
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_536
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_540:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_552
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_535
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_553
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_544
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_543
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_550
	cmp	ecx, 0x44
	je	.label_550
	cmp	ecx, 0x69
	jne	.label_543
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_543
	mov	r14d, 1
	jmp	.label_543
.label_550:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_543:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_538
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_541
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_545]]
.label_577:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_546
.label_538:
	cmp	eax, 0x73
	jg	.label_539
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_548
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_532]]
.label_608:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_546
.label_541:
	cmp	eax, 0x54
	je	.label_530
	cmp	eax, 0x59
	jne	.label_535
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_537
.label_539:
	cmp	eax, 0x74
	je	.label_530
	cmp	eax, 0x77
	jne	.label_535
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_546:
	call	bkm_scale_0
	jmp	.label_531
.label_579:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_537
.label_580:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_537
.label_581:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_537
.label_530:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_537
.label_548:
	cmp	eax, 0x5a
	jne	.label_535
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_537
.label_535:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_549
.label_578:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_537
.label_582:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_537:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_531:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_534
	or	eax, 2
.label_534:
	mov	r12d, eax
.label_552:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_542:
	mov	qword ptr [rcx], rax
.label_549:
	mov	r15d, r12d
.label_536:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_553:
	mov	rbx, r13
	jmp	.label_543
.label_544:
	mov	rbx, r13
	jmp	.label_543
.label_551:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f00

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
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
	.align	32
	#Procedure 0x407f30

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
	je	.label_555
	nop	word ptr cs:[rax + rax]
.label_556:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebx, eax
	dec	ebp
	jne	.label_556
.label_555:
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
	#Procedure 0x407f70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_557
	test	rsi, rsi
	mov	ecx, 1
	je	.label_558
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_558
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_557:
	mov	ecx, 1
.label_558:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fc0

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
	je	.label_559
	cmp	r15, -2
	jb	.label_559
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_559
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_559:
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
	#Procedure 0x408020

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
	#Procedure 0x408040

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
	je	.label_560
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_561
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_561
.label_560:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_561
	test	cl, cl
	jne	.label_561
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_561:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_563
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_564
	cmp	byte ptr [rax + 1], 0
	je	.label_562
.label_564:
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_563
.label_562:
	xor	ebx, ebx
.label_563:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080f0

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
	je	.label_565
	mov	rax, rcx
.label_565:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408120

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_567
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_566
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_567
.label_566:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_567
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_568
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_568:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_567:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_569
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_569
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_569:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_570
	ret	
.label_570:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x4081f0

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
	jne	.label_571
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_571
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_572
.label_571:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_572:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_573
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_573:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
