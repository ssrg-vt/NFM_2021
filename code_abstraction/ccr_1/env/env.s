	.section	.text
	.align	16
	#Procedure 0x401af0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_20:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	.section	.text
	.align	16
	#Procedure 0x401d10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_27
	nop	
.label_40:
	mov	edi, OFFSET FLAT:label_31
	call	strcmp
	test	eax, eax
	je	.label_38
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_40
.label_38:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_31
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_28
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_28
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_31
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:label_35
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
	#Procedure 0x401e60

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_35
	call	setlocale
	mov	edi, OFFSET FLAT:label_63
	mov	esi, OFFSET FLAT:label_64
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_63
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	initialize_signals
	xor	r12d, r12d
	lea	r14, [rsp + 0xc]
	lea	r15, [rsp + 0x10]
	xor	r13d, r13d
	xor	eax, eax
	jmp	.label_47
.label_68:
	call	parse_block_signal_params
	mov	al, bpl
	nop	word ptr [rax + rax]
.label_47:
	mov	ebp, eax
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 8
	jle	.label_92
	lea	ecx, [rbx - 0x20]
	cmp	ecx, 0x63
	ja	.label_43
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_44]]
.label_602:
	mov	r13b, 1
	mov	al, bpl
	jmp	.label_47
.label_603:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	al, bpl
	jmp	.label_47
.label_604:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r14
	mov	rdx, r15
	call	parse_split_string
	mov	al, bpl
	jmp	.label_47
.label_605:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	append_unset_var
	mov	al, bpl
	jmp	.label_47
.label_606:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	al, bpl
	jmp	.label_47
.label_607:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	jmp	.label_68
.label_608:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	call	parse_signal_action_params
	mov	al, bpl
	jmp	.label_47
.label_609:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	jmp	.label_68
.label_610:
	mov	byte ptr [byte ptr [rip + report_signal_handling]],  1
	mov	al, bpl
	jmp	.label_47
.label_92:
	cmp	ebx, -1
	jne	.label_76
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0xc]
	jge	.label_77
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_77
	cmp	byte ptr [rax + 1], 0
	je	.label_55
.label_77:
	test	bpl, bpl
	jne	.label_85
	call	unset_envvars
	jmp	.label_88
.label_55:
	inc	dword ptr [dword ptr [rip + optind]]
.label_85:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_90
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	call	__fprintf_chk
.label_90:
	mov	qword ptr [word ptr [rip + __environ]], OFFSET FLAT:main.dummy_environ
.label_88:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0xc]
	jge	.label_57
	mov	r14, qword ptr [rsp + 0x10]
	mov	r15d, dword ptr [rsp + 0xc]
	nop	dword ptr [rax + rax]
.label_67:
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_57
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_58
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	rcx, rbp
	call	__fprintf_chk
.label_58:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	call	putenv
	test	eax, eax
	jne	.label_65
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_67
.label_57:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, dword ptr [rsp + 0xc]
	test	r13b, r13b
	je	.label_73
	cmp	eax, ecx
	jl	.label_75
.label_73:
	test	r12, r12
	sete	dl
	cmp	eax, ecx
	jl	.label_78
	test	dl, dl
	je	.label_80
.label_78:
	cmp	eax, ecx
	jge	.label_81
	call	reset_signal_handlers
	cmp	byte ptr [byte ptr [rip + sig_mask_changed]],  1
	jne	.label_84
	call	set_signal_proc_mask
.label_84:
	cmp	byte ptr [byte ptr [rip + report_signal_handling]],  1
	jne	.label_87
	call	list_signal_handling
.label_87:
	test	r12, r12
	je	.label_91
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_41
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_41:
	mov	rdi, r12
	call	chdir
	test	eax, eax
	jne	.label_52
.label_91:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_54
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	call	__fprintf_chk
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	cmp	ebx, dword ptr [rsp + 0xc]
	jge	.label_54
	mov	r15, qword ptr [rsp + 0x10]
	movsxd	r12, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_72
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, ebx
	sub	ebp, eax
	mov	rdi, qword ptr [r15 + rbx*8]
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	rdi, r14
	mov	ecx, ebp
	call	__fprintf_chk
.label_72:
	inc	rbx
	cmp	rbx, r12
	jl	.label_82
.label_54:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rcx + rax*8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	cmp	ebp, 2
	jne	.label_50
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	esi, 0x20
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	je	.label_50
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_50
.label_81:
	mov	rbx,  qword ptr [word ptr [rip + __environ]]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	test	rdx, rdx
	je	.label_50
	xor	r14d, r14d
	test	r13b, r13b
	mov	ebp, 0xa
	cmovne	ebp, r14d
	add	rbx, 8
	nop	dword ptr [rax]
.label_79:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_74
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	mov	rdx, qword ptr [rbx]
	add	rbx, 8
	test	rdx, rdx
	jne	.label_79
.label_50:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_65:
	mov	byte ptr [rbx], 0
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
.label_46:
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_76:
	cmp	ebx, 0xffffff7d
	je	.label_49
	cmp	ebx, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_43:
	cmp	ebx, 9
	jne	.label_51
.label_601:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
.label_62:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_51:
	mov	edi, 0x7d
	call	usage
