	.section	.text
	.align	32
	#Procedure 0x401a40

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rsi, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	call	emit_ancillary_info
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.37
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	pop	rax
	lea	rsi, [rsi]
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x401d50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.38
	nop	word ptr cs:[rax + rax]
.label_8:
	mov	edi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_8
.label_10:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	lea	rsi, [rsi]
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_9
	mov	esi, OFFSET FLAT:.str.48
	nop	
	mov	edx, 3
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_9
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_9:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.50
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.15
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.15
	xor	eax, eax
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.52
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	cmove	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], edi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rsi]
	mov	rbp, rbp
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	call	textdomain
	call	initialize_exit_failure
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	call	atexit
	mov	rbp, rbp
	call	initialize_signals
	xor	r12d, r12d
	mov	rsp, rsp
	lea	r14, [rsp + 0x24]
	mov	rbp, rbp
	lea	r15, [rsp + 0x18]
	mov	rsp, rsp
	xor	r13d, r13d
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_15
.label_34:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x52
	jle	.label_38
	lea	eax, [rbx - 0x75]
	cmp	eax, 0xe
	lea	rsi, [rsi]
	ja	.label_39
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_41]]
.label_516:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	call	append_unset_var
	jmp	.label_15
	nop	dword ptr [rax]
.label_38:
	cmp	ebx, 0x1f
	jle	.label_23
	cmp	ebx, 0x30
	nop	
	je	.label_46
	cmp	ebx, 0x43
	je	.label_34
	jmp	.label_35
.label_46:
	mov	rbp, rbp
	mov	r13b, 1
	mov	rsp, rsp
	jmp	.label_15
.label_39:
	cmp	ebx, 0x53
	je	.label_12
	mov	bpl, 1
	lea	rdi, [rdi]
	cmp	ebx, 0x69
	lea	rsi, [rsi]
	je	.label_15
	jmp	.label_18
.label_517:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	lea	rsi, [rsi]
	jmp	.label_15
.label_518:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	rsp, rsp
	call	parse_block_signal_params
	mov	rsp, rsp
	jmp	.label_15
.label_519:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	xor	esi, esi
	call	parse_signal_action_params
	jmp	.label_15
.label_520:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	lea	rsi, [rsi]
	call	parse_block_signal_params
	nop	
	jmp	.label_15
.label_521:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + report_signal_handling]],  1
	jmp	.label_15
.label_12:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	call	parse_split_string
	jmp	.label_15
.label_23:
	mov	rsp, rsp
	cmp	ebx, -2
	nop	
	jle	.label_43
	cmp	ebx, -1
	jne	.label_44
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x24]
	jge	.label_45
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_45
	cmp	byte ptr [rax + 1], 0
	lea	rdi, [rdi]
	je	.label_11
.label_45:
	test	bpl, bpl
	lea	rdi, [rdi]
	jne	.label_14
	call	unset_envvars
	mov	rbp, rbp
	jmp	.label_17
.label_11:
	nop	
	inc	dword ptr [dword ptr [rip + optind]]
.label_14:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_19
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	nop	
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.26
	mov	rbp, rbp
	xor	eax, eax
	call	__fprintf_chk
.label_19:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + __environ]], OFFSET FLAT:main.dummy_environ
.label_17:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
	cmp	eax, dword ptr [rsp + 0x24]
	nop	
	jge	.label_27
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	mov	r15d, dword ptr [rsp + 0x24]
	nop	
.label_50:
	cdqe	
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14 + rax*8]
	mov	esi, 0x3d
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	strchr
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	je	.label_27
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_37
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.27
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	call	__fprintf_chk
.label_37:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	mov	rbp, rbp
	call	putenv
	test	eax, eax
	jne	.label_47
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + optind]],  eax
	lea	rdi, [rdi]
	cmp	eax, r15d
	lea	rdi, [rdi]
	jl	.label_50
.label_27:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	test	r13b, r13b
	je	.label_40
	mov	rsp, rsp
	cmp	eax, ecx
	jl	.label_21
.label_40:
	test	r12, r12
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	cmp	eax, ecx
	jl	.label_22
	nop	
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_25
.label_22:
	cmp	eax, ecx
	jge	.label_26
	lea	rsi, [rsi]
	call	reset_signal_handlers
	movzx	eax,  byte ptr [byte ptr [rip + sig_mask_changed]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_30
	call	set_signal_proc_mask
.label_30:
	movzx	eax,  byte ptr [byte ptr [rip + report_signal_handling]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	nop	
	jne	.label_49
	call	list_signal_handling
.label_49:
	mov	rbp, rbp
	test	r12, r12
	je	.label_33
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_36
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
.label_36:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	chdir
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_28
.label_33:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_13
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.34
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	cmp	ebx, dword ptr [rsp + 0x24]
	jge	.label_13
	mov	r15, qword ptr [rsp + 0x18]
	movsxd	r12, dword ptr [rsp + 0x24]
	nop	
.label_42:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_31
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbx*8]
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
	mov	ebp, ebx
	sub	ebp, eax
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.35
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	ecx, ebp
	call	__fprintf_chk
.label_31:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, r12
	jl	.label_42
.label_13:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rcx + rax*8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	call	execvp
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	lea	rsi, [rsi]
	cmp	ebp, 2
	jne	.label_20
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	esi, 0x20
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_20
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	mov	rsp, rsp
	jmp	.label_20
.label_26:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + __environ]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	je	.label_20
	xor	r14d, r14d
	test	r13b, r13b
	mov	rsp, rsp
	mov	ebp, 0xa
	cmovne	ebp, r14d
	mov	rsp, rsp
	add	rbx, 8
	nop	dword ptr [rax]
.label_48:
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.31
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, ebp
	nop	
	call	__printf_chk
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx]
	lea	rsi, [rsi]
	add	rbx, 8
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_48
.label_20:
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_47:
	mov	byte ptr [rbx], 0
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	call	quote
.label_24:
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 0x7d
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_43:
	cmp	ebx, 0xffffff7d
	je	.label_32
	lea	rdi, [rdi]
	cmp	ebx, 0xffffff7e
	jne	.label_18
	mov	rsp, rsp
	xor	edi, edi
	call	usage
.label_35:
	lea	rsi, [rsi]
	cmp	ebx, 0x20
	mov	rsp, rsp
	je	.label_16
	jmp	.label_18
.label_44:
	lea	rsi, [rsi]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_18
