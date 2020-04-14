	.section	.text
	.align	32
	#Procedure 0x4019c0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	je	.label_7
	nop	
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_9:
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401cb0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cf0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_14:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
	je	.label_11
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	nop	
	xor	cl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	nop	
	jne	.label_10
	jmp	.label_13
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_14
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	nop	
	mov	edi, 5
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	nop	
	cmp	eax, 0
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.50
	nop	
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x110
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	nop	
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	call	textdomain
	mov	rbp, rbp
	mov	edi, 0x7d
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	initialize_exit_failure
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	call	initialize_signals
.label_56:
	movabs	rdx, OFFSET FLAT:shortopts
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_77
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	nop	
	je	.label_83
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	nop	
	je	.label_26
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	je	.label_31
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	je	.label_31
	jmp	.label_40
.label_40:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	je	.label_42
	jmp	.label_51
.label_51:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x43
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x78], eax
	mov	rsp, rsp
	je	.label_53
	lea	rsi, [rsi]
	jmp	.label_59
.label_59:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	je	.label_61
	jmp	.label_66
.label_66:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	sub	eax, 0x69
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	je	.label_65
	nop	
	jmp	.label_71
.label_71:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x84], eax
	je	.label_74
	mov	rsp, rsp
	jmp	.label_81
.label_81:
	nop	
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_38
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_22
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x81
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	je	.label_54
	lea	rdi, [rdi]
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	eax, 0x82
	nop	
	mov	dword ptr [rbp - 0x94], eax
	mov	rsp, rsp
	je	.label_16
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x83
	nop	
	mov	dword ptr [rbp - 0x98], eax
	nop	
	je	.label_44
	jmp	.label_52
.label_65:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_17
.label_74:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	append_unset_var
	nop	
	jmp	.label_17
.label_38:
	nop	
	mov	byte ptr [byte ptr [dev_debug]],  1
	nop	
	jmp	.label_17
.label_42:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_17
.label_22:
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	call	parse_signal_action_params
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	jmp	.label_17
.label_54:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_signal_action_params
	mov	rsp, rsp
	jmp	.label_17
.label_16:
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	nop	
	jmp	.label_17
.label_44:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [report_signal_handling]],  1
	lea	rdi, [rdi]
	jmp	.label_17
.label_53:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_17
.label_61:
	movabs	rsi, OFFSET FLAT:optind
	lea	rdx, [rbp - 8]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x10]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	parse_split_string
	lea	rdi, [rdi]
	jmp	.label_17
.label_31:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x9c], edx
	mov	rdx, rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	movabs	rdi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_26:
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_83:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.15
	nop	
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.22
	mov	rbp, rbp
	movabs	r9, OFFSET FLAT:.str.23
	movabs	rax, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rsp, rsp
	mov	rdi, r10
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_52:
	mov	edi, 0x7d
	mov	rbp, rbp
	call	usage
.label_17:
	jmp	.label_56
.label_77:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	jge	.label_58
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.25
	mov	rsp, rsp
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_58
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [optind]],  eax
.label_58:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x15], 1
	je	.label_82
	jmp	.label_18
.label_18:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_19
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
.label_19:
	jmp	.label_32
.label_32:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:main.dummy_environ
	nop	
	mov	qword ptr [word ptr [__environ]],  rax
	jmp	.label_34
.label_82:
	call	unset_envvars
.label_34:
	jmp	.label_39
.label_39:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0xad], cl
	jge	.label_41
	mov	esi, 0x3d
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0xad], dl
.label_41:
	nop	
	mov	al, byte ptr [rbp - 0xad]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_64
	nop	
	jmp	.label_68
.label_64:
	mov	rsp, rsp
	jmp	.label_70
.label_70:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_73
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.27
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xb4], eax
.label_73:
	jmp	.label_27
.label_27:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	putenv
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_63
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rax], 0
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.28
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xb8], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	call	quote
	mov	rsp, rsp
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
.label_63:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_39
.label_68:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	setl	cl
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x16], 1
	je	.label_21
	mov	rsp, rsp
	test	byte ptr [rbp - 0x29], 1
	je	.label_21
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	edi, 0x7d
	mov	rbp, rbp
	call	usage
.label_21:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_20
	test	byte ptr [rbp - 0x29], 1
	nop	
	jne	.label_20
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.30
	nop	
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	edi, 0x7d
	nop	
	call	usage
.label_20:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_60
	mov	rax,  qword ptr [word ptr [__environ]]
	mov	qword ptr [rbp - 0x38], rax
.label_25:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	je	.label_80
	movabs	rdi, OFFSET FLAT:.str.31
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rdx]
	mov	r8b, byte ptr [rbp - 0x16]
	test	r8b, 1
	lea	rdi, [rdi]
	cmovne	eax, ecx
	mov	rbp, rbp
	mov	edx, eax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_25
.label_80:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_24
.label_60:
	lea	rsi, [rsi]
	call	reset_signal_handlers
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	mov	rbp, rbp
	je	.label_33
	call	set_signal_proc_mask
.label_33:
	mov	rsp, rsp
	test	byte ptr [byte ptr [report_signal_handling]],  1
	lea	rdi, [rdi]
	je	.label_37
	nop	
	call	list_signal_handling
.label_37:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_45
	nop	
	jmp	.label_49
.label_49:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_29
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	movabs	rsi, OFFSET FLAT:.str.32
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
.label_29:
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	chdir
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_62
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_62:
	lea	rdi, [rdi]
	jmp	.label_45
.label_45:
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_55
	nop	
	jmp	.label_48
.label_48:
	test	byte ptr [byte ptr [dev_debug]],  1
	mov	rsp, rsp
	je	.label_50
	movabs	rsi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xe4], eax
.label_50:
	lea	rdi, [rdi]
	jmp	.label_67
.label_67:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
.label_47:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	jge	.label_72
	jmp	.label_79
.label_79:
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_69
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], eax
	mov	rsp, rsp
	call	quote
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.35
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0xf4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xf8], eax
.label_69:
	jmp	.label_43
.label_43:
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	jmp	.label_47
.label_72:
	lea	rdi, [rdi]
	jmp	.label_55