.label_49:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_31
	mov	edx, OFFSET FLAT:label_29
	mov	r8d, OFFSET FLAT:label_69
	mov	r9d, OFFSET FLAT:label_70
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_71
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	jmp	.label_62
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	jmp	.label_62
.label_52:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x402420

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl initialize_signals
	.type initialize_signals, @function
initialize_signals:
	push	rax
	mov	edi, 0x104
	call	xmalloc
	mov	qword ptr [word ptr [rip + signals]],  rax
	xor	esi, esi
	mov	edx, 0x104
	mov	rdi, rax
	call	memset
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbx
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	cmp	rax,  qword ptr [word ptr [rip + usvars_alloc]]
	jne	.label_93
	mov	rdi,  qword ptr [word ptr [rip + usvars]]
	mov	esi, OFFSET FLAT:usvars_alloc
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + usvars]],  rax
.label_93:
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + usvars_used]],  rcx
	mov	rcx,  qword ptr [word ptr [rip + usvars]]
	mov	qword ptr [rcx + rax*8], rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	je	.label_98
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_94
	mov	rdi, r14
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	je	.label_95
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	
.label_97:
	mov	rdi, rbx
	mov	rsi, r15
	call	operand2sig
	test	eax, eax
	je	.label_101
	jle	.label_103
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + signals]]
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_97
.label_95:
	mov	rdi, r14
	call	free
	jmp	.label_100
.label_98:
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	r14d, [rax + rax + 2]
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_96
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	dword ptr [rax + rbx*4], r14d
.label_96:
	inc	rbx
	cmp	rbx, 0x41
	jne	.label_99
.label_100:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
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
.label_103:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025c0

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_104
	mov	al,  byte ptr [byte ptr [rip + sig_mask_changed]]
	test	al, al
	jne	.label_109
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_109:
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
	mov	rdi, rbx
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_94
	mov	rdi, r14
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	je	.label_107
	mov	r12d, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	cmovne	r13, r12
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rdi, rbp
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_108
	jle	.label_110
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	rdi, r12
	mov	esi, ebx
	call	sigdelset
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_105
.label_107:
	mov	rdi, r14
	call	free
	jmp	.label_106
.label_104:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rdi, rbx
	call	sigemptyset
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
.label_106:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_110:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	nop	
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl parse_split_string
	.type parse_split_string, @function
