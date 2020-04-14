	.section	.text
	.align	32
	#Procedure 0x4019a0

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	nop	
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	call	__printf_chk
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.10
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
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
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.17
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp], rdx
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	nop	
	mov	rcx, rdx
	mov	r8, rdx
	nop	
	mov	r9, rdx
	nop	
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	lea	rdi, [rdi]
	push	rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.54
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	nop	
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f20

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.55
	nop	word ptr [rax + rax]
.label_10:
	mov	edi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_9
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	add	rbx, 0x10
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	cmovne	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.63
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.66
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.30
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	nop	
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.69
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	jmp	__printf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	ebx, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	r14, rax
	mov	edi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.33
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	call	textdomain
	lea	rdi, [rdi]
	mov	edi, 0x10000
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + decimal_point]],  rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_13
	nop	
	cmp	byte ptr [rax], 0
	jne	.label_44
.label_13:
	mov	qword ptr [word ptr [rip + decimal_point]], OFFSET FLAT:.str.34
.label_44:
	mov	rdi,  qword ptr [word ptr [rip + decimal_point]]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	dword ptr [dword ptr [rip + decimal_point_length]],  eax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rsp, rsp
	jmp	.label_11
.label_650:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:inval_args
	mov	ecx, OFFSET FLAT:inval_types
	mov	rsp, rsp
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + inval_style]],  eax
	nop	dword ptr [rax + rax]
.label_11:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	rsp, rsp
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rsp, rsp
	call	getopt_long
	cmp	eax, 0x63
	lea	rdi, [rdi]
	jle	.label_39
	lea	ecx, [rax - 0x7a]
	lea	rdi, [rdi]
	cmp	ecx, 0x13
	ja	.label_42
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_43]]
.label_636:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	lea	rdi, [rdi]
	jmp	.label_11
.label_42:
	cmp	eax, 0x64
	lea	rsi, [rsi]
	jne	.label_32
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_45
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	jne	.label_15
.label_45:
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	eax, byte ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + delimiter]],  eax
	jmp	.label_11
.label_637:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.36
	nop	
	mov	edx, OFFSET FLAT:scale_from_args
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:scale_from_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	dword ptr [dword ptr [rip + scale_from]],  eax
	lea	rdi, [rdi]
	jmp	.label_11
.label_638:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + from_unit_size]],  rax
	jmp	.label_11
.label_639:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:scale_to_args
	mov	ecx, OFFSET FLAT:scale_to_types
	mov	rbp, rbp
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + scale_to]],  eax
	mov	rbp, rbp
	jmp	.label_11
.label_640:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + to_unit_size]],  rax
	jmp	.label_11
.label_641:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.38
	mov	edx, OFFSET FLAT:round_args
	mov	ecx, OFFSET FLAT:round_types
	mov	rbp, rbp
	mov	r8d, 4
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + round_style]],  eax
	jmp	.label_11
.label_642:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	jmp	.label_11
.label_643:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + grouping]],  1
	lea	rsi, [rsi]
	jmp	.label_11
.label_644:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:padding_width
	mov	r8d, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	xstrtol
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_31
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_31
	jns	.label_11
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	mov	rbp, rbp
	neg	qword ptr [word ptr [rip + padding_width]]
	jmp	.label_11
.label_645:
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	jne	.label_40
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	esi, 1
	call	set_fields
	jmp	.label_11
.label_646:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + debug]],  1
	jmp	.label_11
.label_647:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + debug]],  1
	nop	
	jmp	.label_11
.label_648:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_34
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 0xa
	nop	
	mov	ecx, OFFSET FLAT:header
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	test	eax, eax
	jne	.label_23
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	jne	.label_11
	jmp	.label_23
.label_649:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + format_str]],  rax
	lea	rdi, [rdi]
	jmp	.label_11
.label_34:
	mov	qword ptr [word ptr [rip + header]],  1
	jmp	.label_11
.label_39:
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_30
	cmp	qword ptr [word ptr [rip + format_str]],  0
	je	.label_33
	test	byte ptr [byte ptr [rip + grouping]],  1
	mov	rbp, rbp
	jne	.label_35
.label_33:
	test	r14, r14
	jne	.label_36
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_36
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_36:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	jne	.label_14
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_14
	test	byte ptr [byte ptr [rip + debug]],  1
	je	.label_14
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + scale_to]]
	or	eax,  dword ptr [dword ptr [rip + scale_from]]
	jne	.label_14
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	mov	rbp, rbp
	xor	al, 1
	test	al, 1
	lea	rsi, [rsi]
	je	.label_14
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + format_str]]
.label_14:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_28
	call	parse_format_string
.label_28:
	movzx	eax,  byte ptr [byte ptr [rip + grouping]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_27
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	mov	rbp, rbp
	jne	.label_20
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_27
	mov	rsp, rsp
	mov	edi, 0x10001
	mov	rsp, rsp
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	jne	.label_27
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_27:
	mov	rdi,  qword ptr [word ptr [rip + padding_width]]
	mov	rsp, rsp
	call	setup_padding_buffer
	cmp	qword ptr [word ptr [rip + padding_width]],  0
	sete	al
	nop	
	cmp	dword ptr [dword ptr [rip + delimiter]],  0x80
	mov	rbp, rbp
	sete	cl
	and	cl, al
	movzx	eax, cl
	mov	dword ptr [dword ptr [rip + auto_padding]],  eax
	cmp	dword ptr [dword ptr [rip + inval_style]],  0
	je	.label_37
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + conv_exit_code]],  1
.label_37:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	lea	rdi, [rdi]
	jge	.label_25
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_26
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	je	.label_26
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_26:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	ebp, 1
	lea	rsi, [rsi]
	cmp	eax, ebx
	jge	.label_16
	nop	dword ptr [rax + rax]
.label_24:
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, 1
	mov	rbp, rbp
	call	process_line
	and	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	inc	eax
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, ebx
	lea	rsi, [rsi]
	jl	.label_24
	jmp	.label_18
.label_25:
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rax,  qword ptr [word ptr [rip + header]]
	mov	rbp, rbp
	lea	rcx, [rax - 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + header]],  rcx
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_21
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_41:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edx, 0xa
	lea	rdi, [rdi]
	cmovne	edx, r14d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	getdelim
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_21
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_41
.label_21:
	nop	
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	r12d, r12d
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	cmovne	edx, r12d
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	getdelim
	mov	rbp, rbp
	mov	ebp, 1
	test	rax, rax
	nop	
	jle	.label_19
	lea	r14, [rsp + 8]
	lea	r15, [rsp]
.label_38:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	movsx	ecx, byte ptr [rax + rdx - 1]
	lea	rsi, [rsi]
	mov	bl,  byte ptr [byte ptr [rip + line_delim]]
	lea	rsi, [rsi]
	and	bl, 1
	mov	esi, 0xa
	cmovne	esi, r12d
	nop	
	cmp	ecx, esi
	mov	rbp, rbp
	jne	.label_22
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rax - 1], 0
.label_22:
	nop	
	cmp	ecx, esi
	sete	al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	movzx	esi, al
	call	process_line
	lea	rdi, [rdi]
	and	ebp, eax
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	lea	rdi, [rdi]
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, r12d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	call	getdelim
	mov	rbp, rbp
	test	rax, rax
	nop	
	jg	.label_38
.label_19:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	je	.label_18
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	call	error
.label_18:
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_16
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_16
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_16:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + inval_style]]
	lea	rdi, [rdi]
	and	eax, 0xfffffffe
	lea	rsi, [rsi]
	cmp	eax, 2
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	add	ecx, ecx
	xor	eax, eax
	test	ebp, ebp
	mov	rsp, rsp
	cmove	eax, ecx
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_30:
	cmp	eax, 0xffffff7d
	nop	
	je	.label_29
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_32
	nop	
	xor	edi, edi
	call	usage
.label_29:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.30
	nop	
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	xor	r9d, r9d
	xor	eax, eax
	lea	rsi, [rsi]
	call	version_etc
	nop	
	xor	edi, edi
	call	exit
.label_32:
	mov	edi, 1
	call	usage
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	jmp	.label_17
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	rbp, rbp
	jmp	.label_17
.label_31:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_12
.label_40:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_17
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
.label_12:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
.label_15:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
.label_17:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	nop	
	mov	r14, rdi
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	mov	qword ptr [rsp + 0x10], 0
	mov	r8d, OFFSET FLAT:.str.93
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	je	.label_49
	nop	
	movsx	edi, byte ptr [rbx + r14 - 1]
	mov	rbp, rbp
	call	c_isdigit
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.93
	xor	r15d, r15d
	test	al, al
	mov	rdi, r14
	mov	rsp, rsp
	jne	.label_49
	lea	rdi, [rbx + 2]
	call	xmalloc
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsi]
	lea	r12, [r15 + rbx - 1]
	mov	qword ptr [rsp + 0x10], r12
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	cmp	rbx, 2
	nop	
	jb	.label_46
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + rbx - 1]
	cmp	eax, 0x69
	mov	rbp, rbp
	jne	.label_46
	movsx	edi, byte ptr [r12 - 1]
	mov	rsp, rsp
	call	c_isdigit
	test	al, al
	mov	rsp, rsp
	je	.label_47
.label_46:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rax + 1], 0x42
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rax + 1], 0
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.94
	lea	rsi, [rsi]
	jmp	.label_50
.label_47:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.93
.label_50:
	mov	rdi, r15
.label_49:
	nop	
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	call	xstrtoumax
	test	eax, eax
	jne	.label_48
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	jne	.label_48
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	test	rax, rax
	je	.label_48
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
.label_48:
	mov	rdi, r15
	call	free
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402c60

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	r12, rdi
	nop	
	mov	qword ptr [rsp + 0x20], 0
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_76
	nop	word ptr cs:[rax + rax]
.label_62:
	inc	r14
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x25
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rbx, [rax + rbx + 1]
.label_76:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	eax, 0x25
	lea	rdi, [rdi]
	jne	.label_66
	movzx	eax, byte ptr [r12 + rbx + 1]
	mov	rbp, rbp
	cmp	eax, 0x25
	lea	rdi, [rdi]
	jne	.label_69
	mov	al, byte ptr [r12 + rbx]
.label_66:
	mov	rbp, rbp
	test	al, al
	jne	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	nop	
	jmp	.label_53
.label_69:
	inc	rbx
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_65
	nop	word ptr [rax + rax]
.label_60:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	nop	
	inc	rbx
.label_65:
	lea	rdi, [r12 + rbx]
	mov	esi, 0x20
	call	__strspn_c1
	add	rbx, rax
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r12 + rbx]
	cmp	ecx, 0x27
	je	.label_60
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	nop	
	je	.label_68
	test	rax, rax
	jne	.label_65
	jmp	.label_67
.label_68:
	lea	rdi, [rdi]
	inc	rbx
	mov	bpl, 1
	jmp	.label_65