.label_55:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	nop	
	shl	rax, 3
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	rbp, rbp
	call	execvp
	mov	dword ptr [rbp - 0xfc], eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	edx, 0x7e
	mov	rsp, rsp
	mov	r8d, 0x7f
	mov	rsp, rsp
	cmp	dword ptr [rax], 2
	cmove	edx, r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], edx
	mov	rbp, rbp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x100], esi
	mov	rbp, rbp
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	nop	
	cmp	dword ptr [rbp - 0x40], 0x7f
	jne	.label_76
	mov	esi, 0x20
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	cmp	rax, 0
	je	.label_76
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_76:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_24:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x110
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_84
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_84:
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl initialize_signals
	.type initialize_signals, @function
initialize_signals:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	eax, 0x104
	nop	
	mov	edi, eax
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [word ptr [signals]],  rax
	nop	
	mov	dword ptr [rbp - 4], 0
.label_86:
	cmp	dword ptr [rbp - 4], 0x40
	jg	.label_85
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	mov	dword ptr [rcx + rax*4], 0
	nop	
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_86
.label_85:
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [usvars_used]]
	cmp	rdi,  qword ptr [word ptr [usvars_alloc]]
	lea	rsi, [rsi]
	jne	.label_87
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:usvars_alloc
	mov	eax, 8
	nop	
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rsp, rsp
	mov	rdi, rcx
	call	x2nrealloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [usvars]],  rax
.label_87:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [usvars_used]]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [word ptr [usvars_used]],  rdx
	mov	rdx,  qword ptr [word ptr [usvars]]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_91
	mov	dword ptr [rbp - 0x34], 1
.label_94:
	nop	
	cmp	dword ptr [rbp - 0x34], 0x40
	mov	rbp, rbp
	jg	.label_97
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x34]
	call	sig2str
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_92
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, 2
	nop	
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [signals]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + rsi*4], eax
.label_92:
	mov	rbp, rbp
	jmp	.label_93
.label_93:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_94
.label_97:
	jmp	.label_96
.label_91:
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	xstrdup
	movabs	rsi, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strtok
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_88:
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_95
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	operand2sig
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_89
	movabs	rdi, OFFSET FLAT:.str.1_0
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	nop	
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_89:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jg	.label_90
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
.label_90:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	movabs	rsi, OFFSET FLAT:.str.65
	nop	
	mov	eax, 3
	mov	rbp, rbp
	mov	ecx, 1
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [signals]]
	mov	dword ptr [r9 + r8*4], eax
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_88
.label_95:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_96:
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_102
	movabs	rax, OFFSET FLAT:unblock_signals
	movabs	rcx, OFFSET FLAT:block_signals
	mov	dl, byte ptr [rbp - 9]
	mov	rsp, rsp
	test	dl, 1
	cmovne	rax, rcx
	mov	rsp, rsp
	mov	rdi, rax
	call	sigfillset
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:block_signals
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	rcx, rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	call	sigemptyset
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_103
.label_102:
	mov	rsp, rsp
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	jne	.label_106
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:block_signals
	mov	rbp, rbp
	call	sigemptyset
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	call	sigemptyset
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
.label_106:
	jmp	.label_103
.label_103:
	mov	byte ptr [byte ptr [sig_mask_changed]],  1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_104
	jmp	.label_100
.label_104:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	nop	
	movabs	rsi, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	strtok
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_101:
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_98
	nop	
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	operand2sig
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	jne	.label_99
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_99:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
	jg	.label_105
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
.label_105:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:unblock_signals
	movabs	rcx, OFFSET FLAT:block_signals
	mov	dl, byte ptr [rbp - 9]
	nop	
	test	dl, 1
	cmovne	rax, rcx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x34]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sigaddset
	movabs	rcx, OFFSET FLAT:block_signals
	nop	
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dl, byte ptr [rbp - 9]
	nop	
	test	dl, 1
	cmovne	rcx, rdi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x54], eax
	nop	
	call	sigdelset
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	movabs	rsi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_101
.label_98:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	free
.label_100:
	nop	
	add	rsp, 0x60
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl parse_split_string
	.type parse_split_string, @function
parse_split_string:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
.label_120:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_129
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_120
.label_129:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_125
	mov	rbp, rbp
	jmp	.label_126
.label_125:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rsp, rsp
	call	build_argv
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 8
	nop	
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_111
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_111
	lea	rsi, [rsi]
	jmp	.label_109
.label_109:
	nop	
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_128
	nop	
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	quote
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.67
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_128:
	jmp	.label_115
.label_115:
	lea	rdi, [rdi]
	jmp	.label_118
.label_118:
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_127
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.68
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x5c], eax
.label_127:
	jmp	.label_107
.label_107:
	lea	rdi, [rdi]
	jmp	.label_124
.label_124:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_114
	lea	rsi, [rsi]
	jmp	.label_121
.label_121:
	nop	
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_123
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	quote
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.69
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	nop	
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
.label_123:
	jmp	.label_108
.label_108:
	jmp	.label_124
.label_114:
	jmp	.label_113
.label_111:
	nop	
	jmp	.label_116
.label_116:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_119
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_116
.label_119:
	mov	rbp, rbp
	jmp	.label_113
.label_113:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_122:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rcx]
	jge	.label_117
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	add	rdx, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_122
.label_117:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_110:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	je	.label_112
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_110
.label_112:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx], 0
.label_126:
	mov	rsp, rsp
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033c0

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], 0
.label_131:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [usvars_used]]
	lea	rdi, [rdi]
	jae	.label_130
	mov	rbp, rbp
	jmp	.label_133
.label_133:
	nop	
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_134
	movabs	rsi, OFFSET FLAT:.str.84
	nop	
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [usvars]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_134:
	jmp	.label_135
.label_135:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	unsetenv
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_136
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.85
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	quote
	mov	edi, 0x7d
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_136:
	jmp	.label_132
.label_132:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_131
.label_130:
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], 1
.label_145:
	cmp	dword ptr [rbp - 4], 0x40
	lea	rdi, [rdi]
	jg	.label_139
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	nop	
	cmp	dword ptr [rcx + rax*4], 0
	jne	.label_144
	mov	rsp, rsp
	jmp	.label_142
.label_144:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rdx,  qword ptr [word ptr [signals]]
	nop	
	cmp	dword ptr [rdx + rcx*4], 2
	mov	byte ptr [rbp - 0xc1], al
	je	.label_148
	movsxd	rax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [signals]]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + rax*4], 4
	nop	
	sete	dl
	mov	byte ptr [rbp - 0xc1], dl