parse_split_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	
.label_122:
	movsx	rcx, byte ptr [rbx + 1]
	inc	rbx
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_122
	test	cl, cl
	je	.label_125
	mov	esi, dword ptr [r14]
	sub	esi,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, rbx
	call	build_argv
	mov	r12, rax
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax]
	mov	qword ptr [r12], rax
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	rax, r12
	jne	.label_115
	lea	rbp, [r12 + 8]
	cmp	qword ptr [rbp], 0
	mov	rax, r12
	je	.label_115
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_118
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, r12
	add	rbp, 0x10
	mov	rdi, qword ptr [r12 + 8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_123
	jmp	.label_120
	nop	dword ptr [rax + rax]
.label_115:
	cmp	qword ptr [rax + 8], 0
	lea	rax, [rax + 8]
	jne	.label_115
	jmp	.label_121
.label_120:
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	bl,  byte ptr [byte ptr [rip + dev_debug]]
.label_118:
	mov	rdi, qword ptr [rbp]
	nop	word ptr cs:[rax + rax]
.label_114:
	test	rdi, rdi
	je	.label_112
	test	bl, 1
	je	.label_114
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	add	rbp, 8
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_119
	jmp	.label_120
.label_112:
	mov	rax, rbp
.label_121:
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, dword ptr [r14]
	jge	.label_124
	movsxd	rdx, dword ptr [r14]
	nop	dword ptr [rax + rax]
.label_116:
	mov	rsi, qword ptr [r15]
	mov	rsi, qword ptr [rsi + rcx*8]
	mov	qword ptr [rax], rsi
	add	rax, 8
	inc	rcx
	cmp	rcx, rdx
	jl	.label_116
.label_124:
	mov	qword ptr [rax], 0
	xor	eax, eax
	cmp	qword ptr [r12], 0
	je	.label_117
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_111:
	cmp	qword ptr [r12 + rax*8 + 8], 0
	lea	rax, [rax + 1]
	jne	.label_111
.label_117:
	mov	dword ptr [r14], eax
	mov	qword ptr [r15], r12
	mov	dword ptr [dword ptr [rip + optind]],  0
.label_125:
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
	.align	16
	#Procedure 0x4028b0

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	push	r14
	push	rbx
	cmp	qword ptr [word ptr [rip + usvars_used]],  0
	je	.label_129
	xor	ebp, ebp
.label_127:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_126
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rcx, qword ptr [rax + rbp*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	call	__fprintf_chk
.label_126:
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	call	unsetenv
	test	eax, eax
	jne	.label_131
	inc	rbp
	cmp	rbp,  qword ptr [word ptr [rip + usvars_used]]
	jb	.label_127
.label_129:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_131:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402960

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, 1
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x10]
.label_133:
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	eax, dword ptr [rax + rbx*4]
	test	eax, eax
	je	.label_132
	mov	r13b, 1
	cmp	eax, 2
	je	.label_138
	cmp	eax, 4
	je	.label_138
	xor	r13d, r13d
.label_138:
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	r12d, dword ptr [rax + rbx*4]
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r14
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	test	r13b, r13b
	jne	.label_145
	test	al, al
	je	.label_136
.label_145:
	dec	r12d
	test	ebp, ebp
	jne	.label_137
	xor	eax, eax
	cmp	r12d, 1
	seta	al
	mov	qword ptr [rsp + 0x30], rax
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	or	r13b, al
	je	.label_139
.label_137:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_132
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_132
	cmp	r12d, 2
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	r9d, OFFSET FLAT:label_141
	mov	eax, OFFSET FLAT:label_142
	cmovb	r9, rax
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_143
	cmovne	rax, rcx
	mov	qword ptr [rsp], rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	call	__fprintf_chk
	nop	
.label_132:
	inc	rbx
	cmp	rbx, 0x41
	jl	.label_133
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	jmp	.label_135
.label_139:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
.label_135:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

	.globl set_signal_proc_mask
	.type set_signal_proc_mask, @function
set_signal_proc_mask:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_155
	mov	ebx, 1
	lea	r14, [rsp + 0x18]
	lea	r15, [rsp]
	nop	dword ptr [rax]
.label_150:
	mov	edi, OFFSET FLAT:block_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_149
	mov	rdi, r14
	mov	esi, ebx
	call	sigaddset
	mov	r12d, OFFSET FLAT:label_153
	jmp	.label_154
	nop	word ptr cs:[rax + rax]
.label_149:
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_151
	mov	rdi, r14
	mov	esi, ebx
	call	sigdelset
	mov	r12d, OFFSET FLAT:label_148
.label_154:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_151
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_151
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	mov	r9, r12
	call	__fprintf_chk
.label_151:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_150
	lea	rsi, [rsp + 0x18]
	mov	edi, 2
	xor	edx, edx
	call	sigprocmask
	test	eax, eax
	jne	.label_157
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_155:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	jmp	.label_147
.label_157:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
.label_147:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl list_signal_handling
	.type list_signal_handling, @function
list_signal_handling:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	lea	rbx, [rsp + 0x20]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_161
	mov	ebx, 1
	lea	r14, [rsp + 0xa0]
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_163:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r14
	call	sigaction
	test	eax, eax
	jne	.label_158
	cmp	qword ptr [rsp + 0xa0], 1
	mov	ebp, OFFSET FLAT:label_35
	mov	eax, OFFSET FLAT:label_141
	cmove	rbp, rax
	lea	rdi, [rsp + 0x20]
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	r13d, OFFSET FLAT:label_35
	mov	eax, OFFSET FLAT:label_153
	cmovne	r13, rax
	cmp	byte ptr [rbp], 0
	movzx	eax, byte ptr [r13]
	mov	r15d, OFFSET FLAT:label_35
	je	.label_159
	test	al, al
	mov	r15d, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_94
	cmovne	r15, rcx
	cmp	byte ptr [rbp], 0
	jne	.label_160
.label_159:
	test	al, al
	je	.label_158
.label_160:
	mov	edi, ebx
	mov	rsi, r12
	call	sig2str
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_162
	mov	eax, 0
	mov	rcx, r12
	mov	r8d, ebx
	mov	r9, r13
	push	rbp
	push	r15
	call	__fprintf_chk
	add	rsp, 0x10
.label_158:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_163
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_161:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

	.globl build_argv
	.type build_argv, @function
build_argv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	ebx, esi
	mov	r12, rdi
	mov	dword ptr [rsp + 0x24], 0
	mov	qword ptr [rsp + 0x30], 0
	test	r12, r12
	je	.label_172
	movsx	rbp, byte ptr [r12]
	test	rbp, rbp
	je	.label_172
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_172
	lea	rsi, [rsp + 0x30]
	lea	rdx, [rsp + 0x24]
	mov	rdi, r12
	call	validate_split_str
	mov	rdi, qword ptr [rsp + 0x30]
	add	rdi, 7
	call	xmalloc
	mov	r15, rax
	mov	eax, dword ptr [rsp + 0x24]
	lea	eax, [rbx + rax + 2]
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	word ptr [r15 + 4], 0x59
	mov	dword ptr [r15], 0x4d4d5544
	mov	qword ptr [rax], r15
	mov	qword ptr [rsp + 0x40], rax
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	add	r15, 6
	mov	al, byte ptr [r12]
	test	al, al
	je	.label_174
	mov	r13b, 1
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
.label_173:
	mov	ecx, dword ptr [rsp + 0x10]
	mov	ebp, ecx
	and	bpl, 1
.label_194:
	mov	ecx, dword ptr [rsp + 0x14]
	mov	r14d, ecx
	mov	edx, dword ptr [rsp + 0x10]
	or	r14b, dl
	and	r14b, 1
	and	cl, 1
	mov	byte ptr [rsp + 0xf], cl
	mov	rbx, r12
.label_192:
	mov	r12, rbx
.label_189:
	movsx	edx, al
	lea	ecx, [rdx - 9]
	cmp	ecx, 0x1e
	ja	.label_182
	mov	rbx, r12
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_186]]
.label_656:
	test	r14b, r14b
	jne	.label_164
	mov	esi, 0x20
	mov	edx, 9
	mov	rdi, r12
	call	__strspn_c2
	add	r12, rax
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_182:
	cmp	edx, 0x5c
	jne	.label_164
	test	bpl, bpl
	je	.label_171
	movzx	ecx, byte ptr [r12 + 1]
	cmp	cl, 0x5c
	je	.label_171
	cmp	cl, 0x27
	jne	.label_164