.label_16:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_29
.label_32:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.24
	nop	
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.22
	nop	
	mov	r9d, OFFSET FLAT:.str.23
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	call	exit
.label_18:
	mov	edi, 0x7d
	mov	rsp, rsp
	call	usage
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	jmp	.label_29
.label_25:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.30
.label_29:
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	lea	rdi, [rdi]
	call	usage
.label_28:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402700

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402710

	.globl initialize_signals
	.type initialize_signals, @function
initialize_signals:
	push	rax
	nop	
	mov	edi, 0x104
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + signals]],  rax
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0x104
	mov	rdi, rax
	nop	
	call	memset
	pop	rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402740

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [rip + usvars_alloc]]
	jne	.label_51
	mov	rdi,  qword ptr [word ptr [rip + usvars]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:usvars_alloc
	mov	rsp, rsp
	mov	edx, 8
	call	x2nrealloc
	nop	
	mov	qword ptr [word ptr [rip + usvars]],  rax
.label_51:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + usvars_used]],  rcx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + usvars]]
	mov	qword ptr [rcx + rax*8], rbx
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027b0

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_57
	call	xstrdup
	mov	r14, rax
	nop	
	mov	esi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_54
	mov	rbp, rbp
	test	bpl, bpl
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	nop	
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	dword ptr [rax]
.label_52:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdi, [rdi]
	call	operand2sig
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_53
	mov	rbp, rbp
	jle	.label_56
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + signals]]
	mov	rbp, rbp
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_52
.label_54:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	jmp	.label_55
.label_57:
	mov	rbp, rbp
	test	bpl, bpl
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	lea	r14d, [rax + rax + 2]
	mov	rbp, rbp
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	
.label_58:
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsi, rbp
	nop	
	call	sig2str
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_59
	mov	rax,  qword ptr [word ptr [rip + signals]]
	nop	
	mov	dword ptr [rax + rbx*4], r14d
.label_59:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 0x41
	mov	rbp, rbp
	jne	.label_58
.label_55:
	lea	rdi, [rdi]
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_53:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_56:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402930

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_64
	mov	al,  byte ptr [byte ptr [rip + sig_mask_changed]]
	mov	rsp, rsp
	and	al, 1
	jne	.label_61
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_61:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	strtok
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_60
	lea	rsi, [rsi]
	mov	r12d, OFFSET FLAT:block_signals
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:unblock_signals
	lea	rdi, [rdi]
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	lea	rsi, [rsi]
	cmovne	r13, r12
	lea	rsi, [rsi]
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_66
	nop	
	jle	.label_62
	mov	rdi, r13
	nop	
	mov	esi, ebx
	lea	rsi, [rsi]
	call	sigaddset
	mov	rsp, rsp
	mov	rdi, r12
	mov	esi, ebx
	nop	
	call	sigdelset
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	call	strtok
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_65
.label_60:
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	jmp	.label_63
.label_64:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	lea	rdi, [rdi]
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rbp, rbp
	mov	rdi, rbx
	call	sigemptyset
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
.label_63:
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_66:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, rbp
	nop	
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_62:
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl parse_split_string
	.type parse_split_string, @function
parse_split_string:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_67:
	nop	
	movsx	rcx, byte ptr [rbx + 1]
	inc	rbx
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_67
	test	cl, cl
	je	.label_72
	mov	esi, dword ptr [r14]
	nop	
	sub	esi,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, rbx
	call	build_argv
	mov	r12, rax
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [r12], rax
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	mov	rax, r12
	mov	rsp, rsp
	jne	.label_69
	lea	rdi, [rdi]
	lea	rbp, [r12 + 8]
	mov	rsp, rsp
	cmp	qword ptr [rbp], 0
	mov	rax, r12
	je	.label_69
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	xor	ebx, ebx
	nop	
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.67
	xor	eax, eax
	nop	
	mov	rdi, r13
	call	__fprintf_chk
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	nop	
	jne	.label_74
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	nop	
	mov	rbp, r12
	mov	rbp, rbp
	add	rbp, 0x10
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.68
	mov	rsp, rsp
	jmp	.label_68
.label_69:
	cmp	qword ptr [rax + 8], 0
	lea	rax, [rax + 8]
	mov	rsp, rsp
	jne	.label_69
	jmp	.label_78
.label_68:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	rbp, rbp
	mov	bl,  byte ptr [byte ptr [rip + dev_debug]]
.label_74:
	mov	rdi, qword ptr [rbp]
	nop	dword ptr [rax]
.label_75:
	test	rdi, rdi
	je	.label_76
	mov	rsp, rsp
	test	bl, 1
	je	.label_75
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	add	rbp, 8
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.69
	jmp	.label_68
.label_76:
	mov	rax, rbp
.label_78:
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, dword ptr [r14]
	lea	rdi, [rdi]
	jge	.label_73
	nop	
	movsxd	rdx, dword ptr [r14]
	nop	dword ptr [rax + rax]
.label_77:
	mov	rsi, qword ptr [r15]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rsi
	nop	
	add	rax, 8
	inc	rcx
	cmp	rcx, rdx
	jl	.label_77
.label_73:
	mov	qword ptr [rax], 0
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	lea	rdi, [rdi]
	je	.label_70
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_71:
	cmp	qword ptr [r12 + rax*8 + 8], 0
	lea	rax, [rax + 1]
	lea	rsi, [rsi]
	jne	.label_71
.label_70:
	mov	dword ptr [r14], eax
	mov	qword ptr [r15], r12
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  0
.label_72:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d30

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	mov	rbp, rbp
	push	r14
	push	rbx
	xor	ebp, ebp
	cmp	qword ptr [word ptr [rip + usvars_used]],  0
	mov	rsp, rsp
	je	.label_82
	nop	word ptr cs:[rax + rax]
.label_81:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rbp, rbp
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_79
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	nop	
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rcx, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.84
	lea	rdi, [rdi]
	xor	eax, eax
	call	__fprintf_chk
.label_79:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	call	unsetenv
	test	eax, eax
	mov	rsp, rsp
	jne	.label_80
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	cmp	rbp,  qword ptr [word ptr [rip + usvars_used]]
	jb	.label_81
.label_82:
	mov	rbp, rbp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_80:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	nop	
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 0x7d
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e20

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, 1
	nop	
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_83:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	eax, dword ptr [rax + rbx*4]
	test	eax, eax
	je	.label_84
	nop	
	mov	r13b, 1
	cmp	eax, 2
	je	.label_87
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_87
	lea	rdi, [rdi]
	xor	r13d, r13d