.label_67:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	dword ptr [r15], 0
	lea	rsi, [rsi]
	add	rbx, r12
	lea	rsi, [rsp + 0x20]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strtol
	nop	
	mov	r13, rax
	cmp	dword ptr [r15], 0x22
	mov	rbp, rbp
	je	.label_78
	test	r13, r13
	mov	rbp, rbp
	je	.label_55
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x20], rbx
	je	.label_55
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	mov	rbp, rbp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_61
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_61
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_63
	mov	rbp, rbp
	test	r13, r13
	lea	rsi, [rsi]
	jg	.label_61
.label_63:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_61:
	test	r13, r13
	js	.label_54
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_56
	mov	qword ptr [word ptr [rip + zero_padding_width]],  r13
	jmp	.label_55
.label_54:
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	mov	rbp, rbp
	neg	r13
.label_56:
	mov	qword ptr [word ptr [rip + padding_width]],  r13
.label_55:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	sub	rbx, r12
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	je	.label_64
	test	al, al
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_53
.label_64:
	mov	dword ptr [r15], 0
	nop	
	lea	rbx, [rbx + r12 + 1]
	lea	rsi, [rsp + 0x20]
	mov	edx, 0xa
	mov	rdi, rbx
	mov	rbp, rbp
	call	strtol
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + user_precision]],  rax
	nop	
	test	rax, rax
	js	.label_51
	cmp	dword ptr [r15], 0x22
	je	.label_51
	mov	rsp, rsp
	movsx	rbx, byte ptr [rbx]
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	cmp	rbx, 0x2b
	je	.label_51
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	mov	rsp, rsp
	and	eax, 1
	test	ax, ax
	jne	.label_51
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	sub	rbx, r12
.label_71:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r12 + rbx]
	cmp	eax, 0x66
	jne	.label_75
	inc	rbx
	mov	rsp, rsp
	mov	rax, rbx
	mov	rbp, rbp
	jmp	.label_77
	nop	dword ptr [rax + rax]
.label_57:
	add	rax, rcx
.label_77:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r12 + rax]
	cmp	ecx, 0x25
	je	.label_52
	test	cl, cl
	jne	.label_58
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_52:
	movzx	ecx, byte ptr [rax + r12 + 1]
	nop	
	cmp	ecx, 0x25
	lea	rsi, [rsi]
	jne	.label_70
.label_58:
	movzx	ecx, byte ptr [r12 + rax]
	mov	rbp, rbp
	cmp	ecx, 0x25
	nop	
	mov	ecx, 2
	lea	rdi, [rdi]
	je	.label_57
	nop	
	mov	ecx, 1
	nop	
	jmp	.label_57
.label_59:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_74
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	call	xstrndup
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + format_str_prefix]],  rax
.label_74:
	mov	rbp, rbp
	cmp	byte ptr [r12 + rbx], 0
	je	.label_73
	add	rbx, r12
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [word ptr [rip + format_str_suffix]],  rax
.label_73:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_72
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsi, r12
	mov	rsp, rsp
	call	quote_n
	lea	rdi, [rdi]
	mov	r15, rax
	nop	
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.114
	nop	
	mov	r13d, OFFSET FLAT:.str.115
	nop	
	cmovne	r13, rax
	mov	r12,  qword ptr [word ptr [rip + padding_width]]
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + padding_alignment]]
	and	al, 1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.116
	lea	rsi, [rsi]
	mov	r14d, OFFSET FLAT:.str.117
	cmovne	r14, rax
	mov	rsi,  qword ptr [word ptr [rip + format_str_prefix]]
	nop	
	test	rsi, rsi
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rsi, rbx
	mov	edi, 1
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rbp
	mov	rbp, rax
	mov	rax,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rax, rax
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	edi, 2
	nop	
	mov	rsi, rbx
	call	quote_n
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.113
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	r8, r13
	mov	r9, r12
	mov	rbp, rbp
	call	__fprintf_chk
.label_72:
	add	rsp, 0x28
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_70:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.112
.label_53:
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi, r12
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_78:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.107
	lea	rdi, [rdi]
	jmp	.label_53
.label_51:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.110
	nop	
	jmp	.label_53
.label_75:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	mov	rax, rdi
	nop	
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	ja	.label_79
	lea	rsi, [rsi]
	push	rax
	inc	rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	xrealloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
	mov	rsp, rsp
	add	rsp, 8
.label_79:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl process_line
	.type process_line, @function
process_line:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	call	next_field
	nop	
	mov	rcx, qword ptr [rsp]
	mov	ebp, 1
	mov	rsp, rsp
	mov	ebx, 1
	cmp	byte ptr [rcx], 0
	je	.label_81
	lea	rsi, [rsi]
	mov	r13b, 1
	mov	r12d, 0x20
	lea	rdi, [rdi]
	lea	rbp, [rsp]
	nop	dword ptr [rax]
.label_80:
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0
	nop	
	mov	rdi, rax
	mov	rsi, rbx
	nop	
	call	process_field
	mov	r15b, al
	test	r15b, r15b
	je	.label_83
	mov	rbp, rbp
	mov	r15b, r13b
.label_83:
	mov	edi,  dword ptr [dword ptr [rip + delimiter]]
	lea	rsi, [rsi]
	cmp	edi, 0x80
	lea	rdi, [rdi]
	cmove	edi, r12d
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputc_unlocked
	lea	rsi, [rsi]
	inc	qword ptr [rsp]
	nop	
	inc	rbx
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	next_field
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	mov	r13b, r15b
	jne	.label_80
	nop	
	and	r15b, 1
	movzx	ebp, r15b
.label_81:
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	process_field
	nop	
	mov	bl, al
	lea	rsi, [rsi]
	test	r14b, r14b
	lea	rsi, [rsi]
	je	.label_82
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	and	al, 1
	mov	edi, 0xa
	mov	rbp, rbp
	cmovne	edi, ecx
	mov	rbp, rbp
	call	putchar_unlocked
.label_82:
	mov	rsp, rsp
	xor	eax, eax
	test	bl, bl
	mov	rbp, rbp
	cmovne	eax, ebp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0

	.globl next_field
	.type next_field, @function
next_field:
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	lea	rdi, [rdi]
	mov	al, byte ptr [r15]
	cmp	ecx, 0x80
	mov	rsp, rsp
	jne	.label_89
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	mov	rbx, r15
	lea	rdi, [rdi]
	je	.label_88
	lea	rsi, [rsi]
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	rsp, rsp
	movzx	edi, al
	lea	rsi, [rsi]
	call	field_sep
	lea	rsi, [rsi]
	test	al, al
	je	.label_88
	mov	al, byte ptr [rbx + 1]
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_90
.label_88:
	mov	al, byte ptr [rbx]
	jmp	.label_85
	nop	dword ptr [rax]
.label_87:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_85:
	nop	
	test	al, al
	je	.label_84
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rsp, rsp
	call	field_sep
	test	al, al
	mov	rbp, rbp
	je	.label_87
	jmp	.label_84
.label_89:
	movsx	eax, al
	lea	rdi, [rdi]
	cmp	eax, ecx
	nop	
	mov	rbx, r15
	je	.label_84
	lea	rdi, [rdi]
	mov	al, byte ptr [r15]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	mov	rbx, r15
	lea	rdi, [rdi]
	je	.label_84
	mov	ecx,  dword ptr [dword ptr [rip + delimiter]]
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_86:
	lea	rdi, [rdi]
	movsx	eax, al
	nop	
	cmp	eax, ecx
	mov	rsp, rsp
	je	.label_84
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_86
.label_84:
	mov	rsp, rsp
	mov	qword ptr [r14], rbx
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], 0
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	include_field
	test	al, al
	je	.label_94
	lea	rsi, [rsp + 0x20]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rcx, rbp
	call	process_suffixed_number
	lea	rdi, [rdi]
	test	eax, eax
	setne	bpl
	je	.label_93
	fld	xword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	call	prepare_padded_number
	lea	rdi, [rdi]
	test	eax, eax
	setne	bpl
.label_93:
	nop	
	test	bpl, bpl
	je	.label_91
	call	print_padded_number
	lea	rsi, [rsi]
	jmp	.label_92
.label_94:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rbx
	call	fputs_unlocked
	nop	
	mov	bpl, 1
	mov	rsp, rsp
	jmp	.label_92
.label_91:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	mov	rbp, rbp
	call	fputs_unlocked
	xor	ebp, ebp
.label_92:
	lea	rdi, [rdi]
	mov	al, bpl
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	lea	rsi, [rsi]
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	ebx, 0xa
	nop	
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	mov	rsp, rsp
	and	al, 1
	or	al, cl
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl include_field
	.type include_field, @function
include_field:
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_95
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_96
	mov	rsp, rsp
	add	rcx, 0x10
	nop	word ptr cs:[rax + rax]
.label_98:
	cmp	rax, rdi
	ja	.label_99
	mov	al, 1
	nop	
	cmp	qword ptr [rcx - 8], rdi
	nop	
	jae	.label_97
.label_99:
	nop	
	mov	rax, qword ptr [rcx]
	nop	
	add	rcx, 0x10
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_98
.label_96:
	xor	eax, eax
.label_97:
	lea	rdi, [rdi]
	ret	
.label_95:
	nop	
	cmp	rdi, 1
	sete	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403560

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x38
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	nop	
	je	.label_103
	nop	
	mov	rdi, r13
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	call	strlen
	mov	rbp, rbp
	cmp	rbp, rax
	jbe	.label_103
	add	rbp, r13
	lea	rdi, [rdi]
	sub	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, rbp
	nop	
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_105
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_103
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.119
	lea	rsi, [rsi]
	xor	eax, eax
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_103
.label_105:
	mov	rbp, rbp
	mov	byte ptr [rbp], 0
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_103
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + suffix]]
	nop	
	call	quote
	nop	
	mov	rcx, rax
	nop	
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.118
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
.label_103:
	lea	rsi, [rsi]
	mov	r14b, byte ptr [r13]
	test	r14b, r14b
	mov	rbx, r13
	je	.label_106
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rbp, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rbx, r13
.label_110:
	movsx	edi, r14b
	mov	rsp, rsp
	call	to_uchar
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	test	byte ptr [rbp + rax*2], 1
	je	.label_106
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rbx + 1]
	inc	rbx
	test	r14b, r14b
	lea	rdi, [rdi]
	jne	.label_110
.label_106:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + auto_padding]],  0
	mov	rsp, rsp
	je	.label_101
	mov	rsp, rsp
	cmp	r12, 1
	lea	rdi, [rdi]
	jg	.label_100
	mov	eax, r13d
	mov	rsp, rsp
	sub	eax, ebx
	jne	.label_100
	mov	qword ptr [word ptr [rip + padding_width]],  0
	lea	rdi, [rdi]
	jmp	.label_108
.label_100:
	mov	rdi, r13
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	mov	rdi, rax
	call	setup_padding_buffer
.label_108:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_101
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx,  qword ptr [word ptr [rip + padding_width]]
	nop	
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.120
	mov	rsp, rsp
	xor	eax, eax
	call	__fprintf_chk
.label_101:
	mov	rsp, rsp
	fldz	
	fstp	xword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x20]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	call	parse_human_number
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, 1
	jne	.label_109
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_109
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.121
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, r15
	call	error