.label_171:
	lea	rbx, [r12 + 1]
	movzx	eax, byte ptr [r12 + 1]
	cmp	al, 0x27
	je	.label_170
	cmp	al, 0x5c
	je	.label_170
	test	bpl, bpl
	je	.label_178
	cmp	al, 0x5f
	je	.label_183
	jmp	.label_176
.label_178:
	cmp	al, 0x5f
	jne	.label_185
.label_183:
	mov	al, 0x20
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_170
	add	r12, 2
.label_193:
	movzx	eax, byte ptr [r12]
	mov	r13b, 1
	test	al, al
	jne	.label_189
	jmp	.label_174
.label_657:
	test	bpl, bpl
	jne	.label_164
	jmp	.label_168
.label_658:
	test	r13b, 1
	mov	rbx, r12
	je	.label_170
	jmp	.label_174
.label_659:
	test	bpl, bpl
	jne	.label_164
	mov	rdi, r12
	call	extract_varname
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rax
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_180
	test	r13b, 1
	je	.label_190
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_190:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_181
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, rbx
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_177
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	call	__fprintf_chk
.label_181:
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	r15, rax
	jmp	.label_191
.label_660:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_179
	nop	dword ptr [rax]
.label_164:
	mov	rbx, r12
.label_170:
	test	r13b, 1
	je	.label_184
	mov	byte ptr [r15], 0
	inc	r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], r15
	add	rcx, 8
	mov	qword ptr [rsp + 0x18], rcx
	xor	r13d, r13d
.label_184:
	mov	byte ptr [r15], al
	inc	r15
.label_187:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_192
	jmp	.label_174
.label_185:
	mov	ecx, eax
	add	cl, 0xde
	cmp	cl, 3
	jb	.label_170
.label_176:
	cmp	al, 0x63
	je	.label_174
	movsx	edi, al
	call	escape_char
	jmp	.label_170
.label_180:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_191
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_169
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x28]
	call	__fprintf_chk
.label_191:
	mov	esi, 0x7d
	mov	rdi, r12
	call	strchr
	mov	rbx, rax
	jmp	.label_187
.label_168:
	mov	eax, dword ptr [rsp + 0x14]
	not	al
	mov	dword ptr [rsp + 0x14], eax
	test	r13b, 1
	je	.label_188
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_188:
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	al, byte ptr [r12 + 1]
	inc	r12
	test	al, al
	jne	.label_194
	jmp	.label_174
.label_179:
	mov	eax, dword ptr [rsp + 0x10]
	not	al
	mov	dword ptr [rsp + 0x10], eax
	test	r13b, 1
	je	.label_175
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_175:
	mov	eax, dword ptr [rsp + 0x10]
	and	al, 1
	mov	dword ptr [rsp + 0x10], eax
	mov	al, byte ptr [r12 + 1]
	inc	r12
	test	al, al
	jne	.label_173
.label_174:
	mov	byte ptr [r15], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rsp + 0x40]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_172:
	mov	edi, OFFSET FLAT:label_165
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 0x18b
	mov	ecx, OFFSET FLAT:label_167
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl validate_split_str
	.type validate_split_str, @function
validate_split_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_208
	movsx	rbp, byte ptr [r14]
	test	rbp, rbp
	je	.label_208
	call	__ctype_b_loc
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_208
	mov	qword ptr [rsp + 0x18], r15
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r14
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 8], rax
	mov	al, byte ptr [r14]
	xor	r8d, r8d
	mov	r15d, 1
	test	al, al
	je	.label_219
	xor	edx, edx
	xor	ebp, ebp
	xor	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	nop	
.label_211:
	mov	esi, r15d
	movsx	rax, al
	mov	rcx, qword ptr [r9]
	movzx	ebx, byte ptr [rcx + rax*2 + 1]
	and	bl, 0x20
	shr	bl, 5
	mov	eax, r12d
	and	al, 1
	mov	edi, ebp
	and	dil, 1
	mov	ecx, ebp
	or	cl, r12b
	test	cl, 1
	sete	r13b
	and	r13b, bl
	cmovne	edx, r8d
	mov	r15d, edx
	add	r15d, esi
	movsx	edx, byte ptr [r14]
	cmp	edx, 0x26
	jg	.label_204
	cmp	edx, 0x22
	je	.label_216
	cmp	edx, 0x24
	jne	.label_196
	test	dil, dil
	jne	.label_196
	mov	rbx, r9
	mov	rdi, r14
	call	extract_varname
	test	rax, rax
	je	.label_198
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_200
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 8], rax
.label_200:
	xor	r8d, r8d
	mov	r9, rbx
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_204:
	cmp	edx, 0x5c
	je	.label_195
	cmp	edx, 0x27
	jne	.label_196
	test	dil, dil
	sete	dl
	test	al, al
	je	.label_212
	test	dl, dl
	je	.label_214
.label_212:
	or	al, dil
	sete	bpl
	jmp	.label_196
	nop	dword ptr [rax]
.label_216:
	test	dil, dil
	sete	dl
	test	al, al
	je	.label_218
	test	dl, dl
	je	.label_220
.label_218:
	or	al, dil
	sete	r12b
	jmp	.label_196
	nop	dword ptr [rax + rax]