.label_148:
	mov	al, byte ptr [rbp - 0xc1]
	mov	cl, 1
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [signals]]
	mov	rsp, rsp
	cmp	dword ptr [rsi + rdx*4], 1
	mov	byte ptr [rbp - 0xc2], cl
	lea	rsi, [rsi]
	je	.label_147
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [signals]]
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], 2
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc2], dl
.label_147:
	mov	al, byte ptr [rbp - 0xc2]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rsp, rsp
	lea	rdx, [rbp - 0xa0]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xa2], al
	mov	edi, dword ptr [rbp - 4]
	call	sigaction
	mov	dword ptr [rbp - 0xa8], eax
	cmp	dword ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	je	.label_141
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa1], 1
	lea	rsi, [rsi]
	jne	.label_141
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.86
	nop	
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_141:
	cmp	dword ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	jne	.label_146
	mov	rsp, rsp
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	mov	dil, byte ptr [rbp - 0xa2]
	nop	
	test	dil, 1
	lea	rsi, [rsi]
	cmovne	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdx
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, rcx
	mov	rbp, rbp
	call	sigaction
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa8], eax
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_143
	test	byte ptr [rbp - 0xa1], 1
	lea	rdi, [rdi]
	jne	.label_143
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.87
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], esi
	call	gettext
	mov	edi, 0x7d
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xcc]
	nop	
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_143:
	jmp	.label_146
.label_146:
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_137
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	sig2str
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	mov	rsp, rsp
	je	.label_140
	movabs	rsi, OFFSET FLAT:.str.88
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	movabs	rcx, OFFSET FLAT:.str.91
	movabs	rdx, OFFSET FLAT:.str.90
	nop	
	movabs	rdi, OFFSET FLAT:.str.89
	lea	r8, [rbp - 0xc0]
	mov	r9,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	r10d, dword ptr [rbp - 4]
	nop	
	mov	r11b, byte ptr [rbp - 0xa2]
	test	r11b, 1
	mov	rsp, rsp
	cmovne	rdx, rdi
	cmp	dword ptr [rbp - 0xa8], 0
	cmovne	rax, rcx
	mov	rdi, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, r8
	mov	ecx, r10d
	mov	r8, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	r9, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
.label_140:
	mov	rbp, rbp
	jmp	.label_138
.label_138:
	jmp	.label_137
.label_137:
	mov	rbp, rbp
	jmp	.label_142
.label_142:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_145
.label_139:
	mov	rsp, rsp
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403840

	.globl set_signal_proc_mask
	.type set_signal_proc_mask, @function
set_signal_proc_mask:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	rbp, rbp
	call	sigemptyset
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	lea	rdx, [rbp - 0x80]
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	call	sigprocmask
	cmp	eax, 0
	je	.label_160
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.92
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_160:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], 1
.label_159:
	cmp	dword ptr [rbp - 0x8c], 0x40
	mov	rsp, rsp
	jg	.label_152
	movabs	rdi, OFFSET FLAT:block_signals
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_158
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigaddset
	movabs	rdi, OFFSET FLAT:.str.93
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xac], eax
	nop	
	jmp	.label_153
.label_158:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_150
	nop	
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigdelset
	movabs	rdi, OFFSET FLAT:.str.94
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xb0], eax
	lea	rsi, [rsi]
	jmp	.label_151
.label_150:
	nop	
	mov	qword ptr [rbp - 0x88], 0
.label_151:
	nop	
	jmp	.label_153
.label_153:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_154
	cmp	qword ptr [rbp - 0x88], 0
	nop	
	je	.label_154
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	call	sig2str
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_157
	movabs	rsi, OFFSET FLAT:.str.95
	lea	rdx, [rbp - 0xa0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x88]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb8], eax
.label_157:
	mov	rbp, rbp
	jmp	.label_149
.label_149:
	jmp	.label_154
.label_154:
	jmp	.label_155
.label_155:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	lea	rdi, [rdi]
	jmp	.label_159
.label_152:
	mov	edi, 2
	lea	rsi, [rbp - 0x80]
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	call	sigprocmask
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_156
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.96
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_156:
	nop	
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ac0

	.globl list_signal_handling
	.type list_signal_handling, @function
list_signal_handling:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	call	sigemptyset
	xor	edi, edi
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdx, [rbp - 0x80]
	mov	dword ptr [rbp - 0x15c], eax
	call	sigprocmask
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_166
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.92
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x160], esi
	call	gettext
	nop	
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_166:
	mov	dword ptr [rbp - 0xa4], 1
.label_165:
	cmp	dword ptr [rbp - 0xa4], 0x40
	mov	rsp, rsp
	jg	.label_163
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, eax
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x140]
	mov	edi, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	call	sigaction
	cmp	eax, 0
	je	.label_167
	jmp	.label_161
.label_167:
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	eax, 1
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.90
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x140], rcx
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x148], rdx
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	call	sigismember
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	mov	r8b, sil
	nop	
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.93
	cmp	eax, 0
	lea	rsi, [rsi]
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x150], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x161], r8b
	lea	rdi, [rdi]
	je	.label_164
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x161], dl
.label_164:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x161]
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str_0
	movabs	rdx, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	test	al, 1
	nop	
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x158], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	jne	.label_162
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_162
	mov	rbp, rbp
	jmp	.label_161
.label_162:
	lea	rsi, [rbp - 0xa0]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	call	sig2str
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.97
	mov	rsp, rsp
	lea	rdx, [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xa4]
	mov	r8, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x148]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rbp - 0x168], eax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x16c], eax
.label_161:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_165
.label_163:
	add	rsp, 0x180
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d50

	.globl build_argv
	.type build_argv, @function
build_argv:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], 0
	mov	byte ptr [rbp - 0xe], 0
	mov	byte ptr [rbp - 0xf], 1
	mov	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x38], 0
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_191
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_191
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x58], rax
	nop	
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_191
	jmp	.label_214
.label_191:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.70
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0x18b
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.build_argv
	call	__assert_fail
.label_214:
	lea	rsi, [rbp - 0x38]
	nop	
	lea	rdx, [rbp - 0x2c]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	validate_split_str
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rdx, 6
	lea	rsi, [rsi]
	add	rdx, 1
	mov	rsp, rsp
	mov	rdi, rdx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x2c]
	add	ecx, dword ptr [rbp - 0xc]
	add	ecx, 2
	nop	
	movsxd	rax, ecx
	shl	rax, 3
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str.72
	mov	esi, ecx
	call	strcpy
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rsi
	nop	
	add	rdi, 8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rdx, 6
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x60], rax
.label_175:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_207
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], cl
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rax]
	mov	esi, edx
	nop	
	sub	esi, 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], edx
	mov	dword ptr [rbp - 0x68], esi
	je	.label_172
	lea	rsi, [rsi]
	jmp	.label_171