.label_109:
	mov	rcx,  qword ptr [word ptr [rip + from_unit_size]]
	nop	
	cmp	rcx, 1
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	jne	.label_102
	cmp	rax, 1
	je	.label_104
.label_102:
	fld	xword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rcx
	test	rcx, rcx
	setns	cl
	movzx	ecx, cl
	fild	qword ptr [rsp + 0x10]
	mov	rbp, rbp
	fadd	dword ptr [dword ptr [+ (rcx * 4) + label_107]]
	fmulp	st(1)
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	nop	
	test	rax, rax
	nop	
	setns	al
	movzx	eax, al
	mov	rbp, rbp
	fild	qword ptr [rsp + 0x18]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_107]]
	mov	rsp, rsp
	fdivp	st(1)
	nop	
	fstp	xword ptr [rsp + 0x20]
.label_104:
	fld	xword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	fstp	xword ptr [rax]
	or	ebp, 1
	lea	rsi, [rsi]
	cmp	ebp, 1
	sete	al
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403870

	.globl prepare_padded_number
	.type prepare_padded_number, @function
prepare_padded_number:
	push	rbp
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xb0
	mov	rbx, rdi
	nop	
	fld	xword ptr [rsp + 0xd0]
	mov	rsp, rsp
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	mov	rax,  qword ptr [word ptr [rip + user_precision]]
	cmp	rax, -1
	cmovne	rbx, rax
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x2c]
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	expld
	fstp	st(0)
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x2c]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	lea	rdi, [rdi]
	jne	.label_114
	mov	rbp, rbp
	lea	rcx, [rax + rbx]
	cmp	rcx, 0x13
	mov	rbp, rbp
	jb	.label_114
	xor	r14d, r14d
	nop	
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	nop	
	je	.label_111
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	lea	rsi, [rsi]
	and	al, 1
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	add	ebp, ebp
	xor	r14d, r14d
	xor	edi, edi
	test	rbx, rbx
	je	.label_113
	mov	esi, OFFSET FLAT:.str.133
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	mov	rdx, rcx
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	jmp	.label_111
.label_114:
	cmp	eax, 0x1b
	nop	
	jb	.label_118
	xor	r14d, r14d
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	lea	rdi, [rdi]
	je	.label_111
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebx, al
	add	ebx, ebx
	mov	rbp, rbp
	xor	r14d, r14d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.135
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	xor	esi, esi
	nop	
	xor	eax, eax
	nop	
	mov	edi, ebx
.label_117:
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_111
.label_118:
	mov	edx,  dword ptr [dword ptr [rip + scale_to]]
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [rip + grouping]]
	and	ecx, 1
	mov	rsp, rsp
	mov	r8d,  dword ptr [dword ptr [rip + round_style]]
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	mov	edi, ebx
	call	double_to_human
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_116
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	edx, 0x7f
	sub	rdx, rax
	nop	
	mov	ecx, 0x80
	mov	rdi, rbp
	nop	
	mov	rsi, rbx
	call	__strncat_chk
.label_116:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	jne	.label_115
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rsp + 0x30]
	mov	rbp, rbp
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x14]
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.136
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
.label_115:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + padding_width]]
	test	rbx, rbx
	je	.label_112
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	nop	
	call	strlen
	cmp	rax, rbx
	mov	rbp, rbp
	jae	.label_112
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + padding_buffer_size]]
	lea	rdi, [rdi]
	movzx	r8d,  byte ptr [byte ptr [rip + padding_alignment]]
	mov	rbp, rbp
	and	r8d, 1
	nop	
	xor	r8d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x30]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x20]
	mov	r9d, 2
	call	mbsalign
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_119
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsp, rsp
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.137
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	jmp	.label_119
.label_112:
	nop	
	lea	rbx, [rsp + 0x30]
	nop	
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [rax + 1]
	lea	rsi, [rsi]
	call	setup_padding_buffer
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rbx
	call	strcpy
.label_119:
	lea	rdi, [rdi]
	mov	r14d, 1
.label_111:
	nop	
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0xb0
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_113:
	mov	esi, OFFSET FLAT:.str.134
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	fld	xword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	xor	esi, esi
	nop	
	xor	eax, eax
	nop	
	mov	edi, ebp
	jmp	.label_117
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c10

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rdi, rdi
	je	.label_120
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_120:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + format_str_suffix]]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_121
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	pop	rax
	jmp	fputs_unlocked
.label_121:
	pop	rax
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c80

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	r8d,  dword ptr [dword ptr [rip + scale_from]]
	lea	rsi, [rsp]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	call	simple_strtod_human
	mov	ebx, eax
	cmp	ebx, 2
	jb	.label_122
	mov	edi, ebx
	mov	rsi, r14
	lea	rdi, [rdi]
	call	simple_strtod_fatal
	jmp	.label_123
.label_122:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_123
	cmp	byte ptr [rax], 0
	je	.label_123
	lea	rdi, [rdi]
	mov	ebx, 5
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_123
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	mov	ebx, 5
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.122
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsi, r14
	call	quote_n
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	call	quote_n
	mov	r8, rax
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	mov	rdx, r15
	mov	rcx, r14
	nop	
	call	error
.label_123:
	lea	rdi, [rdi]
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403da0

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	nop	
	push	rbx
	nop	
	sub	rsp, 0x58
	lea	rsi, [rsi]
	mov	r12d, r8d
	nop	
	mov	rbx, rcx
	lea	rdi, [rdi]
	mov	r14, rdx
	nop	
	mov	r13, rsi
	mov	rbp, rdi
	nop	
	mov	edi, r12d
	call	default_scale_base
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x3c], eax
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_131
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rbp
	nop	
	call	quote_n
	mov	rsp, rsp
	mov	r15, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	lea	rdi, [rdi]
	mov	edi, 1
	call	quote_n
	mov	rsp, rsp
	mov	r8, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.123
	lea	rdi, [rdi]
	mov	r9d, 0x12
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rcx, r15
	lea	rsi, [rsi]
	call	__fprintf_chk
.label_131:
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	simple_strtod_float
	mov	dword ptr [rsp + 0x48], eax
	mov	rsp, rsp
	cmp	eax, 1
	ja	.label_135
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x38], r12d
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_125
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [r14]
	mov	ecx, dword ptr [rbx]
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.124
	nop	
	xor	eax, eax
	mov	rbp, rbp
	call	__fprintf_chk
.label_125:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r13]
	xor	r15d, r15d
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_130
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	rbp, rbp
	mov	rbx, qword ptr [r13]
	mov	r15b, byte ptr [rbx]
	lea	rdi, [rdi]
	movsx	edi, r15b
	call	to_uchar
	lea	rdi, [rdi]
	movzx	r12d, al
	call	__ctype_b_loc
	nop	
	mov	rbp, rax
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + r12*2], 1
	lea	rsi, [rsi]
	je	.label_133
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	qword ptr [r13], rbx
	mov	rsp, rsp
	mov	r15b, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	nop	
	movzx	eax, al
	mov	rcx, qword ptr [rbp]
	inc	rbx
	test	byte ptr [rcx + rax*2], 1
	lea	rdi, [rdi]
	jne	.label_134
	dec	rbx
.label_133:
	mov	r12d, dword ptr [rsp + 0x38]
	movsx	ebp, r15b
	mov	edi, ebp
	call	valid_suffix
	mov	ecx, eax
	mov	eax, 5
	test	ecx, ecx
	nop	
	je	.label_126
	lea	rsi, [rsi]
	mov	eax, 4
	mov	rsp, rsp
	test	r12d, r12d
	je	.label_126
	mov	edi, ebp
	call	suffix_power
	lea	rsi, [rsi]
	mov	r15d, eax
	lea	rax, [rbx + 1]
	nop	
	mov	qword ptr [r13], rax
	cmp	r12d, 1
	lea	rsi, [rsi]
	jne	.label_127
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_127
	add	rbx, 2
	mov	qword ptr [r13], rbx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x3c], 0x400
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_127
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], 0x400
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.125
	nop	
	mov	ecx, 0x400
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__fprintf_chk
.label_127:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jmp	.label_132
.label_130:
	mov	r12d, dword ptr [rsp + 0x38]
.label_132:
	cmp	r12d, 4
	mov	rsp, rsp
	jne	.label_124
	mov	rcx, qword ptr [r13]
	mov	eax, 6
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x69
	lea	rsi, [rsi]
	jne	.label_126
	inc	rcx
	mov	qword ptr [r13], rcx
.label_124:
	nop	
	mov	ebp, dword ptr [rsp + 0x3c]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x54], ebp
	nop	
	fild	dword ptr [rsp + 0x54]
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	call	powerld
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_128
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.126
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, ebp
	mov	r8d, r15d
	fstp	xword ptr [rsp + 0x3c]
	nop	
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x3c]
.label_128:
	lea	rsi, [rsi]
	fld	xword ptr [r14]
	fmulp	st(1)
	nop	
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [r14]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_129
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.127
	xor	eax, eax
	mov	rsp, rsp
	call	__fprintf_chk
	jmp	.label_135
.label_129:
	fstp	st(0)
.label_135:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x48]
.label_126:
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150

	.globl simple_strtod_fatal
	.type simple_strtod_fatal, @function
simple_strtod_fatal:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	xor	esi, esi
	mov	eax, edi
	nop	
	cmp	edi, 6
	ja	.label_137
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_138]]
.label_682:
	mov	esi, OFFSET FLAT:.str.128
	lea	rsi, [rsi]
	jmp	.label_137
.label_683:
	mov	esi, OFFSET FLAT:.str.129
	lea	rsi, [rsi]
	jmp	.label_137
.label_684:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.130
	jmp	.label_137
.label_685:
	mov	esi, OFFSET FLAT:.str.131
	mov	rsp, rsp
	jmp	.label_137
.label_686:
	mov	esi, OFFSET FLAT:.str.132
.label_137:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	lea	rdi, [rdi]
	jne	.label_136
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_136:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi, r14
	nop	
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, ebp
	mov	rdx, rbx
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	error
.label_681:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404210

	.globl default_scale_base
	.type default_scale_base, @function
default_scale_base:
	lea	rsi, [rsi]
	add	edi, -3
	nop	
	cmp	edi, 2
	mov	ecx, 0x400
	mov	eax, 0x3e8
	cmovb	eax, ecx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	mov	rbp, rbp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x40
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	test	r14, r14
	je	.label_142
	lea	rsi, [rsi]
	mov	qword ptr [r14], 0
.label_142:
	lea	rcx, [rsp + 0x3f]
	mov	rbp, rbp
	mov	rsi, rbx
	nop	
	mov	rdx, r15
	call	simple_strtod_int
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, 1
	ja	.label_139
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_139
	fldz	
	nop	
	fstp	xword ptr [rsp + 0x20]
	movsxd	rdi,  dword ptr [dword ptr [rip + decimal_point_length]]
	nop	
	add	rdi, qword ptr [rbx]
	mov	qword ptr [rbx], rdi
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x1f]
	call	simple_strtod_int
	lea	rsi, [rsi]
	cmp	eax, 1
	ja	.label_143
	cmove	ebp, eax
	mov	eax, 3
	cmp	byte ptr [rsp + 0x1f], 0
	mov	rsp, rsp
	je	.label_146