.label_87:
	nop	
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	r12d, dword ptr [rax + rbx*4]
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r14
	call	sigaction
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	rsp, rsp
	sete	al
	test	r13b, r13b
	lea	rsi, [rsi]
	jne	.label_85
	test	al, al
	mov	rbp, rbp
	je	.label_89
.label_85:
	lea	rsi, [rsi]
	dec	r12d
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_90
	cmp	r12d, 1
	seta	al
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	edi, ebx
	mov	rsi, r14
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	or	r13b, al
	lea	rsi, [rsi]
	je	.label_88
.label_90:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_84
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_84
	cmp	r12d, 2
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:.str.90
	mov	eax, OFFSET FLAT:.str.89
	mov	rsp, rsp
	cmovb	r9, rax
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str_0
	nop	
	mov	ecx, OFFSET FLAT:.str.91
	nop	
	cmovne	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.88
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	r8d, ebx
	mov	rsp, rsp
	call	__fprintf_chk
	nop	dword ptr [rax]
.label_84:
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, 0x41
	lea	rdi, [rdi]
	jl	.label_83
	lea	rdi, [rdi]
	add	rsp, 0xc8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_89:
	nop	
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	jmp	.label_86
.label_88:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.87
.label_86:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 0x7d
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	mov	rdx, rcx
	nop	
	mov	ecx, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030

	.globl set_signal_proc_mask
	.type set_signal_proc_mask, @function
set_signal_proc_mask:
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x98
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	sigemptyset
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_96
	nop	
	mov	ebx, 1
	nop	
	lea	r14, [rsp + 0x18]
	mov	rbp, rbp
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_91:
	mov	edi, OFFSET FLAT:block_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	rsp, rsp
	je	.label_94
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, ebx
	call	sigaddset
	mov	rsp, rsp
	mov	r12d, OFFSET FLAT:.str.93
	jmp	.label_97
	nop	dword ptr [rax + rax]
.label_94:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	lea	rsi, [rsi]
	call	sigismember
	test	eax, eax
	je	.label_92
	mov	rsp, rsp
	mov	rdi, r14
	mov	esi, ebx
	call	sigdelset
	mov	r12d, OFFSET FLAT:.str.94
.label_97:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	nop	
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_92
	mov	edi, ebx
	mov	rsi, r15
	mov	rsp, rsp
	call	sig2str
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_92
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.95
	nop	
	xor	eax, eax
	nop	
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	r8d, ebx
	mov	r9, r12
	call	__fprintf_chk
.label_92:
	nop	
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_91
	lea	rsi, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	edi, 2
	xor	edx, edx
	lea	rsi, [rsi]
	call	sigprocmask
	test	eax, eax
	jne	.label_95
	add	rsp, 0x98
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
.label_96:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.92
	jmp	.label_93
.label_95:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
.label_93:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031e0

	.globl list_signal_handling
	.type list_signal_handling, @function
list_signal_handling:
	nop	
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x148
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0xc8]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_101
	mov	rsp, rsp
	mov	ebx, 1
	lea	r14, [rsp + 0x18]
	nop	
	lea	r12, [rsp + 0xb0]
	nop	dword ptr [rax + rax]
.label_98:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, ebx
	mov	rsp, rsp
	mov	rdx, r14
	mov	rbp, rbp
	call	sigaction
	test	eax, eax
	jne	.label_100
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x18], 1
	lea	rsi, [rsi]
	mov	ebp, OFFSET FLAT:.str.90
	nop	
	je	.label_102
	lea	rsi, [rsi]
	mov	ebp, OFFSET FLAT:.str_0
.label_102:
	lea	rdi, [rsp + 0xc8]
	mov	rbp, rbp
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	r13d, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.93
	mov	rsp, rsp
	cmovne	r13, rax
	cmp	byte ptr [rbp], 0
	mov	al, byte ptr [r13]
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	je	.label_99
	lea	rdi, [rdi]
	test	al, al
	mov	r15d, OFFSET FLAT:.str_0
	mov	ecx, OFFSET FLAT:.str.65
	mov	rsp, rsp
	cmovne	r15, rcx
	lea	rsi, [rsi]
	cmp	byte ptr [rbp], 0
	mov	rbp, rbp
	jne	.label_103
.label_99:
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_100
.label_103:
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	rsi, r12
	call	sig2str
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r15
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, r12
	nop	
	mov	r8d, ebx
	mov	r9, r13
	call	__fprintf_chk
.label_100:
	lea	rsi, [rsi]
	inc	ebx
	lea	rsi, [rsi]
	cmp	ebx, 0x41
	jne	.label_98
	lea	rsi, [rsi]
	add	rsp, 0x148
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_101:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 0x7d
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl build_argv
	.type build_argv, @function
build_argv:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x48
	mov	ebx, esi
	mov	r12, rdi
	nop	
	mov	dword ptr [rsp + 0x44], 0
	mov	qword ptr [rsp + 0x38], 0
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_121
	movsx	rbp, byte ptr [r12]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_121
	mov	rsp, rsp
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_121
	nop	
	lea	rsi, [rsp + 0x38]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x44]
	mov	rdi, r12
	call	validate_split_str
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	add	rdi, 7
	call	xmalloc
	mov	r15, rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x44]
	lea	rdi, [rdi]
	lea	eax, [rbx + rax + 2]
	movsxd	rdi, eax
	mov	rsp, rsp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	word ptr [r15 + 4], 0x59
	mov	rbp, rbp
	mov	dword ptr [r15], 0x4d4d5544
	lea	rsi, [rsi]
	mov	qword ptr [rax], r15
	lea	rdi, [rdi]
	add	rax, 8
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	add	r15, 6
	mov	rsp, rsp
	mov	al, byte ptr [r12]
	test	al, al
	je	.label_113
	lea	rsi, [rsi]
	mov	r13b, 1
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
.label_119:
	nop	
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	bpl, cl
	and	bpl, 1
.label_122:
	mov	ecx, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r14b, cl
	mov	edx, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	or	r14b, dl
	and	r14b, 1
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	mov	rbx, r12
.label_116:
	lea	rsi, [rsi]
	mov	r12, rbx
	nop	