.label_171:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	je	.label_172
	lea	rsi, [rsi]
	jmp	.label_178
.label_178:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x22
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	je	.label_181
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x23
	nop	
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	je	.label_189
	nop	
	jmp	.label_195
.label_195:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x24
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x78], eax
	nop	
	je	.label_196
	jmp	.label_198
.label_198:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	je	.label_216
	jmp	.label_201
.label_201:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x5c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	je	.label_217
	mov	rsp, rsp
	jmp	.label_170
.label_216:
	test	byte ptr [rbp - 0xd], 1
	lea	rdi, [rdi]
	je	.label_205
	mov	rbp, rbp
	jmp	.label_170
.label_205:
	mov	al, byte ptr [rbp - 0xe]
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0xf], 1
	lea	rsi, [rsi]
	je	.label_210
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf], 0
.label_210:
	jmp	.label_183
.label_183:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_175
.label_181:
	test	byte ptr [rbp - 0xe], 1
	mov	rbp, rbp
	je	.label_192
	lea	rsi, [rsi]
	jmp	.label_170
.label_192:
	mov	al, byte ptr [rbp - 0xd]
	mov	rsp, rsp
	xor	al, 0xff
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	test	byte ptr [rbp - 0xf], 1
	lea	rdi, [rdi]
	je	.label_197
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_197:
	mov	rsp, rsp
	jmp	.label_206
.label_206:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_175
.label_172:
	test	byte ptr [rbp - 0xe], 1
	jne	.label_213
	nop	
	test	byte ptr [rbp - 0xd], 1
	lea	rdi, [rdi]
	je	.label_215
.label_213:
	lea	rsi, [rsi]
	jmp	.label_170
.label_215:
	movabs	rsi, OFFSET FLAT:.str.73
	mov	byte ptr [rbp - 0xf], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	strspn
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_175
.label_189:
	test	byte ptr [rbp - 0xf], 1
	lea	rsi, [rsi]
	jne	.label_179
	jmp	.label_170
.label_179:
	lea	rsi, [rsi]
	jmp	.label_194
.label_217:
	test	byte ptr [rbp - 0xe], 1
	je	.label_186
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0x5c
	mov	rsp, rsp
	je	.label_186
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	nop	
	cmp	ecx, 0x27
	lea	rdi, [rdi]
	je	.label_186
	jmp	.label_170
.label_186:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x39], dl
	nop	
	movsx	esi, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	cmp	esi, 0x5c
	nop	
	je	.label_193
	nop	
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x27
	nop	
	je	.label_193
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe], 1
	jne	.label_204
	movsx	eax, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	cmp	eax, 0x23
	lea	rsi, [rsi]
	je	.label_193
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x24
	lea	rdi, [rdi]
	je	.label_193
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x22
	jne	.label_204
.label_193:
	jmp	.label_168
.label_204:
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x5f
	jne	.label_169
	mov	rbp, rbp
	test	byte ptr [rbp - 0xd], 1
	lea	rsi, [rsi]
	jne	.label_173
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0xf], 1
	mov	rbp, rbp
	jmp	.label_175
.label_173:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], 0x20
	jmp	.label_184
.label_169:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 0x39]
	nop	
	cmp	eax, 0x63
	lea	rsi, [rsi]
	jne	.label_190
	nop	
	jmp	.label_194
.label_190:
	movsx	edi, byte ptr [rbp - 0x39]
	call	escape_char
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], al
	lea	rdi, [rdi]
	jmp	.label_184
.label_184:
	lea	rsi, [rsi]
	jmp	.label_168
.label_168:
	mov	rbp, rbp
	jmp	.label_170
.label_196:
	test	byte ptr [rbp - 0xe], 1
	lea	rdi, [rdi]
	je	.label_199
	jmp	.label_170
.label_199:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	extract_varname
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	getenv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_203
	mov	rsp, rsp
	jmp	.label_208
.label_208:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xf], 1
	lea	rsi, [rsi]
	je	.label_211
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf], 0
.label_211:
	jmp	.label_177
.label_177:
	mov	rsp, rsp
	jmp	.label_180
.label_180:
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_182
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rdx
	mov	rbp, rbp
	call	quote
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.74
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_182:
	lea	rsi, [rsi]
	jmp	.label_202
.label_202:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	stpcpy
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_176
.label_203:
	lea	rsi, [rsi]
	jmp	.label_209
.label_209:
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_212
	movabs	rsi, OFFSET FLAT:.str.75
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_212:
	jmp	.label_174
.label_174:
	jmp	.label_176
.label_176:
	mov	rbp, rbp
	mov	esi, 0x7d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	strchr
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_175
.label_170:
	lea	rsi, [rsi]
	jmp	.label_185
.label_185:
	nop	
	test	byte ptr [rbp - 0xf], 1
	je	.label_188
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_188:
	mov	rbp, rbp
	jmp	.label_200
.label_200:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x39]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 8]
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_175
.label_207:
	jmp	.label_194
.label_194:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0xa0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404500

	.globl validate_split_str
	.type validate_split_str, @function
validate_split_str:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	je	.label_218
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_218
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_218
	jmp	.label_219
.label_218:
	nop	
	movabs	rdi, OFFSET FLAT:.str.70
	movabs	rsi, OFFSET FLAT:.str.71
	lea	rdi, [rdi]
	mov	edx, 0x118
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	lea	rsi, [rsi]
	call	__assert_fail
.label_219:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1b], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_225:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_244
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x35], cl
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rsi*2]
	mov	rsp, rsp
	and	edx, 0x2000
	cmp	edx, 0
	lea	rdi, [rdi]
	je	.label_227
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jne	.label_227
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	jne	.label_227
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1b], 1
	lea	rdi, [rdi]
	jmp	.label_242
.label_227:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1b], 1
	lea	rdi, [rdi]
	je	.label_247
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
.label_247:
	nop	
	mov	byte ptr [rbp - 0x1b], 0
.label_242:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x22
	mov	dword ptr [rbp - 0x4c], ecx
	mov	dword ptr [rbp - 0x50], edx
	lea	rsi, [rsi]
	je	.label_223
	jmp	.label_228
.label_228:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x24
	nop	
	mov	dword ptr [rbp - 0x54], eax
	je	.label_234
	mov	rsp, rsp
	jmp	.label_237