.label_195:
	movsx	ebx, byte ptr [r14 + 1]
	test	al, al
	je	.label_199
	cmp	bl, 0x63
	je	.label_201
.label_199:
	test	bl, bl
	je	.label_205
	mov	edi, ebx
	call	valid_escape_sequence
	test	al, al
	je	.label_206
	inc	r14
	xor	eax, eax
	cmp	bl, 0x5f
	sete	al
	add	r15d, eax
	mov	r9, qword ptr [rsp + 0x10]
	xor	r8d, r8d
	nop	
.label_196:
	movzx	edx, r13b
	movzx	eax, byte ptr [r14 + 1]
	inc	r14
	test	al, al
	jne	.label_211
	jmp	.label_217
.label_219:
	xor	r12d, r12d
	xor	ebp, ebp
.label_217:
	or	r12b, bpl
	test	r12b, 1
	jne	.label_197
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], r15d
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax], rcx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
	mov	edi, OFFSET FLAT:label_202
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 0x12f
	mov	ecx, OFFSET FLAT:label_203
	call	__assert_fail
.label_220:
	mov	edi, OFFSET FLAT:label_202
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:label_203
	call	__assert_fail
.label_201:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	jmp	.label_210
.label_205:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
.label_210:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_206:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_208:
	mov	edi, OFFSET FLAT:label_165
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 0x118
	mov	ecx, OFFSET FLAT:label_203
	call	__assert_fail
.label_198:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_197:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	jmp	.label_210
	.section	.text
	.align	16
	#Procedure 0x4033f0

	.globl escape_char
	.type escape_char, @function
escape_char:
	add	edi, -0x66
	cmp	edi, 0x10
	ja	.label_222
	mov	al, 0xc
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_223]]
.label_620:
	mov	al, 0xa
.label_619:
	ret	
.label_621:
	mov	al, 0xd
	ret	
.label_622:
	mov	al, 9
	ret	
.label_623:
	mov	al, 0xb
	ret	
.label_222:
	push	rax
	mov	edi, OFFSET FLAT:label_224
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 0xd2
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	scan_varname
	xor	ebx, ebx
	test	rax, rax
	je	.label_227
	sub	rax, r15
	lea	r14, [rax - 2]
	cmp	r14,  qword ptr [word ptr [rip + vnlen]]
	jb	.label_226
	dec	rax
	mov	qword ptr [word ptr [rip + vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + varname]]
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + varname]],  rax
.label_226:
	mov	rbx,  qword ptr [word ptr [rip + varname]]
	add	r15, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rbx + r14], 0
.label_227:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0

	.globl valid_escape_sequence
	.type valid_escape_sequence, @function
valid_escape_sequence:
	add	dil, 0xde
	movzx	ecx, dil
	cmp	cl, 0x54
	ja	.label_228
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_229]]
.label_230:
	ret	
.label_228:
	xor	eax, eax
	jmp	.label_230
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_231
	cmp	byte ptr [rbx], 0x24
	jne	.label_231
	xor	r14d, r14d
	cmp	byte ptr [rbx + 1], 0x7b
	jne	.label_233
	movsx	edi, byte ptr [rbx + 2]
	call	c_isalpha
	test	al, al
	jne	.label_232
	xor	r14d, r14d
	cmp	byte ptr [rbx + 2], 0x5f
	jne	.label_233
.label_232:
	add	rbx, 3
	xor	r14d, r14d
	jmp	.label_237
	nop	dword ptr [rax]
.label_236:
	inc	rbx
.label_237:
	movsx	edi, byte ptr [rbx]
	call	c_isalnum
	test	al, al
	jne	.label_236
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x5f
	je	.label_236
	cmp	al, 0x7d
	jne	.label_233
	mov	r14, rbx
.label_233:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_231:
	mov	edi, OFFSET FLAT:label_234
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:label_235
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_240
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, 0xffffffff
	cmp	rdx, r15
	je	.label_239
	cmp	byte ptr [rdx], 0
	jne	.label_239
	cmp	dword ptr [rbx], 0
	jne	.label_239
	cmp	eax, -1
	je	.label_239
	movsxd	rdx, eax
	cmp	rdx, rax
	jne	.label_239
	cmp	eax, 0xfe
	mov	edx, 0xff
	mov	ecx, 0x7f
	cmovg	ecx, edx
	and	ecx, eax
.label_239:
	mov	dword ptr [rsp + 4], ecx
	jmp	.label_247
.label_240:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_244
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_243:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_246
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_238
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_238:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_243
.label_244:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_241
	cmp	byte ptr [r12], 0x53
	jne	.label_242
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_242
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_242
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_241
.label_242:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_241:
	mov	rdi, r12
	call	free
.label_247:
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_245
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_249
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_248
.label_249:
	mov	eax, dword ptr [rsp + 4]
.label_248:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_250
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_250
.label_251:
	ret	
.label_250:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_251
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_252
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_252:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403720
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403730
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
	#Procedure 0x403740
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_253
.label_254:
	ret	
.label_253:
	cmp	edi, 0x7f
	je	.label_254
	xor	eax, eax
	jmp	.label_254
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760
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
	#Procedure 0x403770
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
	#Procedure 0x403780
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
	#Procedure 0x403790
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
	#Procedure 0x4037a0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_255
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_256]]
.label_257:
	ret	