.label_143:
	mov	ebp, eax
	jmp	.label_139
.label_146:
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x30]
	sub	r12, qword ptr [rbx]
	fld	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp + 0x14]
	fld	dword ptr [dword ptr [rip + label_140]]
	fstp	xword ptr [rsp]
	mov	edi, r12d
	call	powerld
	fld	xword ptr [rsp + 0x14]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_144
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x3f], 0
	fld	xword ptr [r15]
	je	.label_141
	lea	rsi, [rsi]
	fsubrp	st(1)
	jmp	.label_147
.label_141:
	faddp	st(1)
.label_147:
	fstp	xword ptr [r15]
	nop	
	fldz	
.label_144:
	fstp	st(0)
	test	r14, r14
	je	.label_145
	mov	qword ptr [r14], r12
.label_145:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	mov	qword ptr [rbx], rax
.label_139:
	mov	eax, ebp
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404380

	.globl valid_suffix
	.type valid_suffix, @function
valid_suffix:
	push	rax
	mov	eax, edi
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.93
	mov	edx, 9
	mov	rsp, rsp
	mov	esi, eax
	call	memchr
	test	rax, rax
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	mov	rsp, rsp
	cmp	edi, 0x53
	jg	.label_150
	add	edi, -0x45
	lea	rsi, [rsi]
	cmp	edi, 0xb
	ja	.label_149
	mov	rbp, rbp
	mov	eax, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_151]]
.label_689:
	mov	eax, 6
	mov	rsp, rsp
	ret	
.label_150:
	mov	rsp, rsp
	cmp	edi, 0x54
	je	.label_152
	lea	rdi, [rdi]
	cmp	edi, 0x59
	nop	
	je	.label_148
	mov	rsp, rsp
	cmp	edi, 0x5a
	jne	.label_149
	mov	eax, 7
	lea	rdi, [rdi]
	ret	
.label_690:
	mov	eax, 3
	mov	rsp, rsp
	ret	
.label_692:
	mov	rbp, rbp
	mov	eax, 2
	ret	
.label_693:
	lea	rsi, [rsi]
	mov	eax, 5
	ret	
.label_152:
	mov	eax, 4
	mov	rsp, rsp
	ret	
.label_148:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rsi, [rsi]
	ret	
.label_149:
	lea	rdi, [rdi]
	xor	eax, eax
.label_691:
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404440

	.globl powerld
	.type powerld, @function
powerld:
	fld	xword ptr [rsp + 8]
	fld1	
	mov	rsp, rsp
	test	edi, edi
	lea	rdi, [rdi]
	je	.label_153
	fstp	st(0)
	nop	
	cmp	edi, 1
	je	.label_154
	mov	rsp, rsp
	mov	eax, 1
	sub	eax, edi
	lea	rdi, [rdi]
	fld	st(0)
	nop	word ptr [rax + rax]
.label_155:
	lea	rdi, [rdi]
	fmul	st(1)
	nop	
	inc	eax
	lea	rsi, [rsi]
	jne	.label_155
.label_153:
	lea	rdi, [rdi]
	fstp	st(1)
	ret	
.label_154:
	lea	rsi, [rsi]
	fldz	
	mov	rbp, rbp
	fxch	st(1)
	lea	rsi, [rsi]
	fstp	st(1)
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rdx
	mov	r12, rsi
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x2d
	nop	
	cmovne	rbx, rdi
	nop	
	sete	byte ptr [rcx]
	mov	qword ptr [r12], rbx
	lea	rdi, [rdi]
	fldz	
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_156
	mov	rsp, rsp
	fstp	st(0)
	movsx	ebp, byte ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	c_isdigit
	mov	rbp, rbp
	fldz	
	xor	r13d, r13d
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	rbp, rbp
	je	.label_158
	fstp	st(0)
	inc	rbx
	fldz	
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rsp, rsp
	mov	r14d, 1
	xor	r15d, r15d
	nop	
.label_161:
	mov	rsp, rsp
	mov	eax, r15d
	fldz	
	lea	rdi, [rdi]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	setp	cl
	setne	dl
	or	dl, cl
	add	ebp, -0x30
	mov	rbp, rbp
	setne	cl
	or	cl, dl
	lea	rsi, [rsi]
	movzx	r15d, cl
	add	r15d, eax
	mov	eax, 2
	lea	rsi, [rsi]
	cmp	r15d, 0x1b
	nop	
	ja	.label_157
	cmp	r15d, 0x12
	cmova	r13d, r14d
	fmul	dword ptr [dword ptr [rip + label_140]]
	mov	dword ptr [rsp + 0x24], ebp
	fiadd	dword ptr [rsp + 0x24]
	nop	
	fstp	xword ptr [rsp + 0x18]
	mov	qword ptr [r12], rbx
	lea	rdi, [rdi]
	movsx	ebp, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isdigit
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x18]
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rsp, rsp
	test	al, al
	jne	.label_161
.label_158:
	lea	rsi, [rsi]
	test	cl, cl
	nop	
	jne	.label_160
.label_156:
	nop	
	fstp	xword ptr [rsp + 0x18]
	nop	
	mov	rdi, qword ptr [r12]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	nop	
	movsxd	rdx,  dword ptr [dword ptr [rip + decimal_point_length]]
	mov	rsp, rsp
	call	strncmp
	fld	xword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, 3
	test	ecx, ecx
	jne	.label_157
.label_160:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_159
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	nop	
	cmp	byte ptr [rcx], 0
	fld	st(0)
	mov	rsp, rsp
	fchs	
	lea	rsi, [rsi]
	je	.label_163
	fstp	st(1)
	fldz	
.label_163:
	mov	rbp, rbp
	fstp	st(0)
	nop	
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	jmp	.label_162
.label_159:
	mov	rbp, rbp
	fstp	st(0)
.label_162:
	mov	eax, r13d
	lea	rdi, [rdi]
	fldz	
.label_157:
	lea	rdi, [rdi]
	fstp	st(0)
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404670

	.globl expld
	.type expld, @function
expld:
	nop	
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	r14, rsi
	mov	rsp, rsp
	mov	ebp, edi
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x50]
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	fld	xword ptr [word ptr [rip + label_167]]
	lea	rsi, [rsi]
	fxch	st(1)
	lea	rsi, [rsi]
	fucomi	st(1)
	fstp	st(1)
	jb	.label_168
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_170]]
	fucomip	st(1)
	lea	rdi, [rdi]
	jb	.label_171
	fld	st(0)
	fstp	xword ptr [rsp]
	nop	
	fstp	xword ptr [rsp + 0x1c]
	nop	
	call	absld
	mov	rsp, rsp
	mov	eax, ebp
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	fild	qword ptr [rsp + 0x28]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	mov	rbp, rbp
	xor	ebx, ebx
	fxch	st(1)
	lea	rsi, [rsi]
	fucomip	st(1)
	jae	.label_164
	fstp	st(0)
	fld	xword ptr [rsp + 0x1c]
	fldz	
	lea	rdi, [rdi]
	jmp	.label_166
.label_168:
	fldz	
	nop	
	jmp	.label_166
.label_171:
	nop	
	fldz	
	jmp	.label_166
.label_164:
	fld	xword ptr [rsp + 0x1c]
	mov	rbp, rbp
	fxch	st(1)
	nop	word ptr [rax + rax]
.label_165:
	inc	ebx
	fdivp	st(1)
	mov	rbp, rbp
	fld	st(0)
	nop	
	fstp	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	call	absld
	fld	xword ptr [rsp + 0x10]
	fld	xword ptr [rsp + 0x1c]
	mov	rbp, rbp
	fxch	st(2)
	fucomip	st(1)
	jae	.label_165
.label_166:
	fstp	st(0)
	test	r14, r14
	je	.label_169
	mov	dword ptr [r14], ebx
.label_169:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	nop	
	push	rbx
	nop	
	sub	rsp, 0xa8
	mov	r15d, r8d
	mov	ebp, ecx
	mov	r12d, edx
	mov	r14, rsi
	mov	r13d, edi
	fld	xword ptr [rsp + 0xe0]
	mov	byte ptr [rsp + 0x60], 0x25
	test	ebp, ebp
	je	.label_188
	lea	rbx, [rsp + 0x62]
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x61], 0x27
	jmp	.label_173
.label_188:
	mov	rsp, rsp
	lea	rbx, [rsp + 0x61]
.label_173:
	lea	rdi, [rdi]
	mov	r9,  qword ptr [word ptr [rip + zero_padding_width]]
	lea	rdi, [rdi]
	test	r9, r9
	lea	rsi, [rsi]
	je	.label_178
	fstp	xword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	mov	esi, 0x3e
	nop	
	mov	edx, 1
	mov	rbp, rbp
	mov	rcx, -1
	nop	
	mov	r8d, OFFSET FLAT:.str.138
	xor	eax, eax
	mov	rdi, rbx
	call	__snprintf_chk
	mov	rbp, rbp
	cdqe	
	add	rbx, rax
	jmp	.label_190
.label_178:
	nop	
	fstp	xword ptr [rsp + 0x44]
.label_190:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_191
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.139
	lea	rdi, [rdi]
	xor	eax, eax
	call	__fprintf_chk
.label_191:
	test	r12d, r12d
	je	.label_180
	nop	
	mov	edi, r12d
	lea	rsi, [rsi]
	call	default_scale_base
	lea	rdi, [rdi]
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rsp + 0x38], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], 0
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	lea	rsi, [rsp + 0x5c]
	mov	edi, eax
	call	expld
	fstp	xword ptr [rsp + 0x44]
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_187
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	ecx, dword ptr [rsp + 0x5c]
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x44]
	nop	
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.144
	mov	rbp, rbp
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x38]
	call	__fprintf_chk
.label_187:
	mov	rdi,  qword ptr [word ptr [rip + user_precision]]
	mov	rsp, rsp
	cmp	rdi, -1
	je	.label_182
	imul	eax, dword ptr [rsp + 0x5c], 3
	cmp	rax, rdi
	cmovl	edi, eax
	lea	rdi, [rdi]
	jmp	.label_176
.label_180:
	lea	rsi, [rsi]
	fld	dword ptr [dword ptr [rip + label_140]]
	fstp	xword ptr [rsp]
	nop	
	mov	edi, r13d
	call	powerld
	mov	rsp, rsp
	fld	st(0)
	nop	
	fstp	xword ptr [rsp + 0x38]
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x44]
	nop	
	fmulp	st(1)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	mov	edi, r15d
	call	simple_round
	nop	
	fld	xword ptr [rsp + 0x38]
	mov	rbp, rbp
	fdivp	st(1)
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	nop	
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_175
	test	ebp, ebp
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, OFFSET FLAT:.str.140
	mov	edx, OFFSET FLAT:.str.141
	cmovne	rdx, rax
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, r13d
	fstp	xword ptr [rsp + 0x44]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x44]