.label_237:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x58], eax
	je	.label_240
	lea	rdi, [rdi]
	jmp	.label_235
.label_235:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x5c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	je	.label_246
	nop	
	jmp	.label_222
.label_240:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_221
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_248
.label_221:
	nop	
	jmp	.label_231
.label_248:
	movabs	rdi, OFFSET FLAT:.str.76
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0x12f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	lea	rdi, [rdi]
	call	__assert_fail
.label_231:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x5d], cl
	lea	rsi, [rsi]
	jne	.label_238
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5d], al
.label_238:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5d]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	jmp	.label_222
.label_223:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	je	.label_220
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jne	.label_224
.label_220:
	lea	rsi, [rsi]
	jmp	.label_229
.label_224:
	movabs	rdi, OFFSET FLAT:.str.76
	movabs	rsi, OFFSET FLAT:.str.71
	mov	rsp, rsp
	mov	edx, 0x134
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_229:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x5e], cl
	jne	.label_243
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5e], al
.label_243:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5e]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_222
.label_246:
	test	byte ptr [rbp - 0x19], 1
	je	.label_233
	nop	
	movsx	eax, byte ptr [rbp - 0x35]
	lea	rdi, [rdi]
	cmp	eax, 0x63
	jne	.label_233
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.77
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 0x7d
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_233:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_239
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.78
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_239:
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rbp - 0x35]
	lea	rsi, [rsi]
	call	valid_escape_sequence
	test	al, 1
	mov	rbp, rbp
	jne	.label_226
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.79
	mov	rbp, rbp
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbp - 0x35]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_226:
	nop	
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x5f
	jne	.label_241
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_241:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_222
.label_234:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_249
	mov	rsp, rsp
	jmp	.label_222
.label_249:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	extract_varname
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_230
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	mov	edi, 0x7d
	nop	
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_230:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_245
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
.label_245:
	jmp	.label_222
.label_222:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_225
.label_244:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jne	.label_232
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	lea	rdi, [rdi]
	je	.label_236
.label_232:
	movabs	rdi, OFFSET FLAT:.str.81
	mov	rsp, rsp
	call	gettext
	mov	edi, 0x7d
	nop	
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_236:
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	lea	rsi, [rsi]
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a20

	.globl escape_char
	.type escape_char, @function
escape_char:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], al
	nop	
	movsx	edi, byte ptr [rbp - 2]
	mov	rsp, rsp
	mov	ecx, edi
	sub	ecx, 0x66
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], ecx
	je	.label_250
	lea	rdi, [rdi]
	jmp	.label_259
.label_259:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x6e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	je	.label_256
	lea	rsi, [rsi]
	jmp	.label_257
.label_257:
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x14], eax
	je	.label_260
	lea	rdi, [rdi]
	jmp	.label_255
.label_255:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0x18], eax
	je	.label_258
	jmp	.label_253
.label_253:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x76
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	je	.label_254
	jmp	.label_251
.label_250:
	mov	byte ptr [rbp - 1], 0xc
	mov	rsp, rsp
	jmp	.label_252
.label_256:
	mov	byte ptr [rbp - 1], 0xa
	jmp	.label_252
.label_260:
	mov	byte ptr [rbp - 1], 0xd
	jmp	.label_252
.label_258:
	mov	byte ptr [rbp - 1], 9
	jmp	.label_252
.label_254:
	nop	
	mov	byte ptr [rbp - 1], 0xb
	lea	rdi, [rdi]
	jmp	.label_252
.label_251:
	nop	
	movabs	rdi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0xd2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.escape_char
	mov	rbp, rbp
	call	__assert_fail
.label_252:
	movsx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b40

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	scan_varname
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_263
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_261
.label_263:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	sub	rax, 2
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [vnlen]]
	nop	
	jb	.label_262
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [word ptr [vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [varname]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [vnlen]]
	mov	rsp, rsp
	call	xrealloc
	mov	qword ptr [word ptr [varname]],  rax
.label_262:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [varname]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 2
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [varname]]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0
	mov	rax,  qword ptr [word ptr [varname]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_261:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl valid_escape_sequence
	.type valid_escape_sequence, @function
valid_escape_sequence:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	mov	cl, 1
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	cmp	edi, 0x63
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], cl
	lea	rsi, [rsi]
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x66
	nop	
	mov	byte ptr [rbp - 2], al
	lea	rdi, [rdi]
	je	.label_264
	mov	al, 1
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x6e
	mov	byte ptr [rbp - 2], al
	nop	
	je	.label_264
	mov	al, 1
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbp - 1]
	nop	
	cmp	ecx, 0x72
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 2], al
	je	.label_264
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x74
	nop	
	mov	byte ptr [rbp - 2], al
	lea	rsi, [rsi]
	je	.label_264
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x76
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], al
	mov	rbp, rbp
	je	.label_264
	nop	
	mov	al, 1
	nop	
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x23
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], al
	lea	rdi, [rdi]
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x24
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], al
	mov	rsp, rsp
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x5f
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	rsp, rsp
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	mov	rsp, rsp
	cmp	ecx, 0x22
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], al
	mov	rsp, rsp
	je	.label_264
	mov	al, 1
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x27
	mov	byte ptr [rbp - 2], al
	lea	rsi, [rsi]
	je	.label_264
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x5c
	sete	cl
	nop	
	mov	byte ptr [rbp - 2], cl
.label_264:
	mov	al, byte ptr [rbp - 2]
	nop	
	and	al, 1
	movzx	eax, al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_265
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x24
	nop	
	jne	.label_265
	jmp	.label_272
.label_265:
	movabs	rdi, OFFSET FLAT:.str.83
	movabs	rsi, OFFSET FLAT:.str.71
	mov	rbp, rbp
	mov	edx, 0xdd
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.scan_varname
	call	__assert_fail
.label_272:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x7b
	jne	.label_268
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax + 2]
	lea	rsi, [rsi]
	call	c_isalpha
	test	al, 1
	mov	rsp, rsp
	jne	.label_270
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	mov	rbp, rbp
	jne	.label_268
.label_270:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 3
	mov	qword ptr [rbp - 0x18], rax
.label_274:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	mov	cl, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], cl
	lea	rsi, [rsi]
	jne	.label_271
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	lea	rsi, [rsi]
	sete	dl
	mov	byte ptr [rbp - 0x19], dl
.label_271:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_267
	nop	
	jmp	.label_273