.label_255:
	xor	eax, eax
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037c0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_258
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_258:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037e0

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
	#Procedure 0x4037f0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_259
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_259:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403810
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
	#Procedure 0x403820
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
	#Procedure 0x403830
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_260
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_262
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_262
.label_260:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_261
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_262:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_263
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_261:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_263:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_265
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
	#Procedure 0x403910

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_268
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_267
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_267
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_271
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_271:
	mov	rbx, r14
.label_267:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_268:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_269
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
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
	#Procedure 0x403a00
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
	#Procedure 0x403a10
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
	#Procedure 0x403a20

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
	.align	16
	#Procedure 0x403a60
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
	#Procedure 0x403a80

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_272
	test	rdx, rdx
	je	.label_272
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_272:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	.align	16
	#Procedure 0x403b30

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_380:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_381
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_384]]
.label_648:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_273
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_282
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_649:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_293
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_293
	xor	r14d, r14d
.label_307:
	cmp	r14, r11
	jae	.label_302
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_302:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_307
.label_293:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_320
.label_641:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_320
.label_644:
	mov	al, 1
.label_642:
	mov	r12b, 1
.label_645:
	test	r12b, 1
	mov	cl, 1
	je	.label_326
	mov	ecx, eax
.label_326:
	mov	al, cl
.label_643:
	test	r12b, 1
	jne	.label_330
	test	r11, r11
	je	.label_332
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_332:
	mov	r14d, 1
	jmp	.label_337
.label_330:
	xor	r14d, r14d
.label_337:
	mov	ecx, OFFSET FLAT:label_282
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_320
.label_646:
	test	r12b, 1
	jne	.label_347
	test	r11, r11
	je	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_317:
	mov	r14d, 1
	jmp	.label_314
.label_647:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_352
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_320
.label_347:
	xor	r14d, r14d
.label_314:
	mov	eax, OFFSET FLAT:label_352
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_320:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_339
	nop	dword ptr [rax]
.label_304:
	inc	rsi
.label_339:
	cmp	rbp, -1
	je	.label_281
	cmp	rsi, rbp
	jne	.label_284
	jmp	.label_286
	nop	word ptr cs:[rax + rax]
.label_281:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_286
.label_284:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_296
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_298
	cmp	rbp, -1
	jne	.label_298
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_298:
	cmp	rbx, rbp
	jbe	.label_310
.label_296:
	xor	r8d, r8d
.label_348:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_312
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_375]]
.label_565:
	test	rsi, rsi
	jne	.label_309
	jmp	.label_321
	nop	
.label_310:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_335
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_348
	jmp	.label_343
.label_335:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_348
.label_569:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_354
	test	rsi, rsi
	jne	.label_356
	cmp	rbp, 1
	je	.label_321
	xor	r13d, r13d
	jmp	.label_276
.label_558:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_363
	cmp	byte ptr [rsp + 7], 0
	jne	.label_305
	cmp	r12d, 2
	jne	.label_365
	mov	eax, r9d
	and	al, 1
	jne	.label_365
	cmp	r14, r11
	jae	.label_366
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_369
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_369:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_373
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_373:
	add	r14, 3
	mov	r9b, 1
.label_365:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_379
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_379:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_360
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_360
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_360
	cmp	r14, r11
	jae	.label_274
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_274:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_383
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_383:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_276
.label_559:
	mov	bl, 0x62
	jmp	.label_291
.label_560:
	mov	cl, 0x74
	jmp	.label_295
.label_561:
	mov	bl, 0x76
	jmp	.label_291
.label_562:
	mov	bl, 0x66
	jmp	.label_291
.label_563:
	mov	cl, 0x72
	jmp	.label_295
.label_566:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_301
	cmp	byte ptr [rsp + 7], 0
	jne	.label_305
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_308:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_319
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_319:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_322
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_322:
	add	r14, 3
	xor	r9d, r9d
.label_301:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_276
.label_567:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_333
	cmp	r12d, 2
	jne	.label_309
	cmp	byte ptr [rsp + 7], 0
	je	.label_309
	jmp	.label_305
.label_568:
	cmp	r12d, 2
	jne	.label_345
	cmp	byte ptr [rsp + 7], 0
	jne	.label_305
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_292
.label_312:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_350
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
.label_300:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_287
	test	r8b, r8b
	je	.label_287
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_276
.label_354:
	test	rsi, rsi
	jne	.label_311
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_311
.label_321:
	mov	dl, 1
.label_564:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_305
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_276:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_385
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_386
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_385:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_275
.label_386:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_283
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_292
	jmp	.label_290
	nop	dword ptr [rax]
.label_275:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_290
	jmp	.label_292
.label_283:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_290
.label_363:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_304
	xor	r15d, r15d
	jmp	.label_309
.label_345:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_295
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_292
.label_295:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_305
.label_291:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_276
	nop	word ptr cs:[rax + rax]
.label_290:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_305
	cmp	r12d, 2
	jne	.label_327
	mov	eax, r9d
	and	al, 1
	jne	.label_327
	cmp	r14, r11
	jae	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_331:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_364
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_364:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_341
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_341:
	add	r14, 3
	mov	r9b, 1
.label_327:
	cmp	r14, r11
	jae	.label_346
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_346:
	inc	r14
	jmp	.label_325