.label_175:
	lea	rdi, [rdi]
	fld	st(0)
	fstp	xword ptr [rsp + 0x44]
	mov	byte ptr [rbx + 4], 0
	mov	dword ptr [rbx], 0x664c2a2e
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	lea	r8, [rsp + 0x60]
	mov	esi, 0x80
	mov	edx, 1
	mov	rcx, -1
	nop	
	xor	eax, eax
	nop	
	mov	rdi, r14
	mov	r9d, r13d
	call	__snprintf_chk
	cmp	eax, 0x80
	jb	.label_181
	jmp	.label_184
.label_182:
	fld	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	call	absld
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_140]]
	lea	rsi, [rsi]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_176
	mov	edi, 1
.label_176:
	fld	dword ptr [dword ptr [rip + label_140]]
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x20]
	nop	
	fstp	xword ptr [rsp]
	call	powerld
	fld	st(0)
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x2c]
	fld	xword ptr [rsp + 0x44]
	mov	rbp, rbp
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, r15d
	mov	rsp, rsp
	call	simple_round
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x2c]
	mov	rbp, rbp
	fdivp	st(1)
	mov	rbp, rbp
	fld	st(0)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	nop	
	call	absld
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rsp + 0x38]
	movsd	qword ptr [rsp + 0x50], xmm0
	fld	qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	fxch	st(1)
	nop	
	fucomip	st(1)
	mov	rbp, rbp
	jae	.label_185
	mov	rbp, rbp
	fstp	st(0)
	fld	xword ptr [rsp + 0x44]
	jmp	.label_189
.label_185:
	fld	xword ptr [rsp + 0x44]
	fdivrp	st(1)
	inc	dword ptr [rsp + 0x5c]
.label_189:
	mov	rbp, rbp
	fldz	
	nop	
	fxch	st(1)
	fucomi	st(1)
	lea	rdi, [rdi]
	fstp	st(1)
	lea	rsi, [rsi]
	jne	.label_174
	jp	.label_174
	lea	rdi, [rdi]
	jmp	.label_172
.label_174:
	nop	
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x44]
	call	absld
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_179
	nop	
	cmp	dword ptr [rsp + 0x5c], 0
	setne	bpl
	lea	rsi, [rsi]
	jmp	.label_183
.label_172:
	fstp	xword ptr [rsp + 0x44]
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_183
.label_179:
	xor	ebp, ebp
.label_183:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_186
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x5c]
	fld	xword ptr [rsp + 0x44]
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.145
	mov	al, 1
	movsd	xmm0, qword ptr [rsp + 0x38]
	nop	
	call	__fprintf_chk
.label_186:
	mov	byte ptr [rbx + 6], 0
	lea	rdi, [rdi]
	mov	word ptr [rbx + 4], 0x7325
	nop	
	mov	dword ptr [rbx], 0x664c2a2e
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + user_precision]]
	cmp	rbx, -1
	movzx	eax, bpl
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x5c]
	call	suffix_power_char
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	fld	xword ptr [rsp + 0x44]
	nop	
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x44]
	fstp	xword ptr [rsp]
	nop	
	lea	r8, [rsp + 0x60]
	lea	rdi, [rdi]
	mov	esi, 0x7f
	mov	edx, 1
	nop	
	mov	rcx, -1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	mov	rbp, rbp
	mov	r9d, ebx
	call	__snprintf_chk
	cmp	eax, 0x7f
	mov	rsp, rsp
	jae	.label_184
	cmp	r12d, 4
	jne	.label_177
	mov	ecx, dword ptr [rsp + 0x5c]
	test	ecx, ecx
	je	.label_177
	cdqe	
	mov	rsp, rsp
	mov	edx, 0x7f
	sub	rdx, rax
	mov	esi, OFFSET FLAT:.str.147
	mov	rcx, -1
	mov	rdi, r14
	call	__strncat_chk
.label_177:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_181
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	quote
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.148
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
.label_181:
	lea	rdi, [rdi]
	add	rsp, 0xa8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x44]
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl absld
	.type absld, @function
absld:
	mov	rbp, rbp
	fld	xword ptr [rsp + 8]
	fldz	
	nop	
	fucomip	st(1)
	fld	st(0)
	nop	
	fchs	
	fxch	st(1)
	mov	rbp, rbp
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90

	.globl simple_round
	.type simple_round, @function
simple_round:
	mov	rsp, rsp
	sub	rsp, 0x38
	fld	xword ptr [rsp + 0x40]
	fld	xword ptr [word ptr [rip + label_193]]
	fld	st(1)
	fdiv	st(1)
	lea	rsi, [rsi]
	fnstcw	word ptr [rsp + 0x1e]
	mov	ax, word ptr [rsp + 0x1e]
	mov	word ptr [rsp + 0x1e], 0xc7f
	fldcw	word ptr [rsp + 0x1e]
	nop	
	mov	word ptr [rsp + 0x1e], ax
	mov	rsp, rsp
	fistp	qword ptr [rsp + 0x28]
	fldcw	word ptr [rsp + 0x1e]
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	fild	qword ptr [rsp + 0x30]
	fmulp	st(1)
	lea	rdi, [rdi]
	fsub	st(1), st(0)
	lea	rsi, [rsi]
	fldz	
	lea	rdi, [rdi]
	mov	eax, edi
	cmp	edi, 4
	lea	rsi, [rsi]
	ja	.label_194
	fstp	st(0)
	fstp	xword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_195]]
.label_697:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	lea	rsi, [rsi]
	jmp	.label_192
.label_698:
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	call	simple_round_floor
	jmp	.label_192
.label_699:
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	call	simple_round_from_zero
	mov	rsp, rsp
	jmp	.label_192
.label_700:
	fstp	xword ptr [rsp]
	call	simple_round_to_zero
	mov	rsp, rsp
	jmp	.label_192
.label_701:
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	nop	
	call	simple_round_nearest
.label_192:
	mov	qword ptr [rsp + 0x20], rax
	fild	qword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x14]
	faddp	st(1)
	fldz	
	fldz	
	fxch	st(1)
	nop	
	fxch	st(2)
.label_194:
	mov	rsp, rsp
	fstp	st(2)
	lea	rsi, [rsi]
	fstp	st(0)
	mov	rsp, rsp
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl suffix_power_char
	.type suffix_power_char, @function
suffix_power_char:
	mov	rbp, rbp
	cmp	edi, 8
	lea	rsi, [rsi]
	ja	.label_196
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + label_197]]
	ret	
.label_196:
	mov	eax, OFFSET FLAT:.str.157
	ret	
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	fld	xword ptr [rsp + 8]
	mov	rbp, rbp
	fnstcw	word ptr [rsp - 0x12]
	mov	ax, word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], 0xc7f
	fldcw	word ptr [rsp - 0x12]
	mov	word ptr [rsp - 0x12], ax
	fld	st(0)
	mov	rbp, rbp
	fistp	qword ptr [rsp - 0x10]
	nop	
	fldcw	word ptr [rsp - 0x12]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp - 0x10]
	mov	qword ptr [rsp - 8], rcx
	fild	qword ptr [rsp - 8]
	fxch	st(1)
	fucomip	st(1)
	nop	
	fstp	st(0)
	mov	rsp, rsp
	seta	al
	lea	rsi, [rsi]
	movzx	eax, al
	add	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl simple_round_floor
	.type simple_round_floor, @function
simple_round_floor:
	sub	rsp, 0x18
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	fchs	
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	neg	rax
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e30

	.globl simple_round_from_zero
	.type simple_round_from_zero, @function
simple_round_from_zero:
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x20]
	fldz	
	fucomip	st(1)
	mov	rbp, rbp
	jbe	.label_198
	fstp	xword ptr [rsp]
	nop	
	call	simple_round_floor
	add	rsp, 0x18
	ret	
.label_198:
	fstp	xword ptr [rsp]
	call	simple_round_ceiling
	add	rsp, 0x18
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	fld	xword ptr [rsp + 8]
	fnstcw	word ptr [rsp - 0xa]
	mov	ax, word ptr [rsp - 0xa]
	lea	rsi, [rsi]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	rbp, rbp
	mov	word ptr [rsp - 0xa], ax
	fistp	qword ptr [rsp - 8]
	lea	rsi, [rsi]
	fldcw	word ptr [rsp - 0xa]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp - 8]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl simple_round_nearest
	.type simple_round_nearest, @function
simple_round_nearest:
	fld	xword ptr [rsp + 8]
	mov	rbp, rbp
	fldz	
	fucomip	st(1)
	nop	
	seta	al
	nop	
	movzx	eax, al
	mov	rsp, rsp
	shl	rax, 4
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rax + label_199]]
	lea	rsi, [rsi]
	faddp	st(1)
	lea	rdi, [rdi]
	fnstcw	word ptr [rsp - 0xa]
	mov	rbp, rbp
	mov	ax, word ptr [rsp - 0xa]
	lea	rsi, [rsi]
	mov	word ptr [rsp - 0xa], 0xc7f
	fldcw	word ptr [rsp - 0xa]
	mov	rsp, rsp
	mov	word ptr [rsp - 0xa], ax
	lea	rdi, [rdi]
	fistp	qword ptr [rsp - 8]
	mov	rsp, rsp
	fldcw	word ptr [rsp - 0xa]
	mov	rax, qword ptr [rsp - 8]
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f20

	.globl set_fields
	.type set_fields, @function
set_fields:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	dword ptr [rsp + 8], esi
	mov	r12, rdi
	xor	ebp, ebp
	and	esi, 1
	mov	dword ptr [rsp + 0xc], esi
	mov	rbp, rbp
	mov	ebx, 0
	lea	rdi, [rdi]
	je	.label_209
	nop	
	movzx	ecx, byte ptr [r12]
	mov	rbp, rbp
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_213
	movzx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	neg	eax
.label_213:
	lea	rcx, [r12 + 1]
	test	eax, eax
	sete	bl
	movzx	ebp, bl
	cmove	r12, rcx
	lea	rsi, [rsi]
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	mov	al, bl
	mov	dword ptr [rsp + 0x24], eax
	nop	
	jmp	.label_219
.label_209:
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_219
	nop	dword ptr [rax]
.label_206:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	inc	r12
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r15
.label_219:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], ebx
	lea	rdi, [rdi]
	mov	r15b, bl
	and	r15b, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_231
	nop	dword ptr [rax]
.label_234:
	inc	r12
	mov	r14b, 1
.label_231:
	mov	rsp, rsp
	movsx	ebx, byte ptr [r12]
	cmp	ebx, 0x2c
	je	.label_202
	mov	rsp, rsp
	movzx	eax, bl
	cmp	eax, 0x2d
	je	.label_207
	mov	edi, ebx
	lea	rdi, [rdi]
	call	to_uchar_0
	movzx	r13d, al
	mov	rbp, rbp
	call	__ctype_b_loc
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_202
	nop	
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r13*2]
	mov	rsp, rsp
	and	eax, 1
	mov	rbp, rbp
	test	ax, ax
	lea	rsi, [rsi]
	jne	.label_202
	nop	
	add	ebx, -0x30
	mov	rbp, rbp
	cmp	ebx, 9
	mov	rbp, rbp
	ja	.label_216
	cmp	qword ptr [word ptr [rip + set_fields.num_start]],  0
	setne	al
	mov	rsp, rsp
	test	r14b, al
	jne	.label_221
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  r12
.label_221:
	mov	al, 1
	test	r15b, r15b
	je	.label_224
	mov	dword ptr [rsp + 0x20], eax
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_224:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], eax
.label_225:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	ja	.label_228
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp*4]
	lea	rdi, [rdi]
	movsx	rcx, byte ptr [r12]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, rbp
	cmovae	rbp, rax
	jb	.label_228
	cmp	rbp, -1
	jne	.label_234
	jmp	.label_228
	nop	dword ptr [rax]