.label_267:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_274
.label_273:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x7d
	jne	.label_269
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_266
.label_269:
	lea	rdi, [rdi]
	jmp	.label_268
.label_268:
	mov	qword ptr [rbp - 8], 0
.label_266:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f20

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rsi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_285
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	lea	rsi, [rbp - 0x28]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	dword ptr [rbp - 0x34], edx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	je	.label_278
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	nop	
	jne	.label_278
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_278
	movsxd	rax, dword ptr [rbp - 0x34]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_279
.label_278:
	mov	rbp, rbp
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_281
.label_279:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_281:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	lea	rdi, [rdi]
	je	.label_287
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, 0xff
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0xff
	cmovge	eax, ecx
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_287:
	lea	rdi, [rdi]
	jmp	.label_283
.label_285:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_284:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_280
	movabs	rdi, OFFSET FLAT:.str_2
	mov	rax, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	je	.label_288
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	lea	rsi, [rsi]
	mov	dl, cl
	mov	byte ptr [rax], dl
.label_288:
	mov	rbp, rbp
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_284
.label_280:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	str2sig
	cmp	eax, 0
	nop	
	je	.label_277
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x53
	jne	.label_275
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x49
	jne	.label_275
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x47
	jne	.label_275
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 3
	mov	rdi, rax
	call	str2sig
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_277
.label_275:
	nop	
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_277:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_283:
	cmp	dword ptr [rbp - 0x1c], 0
	jl	.label_276
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	sig2str
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_289
.label_276:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_0
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_286
.label_289:
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_286:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051e0

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_290
	jmp	.label_292
.label_292:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_290
	jmp	.label_291
.label_291:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_293
	jmp	.label_290
.label_290:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_294
.label_293:
	mov	byte ptr [rbp - 1], 0
.label_294:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_295
	jmp	.label_298
.label_298:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_296
	jmp	.label_295
.label_295:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_297
.label_296:
	mov	byte ptr [rbp - 1], 0
.label_297:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_299
	jmp	.label_300
.label_300:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_301
.label_299:
	mov	byte ptr [rbp - 1], 0
.label_301:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052d0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_302
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_302:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405300
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_303
	jmp	.label_305
.label_305:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_306
	jmp	.label_303
.label_303:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_304
.label_306:
	mov	byte ptr [rbp - 1], 0
.label_304:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405350
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_307
	jmp	.label_309
.label_309:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_308
.label_307:
	mov	byte ptr [rbp - 1], 0
.label_308:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405390
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_310
	jmp	.label_312
.label_312:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_311
.label_310:
	mov	byte ptr [rbp - 1], 0
.label_311:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053d0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_313
	jmp	.label_315
.label_315:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_314
.label_313:
	mov	byte ptr [rbp - 1], 0
.label_314:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405410
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_316
	jmp	.label_318
.label_318:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_317
.label_316:
	mov	byte ptr [rbp - 1], 0
.label_317:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405450
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_319
	jmp	.label_322
.label_322:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_319
	jmp	.label_323
.label_323:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_319
	jmp	.label_321
.label_321:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_324
	jmp	.label_319
.label_319:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_320
.label_324:
	mov	byte ptr [rbp - 1], 0
.label_320:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_325
	jmp	.label_327
.label_327:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_328
	jmp	.label_325
.label_325:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_326
.label_328:
	mov	byte ptr [rbp - 1], 0
.label_326:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405520
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_329
	jmp	.label_331
.label_331:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_330
.label_329:
	mov	byte ptr [rbp - 1], 0
.label_330:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405560
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_332
	jmp	.label_335
.label_335:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_332
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_334
	jmp	.label_332
.label_332:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_336
.label_334:
	mov	byte ptr [rbp - 1], 0
.label_336:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055d0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_337
	jmp	.label_339
.label_339:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_338
.label_337:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_338:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405610
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_340
	jmp	.label_342
.label_342:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_341
.label_340:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_341:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405650
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405680
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056b0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_345
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_346
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_345
.label_346:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_344
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_347
.label_344:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_347:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_345:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_343
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_343:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_348
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_348:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_351
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_350
.label_351:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_350:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_349
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_349
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_352
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_352:
	jmp	.label_349
.label_349:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405960
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_354
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_353
.label_354:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a10
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_355
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_356
.label_355:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a70
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_357
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_358
.label_357:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_359
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_360
.label_359:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_360
.label_360:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bd0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_361
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_361:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_362
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_362:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_364
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_363
.label_364:
	call	abort
.label_363:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cd0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_365
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_366
.label_365:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_366
.label_366:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dd0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_451:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_514
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_518]]
	jmp	rcx
.label_738:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_737:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_524
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_531
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_531:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_524
.label_524:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_417
.label_739:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_417
.label_740:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_545
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_545:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_376
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_369:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_558
	jmp	.label_561
.label_561:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_563
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_563:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_566
.label_566:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_369
.label_558:
	mov	rbp, rbp
	jmp	.label_376
.label_376:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_417
.label_735:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_734:
	mov	byte ptr [rbp - 0x7b], 1
.label_736:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_388
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_388:
	jmp	.label_391
.label_391:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_394
	jmp	.label_400
.label_400:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_401
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_401:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_394
.label_394:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_417
.label_733:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_417
.label_514:
	call	abort
.label_417:
	mov	qword ptr [rbp - 0x58], 0
.label_390:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_430
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_499
.label_430:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_499:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_446
	mov	rbp, rbp
	jmp	.label_456
.label_446:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_459
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_459
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_459
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_472
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_472
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_488
.label_472:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_488:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_459
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_459
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_506
	jmp	.label_373
.label_506:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_459:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_509
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_519]]
	nop	
	jmp	rcx
.label_747:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_522
	mov	rsp, rsp
	jmp	.label_527
.label_527:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_462
	jmp	.label_373
.label_462:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_533
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_533
	nop	
	jmp	.label_537
.label_537:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_538
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_538:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_544
.label_544:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_549:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_554
.label_554:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_557
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_533:
	lea	rsi, [rsi]
	jmp	.label_500
.label_500:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_565
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_565:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_567
.label_567:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_372
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_372
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_372
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_372
	nop	
	jmp	.label_406
.label_406:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_392:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_402
.label_402:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_408
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_408:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_372
.label_372:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_423
.label_522:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_425
	mov	rbp, rbp
	jmp	.label_431
.label_425:
	jmp	.label_423
.label_423:
	jmp	.label_404