.label_114:
	lea	rdi, [rdi]
	movsx	ecx, al
	nop	
	lea	edx, [rcx - 0x20]
	lea	rdi, [rdi]
	cmp	edx, 7
	mov	rsp, rsp
	jbe	.label_125
	lea	rsi, [rsi]
	cmp	ecx, 9
	mov	rsp, rsp
	je	.label_123
	cmp	ecx, 0x5c
	jne	.label_106
	mov	rsp, rsp
	test	bpl, bpl
	je	.label_111
	movzx	ecx, byte ptr [r12 + 1]
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	je	.label_111
	mov	rsp, rsp
	movzx	ecx, cl
	cmp	ecx, 0x27
	nop	
	jne	.label_117
.label_111:
	lea	rbx, [r12 + 1]
	nop	
	movzx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	cmp	eax, 0x27
	je	.label_110
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	je	.label_110
	mov	rbp, rbp
	test	bpl, bpl
	je	.label_126
	nop	
	cmp	ecx, 0x5f
	lea	rsi, [rsi]
	je	.label_129
	lea	rdi, [rdi]
	jmp	.label_107
	nop	word ptr [rax + rax]
.label_125:
	lea	rdi, [rdi]
	mov	rbx, r12
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_104]]
.label_123:
	lea	rsi, [rsi]
	test	r14b, r14b
	jne	.label_108
	mov	esi, 0x20
	mov	rbp, rbp
	mov	edx, 9
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	__strspn_c2
	nop	
	add	r12, rax
	mov	rsp, rsp
	jmp	.label_118
.label_126:
	mov	rbp, rbp
	cmp	ecx, 0x5f
	mov	rsp, rsp
	jne	.label_115
.label_129:
	nop	
	mov	al, 0x20
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	jne	.label_110
	add	r12, 2
.label_118:
	mov	al, byte ptr [r12]
	mov	rsp, rsp
	mov	r13b, 1
	test	al, al
	lea	rdi, [rdi]
	jne	.label_114
	jmp	.label_113
.label_108:
	lea	rsi, [rsi]
	mov	rbx, r12
	mov	rbp, rbp
	jmp	.label_110
.label_444:
	mov	rsp, rsp
	test	bpl, bpl
	je	.label_105
	lea	rdi, [rdi]
	mov	rbx, r12
	mov	rbp, rbp
	jmp	.label_110
.label_445:
	test	r13b, 1
	mov	rbx, r12
	mov	rbp, rbp
	je	.label_110
	lea	rdi, [rdi]
	jmp	.label_113
.label_446:
	mov	rsp, rsp
	test	bpl, bpl
	lea	rsi, [rsi]
	jne	.label_120
	mov	rdi, r12
	lea	rsi, [rsi]
	call	extract_varname
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_127
	lea	rsi, [rsi]
	test	r13b, 1
	mov	rsp, rsp
	je	.label_130
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0
	mov	rsp, rsp
	inc	r15
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	add	rax, 8
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	xor	r13d, r13d
.label_130:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_124
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbx
	call	quote
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.74
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	call	__fprintf_chk
.label_124:
	nop	
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	r15, rax
	jmp	.label_109
.label_447:
	cmp	byte ptr [rsp + 0x37], 0
	mov	rsp, rsp
	je	.label_112
	mov	rbp, rbp
	mov	rbx, r12
	nop	
	jmp	.label_110
.label_106:
	mov	rbx, r12
	jmp	.label_110
.label_117:
	mov	rbx, r12
	jmp	.label_110
.label_115:
	nop	
	mov	dl, al
	lea	rdi, [rdi]
	add	dl, 0xde
	lea	rsi, [rsi]
	movzx	edx, dl
	cmp	edx, 3
	jb	.label_110
.label_107:
	lea	rdi, [rdi]
	cmp	ecx, 0x63
	mov	rbp, rbp
	je	.label_113
	movsx	edi, al
	call	escape_char
	nop	
	jmp	.label_110
.label_120:
	mov	rbx, r12
	nop	dword ptr [rax + rax]
.label_110:
	lea	rsi, [rsi]
	test	r13b, 1
	je	.label_131
	lea	rsi, [rsi]
	mov	byte ptr [r15], 0
	inc	r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [rcx], r15
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rcx
	mov	rsp, rsp
	xor	r13d, r13d
.label_131:
	mov	byte ptr [r15], al
	inc	r15
.label_133:
	nop	
	mov	al, byte ptr [rbx + 1]
	lea	rdi, [rdi]
	inc	rbx
	test	al, al
	jne	.label_116
	lea	rdi, [rdi]
	jmp	.label_113
.label_127:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_109
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.75
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	call	__fprintf_chk
.label_109:
	lea	rdi, [rdi]
	mov	esi, 0x7d
	mov	rdi, r12
	call	strchr
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	jmp	.label_133
.label_105:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x18]
	not	al
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	lea	rsi, [rsi]
	test	r13b, 1
	je	.label_128
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	xor	r13d, r13d
.label_128:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	and	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	al, byte ptr [r12 + 1]
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	test	al, al
	jne	.label_122
	lea	rdi, [rdi]
	jmp	.label_113
.label_112:
	nop	
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	not	al
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	test	r13b, 1
	je	.label_132
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0
	lea	rdi, [rdi]
	inc	r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax], r15
	add	rax, 8
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	xor	r13d, r13d
.label_132:
	mov	eax, dword ptr [rsp + 0x1c]
	nop	
	and	al, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1c], eax
	mov	rsp, rsp
	mov	al, byte ptr [r12 + 1]
	inc	r12
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_119
.label_113:
	mov	byte ptr [r15], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_121:
	mov	edi, OFFSET FLAT:.str.70
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.71
	mov	rsp, rsp
	mov	edx, 0x18b
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.build_argv
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl validate_split_str
	.type validate_split_str, @function
validate_split_str:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r14, rdx
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rbp, rbp
	test	r15, r15
	mov	rbp, rbp
	je	.label_136
	lea	rsi, [rsi]
	movsx	rbp, byte ptr [r15]
	test	rbp, rbp
	je	.label_136
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	r13, rax
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	jne	.label_136
	mov	qword ptr [rsp + 8], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	inc	rax
	nop	
	mov	qword ptr [rsp + 0x18], rax
	mov	cl, byte ptr [r15]
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r14d, 1
	lea	rsi, [rsi]
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_137
	xor	r8d, r8d
	xor	r12d, r12d
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	mov	r9, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r9
	nop	word ptr cs:[rax + rax]