.label_202:
	mov	ebx, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	bl, 1
	jne	.label_200
	nop	
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_205
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rbp
	call	add_range_pair
	nop	
	mov	r15, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_210
	nop	word ptr cs:[rax + rax]
.label_200:
	nop	
	mov	eax, dword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x24]
	or	cl, al
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	and	al, 1
	mov	r15d, 1
	cmovne	r15, qword ptr [rsp + 0x10]
	nop	
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_212
	test	al, al
	je	.label_217
.label_212:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_218
	mov	rsp, rsp
	mov	rsi, -1
	mov	rdi, r15
	jmp	.label_235
	nop	dword ptr [rax]
.label_207:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_223
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	sete	cl
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_226
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	je	.label_229
.label_226:
	lea	rdi, [rdi]
	test	al, al
	mov	r15d, 1
	mov	rbp, rbp
	cmovne	r15, rbp
	mov	rbp, rbp
	mov	bl, 1
	mov	eax, dword ptr [rsp + 0x24]
	jmp	.label_206
.label_218:
	cmp	rbp, r15
	mov	rsp, rsp
	jb	.label_233
	mov	rdi, r15
	mov	rsi, rbp
.label_235:
	lea	rdi, [rdi]
	call	add_range_pair
	xor	ebx, ebx
.label_210:
	lea	rdi, [rdi]
	cmp	byte ptr [r12], 0
	lea	rsi, [rsi]
	je	.label_201
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x20], 0
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_206
.label_201:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	test	rsi, rsi
	je	.label_211
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	lea	rsi, [rsi]
	mov	edx, 0x10
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rsp, rsp
	call	qsort
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	mov	rsp, rsp
	je	.label_214
.label_208:
	mov	rbp, rbx
	nop	
	lea	rbx, [rbp + 1]
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	jae	.label_215
	nop	dword ptr [rax + rax]
.label_238:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	shl	rax, 4
	mov	rsi, rbp
	shl	rsi, 4
	mov	rdx, qword ptr [rcx + rsi + 8]
	cmp	qword ptr [rcx + rax], rdx
	lea	rdi, [rdi]
	ja	.label_215
	lea	rsi, [rsi]
	lea	rsi, [rcx + rsi + 8]
	mov	rcx, qword ptr [rcx + rax + 8]
	cmp	rcx, rdx
	cmova	rdx, rcx
	mov	qword ptr [rsi], rdx
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rcx + rax]
	lea	rsi, [rcx + rax + 0x10]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	sub	rdx, rbx
	shl	rdx, 4
	nop	
	add	rdx, -0x10
	call	memmove
	nop	
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	lea	rsi, [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	cmp	rbx, rax
	jb	.label_238
.label_215:
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jb	.label_208
.label_214:
	nop	
	mov	eax, dword ptr [rsp + 8]
	test	al, 2
	je	.label_236
	call	complement_rp
.label_236:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	lea	rdi, [rdi]
	inc	rsi
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	shl	rsi, 4
	mov	rsp, rsp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + frp]],  rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	shl	rcx, 4
	mov	qword ptr [rcx + rax - 8], -1
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	shl	rax, 4
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx - 0x10], -1
	nop	
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_228:
	mov	rbx,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rdi, rbx
	call	strspn
	nop	
	mov	rdi, rbx
	mov	rsi, rax
	call	xstrndup
	nop	
	mov	rbx, rax
	nop	
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_232
	nop	
	mov	esi, OFFSET FLAT:.str.9_0
	jmp	.label_237
.label_216:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	mov	rsp, rsp
	test	al, 4
	jne	.label_239
	mov	esi, OFFSET FLAT:.str.11_0
	nop	
	jmp	.label_204
.label_232:
	nop	
	mov	esi, OFFSET FLAT:.str.8_0
.label_237:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_239:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10_0
.label_204:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_205:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_227
	mov	esi, OFFSET FLAT:.str.4_0
	nop	
	jmp	.label_203
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_203
.label_223:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	mov	rsp, rsp
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_230
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	jmp	.label_203
.label_229:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 8]
	nop	
	xor	edi, edi
	test	al, 4
	mov	rsp, rsp
	jne	.label_222
	nop	
	mov	esi, OFFSET FLAT:.str.4_0
	lea	rdi, [rdi]
	jmp	.label_203
.label_227:
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	jmp	.label_203
.label_233:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	nop	
	jmp	.label_203
.label_230:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_203
.label_222:
	mov	esi, OFFSET FLAT:.str.3_0
.label_203:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_211:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	lea	rsi, [rsi]
	test	al, 4
	jne	.label_220
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_203
.label_220:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_203
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	nop	
	cmp	rax,  qword ptr [word ptr [rip + n_frp_allocated]]
	lea	rsi, [rsi]
	jne	.label_240
	nop	
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	esi, OFFSET FLAT:n_frp_allocated
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
.label_240:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax], rbx
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax + 8], r14
	inc	qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405640

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	cmp	eax, dword ptr [rsi]
	nop	
	setg	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405660

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	r15,  qword ptr [word ptr [rip + n_frp]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	nop	
	mov	rsi, qword ptr [r14]
	mov	rsp, rsp
	cmp	rsi, 2
	lea	rsi, [rsi]
	jb	.label_241
	dec	rsi
	mov	edi, 1
	call	add_range_pair
.label_241:
	lea	rdi, [rdi]
	cmp	r15, 2
	mov	rsp, rsp
	jb	.label_245
	lea	r12, [r15 - 1]
	lea	rbx, [r14 + 0x10]
	nop	
.label_243:
	mov	rdi, qword ptr [rbx - 8]
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	inc	rdi
	cmp	rdi, rsi
	lea	rsi, [rsi]
	je	.label_242
	dec	rsi
	call	add_range_pair
.label_242:
	add	rbx, 0x10
	dec	r12
	jne	.label_243
.label_245:
	mov	rbp, rbp
	shl	r15, 4
	mov	rdi, qword ptr [r15 + r14 - 8]
	nop	
	cmp	rdi, -1
	lea	rsi, [rsi]
	je	.label_244
	nop	
	inc	rdi
	mov	rsi, -1
	mov	rbp, rbp
	call	add_range_pair
.label_244:
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	pop	r15
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	lea	rsi, [rsi]
	push	rax
	nop	
	mov	qword ptr [word ptr [rip + n_frp]],  0
	nop	
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x405790

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
	je	.label_249
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
.label_250:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_246
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_251
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_247
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_248
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
	je	.label_246
.label_248:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_246
.label_247:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_246:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_250
	lea	rsi, [rsi]
	jmp	.label_252
.label_249:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_252:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_251:
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
	#Procedure 0x405910

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
	je	.label_253
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_254
.label_253:
	nop	
	mov	esi, OFFSET FLAT:.str_1
.label_254:
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
	#Procedure 0x4059b0

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
	mov	esi, OFFSET FLAT:.str.2_1
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
	je	.label_257
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_256:
	test	rbp, rbp
	je	.label_255
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_259
.label_255:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_258
	nop	
.label_259:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_258:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_256
.label_257:
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
	#Procedure 0x405b00

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
	jns	.label_260
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
.label_260:
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
	#Procedure 0x405ba0
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
	je	.label_261
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_262:
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
	je	.label_261
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_262
.label_261:
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
	#Procedure 0x405c30
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
	#Procedure 0x405c60
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
	#Procedure 0x405c80
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c90
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
	#Procedure 0x405ca0
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
	#Procedure 0x405cc0

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
	#Procedure 0x405cd0
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
	#Procedure 0x405ce0
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
	#Procedure 0x405cf0
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
	#Procedure 0x405d00
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
	#Procedure 0x405d30
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
	#Procedure 0x405d50

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
	#Procedure 0x405d60
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
	#Procedure 0x405d80
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
	#Procedure 0x405d90
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
	#Procedure 0x405da0
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
	#Procedure 0x405db0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405dc0

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
	je	.label_275
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_272
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_272
.label_275:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_273
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_272:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
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
	jne	.label_274
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_2
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
.label_273:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_274:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
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
	#Procedure 0x405ec0

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x38
	mov	ebp, r9d
	nop	
	mov	dword ptr [rsp + 0x1c], r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	ecx, ebp
	mov	r14, rax
	lea	rsi, [rsi]
	test	cl, 2
	jne	.label_287
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], ecx
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	cmp	rax, 2
	jb	.label_285
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r15
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	edi, edi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	mbstowcs
	mov	r15, rax
	cmp	r15, -1
	nop	
	je	.label_279
	lea	rdi, [r15*4 + 4]
	lea	rsi, [rsi]
	call	malloc
	lea	rdi, [rdi]
	mov	r13, rax
	test	r13, r13
	je	.label_279
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	lea	rbx, [r15 + 1]
	nop	
	mov	rdi, r13
	mov	rdx, rbx
	call	mbstowcs
	test	rax, rax
	je	.label_284
	lea	rsi, [rsi]
	mov	rbp, r12
	mov	rsp, rsp
	mov	dword ptr [r13 + r15*4], 0
	nop	
	mov	rdi, r13
	call	wc_ensure_printable
	mov	r15b, al
	mov	rdi, r13
	mov	rsi, rbx
	nop	
	call	wcswidth
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	movsxd	r13, eax
	nop	
	test	r15b, r15b
	nop	
	je	.label_277
	lea	rsi, [rsi]
	xor	edi, edi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	call	wcstombs
	mov	r15, rax
	jmp	.label_278
.label_287:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r15
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbp, r12
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13, r14
	jmp	.label_282
.label_285:
	mov	qword ptr [rsp + 8], r15
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	mov	rbp, r12
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	r13, r14
.label_281:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 4]
	jmp	.label_282
.label_279:
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	mov	rbp, r12
	nop	
	mov	qword ptr [rsp + 0x30], r13
	mov	r15, -1
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	mov	r13, r14
	jne	.label_282
	jmp	.label_280
.label_284:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, r12
	mov	qword ptr [rsp + 0x30], r13
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	jmp	.label_281
.label_277:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r13, qword ptr [rax]
	nop	
	mov	r15, r14
	jbe	.label_286
.label_278:
	mov	rsp, rsp
	inc	r15
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_283
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	wc_truncate
	nop	
	mov	r13, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	call	wcstombs
	mov	rsp, rsp
	mov	r14, rax
	mov	qword ptr [rsp + 0x10], r12
	jmp	.label_281
.label_286:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_281
.label_283:
	mov	rsp, rsp
	mov	r15, -1
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 4]
	nop	
	test	cl, 1
	je	.label_280