.label_758:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_433
	mov	rbp, rbp
	jmp	.label_437
.label_437:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_440
	jmp	.label_447
.label_433:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_450
	jmp	.label_373
.label_450:
	jmp	.label_454
.label_440:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_457
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_457
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_457
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_474
	nop	
	jmp	.label_483
.label_483:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_474
	jmp	.label_490
.label_490:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_474
	jmp	.label_494
.label_494:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_474
	jmp	.label_426
.label_426:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_502
	jmp	.label_474
.label_474:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_526
	jmp	.label_373
.label_526:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_512
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_512:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_523
.label_523:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_530
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_530:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_535
.label_535:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_536
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_536:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_547
.label_547:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_374
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_374:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_420
.label_502:
	jmp	.label_420
.label_420:
	jmp	.label_457
.label_457:
	jmp	.label_454
.label_447:
	jmp	.label_454
.label_454:
	jmp	.label_404
.label_748:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_393
.label_749:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_393
.label_753:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_393
.label_751:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_386
.label_754:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_386
.label_750:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_386
.label_752:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_393
.label_759:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_564
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_368
	nop	
	jmp	.label_373
.label_368:
	lea	rsi, [rsi]
	jmp	.label_375
.label_564:
	test	byte ptr [rbp - 0x79], 1
	je	.label_378
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_378
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_378
	jmp	.label_375
.label_378:
	jmp	.label_386
.label_386:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_387
	test	byte ptr [rbp - 0x7b], 1
	je	.label_387
	jmp	.label_373
.label_387:
	mov	rsp, rsp
	jmp	.label_393
.label_393:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_397
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_399
.label_397:
	jmp	.label_404
.label_760:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_405
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_416
	jmp	.label_414
.label_405:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_416
.label_414:
	nop	
	jmp	.label_404
.label_416:
	jmp	.label_422
.label_422:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_452
	lea	rsi, [rsi]
	jmp	.label_404
.label_452:
	nop	
	jmp	.label_429
.label_429:
	mov	byte ptr [rbp - 0x83], 1
.label_755:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_432
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_432
	jmp	.label_373
.label_432:
	lea	rsi, [rsi]
	jmp	.label_404
.label_757:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_436
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_444
	jmp	.label_373
.label_444:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_449
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_449
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_449:
	jmp	.label_461
.label_461:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_464
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_471
.label_471:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_478
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_478:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_485
.label_485:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_384
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_384:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_436:
	lea	rsi, [rsi]
	jmp	.label_404
.label_756:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_404
.label_509:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_503
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_477
.label_503:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_525
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_525:
	jmp	.label_481
.label_481:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_546
	jmp	.label_379
.label_546:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_553
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_379
.label_553:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_555
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_396:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_559
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_559:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_367
	jmp	.label_370
.label_367:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_396
.label_370:
	jmp	.label_379
.label_555:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_380
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_380
	mov	qword ptr [rbp - 0xb8], 1
.label_435:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_489
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_389
	jmp	.label_409
.label_409:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_389
	jmp	.label_419
.label_419:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_389
	jmp	.label_427
.label_427:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_428
	mov	rsp, rsp
	jmp	.label_389
.label_389:
	mov	rsp, rsp
	jmp	.label_373
.label_428:
	jmp	.label_434
.label_434:
	mov	rsp, rsp
	jmp	.label_482
.label_482:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_435
.label_489:
	mov	rbp, rbp
	jmp	.label_380
.label_380:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_448
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_448:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_453
.label_453:
	lea	rsi, [rsi]
	jmp	.label_463
.label_463:
	jmp	.label_465
.label_465:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_481
.label_379:
	jmp	.label_477
.label_477:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_479
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_487
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_487
.label_479:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_455:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_495
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_495
	jmp	.label_497
.label_497:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_501
	jmp	.label_373
.label_501:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_505
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_505
	lea	rdi, [rdi]
	jmp	.label_510
.label_510:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_513
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_513:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_381
.label_381:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_521
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_521:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_532
.label_532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_466
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_505:
	jmp	.label_543
.label_543:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_541
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_541:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_542
.label_542:
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_418
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_418:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_515
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_515:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_520
.label_495:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_377
	lea	rdi, [rdi]
	jmp	.label_382
.label_382:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_377:
	nop	
	jmp	.label_520
.label_520:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_395
	jmp	.label_403
.label_395:
	lea	rsi, [rsi]
	jmp	.label_560
.label_560:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_407
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_407
	lea	rsi, [rsi]
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_415
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_415:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_424
.label_424:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_492
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_492:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_407:
	nop	
	jmp	.label_439
.label_439:
	mov	rsp, rsp
	jmp	.label_441
.label_441:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_443
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_443:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_455
.label_403:
	mov	rsp, rsp
	jmp	.label_375
.label_487:
	lea	rsi, [rsi]
	jmp	.label_404
.label_404:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_507
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_476
.label_507:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_480
.label_476:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_480
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_493
.label_480:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_493
	mov	rsp, rsp
	jmp	.label_375
.label_493:
	nop	
	jmp	.label_399
.label_399:
	jmp	.label_475
.label_475:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_496
	jmp	.label_373
.label_496:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_504
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_504
	lea	rdi, [rdi]
	jmp	.label_508
.label_508:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_511
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_411
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_411:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_529
.label_529:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_534
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_534:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_504:
	jmp	.label_540
.label_540:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_550
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_550:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_548
.label_548:
	nop	
	jmp	.label_375
.label_375:
	jmp	.label_552
.label_552:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_445
	test	byte ptr [rbp - 0x82], 1
	jne	.label_445
	lea	rdi, [rdi]
	jmp	.label_467
.label_467:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_556
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_556:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_539
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_539:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_445:
	jmp	.label_371
.label_371:
	nop	
	jmp	.label_517
.label_517:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_412
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_412:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_385
	mov	byte ptr [rbp - 0x7e], 0
.label_385:
	mov	rbp, rbp
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_390
.label_456:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_398
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_398
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_398
	nop	
	jmp	.label_373
.label_398:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_410
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_410
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_410
	test	byte ptr [rbp - 0x7e], 1
	je	.label_421
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_438
.label_421:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_442
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_442
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_451
.label_442:
	jmp	.label_458
.label_458:
	mov	rbp, rbp
	jmp	.label_410
.label_410:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_460
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_460
	mov	rbp, rbp
	jmp	.label_468
.label_468:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_469
	lea	rdi, [rdi]
	jmp	.label_470