.label_143:
	lea	rsi, [rsi]
	mov	esi, r14d
	movsx	rcx, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	bl, byte ptr [rdx + rcx*2 + 1]
	and	bl, 0x20
	mov	rbp, rbp
	shr	bl, 5
	mov	cl, bpl
	and	cl, 1
	mov	dil, r12b
	and	dil, 1
	mov	dl, r12b
	lea	rsi, [rsi]
	or	dl, bpl
	test	dl, 1
	lea	rsi, [rsi]
	sete	r13b
	mov	rbp, rbp
	and	r13b, bl
	mov	rsp, rsp
	cmovne	eax, r8d
	mov	r14d, eax
	lea	rdi, [rdi]
	add	r14d, esi
	movsx	eax, byte ptr [r15]
	mov	rbp, rbp
	cmp	eax, 0x26
	jg	.label_134
	mov	rsp, rsp
	cmp	eax, 0x22
	lea	rdi, [rdi]
	je	.label_151
	lea	rdi, [rdi]
	cmp	eax, 0x24
	lea	rsi, [rsi]
	jne	.label_138
	lea	rdi, [rdi]
	test	dil, dil
	jne	.label_138
	lea	rdi, [rdi]
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	rdi, r15
	nop	
	call	extract_varname
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_139
	nop	
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_145
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 0x18], rax
.label_145:
	xor	r8d, r8d
	nop	
	mov	r9, rbx
	jmp	.label_138
	nop	word ptr [rax + rax]
.label_134:
	mov	rsp, rsp
	cmp	eax, 0x5c
	mov	rsp, rsp
	je	.label_149
	nop	
	cmp	eax, 0x27
	jne	.label_138
	test	dil, dil
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	test	cl, cl
	je	.label_144
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_140
.label_144:
	nop	
	or	cl, dil
	sete	r12b
	jmp	.label_138
.label_151:
	lea	rdi, [rdi]
	test	dil, dil
	sete	al
	nop	
	test	cl, cl
	je	.label_141
	test	al, al
	je	.label_142
.label_141:
	or	cl, dil
	lea	rdi, [rdi]
	sete	bpl
	mov	rsp, rsp
	jmp	.label_138
	nop	word ptr cs:[rax + rax]
.label_149:
	movsx	ebx, byte ptr [r15 + 1]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_147
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 0x63
	je	.label_148
.label_147:
	test	bl, bl
	mov	rbp, rbp
	je	.label_152
	lea	rsi, [rsi]
	mov	edi, ebx
	call	valid_escape_sequence
	test	al, al
	mov	rsp, rsp
	je	.label_153
	inc	r15
	movzx	eax, bl
	lea	rsi, [rsi]
	cmp	eax, 0x5f
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	add	r14d, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x20]
	xor	r8d, r8d
	nop	
.label_138:
	movzx	eax, r13b
	lea	rsi, [rsi]
	mov	cl, byte ptr [r15 + 1]
	inc	r15
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_143
	jmp	.label_146
.label_137:
	xor	r12d, r12d
	xor	ebp, ebp
.label_146:
	or	r12b, bpl
	mov	rbp, rbp
	test	r12b, 1
	jne	.label_150
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_140:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x12f
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	mov	rbp, rbp
	call	__assert_fail
.label_142:
	mov	edi, OFFSET FLAT:.str.76
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	lea	rdi, [rdi]
	call	__assert_fail
.label_148:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	jmp	.label_135
.label_152:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.78
	mov	rbp, rbp
	jmp	.label_135
.label_153:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	nop	
	call	error
.label_136:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.71
	nop	
	mov	edx, 0x118
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_139:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
.label_150:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.81
.label_135:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 0x7d
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d40

	.globl escape_char
	.type escape_char, @function
escape_char:
	lea	rsi, [rsi]
	lea	eax, [rdi - 0x6e]
	cmp	eax, 8
	lea	rsi, [rsi]
	ja	.label_154
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_157]]
.label_528:
	mov	rsp, rsp
	mov	al, 0xa
	nop	
	jmp	.label_156
.label_154:
	mov	rsp, rsp
	mov	al, 0xc
	cmp	edi, 0x66
	nop	
	jne	.label_155
.label_156:
	movsx	eax, al
	ret	
.label_529:
	lea	rdi, [rdi]
	mov	al, 0xd
	lea	rsi, [rsi]
	movsx	eax, al
	ret	
.label_530:
	mov	rbp, rbp
	mov	al, 9
	mov	rsp, rsp
	movsx	eax, al
	lea	rsi, [rsi]
	ret	
.label_531:
	mov	al, 0xb
	lea	rsi, [rsi]
	movsx	eax, al
	ret	
.label_155:
	push	rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.82
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0xd2
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.escape_char
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dc0

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r15, rdi
	lea	rsi, [rsi]
	call	scan_varname
	mov	rbp, rbp
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_159
	sub	rax, r15
	mov	rsp, rsp
	lea	r14, [rax - 2]
	lea	rsi, [rsi]
	cmp	r14,  qword ptr [word ptr [rip + vnlen]]
	nop	
	jb	.label_158
	mov	rbp, rbp
	dec	rax
	mov	qword ptr [word ptr [rip + vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + varname]]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + varname]],  rax
.label_158:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + varname]]
	add	r15, 2
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	mov	rsp, rsp
	mov	byte ptr [rbx + r14], 0
.label_159:
	mov	rax, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403e60

	.globl valid_escape_sequence
	.type valid_escape_sequence, @function
valid_escape_sequence:
	mov	al, 1
	mov	cl, dil
	add	cl, 0xde
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x3d
	mov	rbp, rbp
	ja	.label_160
	lea	rdi, [rdi]
	movabs	rdx, 0x2400000000000027
	lea	rdi, [rdi]
	bt	rdx, rcx
	lea	rsi, [rsi]
	jb	.label_162
.label_160:
	add	dil, 0x9d
	movzx	ecx, dil
	lea	rdi, [rdi]
	cmp	ecx, 0x13
	nop	
	ja	.label_161
	lea	rdi, [rdi]
	mov	edx, 0xa8809
	bt	rdx, rcx
	mov	rbp, rbp
	jae	.label_161
.label_162:
	ret	