.label_282:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r12, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	r13, r12
	lea	rdi, [rdi]
	cmova	r13, r12
	mov	rbp, rbp
	cmova	r14, r12
	xor	r15d, r15d
	sub	r12, r13
	mov	rsp, rsp
	cmovbe	r12, r15
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_276
	nop	
	cmp	eax, 1
	jne	.label_289
	mov	rbp, rbp
	mov	r15, r12
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_276
.label_289:
	mov	rax, r12
	lea	rsi, [rsi]
	shr	rax, 1
	and	r12d, 1
	lea	rdi, [rdi]
	add	r12, rax
	mov	rbp, rbp
	mov	r15, r12
	lea	rsi, [rsi]
	mov	r12, rax
.label_276:
	nop	
	xor	eax, eax
	test	cl, 4
	cmovne	r15, rax
	test	cl, 8
	lea	rsi, [rsi]
	cmovne	r12, rax
	test	rbp, rbp
	je	.label_288
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rbp, [rdi + rbp - 1]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r15
	mov	rsp, rsp
	call	mbs_align_pad
	mov	rdx, rbp
	sub	rdx, rax
	cmp	r14, rdx
	cmovb	rdx, r14
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	__mempcpy_chk
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r12
	call	mbs_align_pad
.label_288:
	add	r15, r14
	lea	rdi, [rdi]
	add	r15, r12
.label_280:
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	lea	rdi, [rdi]
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
	#Procedure 0x4062a0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	lea	rsi, [rsi]
	test	edi, edi
	mov	rsp, rsp
	je	.label_290
	mov	rbp, rbp
	add	rbx, 4
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_292:
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	jne	.label_291
	mov	dword ptr [rbx - 4], 0xfffd
	nop	
	mov	bpl, 1
.label_291:
	mov	edi, dword ptr [rbx]
	add	rbx, 4
	lea	rdi, [rdi]
	test	edi, edi
	mov	rbp, rbp
	jne	.label_292
	mov	rsp, rsp
	jmp	.label_293
.label_290:
	mov	rsp, rsp
	xor	ebp, ebp
.label_293:
	and	bpl, 1
	mov	rbp, rbp
	mov	al, bpl
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406320

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx]
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	test	edi, edi
	lea	rdi, [rdi]
	je	.label_294
	nop	word ptr cs:[rax + rax]
.label_297:
	lea	rsi, [rsi]
	call	wcwidth
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_296
	mov	rsp, rsp
	mov	dword ptr [rbx], 0xfffd
	mov	eax, 1
.label_296:
	lea	rdi, [rdi]
	cdqe	
	add	rax, r15
	mov	rbp, rbp
	cmp	rax, r14
	ja	.label_298
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 4]
	add	rbx, 4
	test	edi, edi
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rsp, rsp
	jne	.label_297
	jmp	.label_295
.label_294:
	xor	eax, eax
	jmp	.label_295
.label_298:
	mov	rax, r15
.label_295:
	mov	dword ptr [rbx], 0
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063c0

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, rbx
	sub	rax, r14
	lea	rdi, [rdi]
	jae	.label_299
	test	r15, r15
	nop	
	je	.label_299
	mov	rdx, r15
	neg	rdx
	nop	
	cmp	rax, rdx
	cmovae	rdx, rax
	neg	rdx
	mov	esi, 0x20
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	memset
	mov	eax, 1
	mov	rsp, rsp
	sub	rax, r15
	nop	word ptr [rax + rax]
.label_300:
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r14
	mov	rsp, rsp
	jae	.label_299
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	lea	rax, [rax + 1]
	jne	.label_300
.label_299:
	nop	
	mov	byte ptr [rbx], 0
	mov	rbp, rbp
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406450
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	lea	rdi, [rdi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], ecx
	mov	dword ptr [rsp], edx
	mov	r13, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	r15, qword ptr [r13]
	xor	ebp, ebp
	mov	rbp, rbp
	mov	rax, r15
	mov	rsp, rsp
	mov	rbx, r15
	nop	
.label_304:
	lea	rsi, [rsi]
	cmp	rax, rbx
	mov	rsp, rsp
	jb	.label_301
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	inc	rbx
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	nop	
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_303
	mov	qword ptr [r13], r15
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r13
	mov	r8d, dword ptr [rsp]
	nop	
	mov	r9d, dword ptr [rsp + 4]
	mov	rsp, rsp
	call	mbsalign
	cmp	rax, -1
	mov	rbp, r14
	lea	rsi, [rsi]
	jne	.label_304
	mov	rdi, r14
	jmp	.label_302
.label_303:
	mov	rdi, rbp
.label_302:
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_301:
	mov	rax, rbp
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406530

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
	je	.label_305
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
	jl	.label_307
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_307
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_306
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_306:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_307:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_305:
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
	#Procedure 0x406620
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
	#Procedure 0x406670
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
	#Procedure 0x406690
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
	#Procedure 0x4066b0

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
	#Procedure 0x406720
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
	#Procedure 0x406740

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
	je	.label_308
	test	rdx, rdx
	nop	
	je	.label_308
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_308:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406780
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
	#Procedure 0x406820

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
.label_391:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_372
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_380]]
.label_588:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_1
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
.label_589:
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
	jne	.label_386
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_386
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_326:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_309
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_309:
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
	jne	.label_326
.label_386:
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
	jmp	.label_329
.label_581:
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
	jmp	.label_329
.label_584:
	mov	rsp, rsp
	mov	al, 1
.label_582:
	mov	r15b, 1
.label_585:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_359
	mov	cl, al
.label_359:
	lea	rdi, [rdi]
	mov	al, cl
.label_583:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_365
	test	r10, r10
	je	.label_370
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_373
.label_365:
	xor	ecx, ecx
	jmp	.label_373
.label_586:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_381
	test	r10, r10
	je	.label_384
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_388
.label_587:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_329
.label_370:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_373:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_329
.label_381:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_388
.label_384:
	mov	rbp, rbp
	mov	eax, 1
.label_388:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_329:
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
	jmp	.label_324
	nop	word ptr [rax + rax]
.label_338:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_324:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_376
	cmp	rsi, rbp
	jne	.label_378
	jmp	.label_379
	nop	word ptr cs:[rax + rax]
.label_376:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_379
.label_378:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_385
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_340
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_340
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
.label_340:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_425
.label_385:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_348:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_428
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_310]]
.label_717:
	test	rsi, rsi
	jne	.label_323
	jmp	.label_325
	nop	word ptr [rax + rax]
.label_425:
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
	jne	.label_343
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
	je	.label_348
	mov	rsp, rsp
	jmp	.label_330
.label_343:
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
	jmp	.label_348
.label_721:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_430
	test	rsi, rsi
	nop	
	jne	.label_420
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_325
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_316
.label_710:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_358
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_330
	cmp	edi, 2
	nop	
	jne	.label_408
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_390
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_393
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_393:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_405
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_405:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_424
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_424:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_364
.label_711:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_312
.label_712:
	mov	cl, 0x74
	jmp	.label_314
.label_713:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_312
.label_714:
	mov	bl, 0x66
	jmp	.label_312
.label_715:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_314
.label_718:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_319
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_331
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
	jae	.label_410
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_410:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_351
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_351:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_354
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_354:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_366
.label_719:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_371
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_377
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_331
.label_377:
	mov	rdi, r14
	jmp	.label_323
.label_720:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_383
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_331
	mov	rdi, r14
	jmp	.label_392
.label_428:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_395
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
.label_347:
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
	ja	.label_311
	test	dl, dl
	mov	rsp, rsp
	je	.label_311
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_316
.label_430:
	test	rsi, rsi
	jne	.label_320
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_320
.label_325:
	mov	rbp, rbp
	mov	dl, 1
.label_716:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_330
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_316
.label_358:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_323
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_324
.label_319:
	mov	rdi, r14
.label_366:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_316
.label_383:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_314
.label_392:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_317
.label_314:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_330
.label_312:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_316
	lea	rsi, [rsi]
	jmp	.label_337
.label_395:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_357
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
.label_357:
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
.label_339:
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
	je	.label_397
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
	je	.label_401
	cmp	rbp, -2
	nop	
	je	.label_414
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_344
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_318:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_423
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_313
.label_423:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_318
.label_344:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_327
	xor	r15d, r15d
.label_327:
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
	je	.label_339
	jmp	.label_347
.label_320:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_316
.label_371:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_323
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_323
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_323
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_355
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_361
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_330
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_335:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_415
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_415:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_334
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_334:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_363
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_363:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_316
.label_323:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_316:
	test	r12b, r12b
	je	.label_362
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_427
	jmp	.label_411
	nop	word ptr cs:[rax + rax]
.label_362:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_411
.label_427:
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
	jne	.label_417
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_317
	jmp	.label_337
	nop	word ptr cs:[rax + rax]
.label_411:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_337
	jmp	.label_317
.label_417:
	mov	bl, r13b
	mov	rsi, r14
.label_337:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_330
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_346
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_346
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_402
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_402:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_352
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_352:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_360
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_360:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_346:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_374
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_374:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_382
.label_420:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_316
.label_311:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_418
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_418:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_400
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_404
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_409
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_409:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_404
	nop	dword ptr [rax]
.label_400:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_331
	cmp	r14d, 2
	jne	.label_336
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_336
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_322
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_322:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_398
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_398:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_342
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_342:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_336:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_419
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_419:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_416
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
.label_416:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_367
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
.label_367:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_404:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_317
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_394
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_345
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_399
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_399:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_412
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_412:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
.label_394:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_345:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_315
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_317:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_332
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_332
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_403
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_403:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_341
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_341:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_382
	nop	word ptr cs:[rax + rax]
.label_332:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_382:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_338
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_338
.label_408:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_364
.label_390:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_364:
	cmp	rcx, r10
	jae	.label_368
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_368:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_375
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_421
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_387
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_422
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_422:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_407
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_407:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_316
.label_375:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_316
.label_421:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_316
.label_387:
	xor	r15d, r15d
	jmp	.label_316
.label_397:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_350
.label_401:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_349
.label_414:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_328
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_333:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_389
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_333
	xor	r15d, r15d
	nop	
	jmp	.label_350
.label_328:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_349:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_350:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_347
.label_389:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_350
.label_355:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_316
.label_361:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_316
	nop	word ptr cs:[rax + rax]
.label_379:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_356
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_331
.label_356:
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
	je	.label_321
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_321
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_396
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_321
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
	je	.label_391
.label_321:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_406
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_406
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_406
	inc	rdx
	nop	dword ptr [rax + rax]
.label_426:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_413
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_413:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_426
.label_406:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_429
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_429
.label_330:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_353:
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
.label_369:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_429:
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
.label_313:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_353
.label_331:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_353
.label_396:
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
	jmp	.label_369
.label_372:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f70
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
	#Procedure 0x407f90

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
	je	.label_431
	mov	qword ptr [rax], rbx
.label_431:
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
	#Procedure 0x4080e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_432
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_436:
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
	jl	.label_436
.label_432:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_435
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_434]], OFFSET FLAT:slot0
.label_435:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_433
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_433:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4081b0

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
	js	.label_443
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_438
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_441
.label_438:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_439
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
	jne	.label_442
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_442:
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
.label_441:
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
	ja	.label_440
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
	je	.label_437
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_437:
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
.label_440:
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
.label_443:
	lea	rdi, [rdi]
	call	abort