.label_470:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_473:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_484
.label_484:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_468
.label_469:
	jmp	.label_460
.label_460:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_438
.label_373:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_498
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_498
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_498:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_438:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407760

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_568
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_569
.label_568:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_569
.label_569:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_570
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_570:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407930
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_575:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_574
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_575
.label_574:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_573
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_571]],  rax
.label_573:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_572
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_572:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a90

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_582
	call	abort
.label_582:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_577
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_578
	call	xalloc_die
.label_578:
	test	byte ptr [rbp - 0x31], 1
	je	.label_579
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_583
.label_579:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_583:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_581
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_571]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_581:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_577:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_580
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_576
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_576:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_580:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dc0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e00
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e30
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e70

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_584
	call	abort
.label_584:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f70

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fe0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408020
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408060

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408110

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408150

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408180
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081c0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408300

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408450

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408490
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408510

	.globl quote
	.type quote, @function
quote:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408550

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_587
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_585
.label_587:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_588
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_585
.label_588:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_586
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_585
.label_586:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_585:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408690

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_591
	movabs	rsi, OFFSET FLAT:.str_5
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_593
.label_591:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_593:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_592
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_590]]
	jmp	rcx
.label_682:
	jmp	.label_589
.label_683:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_589
.label_684:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_589
.label_685:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_589
.label_686:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_589
.label_687:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_589
.label_688:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_589
.label_689:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_589
.label_690:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_589
.label_691:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_589
.label_592:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], eax
.label_589:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_594:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_595
	mov	rbp, rbp
	jmp	.label_596
.label_596:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_594
.label_595:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408eb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_599:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_598
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_601
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_602
.label_601:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_602:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_598:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_597
	mov	rsp, rsp
	jmp	.label_600
.label_597:
	jmp	.label_603
.label_603:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_599
.label_600:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409010

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_604
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_604:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409270
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_605
	mov	rbp, rbp
	call	xalloc_die
.label_605:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_606
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_606
	lea	rdi, [rdi]
	call	xalloc_die
.label_606:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409330
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_607
	mov	rsp, rsp
	call	xalloc_die
.label_607:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_608
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_608
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_610
.label_608:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_609
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_609
	lea	rsi, [rsi]
	call	xalloc_die
.label_609:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_610:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409460

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_611
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_613
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_613:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_615
	call	xalloc_die
.label_615:
	lea	rsi, [rsi]
	jmp	.label_614
.label_611:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_612
	call	xalloc_die
.label_612:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_614:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409590

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409600
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409650
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_616
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_617
.label_616:
	lea	rsi, [rsi]
	call	xalloc_die
.label_617:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096c0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409710

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409770

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4097d0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_618
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_618:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_619
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_619
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_619
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_620
.label_619:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_620:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098c0

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	str2signum
	xor	ecx, ecx
	mov	edx, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rsi], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	cmovl	ecx, edx
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409910

	.globl str2signum
	.type str2signum, @function
str2signum:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	sub	eax, 0x30
	cmp	eax, 9
	nop	
	ja	.label_633
	lea	rsi, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_627
	cmp	qword ptr [rbp - 0x20], 0x40
	jg	.label_627
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_625
.label_627:
	lea	rdi, [rdi]
	jmp	.label_624
.label_633:
	mov	dword ptr [rbp - 0x24], 0
.label_631:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	cmp	rcx, 0x23
	lea	rsi, [rsi]
	jae	.label_629
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:numname_table
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_632
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:numname_table
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	jmp	.label_625
.label_632:
	jmp	.label_630
.label_630:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_631
.label_629:
	mov	rbp, rbp
	call	__libc_current_sigrtmin
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	call	__libc_current_sigrtmax
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	jge	.label_622
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_6
	nop	
	mov	eax, 5
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_622
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, 0xa
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_623
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jg	.label_623
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x34]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_623
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_625
.label_623:
	jmp	.label_626
.label_622:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_621
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_5
	nop	
	mov	eax, 5
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_621
	mov	rbp, rbp
	lea	rsi, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_628
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, qword ptr [rbp - 0x48]
	jg	.label_628
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jg	.label_628
	movsxd	rax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	jmp	.label_625
.label_628:
	lea	rdi, [rdi]
	jmp	.label_621
.label_621:
	jmp	.label_626
.label_626:
	jmp	.label_624
.label_624:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
.label_625:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c00

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_642:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x23
	lea	rdi, [rdi]
	jae	.label_639
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x14]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	mov	rbp, rbp
	add	rax, rdx
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 8]
	jne	.label_643
	movabs	rax, OFFSET FLAT:numname_table
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	lea	rsi, [rsi]
	add	rax, rdx
	add	rax, 4
	mov	rsi, rax
	lea	rsi, [rsi]
	call	strcpy
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_635
.label_643:
	jmp	.label_640
.label_640:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_642
.label_639:
	lea	rsi, [rsi]
	call	__libc_current_sigrtmin
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_636
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x1c]
	jle	.label_641
.label_636:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_635
.label_641:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	sub	esi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x34]
	nop	
	idiv	esi
	mov	edi, dword ptr [rbp - 0x38]
	add	edi, eax
	cmp	ecx, edi
	lea	rdi, [rdi]
	jg	.label_634
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_6
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcpy
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0x20], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_637
.label_634:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_637:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	je	.label_638
	movabs	rsi, OFFSET FLAT:.str.2_2
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	nop	
	call	sprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_638:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_635:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e00

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_644
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_648
.label_644:
	mov	rbp, rbp
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_647
	jmp	.label_646
.label_647:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_645
.label_646:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_648:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ef0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_651
	test	byte ptr [rbp - 0x13], 1
	je	.label_650
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_651
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_650
.label_651:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_649
	call	__errno_location
	mov	dword ptr [rax], 0
.label_649:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_652
.label_650:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_652:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fd0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_655
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_654
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_653
.label_654:
	mov	byte ptr [rbp - 5], 0
.label_653:
	jmp	.label_655
.label_655:
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a070

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_657
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_657:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_656
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_656:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_662
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_660
.label_662:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_659
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_658
.label_659:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_658
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_658:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_661
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_661:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_660:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a210

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_663
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_664
.label_663:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_665
.label_664:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_665:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_666
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_666:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2e0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_667
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_668
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_669
.label_668:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_669
.label_667:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_669:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3f0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_670
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_671
.label_670:
	lea	rsi, [rsi]
	jmp	.label_671
.label_671:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