.label_161:
	xor	eax, eax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdi
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_163
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x24
	mov	rbp, rbp
	jne	.label_163
	nop	
	movzx	eax, byte ptr [r14 + 1]
	cmp	eax, 0x7b
	jne	.label_166
	mov	bl, byte ptr [r14 + 2]
	mov	rbp, rbp
	movsx	edi, bl
	call	c_isalpha
	test	al, al
	mov	rbp, rbp
	jne	.label_165
	movzx	eax, bl
	mov	rbp, rbp
	cmp	eax, 0x5f
	jne	.label_166
.label_165:
	mov	rbp, rbp
	add	r14, 2
	nop	word ptr cs:[rax + rax]
.label_164:
	mov	bl, byte ptr [r14 + 1]
	lea	rsi, [rsi]
	inc	r14
	movsx	edi, bl
	mov	rsp, rsp
	call	c_isalnum
	lea	rsi, [rsi]
	test	al, al
	jne	.label_164
	lea	rsi, [rsi]
	movzx	eax, bl
	mov	rbp, rbp
	cmp	eax, 0x5f
	je	.label_164
	nop	
	cmp	eax, 0x7d
	je	.label_167
.label_166:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_167:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_163:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.83
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.71
	mov	rsp, rsp
	mov	edx, 0xdd
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.scan_varname
	lea	rsi, [rsi]
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x403fa0

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_173
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strtol
	mov	rdx, qword ptr [rsp]
	mov	ecx, 0xffffffff
	nop	
	cmp	rdx, r15
	nop	
	je	.label_170
	mov	rsp, rsp
	cmp	byte ptr [rdx], 0
	lea	rdi, [rdi]
	jne	.label_170
	lea	rsi, [rsi]
	cmp	dword ptr [rbx], 0
	nop	
	jne	.label_170
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_170
	movsxd	rdx, eax
	cmp	rdx, rax
	nop	
	jne	.label_170
	cmp	eax, 0xfe
	mov	rbp, rbp
	mov	edx, 0xff
	mov	rbp, rbp
	mov	ecx, 0x7f
	cmovg	ecx, edx
	lea	rsi, [rsi]
	and	ecx, eax
.label_170:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rbp, rbp
	jmp	.label_169
.label_173:
	mov	rsp, rsp
	mov	rdi, r15
	call	xstrdup
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbp, rbp
	mov	bpl, byte ptr [r12]
	lea	rsi, [rsi]
	test	bpl, bpl
	lea	rsi, [rsi]
	je	.label_174
	lea	rbx, [r12 + 1]
	nop	word ptr cs:[rax + rax]
.label_178:
	lea	rsi, [rsi]
	movsx	esi, bpl
	nop	
	mov	edi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_175
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_175:
	mov	rsp, rsp
	mov	bpl, byte ptr [rbx]
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	test	bpl, bpl
	jne	.label_178
.label_174:
	lea	rsi, [rsp + 0xc]
	mov	rdi, r12
	nop	
	call	str2sig
	test	eax, eax
	je	.label_171
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x53
	jne	.label_172
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 1]
	cmp	eax, 0x49
	mov	rbp, rbp
	jne	.label_172
	movzx	eax, byte ptr [r12 + 2]
	nop	
	cmp	eax, 0x47
	lea	rdi, [rdi]
	jne	.label_172
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	add	rdi, 3
	lea	rsi, [rsp + 0xc]
	nop	
	call	str2sig
	test	eax, eax
	nop	
	je	.label_171
.label_172:
	mov	dword ptr [rsp + 0xc], 0xffffffff
.label_171:
	mov	rsp, rsp
	mov	rdi, r12
	call	free
.label_169:
	mov	edi, dword ptr [rsp + 0xc]
	test	edi, edi
	js	.label_176
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_168
.label_176:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_177
.label_168:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xc]
.label_177:
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4041b0

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_179
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_179
.label_180:
	ret	
.label_179:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_180
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041e0

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_181
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_181:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404200
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404210
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
	#Procedure 0x404220
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_182
.label_183:
	ret	
.label_182:
	cmp	edi, 0x7f
	je	.label_183
	xor	eax, eax
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404240
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
	#Procedure 0x404250
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
	#Procedure 0x404260
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
	#Procedure 0x404270
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
	#Procedure 0x404280
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_184
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_184
.label_185:
	ret	
.label_184:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_185
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_186
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_186:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0

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
	#Procedure 0x4042e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_187
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_187:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404300
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
	#Procedure 0x404310
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
	#Procedure 0x404320
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
	#Procedure 0x404330
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340

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
	je	.label_190
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_188
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_188
.label_190:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_189
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_188:
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
	jne	.label_191
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
.label_189:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_191:
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
	#Procedure 0x404440

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
	je	.label_192
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
	jl	.label_194
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_194
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_193
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_193:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_194:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_192:
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
	#Procedure 0x404530
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
	#Procedure 0x404580
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
	#Procedure 0x4045a0
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
	#Procedure 0x4045c0

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
	#Procedure 0x404630
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
	#Procedure 0x404650

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
	je	.label_195
	test	rdx, rdx
	nop	
	je	.label_195
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_195:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404690
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
	#Procedure 0x404730

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
.label_233:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_205
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_215]]
.label_499:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
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
.label_500:
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
	jne	.label_253
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_253
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_284:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_277
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_277:
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
	jne	.label_284
.label_253:
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
	jmp	.label_211
.label_492:
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
	jmp	.label_211
.label_495:
	mov	rsp, rsp
	mov	al, 1
.label_493:
	mov	r15b, 1
.label_496:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_313
	mov	cl, al
.label_313:
	lea	rdi, [rdi]
	mov	al, cl
.label_494:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_316
	test	r10, r10
	je	.label_203
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_206
.label_316:
	xor	ecx, ecx
	jmp	.label_206
.label_497:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_218
	test	r10, r10
	je	.label_228
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_229
.label_498:
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
	jmp	.label_211
.label_203:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_206:
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
	jmp	.label_211
.label_218:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_229
.label_228:
	mov	rbp, rbp
	mov	eax, 1
.label_229:
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
.label_211:
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
	jmp	.label_248
	nop	word ptr [rax + rax]
.label_216:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_248:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_210
	cmp	rsi, rbp
	jne	.label_213
	jmp	.label_214
	nop	word ptr cs:[rax + rax]
.label_210:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_214
.label_213:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_225
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_231
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_231
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
.label_231:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_266
.label_225:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_299:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_272
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_278]]
.label_509:
	test	rsi, rsi
	jne	.label_221
	jmp	.label_208
	nop	word ptr [rax + rax]
.label_266:
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
	jne	.label_301
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
	je	.label_299
	mov	rsp, rsp
	jmp	.label_217