.label_439:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408420

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408430
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
	#Procedure 0x408450
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
	#Procedure 0x408470

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
	#Procedure 0x4084d0

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
	je	.label_444
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
.label_444:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408540

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
	#Procedure 0x4085a0
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
	#Procedure 0x4085c0
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
	#Procedure 0x4085e0

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
	mov	rcx,  qword ptr [word ptr [rip + label_445]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_446]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_447]]
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
	#Procedure 0x408680

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
	#Procedure 0x4086a0

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
	#Procedure 0x4086b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0
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
	#Procedure 0x408730

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
	#Procedure 0x408740

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
	mov	rax,  qword ptr [word ptr [rip + label_445]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_446]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_447]]
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
	#Procedure 0x4087d0
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
	#Procedure 0x408800
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
	#Procedure 0x408830

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408840
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
	#Procedure 0x408860

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408870

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
	#Procedure 0x408880

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
	jne	.label_448
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
	je	.label_449
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_448
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_448
.label_449:
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
	je	.label_450
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_448
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_448
.label_450:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_448:
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
	#Procedure 0x4089b0

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
	je	.label_453
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_451
	jmp	.label_452
.label_453:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_452
.label_451:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_452
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
.label_452:
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
	#Procedure 0x408a70

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
	je	.label_456
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_455
	lea	rsi, [rsi]
	jmp	.label_454
.label_456:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_454
.label_455:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_454
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
.label_454:
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
	#Procedure 0x408b60

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
	je	.label_459
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_458
	jmp	.label_457
.label_459:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_457
.label_458:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_457
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
.label_457:
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
	#Procedure 0x408c30

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
	je	.label_462
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_461
	jmp	.label_460
.label_462:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_460
.label_461:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_460
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
.label_460:
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
	#Procedure 0x408cd0

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
	je	.label_465
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_464
	nop	
	jmp	.label_463
.label_465:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_463
.label_464:
	mov	eax, 1
	test	bpl, bpl
	je	.label_463
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
.label_463:
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
	#Procedure 0x408d70

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
	je	.label_468
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_467
	lea	rsi, [rsi]
	jmp	.label_466
.label_468:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_466
.label_467:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_466
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
.label_466:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e00

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
	je	.label_471
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_470
	jmp	.label_469
.label_471:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_469
.label_470:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_469
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_469:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408e70

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
	je	.label_472
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_474
	mov	rbp, rbp
	jmp	.label_473
.label_472:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_473
.label_474:
	xor	eax, eax
.label_473:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ec0

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
	je	.label_475
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
	jmp	.label_477
.label_475:
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
.label_477:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
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
	ja	.label_479
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_480]]
.label_662:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_479:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_483
.label_663:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_664:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_665:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
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
	jmp	.label_484
.label_666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
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
	jmp	.label_482
.label_667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
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
	jmp	.label_481
.label_668:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_481:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_482:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_484:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_478
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_483:
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
	jmp	.label_476
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_476:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_478:
	mov	rbp, rbp
	call	__fprintf_chk
.label_661:
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
	#Procedure 0x4092b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_485:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_485
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_488:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_486
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_487
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_487:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_489
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_488
.label_489:
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
	#Procedure 0x409370

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_490
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
.label_490:
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
	#Procedure 0x409420
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
	mov	edx, OFFSET FLAT:.str.17_0
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
	#Procedure 0x4094b0
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
	jb	.label_491
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_491:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_492
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_493
.label_492:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_493:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409520
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
	jb	.label_494
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_494:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409560

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_495
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_495
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_495:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_496
	test	rax, rax
	nop	
	je	.label_497
.label_496:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_497:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_498
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_499
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_500
.label_498:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_501
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_501:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_502
.label_500:
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
.label_499:
	call	xalloc_die
.label_502:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409650

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409660
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409670
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
	#Procedure 0x4096b0
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
	jb	.label_503
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_503
	pop	rcx
	ret	
.label_503:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4096e0

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
	#Procedure 0x409730

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
	#Procedure 0x409750

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	mov	rbp, rbp
	call	__strndup
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_504
	pop	rcx
	lea	rsi, [rsi]
	ret	
.label_504:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4097c0

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
	jae	.label_517
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
	je	.label_511
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_516
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_507
	lea	rdi, [rdi]
	mov	r12d, 1
.label_516:
	test	r15, r15
	lea	rsi, [rsi]
	jne	.label_522
	mov	rbp, rbp
	jmp	.label_514
.label_511:
	mov	r12d, 4
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_507
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_507
	mov	rdi, r15
	call	strchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_507
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_522:
	mov	rsp, rsp
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_514
	mov	rdi, r15
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	je	.label_519
	mov	rsp, rsp
	mov	esi, 0x400
	mov	ebp, 1
	mov	rbp, rbp
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_505
	movabs	rax, 0x814400308945
	nop	
	bt	rax, rbx
	jae	.label_505
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strchr
	mov	ebp, 1
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_512
	nop	
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rsp, rsp
	cmp	ecx, 0x42
	mov	rsp, rsp
	je	.label_515
	lea	rdi, [rdi]
	cmp	ecx, 0x44
	lea	rsi, [rsi]
	je	.label_515
	cmp	ecx, 0x69
	jne	.label_521
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	lea	rdi, [rdi]
	mov	esi, 0x400
	je	.label_505
	mov	rbp, rbp
	mov	ebp, 1
	jmp	.label_505
.label_512:
	mov	esi, 0x400
	jmp	.label_505
.label_515:
	lea	rdi, [rdi]
	mov	esi, 0x3e8
	lea	rdi, [rdi]
	mov	ebp, 2
	lea	rdi, [rdi]
	jmp	.label_505
.label_521:
	mov	esi, 0x400
.label_505:
	nop	
	mov	rax, qword ptr [r13]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax]
	mov	rbp, rbp
	cmp	eax, 0x59
	jg	.label_508
	nop	
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	lea	rsi, [rsi]
	ja	.label_518
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_520]]
.label_597:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	esi, 0x400
	jmp	.label_506
.label_508:
	cmp	eax, 0x73
	lea	rdi, [rdi]
	jg	.label_523
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_524
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_525]]
.label_634:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_506
.label_518:
	cmp	eax, 0x54
	nop	
	je	.label_509
	cmp	eax, 0x59
	jne	.label_519
	lea	rdi, [rsp + 8]
	mov	edx, 8
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	jmp	.label_510
.label_523:
	mov	rsp, rsp
	cmp	eax, 0x74
	je	.label_509
	cmp	eax, 0x77
	jne	.label_519
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	esi, 2
.label_506:
	lea	rsi, [rsi]
	call	bkm_scale
	jmp	.label_510
.label_599:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_510
.label_600:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 1
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_510
.label_601:
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 2
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	nop	
	jmp	.label_510
.label_509:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	edx, 4
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_510
.label_524:
	cmp	eax, 0x5a
	lea	rdi, [rdi]
	jne	.label_519
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 7
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_510
.label_519:
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
	or	r12d, 2
	mov	rbp, rbp
	jmp	.label_507
.label_598:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	mov	rbp, rbp
	call	bkm_scale_by_power
	jmp	.label_510
.label_602:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	bkm_scale_by_power
.label_510:
	or	eax, r12d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13]
	mov	rsp, rsp
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	mov	rbp, rbp
	cmp	byte ptr [rcx + rbp], 0
	lea	rsi, [rsi]
	je	.label_513
	lea	rdi, [rdi]
	or	eax, 2
.label_513:
	lea	rsi, [rsi]
	mov	r12d, eax
.label_514:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_507:
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
.label_517:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bb0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
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
	jge	.label_526
	mov	qword ptr [rdi], rsi
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_526:
	mov	rax, r8
	nop	
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_527
	lea	rdi, [rdi]
	mov	qword ptr [rdi], r8
	mov	eax, 1
	mov	rsp, rsp
	ret	
.label_527:
	lea	rsi, [rsi]
	imul	rcx, r9
	nop	
	mov	qword ptr [rdi], rcx
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c20

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
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
	je	.label_528
	nop	word ptr [rax + rax]
.label_529:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	nop	
	or	ebx, eax
	dec	ebp
	lea	rsi, [rsi]
	jne	.label_529
.label_528:
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
	.align	32
	#Procedure 0x409c80

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
	jae	.label_530
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
.label_548:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_548
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
	je	.label_532
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
	je	.label_540
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_544
	cmp	eax, 0x22
	jne	.label_532
	lea	rsi, [rsi]
	mov	r12d, 1
.label_544:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_553
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_541
.label_540:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_532
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_532
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_532
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_553:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_547
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_531
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_535
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_539
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
	je	.label_537
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_551
	cmp	ecx, 0x44
	je	.label_551
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_537
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_537
	mov	r14d, 1
	jmp	.label_537
.label_551:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_537:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_543
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_542
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_546]]
.label_604:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_534
.label_543:
	cmp	eax, 0x73
	jg	.label_550
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_552
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_554]]
.label_653:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_534
.label_542:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_536
	nop	
	cmp	eax, 0x59
	jne	.label_531
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_538
.label_550:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_536
	cmp	eax, 0x77
	nop	
	jne	.label_531
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_534:
	nop	
	call	bkm_scale_0
	jmp	.label_549
.label_606:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_538
.label_607:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_538
.label_608:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_538
.label_536:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_538
.label_552:
	cmp	eax, 0x5a
	jne	.label_531
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_538
.label_531:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_545
.label_605:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_538
.label_609:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_538:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
.label_549:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_533
	lea	rdi, [rdi]
	or	eax, 2
.label_533:
	mov	r12d, eax
.label_547:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_541:
	mov	qword ptr [rcx], rax
.label_545:
	mov	r15d, r12d
.label_532:
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
.label_535:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_537
.label_539:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_537
.label_530:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40a090

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
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
	.align	32
	#Procedure 0x40a0d0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
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
	je	.label_555
	nop	word ptr [rax + rax]
.label_556:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale_0
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_556
.label_555:
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
	.align	32
	#Procedure 0x40a140

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_557
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_558
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
	je	.label_558
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
.label_557:
	mov	ecx, 1
.label_558:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1b0

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
	je	.label_559
	nop	
	cmp	r15, -2
	jb	.label_559
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_559
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_559:
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
	#Procedure 0x40a240

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
	#Procedure 0x40a260

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
	je	.label_561
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_560
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_560
.label_561:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_560
	test	cl, cl
	jne	.label_560
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_560:
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
	#Procedure 0x40a300

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
	je	.label_563
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_562
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_564
.label_562:
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_563
.label_564:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_563:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a350

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
	je	.label_565
	nop	
	mov	rax, rcx
.label_565:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a390

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
	js	.label_566
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_568
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
	je	.label_566
.label_568:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_566
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_567
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_567:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_566:
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
	#Procedure 0x40a450

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_569
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_569
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_569:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a480

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_570
	mov	rbp, rbp
	ret	
.label_570:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section .text
	.align	32
	#Procedure 0x40a4a0

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
	jne	.label_573
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_573
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_571
.label_573:
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
.label_571:
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
	je	.label_572
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_572:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