.label_350:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_351
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_351:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_353:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_368
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_371
	cmp	rbp, -2
	je	.label_374
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_377
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_288:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_299
	bt	rsi, rdx
	jb	.label_343
.label_299:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_288
.label_377:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_285
	xor	r13d, r13d
.label_285:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_353
	jmp	.label_300
.label_360:
	xor	r13d, r13d
	jmp	.label_276
.label_311:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_276
.label_333:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_309
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_309
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_309
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_313
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_328
	cmp	byte ptr [rsp + 7], 0
	jne	.label_305
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_323:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_344
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_344:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_336
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_336:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_340
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_340:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_276
.label_309:
	xor	eax, eax
.label_356:
	xor	r13d, r13d
	jmp	.label_276
.label_287:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_306:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_349:
	test	r8b, r8b
	je	.label_357
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_358
	cmp	r14, r11
	jae	.label_359
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_359:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_358
	nop	dword ptr [rax]
.label_357:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_343
	cmp	r12d, 2
	jne	.label_367
	mov	eax, r9d
	and	al, 1
	jne	.label_367
	cmp	r14, r11
	jae	.label_370
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_370:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_372
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_372:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_378
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_378:
	add	r14, 3
	mov	r9b, 1
.label_367:
	cmp	r14, r11
	jae	.label_338
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_338:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_355
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_355:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_387
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_387:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_358:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_292
	test	r9b, 1
	je	.label_294
	mov	ebx, eax
	and	bl, 1
	jne	.label_294
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_297
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_297:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_278
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_278:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_294:
	cmp	r14, r11
	jae	.label_306
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
.label_292:
	test	r9b, 1
	je	.label_362
	and	al, 1
	jne	.label_362
	cmp	r14, r11
	jae	.label_316
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_316:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_277
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	add	r14, 2
	xor	r9d, r9d
.label_362:
	mov	ebx, r15d
.label_325:
	cmp	r14, r11
	jae	.label_324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_324:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_304
.label_371:
	xor	r13d, r13d
.label_368:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_300
.label_374:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_342
	mov	rsi, qword ptr [rsp + 0x50]
.label_318:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_280
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_318
	xor	r13d, r13d
	jmp	.label_300
.label_342:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_300
.label_280:
	xor	r13d, r13d
	jmp	.label_300
.label_313:
	xor	r13d, r13d
	jmp	.label_276
.label_328:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_276
	nop	dword ptr [rax + rax]
.label_286:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_361
	or	dl, al
	je	.label_343
.label_361:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_279
	or	dl, al
	jne	.label_279
	test	r10b, 1
	jne	.label_376
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_279
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_380
.label_279:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_382
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_289
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_289
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_315:
	cmp	r14, r11
	jae	.label_303
	mov	byte ptr [rcx + r14], al
.label_303:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_315
	jmp	.label_289
.label_305:
	mov	qword ptr [rsp + 0x20], rbp
.label_343:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_329:
	mov	r14, rax
.label_334:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_376:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_329
.label_382:
	mov	rcx, qword ptr [rsp + 8]
.label_289:
	cmp	r14, r11
	jae	.label_334
	mov	byte ptr [rcx + r14], 0
	jmp	.label_334
.label_381:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0
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
	#Procedure 0x404900

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
	call	xcharalloc
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
	je	.label_388
	mov	qword ptr [rax], rbx
.label_388:
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
	.align	16
	#Procedure 0x4049f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_389
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_391:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_391
.label_389:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_393
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_392]], OFFSET FLAT:slot0
.label_393:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_390
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_390:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404aa0

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
	js	.label_394
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_397
	cmp	r12d, 0x7fffffff
	je	.label_399
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_395
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_395:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_397:
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
	jbe	.label_400
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_396
.label_400:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_398
	mov	rdi, r14
	call	free
.label_398:
	mov	rdi, r15
	call	xcharalloc
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
.label_396:
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
.label_394:
	call	abort
.label_399:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c60

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70
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
	#Procedure 0x404c80
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
	#Procedure 0x404c90

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
	#Procedure 0x404cd0

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
	je	.label_401
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
.label_401:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30

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
	#Procedure 0x404d70

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
	#Procedure 0x404d90
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
	#Procedure 0x404db0

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
	mov	rcx,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
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
	#Procedure 0x404e20

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
	#Procedure 0x404e30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50
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
	#Procedure 0x404ea0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0

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
	mov	rax,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
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
	#Procedure 0x404f20
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
	#Procedure 0x404f40
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
	#Procedure 0x404f60

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
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
	#Procedure 0x404f80

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f90

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
	#Procedure 0x404fa0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_410
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_409
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_411
	mov	eax, OFFSET FLAT:label_412
	jmp	.label_407
.label_409:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_408
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_405
	mov	eax, OFFSET FLAT:label_406
	jmp	.label_407
.label_408:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_352
	mov	eax, OFFSET FLAT:label_282
.label_407:
	cmove	rax, rcx
.label_410:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405060

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
	je	.label_413
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_415
	jmp	.label_414
.label_413:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_414
.label_415:
	mov	eax, 1
	test	bpl, bpl
	je	.label_414
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
.label_414:
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
	.align	16
	#Procedure 0x4050e0

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
	je	.label_418
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_416
	jmp	.label_417
.label_418:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_417
.label_416:
	mov	eax, 1
	test	bpl, bpl
	je	.label_417
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
.label_417:
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
	.align	16
	#Procedure 0x405170

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
	je	.label_419
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_421
	jmp	.label_420