.label_301:
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
	jmp	.label_299
.label_513:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_197
	test	rsi, rsi
	nop	
	jne	.label_246
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_208
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_198
.label_502:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_285
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_217
	cmp	edi, 2
	nop	
	jne	.label_226
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_230
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_235
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_235:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_315
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_315:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_256
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_265
.label_503:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_271
.label_504:
	mov	cl, 0x74
	jmp	.label_276
.label_505:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_271
.label_506:
	mov	bl, 0x66
	jmp	.label_271
.label_507:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_276
.label_510:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_281
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_196
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
	jae	.label_291
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_291:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_305
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_305:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_309
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_309:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_317
.label_511:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_204
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_212
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_196
.label_212:
	mov	rdi, r14
	jmp	.label_221
.label_512:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_223
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_196
	mov	rdi, r14
	jmp	.label_234
.label_272:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_238
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
.label_302:
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
	ja	.label_263
	test	dl, dl
	mov	rsp, rsp
	je	.label_263
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_198
.label_197:
	test	rsi, rsi
	jne	.label_282
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_282
.label_208:
	mov	rbp, rbp
	mov	dl, 1
.label_508:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_217
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_198
.label_285:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_221
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_248
.label_281:
	mov	rdi, r14
.label_317:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_198
.label_223:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_276
.label_234:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_286
.label_276:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_217
.label_271:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_198
	lea	rsi, [rsi]
	jmp	.label_293
.label_238:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_296
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
.label_296:
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
.label_237:
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
	je	.label_239
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
	je	.label_243
	cmp	rbp, -2
	nop	
	je	.label_261
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_264
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_280:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_251
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_279
.label_251:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_280
.label_264:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_295
	xor	r15d, r15d
.label_295:
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
	je	.label_237
	jmp	.label_302
.label_282:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_198
.label_204:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_221
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_221
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_221
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_310
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_303
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_217
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_250:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_200
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_200:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_240
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_270
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_270:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_198
.label_221:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_198:
	test	r12b, r12b
	je	.label_288
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_292
	jmp	.label_269
	nop	word ptr cs:[rax + rax]
.label_288:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_269
.label_292:
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
	jne	.label_232
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_286
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_293
	jmp	.label_286
.label_232:
	mov	bl, r13b
	mov	rsi, r14
.label_293:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_217
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_259
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_259
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_199
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_199:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_307
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_307:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_314
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_259:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_207
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_207:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_220
.label_246:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_198
.label_263:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_308
	nop	word ptr cs:[rax + rax]
.label_306:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_308:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_242
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_247
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_254
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_254:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_247
	nop	dword ptr [rax]
.label_242:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_196
	cmp	r14d, 2
	jne	.label_257
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_257
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_283
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_283:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_290
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_290:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_300
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_300:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_257:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_245
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_245:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_244
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
.label_244:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_219
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
.label_219:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_247:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_286
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_236
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_262
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_241:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_255
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_255:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_236:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_262:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_306
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
.label_286:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_289
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_289
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_312
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_312:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_298
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_298:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_289:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_220:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_216
.label_226:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_265
.label_230:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_265:
	cmp	rcx, r10
	jae	.label_201
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_201:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_209
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_294
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_227
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_252
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_252:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_304
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_304:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_198
.label_209:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_198
.label_294:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_198
.label_227:
	xor	r15d, r15d
	jmp	.label_198
.label_239:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_275
.label_243:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_268
.label_261:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_287
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_297:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_258
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_297
	xor	r15d, r15d
	nop	
	jmp	.label_275
.label_287:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_268:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_275:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_302
.label_258:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_275
.label_310:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_198
.label_303:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_198
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_311
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_196
.label_311:
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
	je	.label_222
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_222
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_224
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_222
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
	je	.label_233
.label_222:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_249
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_249
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_249
	inc	rdx
	nop	dword ptr [rax + rax]
.label_267:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_260:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_267
.label_249:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_273
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_273
.label_217:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_274:
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
.label_202:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_273:
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
.label_279:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_274
.label_196:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_274
.label_224:
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
	jmp	.label_202
.label_205:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80
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
	#Procedure 0x405ea0

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
	je	.label_318
	mov	qword ptr [rax], rbx
.label_318:
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
	#Procedure 0x405ff0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_319
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_323:
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
	jl	.label_323
.label_319:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_322
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_321]], OFFSET FLAT:slot0
.label_322:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_320
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_320:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4060c0

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
	js	.label_324
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_329
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_327
.label_329:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_330
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
	jne	.label_326
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_326:
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
.label_327:
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
	ja	.label_325
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
	je	.label_328
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_328:
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
.label_325:
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
.label_324:
	lea	rdi, [rdi]
	call	abort
.label_330:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406330

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406340
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
	#Procedure 0x406360
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
	#Procedure 0x406380

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
	#Procedure 0x4063e0

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
	je	.label_331
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
.label_331:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406450

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
	#Procedure 0x4064b0

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
	#Procedure 0x4064d0
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
	#Procedure 0x4064f0

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
	mov	rcx,  qword ptr [word ptr [rip + label_332]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	#Procedure 0x406590

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
	#Procedure 0x4065b0

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
	#Procedure 0x4065c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065d0
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
	#Procedure 0x406640

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
	#Procedure 0x406650

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
	mov	rax,  qword ptr [word ptr [rip + label_332]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	#Procedure 0x4066e0
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
	#Procedure 0x406710
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
	#Procedure 0x406740

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406750
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
	#Procedure 0x406770

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406780

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
	#Procedure 0x406790

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
	jne	.label_335
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
	je	.label_336
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_335
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_335
.label_336:
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
	je	.label_337
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_335
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_335
.label_337:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_335:
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
	#Procedure 0x4068c0

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
	je	.label_339
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_338
	jmp	.label_340
.label_339:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_340
.label_338:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_340
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
.label_340:
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
	#Procedure 0x406980

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
	je	.label_343
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_342
	lea	rsi, [rsi]
	jmp	.label_341
.label_343:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_341
.label_342:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_341
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
.label_341:
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
	#Procedure 0x406a70

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
	je	.label_346
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_345
	jmp	.label_344
.label_346:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_344
.label_345:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_344
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
.label_344:
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
	#Procedure 0x406b40

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
	je	.label_349
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_348
	jmp	.label_347
.label_349:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_347
.label_348:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_347
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
.label_347:
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
	#Procedure 0x406be0

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
	je	.label_352
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_351
	nop	
	jmp	.label_350
.label_352:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_350
.label_351:
	mov	eax, 1
	test	bpl, bpl
	je	.label_350
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
.label_350:
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
	#Procedure 0x406c80

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
	je	.label_355
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_354
	lea	rsi, [rsi]
	jmp	.label_353
.label_355:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_353
.label_354:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_353
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
.label_353:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10

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
	je	.label_358
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_357
	jmp	.label_356
.label_358:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_356
.label_357:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_356
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_356:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406d80

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
	je	.label_359
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_361
	mov	rbp, rbp
	jmp	.label_360
.label_359:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_360
.label_361:
	xor	eax, eax
.label_360:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406dd0

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
	je	.label_364
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
	jmp	.label_366
.label_364:
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
.label_366:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_368
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_370]]
.label_459:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_368:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_369
.label_460:
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
.label_461:
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
.label_462:
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
	jmp	.label_363