.label_419:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_420
.label_421:
	mov	eax, 1
	test	bpl, bpl
	je	.label_420
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
.label_420:
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
	.align	16
	#Procedure 0x4051f0

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
	je	.label_424
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_423
	jmp	.label_422
.label_424:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_422
.label_423:
	mov	eax, 1
	test	bpl, bpl
	je	.label_422
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
.label_422:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260

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
	je	.label_427
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_425
	jmp	.label_426
.label_427:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_426
.label_425:
	mov	eax, 1
	test	bpl, bpl
	je	.label_426
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_426:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052c0

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
	je	.label_428
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_430
	jmp	.label_429
.label_428:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_429
.label_430:
	mov	eax, 1
	test	bpl, bpl
	je	.label_429
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_429:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405310

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
	je	.label_433
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_432
	jmp	.label_431
.label_433:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_431
.label_432:
	mov	eax, 1
	test	bpl, bpl
	je	.label_431
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_431:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405360

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_435
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_436
	jmp	.label_434
.label_435:
	mov	eax, 1
	test	cl, cl
	je	.label_434
.label_436:
	xor	eax, eax
.label_434:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405390

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
	je	.label_447
	mov	edx, OFFSET FLAT:label_452
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_440
.label_447:
	mov	edx, OFFSET FLAT:label_441
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
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
	mov	esi, OFFSET FLAT:label_442
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_448
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_449]]
.label_542:
	add	rsp, 8
	jmp	.label_439
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
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
	jmp	.label_439
.label_543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
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
.label_544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
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
.label_545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
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
.label_546:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
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
	jmp	.label_439
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
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
	jmp	.label_439
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_451
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
	jmp	.label_439
.label_549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
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
	jmp	.label_439
.label_551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
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
	jmp	.label_439
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
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
.label_439:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_456:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_456
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405720

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_458:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_457
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_459
	nop	dword ptr [rax]
.label_457:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_459:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_460
	inc	r9
	cmp	r9, 0xa
	jb	.label_458
.label_460:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405780

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_461
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_461:
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
	.align	16
	#Procedure 0x405810
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_462
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_463
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_465
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_466
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_466:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_467
	test	rax, rax
	je	.label_468
.label_467:
	pop	rbx
	ret	
.label_468:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_469
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_469:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405910

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_470
	test	rbx, rbx
	jne	.label_470
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_470:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_472
	test	rax, rax
	je	.label_471
.label_472:
	pop	rbx
	ret	
.label_471:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405940

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_473
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_476
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_474
.label_473:
	test	rcx, rcx
	jne	.label_477
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_477:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_475
.label_474:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_476:
	call	xalloc_die
.label_475:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059c0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059e0
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
	#Procedure 0x405a10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_478
	call	rpl_calloc
	test	rax, rax
	je	.label_478
	pop	rcx
	ret	
.label_478:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a40

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
	#Procedure 0x405a70

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
	.section	.text
	.align	16
	#Procedure 0x405a90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405ac0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_480
	test	rsi, rsi
	mov	ecx, 1
	je	.label_481
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_481
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_480:
	mov	ecx, 1
.label_481:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b10

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
	je	.label_482
	cmp	r15, -2
	jb	.label_482
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_482
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_482:
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
	#Procedure 0x405b70

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbx
	mov	rbx, rsi
	call	str2signum
	mov	dword ptr [rbx], eax
	sar	eax, 0x1f
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b80

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_483
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_484
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_493
	jmp	.label_484
.label_483:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_486
	nop	dword ptr [rax + rax]
.label_492:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_488
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_492
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_494
	mov	esi, OFFSET FLAT:label_485
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_489
.label_494:
	test	r14d, r14d
	jle	.label_484
	mov	esi, OFFSET FLAT:label_490
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_484
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_484
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_484
	test	rax, rax
	jg	.label_484
	mov	ecx, r14d
	jmp	.label_491
.label_488:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_493
.label_489:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_484
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_484
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_487
.label_484:
	mov	eax, 0xffffffff
.label_493:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_487:
	mov	ecx, ebp
.label_491:
	add	rax, rcx
	jmp	.label_493
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	xor	eax, eax
	mov	esi, OFFSET FLAT:label_486
	nop	word ptr cs:[rax + rax]
.label_496:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_495
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_496
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_497
	cmp	eax, ebp
	jl	.label_497
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_498
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_499
.label_495:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_497
.label_498:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_499:
	xor	ebx, ebx
	sub	ebp, r15d
	je	.label_497
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_500
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_497:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90

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
	je	.label_502
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_501
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_501
.label_502:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_501
	test	cl, cl
	jne	.label_501
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_501:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_504
	cmp	byte ptr [rax], 0x43
	jne	.label_506
	cmp	byte ptr [rax + 1], 0
	je	.label_503
.label_506:
	mov	esi, OFFSET FLAT:label_505
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_504
.label_503:
	xor	ebx, ebx
.label_504:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_35
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_507
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_508
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_510
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_508
.label_510:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_508
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_509
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_509:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_508:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_511
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_511
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_511:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f20

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_512
	ret	
.label_512:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f40

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
	jne	.label_513
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_513
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_514
.label_513:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_514:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_515
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_515:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405fb0

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