.label_463:
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
	jmp	.label_362
.label_464:
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
	jmp	.label_371
.label_465:
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
.label_371:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_362:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_363:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_367
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_369:
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
	jmp	.label_365
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
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
.label_365:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_367:
	mov	rbp, rbp
	call	__fprintf_chk
.label_458:
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
	#Procedure 0x4071c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_372:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_372
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_376:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_373
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_373:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_374
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_376
.label_374:
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
	#Procedure 0x407280

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_377
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
.label_377:
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
	#Procedure 0x407330
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
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x4073c0
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
	jb	.label_378
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_378:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407400

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_379
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_380
.label_379:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_380:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407430
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
	jb	.label_381
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_381:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407470

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_382
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_382
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_382:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_383
	test	rax, rax
	nop	
	je	.label_384
.label_383:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_384:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_385
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_386
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_387
.label_385:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_388
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_388:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_389
.label_387:
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
.label_386:
	call	xalloc_die
.label_389:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407560

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407570
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407580
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
	#Procedure 0x4075c0
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
	jb	.label_390
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_390
	pop	rcx
	ret	
.label_390:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075f0

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
	#Procedure 0x407640

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
	#Procedure 0x407660

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
	#Procedure 0x4076b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_391
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_392
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
	je	.label_392
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
.label_391:
	mov	ecx, 1
.label_392:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407720

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
	je	.label_393
	nop	
	cmp	r15, -2
	jb	.label_393
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_393
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_393:
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
	#Procedure 0x4077b0

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbx
	mov	rbx, rsi
	call	str2signum
	lea	rsi, [rsi]
	mov	dword ptr [rbx], eax
	lea	rsi, [rsi]
	sar	eax, 0x1f
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4077d0

	.globl str2signum
	.type str2signum, @function
str2signum:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	nop	
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_397
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_398
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_395
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	cl, byte ptr [rcx]
	mov	rsp, rsp
	test	cl, cl
	je	.label_399
	jmp	.label_395
	nop	dword ptr [rax + rax]
.label_398:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_396
	lea	rsi, [rsi]
	inc	rbx
	lea	rdi, [rdi]
	add	rbp, 0xc
	nop	
	cmp	rbx, 0x22
	mov	rbp, rbp
	jbe	.label_398
	lea	rsi, [rsi]
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	nop	
	mov	r14d, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	jle	.label_394
	nop	
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_401
.label_394:
	test	r14d, r14d
	jle	.label_395
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rdi, r15
	mov	rbp, rbp
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	jne	.label_395
	add	r15, 5
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rdi, r15
	mov	rsp, rsp
	call	strtol
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_395
	lea	rdi, [rdi]
	sub	ebp, r14d
	nop	
	movsxd	rcx, ebp
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	jg	.label_395
	test	rax, rax
	lea	rsi, [rsi]
	jg	.label_395
	mov	rsp, rsp
	mov	ecx, r14d
	lea	rdi, [rdi]
	jmp	.label_400
.label_396:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jmp	.label_399
.label_401:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_395
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	mov	rsp, rsp
	jne	.label_395
	sub	r14d, ebp
	mov	rbp, rbp
	movsxd	rcx, r14d
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_402
.label_395:
	mov	eax, 0xffffffff
.label_399:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_402:
	mov	ecx, ebp
.label_400:
	add	rax, rcx
	jmp	.label_399
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079a0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rsi
	mov	ebp, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:label_397
	nop	dword ptr [rax]
.label_406:
	lea	rdi, [rdi]
	cmp	dword ptr [rsi - 4], ebp
	lea	rsi, [rsi]
	je	.label_403
	inc	eax
	nop	
	add	rsi, 0xc
	lea	rsi, [rsi]
	cmp	eax, 0x22
	mov	rbp, rbp
	jbe	.label_406
	mov	rsp, rsp
	call	__libc_current_sigrtmin
	lea	rdi, [rdi]
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	nop	
	jg	.label_407
	mov	rsp, rsp
	cmp	eax, ebp
	jl	.label_407
	lea	rsi, [rsi]
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	lea	rsi, [rsi]
	shr	edx, 0x1f
	add	edx, ecx
	mov	rbp, rbp
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_405
	mov	rbp, rbp
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	lea	rsi, [rsi]
	jmp	.label_404
.label_403:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcpy
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_407
.label_405:
	lea	rdi, [rdi]
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_404:
	mov	rbp, rbp
	xor	ebx, ebx
	cmp	r15d, ebp
	je	.label_407
	sub	ebp, r15d
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_2
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	r8d, ebp
	mov	rsp, rsp
	call	__sprintf_chk
.label_407:
	lea	rsi, [rsi]
	mov	eax, ebx
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ac0

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
	je	.label_409
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_408
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_408
.label_409:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_408
	test	cl, cl
	jne	.label_408
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_408:
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
	#Procedure 0x407b60

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
	je	.label_411
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_410
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_412
.label_410:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_411
.label_412:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_411:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407bb0

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
	je	.label_413
	nop	
	mov	rax, rcx
.label_413:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0

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
	js	.label_414
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_416
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
	je	.label_414
.label_416:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_414
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_415
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_415:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_414:
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
	#Procedure 0x407cb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_417
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_417
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_417:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ce0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_418
	mov	rbp, rbp
	ret	
.label_418:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x407d00

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
	jne	.label_421
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_421
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_419
.label_421:
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
.label_419:
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
	je	.label_420
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_420:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x407db0

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
