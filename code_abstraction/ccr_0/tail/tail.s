	.section	.text
	.align	16
	#Procedure 0x401c50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_11
	jmp	.label_19
.label_19:
	movabs	rdi, OFFSET FLAT:label_20
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_15
.label_11:
	movabs	rdi, OFFSET FLAT:label_18
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_8
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	esi, 0xa
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_21
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	esi, 0xa
	mov	edx, 5
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x44], eax
	call	emit_ancillary_info
.label_15:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401e70

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_25
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ea0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_26
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ed0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_41:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_40
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_40:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_34
	jmp	.label_31
.label_34:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_41
.label_31:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_28
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_28:
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	movabs	rsi, OFFSET FLAT:label_38
	movabs	rdx, OFFSET FLAT:label_27
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_29
	movabs	rsi, OFFSET FLAT:label_37
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_29
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_29:
	movabs	rdi, OFFSET FLAT:label_39
	call	gettext
	movabs	rsi, OFFSET FLAT:label_27
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_32
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_35
	movabs	rsi, OFFSET FLAT:label_36
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1d0
	movsd	xmm0,  qword ptr [word ptr [rip + label_65]]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x15], 1
	mov	qword ptr [rbp - 0x20], 0xa
	movsd	qword ptr [rbp - 0x50], xmm0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_35
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_80
	movabs	rsi, OFFSET FLAT:label_81
	mov	qword ptr [rbp - 0x190], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_80
	mov	qword ptr [rbp - 0x198], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x1a0], rax
	call	atexit
	lea	rdx, [rbp - 0x20]
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	byte ptr [byte ptr [count_lines]],  1
	mov	byte ptr [byte ptr [print_headers]],  0
	mov	byte ptr [byte ptr [from_start]],  0
	mov	byte ptr [byte ptr [forever]],  0
	mov	byte ptr [byte ptr [line_end]],  0xa
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1a4], eax
	call	parse_obsolete_option
	lea	rdx, [rbp - 0x20]
	lea	rcx, [rbp - 0x14]
	lea	r8, [rbp - 0x50]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	edi, al
	mov	r9d, dword ptr [rbp - 8]
	sub	r9d, edi
	mov	dword ptr [rbp - 8], r9d
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	edi, al
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	r10, edi
	shl	r10, 3
	add	rsi, r10
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	parse_options
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_73
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_76
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_76:
	jmp	.label_73
.label_73:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_82
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_53
.label_82:
	movabs	rax, OFFSET FLAT:main.dummy_stdin
	mov	qword ptr [rbp - 0x28], 1
	mov	qword ptr [rbp - 0x30], rax
.label_53:
	mov	byte ptr [rbp - 0x51], 0
	mov	qword ptr [rbp - 0x40], 0
.label_61:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_67
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_62
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_58
	mov	byte ptr [rbp - 0x51], 1
.label_58:
	jmp	.label_60
.label_60:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_61
.label_67:
	test	byte ptr [rbp - 0x51], 1
	je	.label_69
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_69
	movabs	rdi, OFFSET FLAT:label_70
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_62
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_69:
	test	byte ptr [byte ptr [forever]],  1
	je	.label_77
	test	byte ptr [rbp - 0x51], 1
	je	.label_77
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_43
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_43
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 1
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_43
	xor	edi, edi
	lea	rsi, [rbp - 0xe8]
	call	fstat
	xor	edi, edi
	mov	cl, dil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_43
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x1b1], cl
.label_43:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	test	byte ptr [rbp - 0xe9], 1
	jne	.label_63
	xor	edi, edi
	call	isatty
	cmp	eax, 0
	je	.label_63
	movabs	rdi, OFFSET FLAT:label_71
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_63:
	jmp	.label_77
.label_77:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_78
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_78
	test	byte ptr [byte ptr [from_start]],  1
	jne	.label_78
	mov	dword ptr [rbp - 4], 0
	jmp	.label_74
.label_78:
	mov	eax, 0x60
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	xnmalloc
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
.label_48:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_46
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_48
.label_46:
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_55
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_57
	cmp	qword ptr [rbp - 0x28], 1
	jbe	.label_57
.label_55:
	mov	byte ptr [byte ptr [print_headers]],  1
.label_57:
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	qword ptr [rbp - 0x40], 0
.label_56:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_68
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	tail_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_56
.label_68:
	test	byte ptr [byte ptr [forever]],  1
	je	.label_83
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	ignore_fifo_and_pipe
	cmp	rax, 0
	je	.label_83
	mov	edi, 1
	lea	rsi, [rbp - 0x180]
	call	fstat
	cmp	eax, 0
	jge	.label_45
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_47
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_45:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x168]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	mov	byte ptr [rbp - 0x1b9], al
	je	.label_54
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x1b9], cl
	jmp	.label_54
.label_54:
	mov	al, byte ptr [rbp - 0x1b9]
	and	al, 1
	mov	byte ptr [byte ptr [monitor_output]],  al
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_44
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	tailable_stdin
	test	al, 1
	jne	.label_42
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_remote_file
	test	al, 1
	jne	.label_42
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_non_remote_file
	test	al, 1
	jne	.label_79
	jmp	.label_42
.label_79:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_symlinks
	test	al, 1
	jne	.label_42
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_non_regular_fifo
	test	al, 1
	jne	.label_42
	test	byte ptr [rbp - 0x15], 1
	jne	.label_44
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_44
.label_42:
	mov	byte ptr [byte ptr [disable_inotify]],  1
.label_44:
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_49
	call	inotify_init
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x184], eax
	cmp	ecx, dword ptr [rbp - 0x184]
	jg	.label_50
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_84
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_59
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_84:
	mov	edi, dword ptr [rbp - 0x184]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	movsd	xmm0, qword ptr [rbp - 0x50]
	call	tail_forever_inotify
	test	al, 1
	jne	.label_72
	mov	dword ptr [rbp - 4], 1
	jmp	.label_74
.label_72:
	jmp	.label_50
.label_50:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_66
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 0x40], 0
.label_64:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_85
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x44], -1
	je	.label_86
	mov	edi, dword ptr [rbp - 0x184]
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	dword ptr [rbp - 0x1c8], eax
.label_86:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x48], -1
	je	.label_52
	mov	edi, dword ptr [rbp - 0x184]
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x48]
	call	inotify_rm_watch
	mov	dword ptr [rbp - 0x1cc], eax
.label_52:
	jmp	.label_75
.label_75:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_64
.label_85:
	jmp	.label_49
.label_49:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	movsd	xmm0, qword ptr [rbp - 0x50]
	call	tail_forever
.label_83:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_51
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_51
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_62
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_51:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_74:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl parse_obsolete_option
	.type parse_obsolete_option, @function
parse_obsolete_option:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 0xa
	mov	byte ptr [rbp - 0x36], 1
	mov	byte ptr [rbp - 0x37], 0
	cmp	dword ptr [rbp - 8], 2
	je	.label_87
	cmp	dword ptr [rbp - 8], 3
	jne	.label_99
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_87
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_87
.label_99:
	mov	eax, 3
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_111
	cmp	dword ptr [rbp - 8], 4
	jg	.label_111
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x10]
	mov	ecx, OFFSET FLAT:label_115
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_87
.label_111:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_94
.label_87:
	call	posix2_version
	mov	cl, 1
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0x30db0
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x3d], dl
	test	byte ptr [rbp - 0x3d], 1
	mov	byte ptr [rbp - 0x3f], cl
	jne	.label_96
	mov	eax, 0x31069
	cmp	eax, dword ptr [rbp - 0x3c]
	setle	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_96:
	mov	al, byte ptr [rbp - 0x3f]
	and	al, 1
	mov	byte ptr [rbp - 0x3e], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdx, rcx
	inc	rdx
	mov	qword ptr [rbp - 0x20], rdx
	movsx	esi, byte ptr [rcx]
	mov	edi, esi
	sub	edi, 0x2b
	mov	dword ptr [rbp - 0x44], esi
	mov	dword ptr [rbp - 0x48], edi
	je	.label_107
	jmp	.label_88
.label_88:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_90
	jmp	.label_92
.label_92:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_94
.label_107:
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_97
	mov	byte ptr [rbp - 1], 0
	jmp	.label_94
.label_97:
	mov	byte ptr [rbp - 0x35], 1
	jmp	.label_102
.label_90:
	test	byte ptr [rbp - 0x3d], 1
	jne	.label_103
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_103
	mov	byte ptr [rbp - 1], 0
	jmp	.label_94
.label_103:
	mov	byte ptr [rbp - 0x35], 0
.label_102:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_95:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_89
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_95
.label_89:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x62
	mov	dword ptr [rbp - 0x50], ecx
	mov	dword ptr [rbp - 0x54], edx
	je	.label_98
	jmp	.label_105
.label_105:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_106
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_112
	jmp	.label_114
.label_98:
	mov	eax, dword ptr [rbp - 0x34]
	shl	eax, 9
	mov	dword ptr [rbp - 0x34], eax
.label_106:
	mov	byte ptr [rbp - 0x36], 0
.label_112:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_114:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jne	.label_91
	mov	byte ptr [rbp - 0x37], 1
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_91:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_100
	mov	byte ptr [rbp - 1], 0
	jmp	.label_94
.label_100:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_104
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_108
.label_104:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	r8, OFFSET FLAT:label_113
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	and	eax, 0xfffffffd
	cmp	eax, 0
	je	.label_93
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_101
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_109
	mov	esi, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, rax
	mov	al, 0
	call	error
.label_93:
	jmp	.label_108
.label_108:
	mov	al, byte ptr [rbp - 0x35]
	and	al, 1
	mov	byte ptr [byte ptr [from_start]],  al
	mov	al, byte ptr [rbp - 0x36]
	and	al, 1
	mov	byte ptr [byte ptr [count_lines]],  al
	mov	al, byte ptr [rbp - 0x37]
	and	al, 1
	mov	byte ptr [byte ptr [forever]],  al
	mov	byte ptr [rbp - 1], 1
.label_94:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b20

	.globl parse_options
	.type parse_options, @function
parse_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
.label_159:
	movabs	rdx, OFFSET FLAT:label_134
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, -1
	je	.label_144
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_147
	jmp	.label_153
.label_153:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x44], eax
	je	.label_154
	jmp	.label_158
.label_158:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_160
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_166
	jmp	.label_168
.label_168:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x50], eax
	je	.label_171
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x54], eax
	je	.label_120
	jmp	.label_180
.label_180:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x58], eax
	je	.label_171
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_117
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x60], eax
	je	.label_162
	jmp	.label_128
.label_128:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x64], eax
	je	.label_131
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x68], eax
	je	.label_137
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_122
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x70], eax
	je	.label_146
	jmp	.label_183
.label_183:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x74], eax
	je	.label_152
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x78], eax
	je	.label_150
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_120
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x80], eax
	je	.label_167
	jmp	.label_172
.label_166:
	mov	byte ptr [byte ptr [forever]],  1
	mov	dword ptr [dword ptr [follow_mode]],  1
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_121
.label_171:
	cmp	dword ptr [rbp - 0x2c], 0x6e
	sete	al
	and	al, 1
	mov	byte ptr [byte ptr [count_lines]],  al
	mov	rcx,  qword ptr [word ptr [optarg]]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	jne	.label_184
	mov	byte ptr [byte ptr [from_start]],  1
	jmp	.label_139
.label_184:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_130
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_130:
	jmp	.label_139
.label_139:
	mov	rdi,  qword ptr [word ptr [optarg]]
	test	byte ptr [byte ptr [count_lines]],  1
	mov	qword ptr [rbp - 0x88], rdi
	je	.label_141
	movabs	rdi, OFFSET FLAT:label_170
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_127
.label_141:
	movabs	rdi, OFFSET FLAT:label_155
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_127:
	mov	rax, qword ptr [rbp - 0x90]
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_161
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_121
.label_120:
	mov	byte ptr [byte ptr [forever]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_174
	mov	dword ptr [dword ptr [follow_mode]],  2
	jmp	.label_182
.label_174:
	movabs	rdi, OFFSET FLAT:label_118
	movabs	rdx, OFFSET FLAT:follow_mode_string
	movabs	rax, OFFSET FLAT:follow_mode_map
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	dword ptr [dword ptr [follow_mode]],  r10d
.label_182:
	jmp	.label_121
.label_122:
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_121
.label_146:
	movabs	rdi, OFFSET FLAT:label_129
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_35
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [max_n_unchanged_stats_between_opens]],  rax
	jmp	.label_121
.label_167:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	jmp	.label_121
.label_152:
	movabs	rdi, OFFSET FLAT:label_169
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 0x7fffffff
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:label_35
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	dword ptr [dword ptr [pid]],  r9d
	jmp	.label_121
.label_150:
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	jmp	.label_121
.label_117:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 2
	jmp	.label_121
.label_162:
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:cl_strtod
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtod
	test	al, 1
	jne	.label_140
	jmp	.label_143
.label_140:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x38]
	ucomisd	xmm1, xmm0
	jae	.label_145
.label_143:
	movabs	rdi, OFFSET FLAT:label_151
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_145:
	movsd	xmm0, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	movsd	qword ptr [rax], xmm0
	jmp	.label_121
.label_131:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 1
	jmp	.label_121
.label_137:
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_121
.label_154:
	xor	edi, edi
	call	usage
.label_147:
	movabs	rsi, OFFSET FLAT:label_10
	movabs	rdx, OFFSET FLAT:label_38
	movabs	r8, OFFSET FLAT:label_175
	movabs	r9, OFFSET FLAT:label_176
	movabs	rax, OFFSET FLAT:label_177
	movabs	rcx, OFFSET FLAT:label_178
	xor	edi, edi
	mov	r10d, edi
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r11,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rcx, r11
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], 0
	mov	al, 0
	mov	qword ptr [rbp - 0xb8], r10
	call	version_etc
	xor	edi, edi
	call	exit
.label_160:
	movabs	rdi, OFFSET FLAT:label_148
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_172:
	mov	edi, 1
	call	usage
.label_121:
	jmp	.label_159
.label_144:
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_125
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_164
	movabs	rdi, OFFSET FLAT:label_149
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_123
.label_164:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_179
	movabs	rdi, OFFSET FLAT:label_181
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_179:
	jmp	.label_123
.label_123:
	jmp	.label_125
.label_125:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_126
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_126
	movabs	rdi, OFFSET FLAT:label_133
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_142
.label_126:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_136
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	cmp	eax, 0
	je	.label_136
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_136
	movabs	rdi, OFFSET FLAT:label_156
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [pid]],  0
.label_136:
	jmp	.label_142
.label_142:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	eax, OFFSET FLAT:label_62
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	test	byte ptr [rbp - 0x16], 1
	je	.label_204
	xor	eax, eax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	dword ptr [rbp - 0x14], 0
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	jmp	.label_190
.label_204:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x14], eax
.label_190:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xb1], cl
	je	.label_193
	cmp	dword ptr [rbp - 0x14], -1
	sete	al
	mov	byte ptr [rbp - 0xb1], al
.label_193:
	mov	al, byte ptr [rbp - 0xb1]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_199
	test	byte ptr [byte ptr [forever]],  1
	je	.label_205
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	mov	dl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 8]
	and	dl, 1
	mov	byte ptr [rax + 0x34], dl
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
.label_205:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_197
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb8], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_195
.label_199:
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_191
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	mov	rdi, rax
	call	write_header
.label_191:
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	lea	rcx, [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	tail
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [byte ptr [forever]],  1
	je	.label_201
	lea	rsi, [rbp - 0xb0]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	sub	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x3c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	jge	.label_189
	mov	byte ptr [rbp - 0x15], 0
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xd0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_186
.label_189:
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_187
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_187
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_187
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_187
	movabs	rdi, OFFSET FLAT:label_200
	mov	byte ptr [rbp - 0x15], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x36], 0
	mov	cl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	cl, 0xff
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x34], cl
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xd8], rax
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x34], 1
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_203
	movabs	rdi, OFFSET FLAT:label_202
	call	gettext
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_194
.label_203:
	movabs	rax, OFFSET FLAT:label_35
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0xe8]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_187:
	jmp	.label_186
.label_186:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_192
	mov	al,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x34], al
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xec], edi
	mov	rdi, rcx
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xec]
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_188
.label_192:
	lea	rcx, [rbp - 0xb0]
	mov	eax, 1
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9b, byte ptr [rbp - 0x16]
	test	r9b, 1
	cmovne	eax, edx
	mov	rdx, r8
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xf0], edi
	mov	rdi, rcx
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xf0]
	mov	rsi, rax
	call	fremote
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x35], al
.label_188:
	jmp	.label_196
.label_201:
	test	byte ptr [rbp - 0x16], 1
	jne	.label_198
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	cmp	eax, 0
	je	.label_198
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf4], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x100], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x15], 0
.label_198:
	jmp	.label_196
.label_196:
	jmp	.label_195
.label_195:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403670

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
.label_211:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_207
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	eax, OFFSET FLAT:label_62
	mov	esi, eax
	mov	byte ptr [rbp - 0x22], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x23], cl
	jne	.label_206
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x34], 1
	mov	byte ptr [rbp - 0x23], cl
	jne	.label_206
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x38]
	mov	byte ptr [rbp - 0x23], cl
	jg	.label_206
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x30]
	and	edx, 0xf000
	cmp	edx, 0x1000
	mov	byte ptr [rbp - 0x24], al
	je	.label_210
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x24], cl
	jmp	.label_210
.label_210:
	mov	al, byte ptr [rbp - 0x24]
	mov	byte ptr [rbp - 0x23], al
.label_206:
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	je	.label_208
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_212
.label_208:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_212:
	jmp	.label_209
.label_209:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_211
.label_207:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037b0

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_217:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_215
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_214
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_62
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_214
	mov	byte ptr [rbp - 1], 1
	jmp	.label_213
.label_214:
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_217
.label_215:
	mov	byte ptr [rbp - 1], 0
.label_213:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403850

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_218:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_220
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_219
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	je	.label_219
	mov	byte ptr [rbp - 1], 1
	jmp	.label_222
.label_219:
	jmp	.label_221
.label_221:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_218
.label_220:
	mov	byte ptr [rbp - 1], 0
.label_222:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038d0

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_225:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_224
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_223
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	jne	.label_223
	mov	byte ptr [rbp - 1], 1
	jmp	.label_227
.label_223:
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_225
.label_224:
	mov	byte ptr [rbp - 1], 0
.label_227:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403950

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xb0], 0
.label_228:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_232
	lea	rsi, [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	lstat
	cmp	eax, 0
	jne	.label_229
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_229
	mov	byte ptr [rbp - 1], 1
	jmp	.label_231
.label_229:
	jmp	.label_230
.label_230:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_228
.label_232:
	mov	byte ptr [rbp - 1], 0
.label_231:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a00

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_235:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_236
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_233
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_233
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	je	.label_233
	mov	byte ptr [rbp - 1], 1
	jmp	.label_237
.label_233:
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_235
.label_236:
	mov	byte ptr [rbp - 1], 0
.label_237:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ab0

	.globl tail_forever_inotify
	.type tail_forever_inotify, @function
tail_forever_inotify:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x300
	xor	eax, eax
	mov	ecx, eax
	movabs	r8, OFFSET FLAT:wd_hasher
	movabs	r9, OFFSET FLAT:wd_comparator
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	dword ptr [rbp - 0x24], 3
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x32], 0
	mov	byte ptr [rbp - 0x33], 0
	mov	byte ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x35], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x250], rcx
	mov	rcx, r9
	mov	r8, qword ptr [rbp - 0x250]
	call	hash_initialize
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_301
	call	xalloc_die
.label_301:
	mov	dword ptr [rbp - 0x64], 2
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_306
	mov	eax, dword ptr [rbp - 0x64]
	or	eax, 0xc04
	mov	dword ptr [rbp - 0x64], eax
.label_306:
	mov	qword ptr [rbp - 0x70], 0
.label_285:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_253
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_313
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_323
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
.label_323:
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_318
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	dir_len
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	cl, byte ptr [rdi + rax]
	mov	byte ptr [rbp - 0x81], cl
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	last_component
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	sub	rax, rdi
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	byte ptr [rdi + rax], 0
	mov	edi, dword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x254], edi
	je	.label_251
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x260], rax
	jmp	.label_263
.label_251:
	movabs	rax, OFFSET FLAT:label_267
	mov	qword ptr [rbp - 0x260], rax
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x260]
	mov	edx, 0x784
	mov	edi, dword ptr [rbp - 0x254]
	mov	rsi, rax
	call	inotify_add_watch
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x48], eax
	mov	cl, byte ptr [rbp - 0x81]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x70]
	imul	r8, r8, 0x60
	add	r8, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [r8]
	mov	byte ptr [r8 + rsi], cl
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x48], 0
	jge	.label_278
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_293
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_295
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x264], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x70]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x270], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x264]
	mov	rdx, qword ptr [rbp - 0x270]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_264
.label_293:
	movabs	rdi, OFFSET FLAT:label_242
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_264:
	mov	byte ptr [rbp - 0x33], 1
	jmp	.label_253
.label_278:
	jmp	.label_318
.label_318:
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 0x64]
	call	inotify_add_watch
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x44], eax
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x44], 0
	jge	.label_305
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_329
	mov	byte ptr [rbp - 0x32], 1
.label_329:
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_331
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_240
.label_331:
	movabs	rdi, OFFSET FLAT:label_242
	mov	byte ptr [rbp - 0x34], 1
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_253
.label_240:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x3c]
	je	.label_254
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_259
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x274], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x70]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x280], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x274]
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_254:
	jmp	.label_269
.label_269:
	jmp	.label_271
.label_305:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_281
	call	xalloc_die
.label_281:
	mov	byte ptr [rbp - 0x31], 1
.label_313:
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_285
.label_253:
	test	byte ptr [rbp - 0x34], 1
	jne	.label_288
	test	byte ptr [rbp - 0x33], 1
	jne	.label_288
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_292
	test	byte ptr [rbp - 0x32], 1
	je	.label_292
.label_288:
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_268
.label_292:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_303
	test	byte ptr [rbp - 0x31], 1
	jne	.label_303
	mov	byte ptr [rbp - 1], 0
	jmp	.label_268
.label_303:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x70], 0
.label_283:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_302
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_320
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	recheck
	jmp	.label_275
.label_320:
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_273
	lea	rsi, [rbp - 0x118]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	stat
	cmp	eax, 0
	jne	.label_246
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_238
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x110]
	je	.label_246
.label_238:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_256
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x284], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x290], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x284]
	mov	rdx, qword ptr [rbp - 0x290]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_268
.label_246:
	jmp	.label_273
.label_273:
	jmp	.label_275
.label_275:
	lea	rsi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	check_fspec
.label_302:
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_283
.label_311:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x11
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
.label_243:
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_290
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jne	.label_290
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_290
	movabs	rdi, OFFSET FLAT:label_299
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_268
.label_290:
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_308
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_249
	test	byte ptr [rbp - 0x35], 1
	je	.label_312
	xor	edi, edi
	call	exit
.label_312:
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x291], cl
	je	.label_319
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x291], cl
.label_319:
	mov	al, byte ptr [rbp - 0x291]
	and	al, 1
	mov	byte ptr [rbp - 0x35], al
	test	byte ptr [rbp - 0x35], 1
	je	.label_326
	mov	qword ptr [rbp - 0x138], 0
	mov	qword ptr [rbp - 0x140], 0
	jmp	.label_328
.label_326:
	movsd	xmm0,  qword ptr [word ptr [rip + label_330]]
	cvttsd2si	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x140], rax
	movsd	xmm1, qword ptr [rbp - 0x20]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x140]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	mov	qword ptr [rbp - 0x138], rax
.label_328:
	jmp	.label_249
.label_249:
	jmp	.label_250
.label_250:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, 0x10
	xor	edx, edx
	mov	qword ptr [rbp - 0x2a0], rax
	mov	eax, edx
	mov	rsi, qword ptr [rbp - 0x2a0]
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	eax, ecx
	mov	dword ptr [rbp - 0x1c4], eax
	mov	eax, edi
	mov	dword ptr [rbp - 0x1c8], eax
	mov	eax, 0x40
	mov	ecx, 1
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2a4], eax
	mov	eax, ecx
	mov	qword ptr [rbp - 0x2b0], rdx
	cdq	
	mov	ecx, dword ptr [rbp - 0x2a4]
	idiv	ecx
	mov	edx, edx
	mov	ecx, edx
	mov	rsi, qword ptr [rbp - 0x2b0]
	shl	rsi, cl
	mov	edx, dword ptr [rbp - 8]
	mov	eax, edx
	cdq	
	mov	edi, dword ptr [rbp - 0x2a4]
	idiv	edi
	movsxd	r8, eax
	or	rsi, qword ptr [rbp + r8*8 - 0x1c0]
	mov	qword ptr [rbp + r8*8 - 0x1c0], rsi
	test	byte ptr [byte ptr [monitor_output]],  1
	je	.label_258
	mov	rax, qword ptr [rbp - 0x1c0]
	or	rax, 2
	mov	qword ptr [rbp - 0x1c0], rax
.label_258:
	cmp	dword ptr [rbp - 8], 1
	jle	.label_284
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_286
.label_284:
	mov	eax, 1
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_286
.label_286:
	mov	eax, dword ptr [rbp - 0x2b4]
	add	eax, 1
	cmp	dword ptr [dword ptr [pid]],  0
	mov	dword ptr [rbp - 0x2b8], eax
	je	.label_244
	lea	rax, [rbp - 0x140]
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_279
.label_244:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2c0], rcx
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x2c0]
	lea	rsi, [rbp - 0x1c0]
	xor	ecx, ecx
	mov	edx, ecx
	mov	edi, dword ptr [rbp - 0x2b8]
	mov	qword ptr [rbp - 0x2c8], rdx
	mov	rcx, qword ptr [rbp - 0x2c8]
	mov	r8, rax
	call	select
	mov	dword ptr [rbp - 0x1cc], eax
	cmp	dword ptr [rbp - 0x1cc], 0
	jne	.label_270
	jmp	.label_247
.label_270:
	cmp	dword ptr [rbp - 0x1cc], -1
	jne	.label_314
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_297
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2cc], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x2cc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_314:
	mov	rax, qword ptr [rbp - 0x1c0]
	and	rax, 2
	cmp	rax, 0
	je	.label_272
	call	die_pipe
.label_272:
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_276
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	call	safe_read
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_239
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_245
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_245
.label_239:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x24], ecx
	cmp	eax, 0
	je	.label_245
	mov	qword ptr [rbp - 0x60], 0
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x48]
	call	xrealloc
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_243
.label_245:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_262
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_265
.label_262:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_266
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x2d0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_265:
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x130], rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 0xc]
	mov	eax, ecx
	add	rax, 0x10
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_277
	mov	rax, qword ptr [rbp - 0x128]
	cmp	dword ptr [rax + 0xc], 0
	jne	.label_277
	mov	qword ptr [rbp - 0x70], 0
.label_317:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_296
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x48]
	jne	.label_300
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	movabs	rdi, OFFSET FLAT:label_307
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_268
.label_300:
	jmp	.label_315
.label_315:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_317
.label_296:
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	dword ptr [rax + 0xc], 0
	je	.label_322
	mov	qword ptr [rbp - 0x1d8], 0
.label_257:
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x128]
	cmp	ecx, dword ptr [rax]
	jne	.label_252
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x1d8]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x1d8]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x50]
	mov	rdi, rax
	mov	rsi, rcx
	call	strcmp
	cmp	eax, 0
	jne	.label_252
	jmp	.label_310
.label_252:
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	jmp	.label_257
.label_310:
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_260
	jmp	.label_243
.label_260:
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rax
	mov	dword ptr [rbp - 0x1dc], 0xffffffff
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x200
	cmp	ecx, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x1dd], dl
	test	byte ptr [rbp - 0x1dd], 1
	jne	.label_261
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 0x64]
	call	inotify_add_watch
	mov	dword ptr [rbp - 0x1dc], eax
.label_261:
	test	byte ptr [rbp - 0x1dd], 1
	jne	.label_287
	cmp	dword ptr [rbp - 0x1dc], 0
	jge	.label_287
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_291
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_294
.label_291:
	movabs	rdi, OFFSET FLAT:label_242
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_268
.label_294:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_259
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d4], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x1d8]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x2e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2d4]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_287
.label_287:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1dd], 1
	mov	byte ptr [rbp - 0x2e1], cl
	jne	.label_324
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	dword ptr [rcx + 0x44], 0
	mov	byte ptr [rbp - 0x2e2], al
	jl	.label_327
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	eax, dword ptr [rcx + 0x44]
	setne	dl
	mov	byte ptr [rbp - 0x2e2], dl
.label_327:
	mov	al, byte ptr [rbp - 0x2e2]
	mov	byte ptr [rbp - 0x2e1], al
.label_324:
	mov	al, byte ptr [rbp - 0x2e1]
	and	al, 1
	mov	byte ptr [rbp - 0x1de], al
	test	byte ptr [rbp - 0x1de], 1
	je	.label_241
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	eax, dword ptr [rcx + 0x44]
	jg	.label_248
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x120]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x2e8], eax
	call	hash_delete
	mov	qword ptr [rbp - 0x2f0], rax
.label_248:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	dword ptr [rcx + 0x44], eax
	cmp	dword ptr [rbp - 0x1dc], -1
	jne	.label_274
	jmp	.label_243
.label_274:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_289
	mov	rax, qword ptr [rbp - 0x1e8]
	cmp	rax, qword ptr [rbp - 0x120]
	je	.label_289
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_280
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	recheck
.label_280:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	dword ptr [rax + 0x44], 0xffffffff
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	dword ptr [rbp - 0x2f4], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x2f4]
	mov	rsi, rax
	call	close_fd
.label_289:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_298
	call	xalloc_die
.label_298:
	jmp	.label_241
.label_241:
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_304
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	call	recheck
.label_304:
	jmp	.label_309
.label_322:
	lea	rax, [rbp - 0x248]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	edx, dword ptr [rcx]
	mov	dword ptr [rbp - 0x204], edx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x120], rax
.label_309:
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_316
	jmp	.label_243
.label_316:
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xe04
	cmp	ecx, 0
	je	.label_321
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_325
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x120]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x2f8], eax
	call	hash_delete
	mov	qword ptr [rbp - 0x300], rax
.label_325:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	call	recheck
	jmp	.label_243
.label_321:
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x120]
	call	check_fspec
	jmp	.label_243
.label_268:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x300
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a40

	.globl tail_forever
	.type tail_forever, @function
tail_forever:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	movsd	qword ptr [rbp - 0x18], xmm0
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_353
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_353
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 1
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_353
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 0x38], -1
	mov	byte ptr [rbp - 0x119], cl
	je	.label_353
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x119], dl
.label_353:
	mov	al, byte ptr [rbp - 0x119]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	byte ptr [rbp - 0x29], 0
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
.label_366:
	mov	byte ptr [rbp - 0x39], 0
	mov	qword ptr [rbp - 0x38], 0
.label_360:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_368
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_334
	jmp	.label_340
.label_334:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	jge	.label_343
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x19]
	and	cl, 1
	mov	rdi, rax
	movzx	esi, cl
	call	recheck
	jmp	.label_340
.label_343:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x38]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	pretty_name
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x40]
	mov	dl, byte ptr [rbp - 0x19]
	and	dl, 1
	movzx	esi, dl
	cmp	ecx, esi
	je	.label_354
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x40]
	mov	al, 0
	call	rpl_fcntl
	mov	esi, 0x800
	xor	edi, edi
	mov	dword ptr [rbp - 0xec], eax
	mov	eax, dword ptr [rbp - 0xec]
	mov	cl, byte ptr [rbp - 0x19]
	test	cl, 1
	cmovne	esi, edi
	or	eax, esi
	mov	dword ptr [rbp - 0xf0], eax
	cmp	dword ptr [rbp - 0xec], 0
	jl	.label_358
	mov	eax, dword ptr [rbp - 0xf0]
	cmp	eax, dword ptr [rbp - 0xec]
	je	.label_359
	mov	esi, 4
	mov	edi, dword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0xf0]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_359
.label_358:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_344
	call	__errno_location
	cmp	dword ptr [rax], 1
	jne	.label_344
	jmp	.label_347
.label_344:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_349
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x128], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_347:
	jmp	.label_356
.label_359:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x40], ecx
.label_356:
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x40], 0
	jne	.label_363
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 0x40]
	call	fstat
	cmp	eax, 0
	je	.label_350
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x12c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_345
	mov	esi, dword ptr [rbp - 0x12c]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	mov	dword ptr [rbp - 0x130], eax
	jmp	.label_340
.label_350:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	cmp	ecx, dword ptr [rbp - 0xc8]
	jne	.label_336
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_355
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_336
.label_355:
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x138], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x100], rax
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rax, qword ptr [rbp - 0x138]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xf8]
	call	timespec_cmp
	cmp	eax, 0
	jne	.label_336
	mov	rax,  qword ptr [word ptr [max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x58], rsi
	cmp	rax, rdx
	ja	.label_338
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_338
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 0x40], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	mov	rdi, rax
	call	recheck
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x58], 0
.label_338:
	jmp	.label_340
.label_336:
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x140], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x110], rax
	mov	qword ptr [rbp - 0x108], rdx
	mov	rax, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rdx + 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x58], 0
	mov	ecx, dword ptr [rbp - 0x4c]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_339
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_339
	movabs	rdi, OFFSET FLAT:label_348
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	call	xlseek
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0x150], rax
.label_339:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_361
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_357
	mov	rdi, qword ptr [rbp - 0x48]
	call	write_header
.label_357:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_361:
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x40], 0
	je	.label_364
	mov	qword ptr [rbp - 0x118], -2
	jmp	.label_346
.label_364:
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_335
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_335
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_341
.label_335:
	mov	qword ptr [rbp - 0x118], -1
.label_341:
	jmp	.label_346
.label_346:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x118]
	call	dump_remainder
	mov	qword ptr [rbp - 0xe8], rax
	cmp	qword ptr [rbp - 0xe8], 0
	setne	r8b
	and	r8b, 1
	movzx	edx, r8b
	mov	r8b, byte ptr [rbp - 0x39]
	and	r8b, 1
	movzx	edi, r8b
	or	edi, edx
	cmp	edi, 0
	setne	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x39], r8b
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_340:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_360
.label_368:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	any_live_files
	test	al, 1
	jne	.label_365
	movabs	rdi, OFFSET FLAT:label_299
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_332
.label_365:
	test	byte ptr [rbp - 0x39], 1
	je	.label_333
	test	byte ptr [rbp - 0x19], 1
	je	.label_337
.label_333:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_337
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_59
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_337:
	call	check_output_alive
	test	byte ptr [rbp - 0x39], 1
	jne	.label_342
	test	byte ptr [rbp - 0x29], 1
	je	.label_351
	jmp	.label_332
.label_351:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x155], cl
	je	.label_352
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x155], cl
	je	.label_352
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x155], cl
.label_352:
	mov	al, byte ptr [rbp - 0x155]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_362
	movsd	xmm0, qword ptr [rbp - 0x18]
	call	xnanosleep
	cmp	eax, 0
	je	.label_362
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_367
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x15c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_362:
	jmp	.label_342
.label_342:
	jmp	.label_366
.label_332:
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405240

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	eax, OFFSET FLAT:label_62
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_371
	movabs	rdi, OFFSET FLAT:label_370
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_369
.label_371:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_369:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052a0

	.globl write_header
	.type write_header, @function
write_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_372
	movabs	rcx, OFFSET FLAT:label_373
	movabs	rdx, OFFSET FLAT:label_35
	mov	qword ptr [rbp - 8], rdi
	mov	sil,  byte ptr [byte ptr [write_header.first_file]]
	test	sil, 1
	cmovne	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_header.first_file]],  0
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl tail
	.type tail, @function
tail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], 0
	test	byte ptr [byte ptr [count_lines]],  1
	je	.label_374
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	tail_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_375
.label_374:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	tail_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_375:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl close_fd
	.type close_fd, @function
close_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 4], -1
	je	.label_376
	cmp	dword ptr [rbp - 4], 0
	je	.label_376
	mov	edi, dword ptr [rbp - 4]
	call	close
	cmp	eax, 0
	je	.label_376
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_377
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	xor	edi, edi
	mov	r8d, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_376:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405400

	.globl record_open_fd
	.type record_open_fd, @function
record_open_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x38], esi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], esi
	mov	esi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], esi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 0
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054b0

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x90]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 1
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, rax
	call	fstatfs
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0x94], 0
	je	.label_389
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_386
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_391
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_386:
	jmp	.label_378
.label_389:
	mov	rdi, qword ptr [rbp - 0x90]
	call	is_local_fs_type
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_383
	jmp	.label_388
.label_388:
	mov	eax, dword ptr [rbp - 0xa4]
	test	eax, eax
	je	.label_390
	jmp	.label_387
.label_387:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 1
	mov	dword ptr [rbp - 0xac], eax
	je	.label_382
	jmp	.label_384
.label_390:
	jmp	.label_385
.label_383:
	jmp	.label_385
.label_382:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_385
.label_384:
	movabs	rdi, OFFSET FLAT:label_379
	movabs	rsi, OFFSET FLAT:label_380
	mov	edx, 0x3c9
	movabs	rcx, OFFSET FLAT:label_381
	call	__assert_fail
.label_385:
	jmp	.label_378
.label_378:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl tail_lines
	.type tail_lines, @function
tail_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, rax
	call	fstat
	cmp	eax, 0
	je	.label_397
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_398
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_399
.label_397:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_400
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_lines
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	je	.label_396
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_399
.label_396:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	jmp	.label_395
.label_400:
	mov	qword ptr [rbp - 0xc8], -1
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_394
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_394
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	call	lseek
	mov	qword ptr [rbp - 0xc8], rax
	cmp	rax, -1
	je	.label_394
	xor	eax, eax
	mov	esi, eax
	mov	edx, 2
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0xe8], rcx
	call	lseek
	mov	qword ptr [rbp - 0xd0], rax
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rcx, rax
	jge	.label_394
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_393
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xd0]
	mov	r9, qword ptr [rbp - 0x28]
	call	file_lines
	test	al, 1
	jne	.label_393
	mov	byte ptr [rbp - 1], 0
	jmp	.label_399
.label_393:
	jmp	.label_401
.label_394:
	cmp	qword ptr [rbp - 0xc8], -1
	je	.label_392
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0xf0], rax
.label_392:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pipe_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_399
.label_401:
	jmp	.label_395
.label_395:
	mov	byte ptr [rbp - 1], 1
.label_399:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405830

	.globl tail_bytes
	.type tail_bytes, @function
tail_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, rax
	call	fstat
	cmp	eax, 0
	je	.label_417
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_398
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xdc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xdc]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_412
.label_417:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_414
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_411
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_411
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_420
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	cmp	rax, 0
	jge	.label_405
.label_420:
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lseek
	cmp	rax, -1
	je	.label_411
.label_405:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	jmp	.label_402
.label_411:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_bytes
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	je	.label_418
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_412
.label_418:
	jmp	.label_402
.label_402:
	mov	qword ptr [rbp - 0x20], -1
	jmp	.label_404
.label_414:
	mov	qword ptr [rbp - 0xc8], -1
	mov	qword ptr [rbp - 0xd0], -1
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_407
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_407
	lea	rdi, [rbp - 0xb8]
	call	usable_st_size
	test	al, 1
	jne	.label_410
	jmp	.label_419
.label_410:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_413
.label_419:
	mov	edx, 2
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x14]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	call	lseek
	mov	qword ptr [rbp - 0xd0], rax
	cmp	rax, -1
	je	.label_421
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc8], rax
.label_421:
	jmp	.label_413
.label_413:
	jmp	.label_407
.label_407:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf0], rdx
	jge	.label_415
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_415
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_403
.label_415:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf8], rcx
	jmp	.label_403
.label_403:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xf0]
	cmp	rcx, rax
	jg	.label_406
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pipe_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_412
.label_406:
	cmp	qword ptr [rbp - 0xd0], -1
	jne	.label_416
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0xd0], rax
.label_416:
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_408
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_409
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0x100], rax
.label_409:
	jmp	.label_408
.label_408:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_404:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_412:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ba0

	.globl start_lines
	.type start_lines, @function
start_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2060
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_427
	mov	dword ptr [rbp - 4], 0
	jmp	.label_423
.label_427:
	jmp	.label_425
.label_425:
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_428
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_423
.label_428:
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_424
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x204c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2058], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x204c]
	mov	rdx, qword ptr [rbp - 0x2058]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_423
.label_424:
	lea	rax, [rbp - 0x2030]
	mov	rcx, rax
	add	rcx, qword ptr [rbp - 0x2038]
	mov	qword ptr [rbp - 0x2040], rcx
	mov	rcx, qword ptr [rbp - 0x2038]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rdx], rcx
	mov	qword ptr [rbp - 0x2048], rax
.label_429:
	mov	rdi, qword ptr [rbp - 0x2048]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x2048], rax
	cmp	rax, 0
	je	.label_430
	mov	rax, qword ptr [rbp - 0x2048]
	add	rax, 1
	mov	qword ptr [rbp - 0x2048], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_426
	mov	rax, qword ptr [rbp - 0x2048]
	cmp	rax, qword ptr [rbp - 0x2040]
	jae	.label_422
	mov	rdi, qword ptr [rbp - 0x2048]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
.label_422:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_423
.label_426:
	jmp	.label_429
.label_430:
	jmp	.label_425
.label_423:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d60

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2060
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x28], 0
.label_437:
	cmp	qword ptr [rbp - 0x30], 0x2000
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2048], rax
	jmp	.label_436
.label_432:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2048], rcx
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x2048]
	lea	rsi, [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2038], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2038]
	call	safe_read
	mov	qword ptr [rbp - 0x2040], rax
	cmp	qword ptr [rbp - 0x2040], -1
	jne	.label_438
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_441
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x204c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2058], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x204c]
	mov	rdx, qword ptr [rbp - 0x2058]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_441:
	jmp	.label_433
.label_438:
	cmp	qword ptr [rbp - 0x2040], 0
	jne	.label_435
	jmp	.label_433
.label_435:
	test	byte ptr [rbp - 1], 1
	je	.label_439
	mov	rdi, qword ptr [rbp - 0x10]
	call	write_header
	mov	byte ptr [rbp - 1], 0
.label_439:
	lea	rdi, [rbp - 0x2030]
	mov	rsi, qword ptr [rbp - 0x2040]
	call	xwrite_stdout
	mov	rsi, qword ptr [rbp - 0x2040]
	add	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_434
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_440
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_431
.label_440:
	jmp	.label_433
.label_431:
	jmp	.label_434
.label_434:
	jmp	.label_437
.label_433:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x2060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f00

	.globl file_lines
	.type file_lines, @function
file_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20a0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2050], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_442
	mov	byte ptr [rbp - 1], 1
	jmp	.label_449
.label_442:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x2050]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x2048], rdx
	cmp	qword ptr [rbp - 0x2048], 0
	jne	.label_443
	mov	qword ptr [rbp - 0x2048], 0x2000
.label_443:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x2050]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2050], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	lea	rsi, [rbp - 0x2040]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2048]
	mov	qword ptr [rbp - 0x2068], rax
	call	safe_read
	mov	qword ptr [rbp - 0x2048], rax
	cmp	qword ptr [rbp - 0x2048], -1
	jne	.label_444
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x206c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2078], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x206c]
	mov	rdx, qword ptr [rbp - 0x2078]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_449
.label_444:
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2048], 0
	je	.label_447
	mov	rax, qword ptr [rbp - 0x2048]
	sub	rax, 1
	movsx	ecx, byte ptr [rbp + rax - 0x2040]
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	je	.label_447
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_447:
	jmp	.label_451
.label_451:
	mov	rax, qword ptr [rbp - 0x2048]
	mov	qword ptr [rbp - 0x2058], rax
.label_453:
	cmp	qword ptr [rbp - 0x2058], 0
	je	.label_448
	lea	rdi, [rbp - 0x2040]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x2058]
	call	memrchr
	mov	qword ptr [rbp - 0x2060], rax
	cmp	qword ptr [rbp - 0x2060], 0
	jne	.label_452
	jmp	.label_448
.label_452:
	lea	rax, [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2060]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2058], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	jne	.label_450
	mov	rax, qword ptr [rbp - 0x2058]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rcx, 1
	cmp	rax, rcx
	je	.label_445
	mov	rax, qword ptr [rbp - 0x2060]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x2048]
	mov	rdx, qword ptr [rbp - 0x2058]
	add	rdx, 1
	sub	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	xwrite_stdout
.label_445:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x2050]
	add	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rcx, rax
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_449
.label_450:
	jmp	.label_453
.label_448:
	mov	rax, qword ptr [rbp - 0x2050]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_446
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2080], rcx
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2088], rax
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x2080]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], rcx
	mov	byte ptr [rbp - 1], 1
	jmp	.label_449
.label_446:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2050]
	sub	rax, 0x2000
	mov	qword ptr [rbp - 0x2050], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	edx, 0x2000
	lea	rsi, [rbp - 0x2040]
	mov	edi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x2090], rax
	call	safe_read
	mov	qword ptr [rbp - 0x2048], rax
	cmp	qword ptr [rbp - 0x2048], -1
	jne	.label_454
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2094], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20a0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2094]
	mov	rdx, qword ptr [rbp - 0x20a0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_449
.label_454:
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2048], 0
	ja	.label_451
	mov	byte ptr [rbp - 1], 1
.label_449:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062e0

	.globl xlseek
	.type xlseek, @function
xlseek:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	lseek
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x28], rax
	cmp	rcx, qword ptr [rbp - 0x28]
	jg	.label_458
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x80
	pop	rbp
	ret	
.label_458:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rbp - 0x40]
	call	offtostr
	mov	qword ptr [rbp - 0x48], rax
	mov	ecx, dword ptr [rbp - 0x14]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x4c], ecx
	je	.label_464
	jmp	.label_457
.label_457:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	je	.label_460
	jmp	.label_461
.label_461:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x54], eax
	je	.label_462
	jmp	.label_463
.label_464:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_465
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_455
.label_460:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_456
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_455
.label_462:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_459
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_455
.label_463:
	call	abort
.label_455:
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x406460

	.globl pipe_lines
	.type pipe_lines, @function
pipe_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	eax, 0x2018
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2018
	mov	edi, esi
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2010], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_466:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x38]
	call	safe_read
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_489
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_493
.label_489:
	jmp	.label_468
.label_493:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2010], 0
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
.label_469:
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x60], rax
	cmp	rax, 0
	je	.label_492
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	jmp	.label_469
.label_492:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_480
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2008]
	mov	qword ptr [rcx + 0x2008], rax
	jmp	.label_472
.label_480:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_484
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_491
.label_484:
	mov	eax, 0x2018
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_491:
	jmp	.label_472
.label_472:
	jmp	.label_466
.label_468:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_486
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x88], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_476
.label_486:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x2000], 0
	jne	.label_478
	jmp	.label_476
.label_478:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_482
	jmp	.label_476
.label_482:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	je	.label_485
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_485:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_481:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_477
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_481
.label_477:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_474
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_490:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_473
	mov	rdi, qword ptr [rbp - 0x68]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_483
	jmp	.label_488
.label_483:
	movabs	rdi, OFFSET FLAT:label_470
	movabs	rsi, OFFSET FLAT:label_380
	mov	edx, 0x2e0
	movabs	rcx, OFFSET FLAT:label_471
	call	__assert_fail
.label_488:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_490
.label_473:
	jmp	.label_474
.label_474:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
.label_487:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_475
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_487
.label_475:
	jmp	.label_476
.label_476:
	jmp	.label_479
.label_479:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_467
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_479
.label_467:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406950

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_494
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_494
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_495
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_47
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_494:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069f0

	.globl start_bytes
	.type start_bytes, @function
start_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2050
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
.label_498:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_497
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_500
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_496
.label_500:
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_501
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2044], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2050], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2044]
	mov	rdx, qword ptr [rbp - 0x2050]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_496
.label_501:
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x2038]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_502
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_503
.label_502:
	mov	rax, qword ptr [rbp - 0x2038]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2040], rax
	cmp	qword ptr [rbp - 0x2040], 0
	je	.label_499
	lea	rax, [rbp - 0x2030]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rdi, rax
	call	xwrite_stdout
.label_499:
	jmp	.label_497
.label_503:
	jmp	.label_498
.label_497:
	mov	dword ptr [rbp - 4], 0
.label_496:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2050
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b50

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_504
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_504
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_504
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_504
.label_504:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bd0

	.globl pipe_bytes
	.type pipe_bytes, @function
pipe_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	eax, 0x2010
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x49], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2010
	mov	edi, esi
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2008], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_508:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x38]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_507
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_512
.label_507:
	jmp	.label_516
.label_512:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	jmp	.label_505
.label_517:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x2008], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_511
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_510
.label_511:
	mov	eax, 0x2010
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_510:
	jmp	.label_505
.label_505:
	jmp	.label_508
.label_516:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_513
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_185
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x49], 0
	jmp	.label_515
.label_513:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_509:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_520
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_509
.label_520:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_522
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_506
.label_522:
	mov	qword ptr [rbp - 0x40], 0
.label_506:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	mov	rsi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
.label_518:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_519
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_518
.label_519:
	jmp	.label_515
.label_515:
	jmp	.label_521
.label_521:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_514
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_521
.label_514:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f20

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x368
	mov	qword ptr [rbp - 0x10], rdi
	mov	rax, rdi
	sub	rdi, 0x2f
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdi
	je	.label_710
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x187
	mov	qword ptr [rbp - 0x28], rax
	je	.label_720
	jmp	.label_724
.label_724:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7c0
	mov	qword ptr [rbp - 0x30], rax
	je	.label_726
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x38], rax
	je	.label_733
	jmp	.label_740
.label_740:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137d
	mov	qword ptr [rbp - 0x40], rax
	je	.label_742
	jmp	.label_640
.label_640:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0x48], rax
	je	.label_631
	jmp	.label_750
.label_750:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x138f
	mov	qword ptr [rbp - 0x50], rax
	je	.label_752
	jmp	.label_757
.label_757:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1cd1
	mov	qword ptr [rbp - 0x58], rax
	je	.label_759
	jmp	.label_765
.label_765:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2468
	mov	qword ptr [rbp - 0x60], rax
	je	.label_766
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x68], rax
	je	.label_527
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x70], rax
	je	.label_534
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4000
	mov	qword ptr [rbp - 0x78], rax
	je	.label_542
	jmp	.label_547
.label_547:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4004
	mov	qword ptr [rbp - 0x80], rax
	je	.label_548
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x88], rax
	je	.label_556
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4244
	mov	qword ptr [rbp - 0x90], rax
	je	.label_565
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x482b
	mov	qword ptr [rbp - 0x98], rax
	je	.label_572
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4858
	mov	qword ptr [rbp - 0xa0], rax
	je	.label_576
	jmp	.label_580
.label_580:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4d44
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_607
	jmp	.label_585
.label_585:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_646
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x517b
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_590
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x564c
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_597
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_604
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0xd0], rax
	je	.label_612
	jmp	.label_617
.label_617:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_601
	jmp	.label_622
.label_622:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x72b6
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_623
	jmp	.label_627
.label_627:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0xe8], rax
	je	.label_629
	jmp	.label_636
.label_636:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_718
	jmp	.label_642
.label_642:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa1
	mov	qword ptr [rbp - 0xf8], rax
	je	.label_644
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa2
	mov	qword ptr [rbp - 0x100], rax
	je	.label_651
	jmp	.label_655
.label_655:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x108], rax
	je	.label_657
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xadff
	mov	qword ptr [rbp - 0x110], rax
	je	.label_664
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xef51
	mov	qword ptr [rbp - 0x118], rax
	je	.label_669
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xef53
	mov	qword ptr [rbp - 0x120], rax
	je	.label_677
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xf15f
	mov	qword ptr [rbp - 0x128], rax
	je	.label_699
	jmp	.label_688
.label_688:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11954
	mov	qword ptr [rbp - 0x130], rax
	je	.label_561
	jmp	.label_693
.label_693:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x27e0eb
	mov	qword ptr [rbp - 0x138], rax
	je	.label_695
	jmp	.label_700
.label_700:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x414a53
	mov	qword ptr [rbp - 0x140], rax
	je	.label_701
	jmp	.label_707
.label_707:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc0ffee
	mov	qword ptr [rbp - 0x148], rax
	je	.label_708
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc36400
	mov	qword ptr [rbp - 0x150], rax
	je	.label_713
	jmp	.label_719
.label_719:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x158], rax
	je	.label_754
	jmp	.label_727
.label_727:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1021997
	mov	qword ptr [rbp - 0x160], rax
	je	.label_728
	jmp	.label_735
.label_735:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1161970
	mov	qword ptr [rbp - 0x168], rax
	je	.label_737
	jmp	.label_743
.label_743:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12fd16d
	mov	qword ptr [rbp - 0x170], rax
	je	.label_630
	jmp	.label_746
.label_746:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b4
	mov	qword ptr [rbp - 0x178], rax
	je	.label_748
	jmp	.label_755
.label_755:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x180], rax
	je	.label_756
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b6
	mov	qword ptr [rbp - 0x188], rax
	je	.label_749
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b7
	mov	qword ptr [rbp - 0x190], rax
	je	.label_551
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x13111a8
	mov	qword ptr [rbp - 0x198], rax
	je	.label_535
	jmp	.label_543
.label_543:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x1a0], rax
	je	.label_537
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9041934
	mov	qword ptr [rbp - 0x1a8], rax
	je	.label_550
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x1b0], rax
	je	.label_559
	jmp	.label_566
.label_566:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xbd00bd0
	mov	qword ptr [rbp - 0x1b8], rax
	je	.label_745
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11307854
	mov	qword ptr [rbp - 0x1c0], rax
	je	.label_605
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x13661366
	mov	qword ptr [rbp - 0x1c8], rax
	je	.label_578
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_583
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x19800202
	mov	qword ptr [rbp - 0x1d8], rax
	je	.label_663
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1e0], rax
	je	.label_592
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1badface
	mov	qword ptr [rbp - 0x1e8], rax
	je	.label_599
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x1f0], rax
	je	.label_608
	jmp	.label_613
.label_613:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x1f8], rax
	je	.label_615
	jmp	.label_619
.label_619:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2bad1dea
	mov	qword ptr [rbp - 0x200], rax
	je	.label_620
	jmp	.label_624
.label_624:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2fc12fc1
	mov	qword ptr [rbp - 0x208], rax
	je	.label_625
	jmp	.label_632
.label_632:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x210], rax
	je	.label_634
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42465331
	mov	qword ptr [rbp - 0x218], rax
	je	.label_614
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42494e4d
	mov	qword ptr [rbp - 0x220], rax
	je	.label_647
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x43415d53
	mov	qword ptr [rbp - 0x228], rax
	je	.label_653
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x453dcd28
	mov	qword ptr [rbp - 0x230], rax
	je	.label_659
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x45584653
	mov	qword ptr [rbp - 0x238], rax
	je	.label_666
	jmp	.label_671
.label_671:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x47504653
	mov	qword ptr [rbp - 0x240], rax
	je	.label_673
	jmp	.label_678
.label_678:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x50495045
	mov	qword ptr [rbp - 0x248], rax
	je	.label_679
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x250], rax
	je	.label_687
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346314d
	mov	qword ptr [rbp - 0x258], rax
	je	.label_692
	jmp	.label_697
.label_697:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x260], rax
	je	.label_698
	jmp	.label_703
.label_703:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x53464846
	mov	qword ptr [rbp - 0x268], rax
	je	.label_705
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x270], rax
	je	.label_711
	jmp	.label_714
.label_714:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x278], rax
	je	.label_716
	jmp	.label_721
.label_721:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x54190100
	mov	qword ptr [rbp - 0x280], rax
	je	.label_722
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x565a4653
	mov	qword ptr [rbp - 0x288], rax
	je	.label_731
	jmp	.label_739
.label_739:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x58295829
	mov	qword ptr [rbp - 0x290], rax
	je	.label_741
	jmp	.label_744
.label_744:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x298], rax
	je	.label_648
	jmp	.label_751
.label_751:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_753
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5dca2df5
	mov	qword ptr [rbp - 0x2a8], rax
	je	.label_763
	jmp	.label_767
.label_767:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x2b0], rax
	je	.label_525
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6165676c
	mov	qword ptr [rbp - 0x2b8], rax
	je	.label_530
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x2c0], rax
	je	.label_538
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62646576
	mov	qword ptr [rbp - 0x2c8], rax
	je	.label_546
	jmp	.label_553
.label_553:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62656570
	mov	qword ptr [rbp - 0x2d0], rax
	je	.label_555
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62656572
	mov	qword ptr [rbp - 0x2d8], rax
	je	.label_564
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_571
	jmp	.label_574
.label_574:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2e8], rax
	je	.label_568
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x64646178
	mov	qword ptr [rbp - 0x2f0], rax
	je	.label_581
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735543
	mov	qword ptr [rbp - 0x2f8], rax
	je	.label_586
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735546
	mov	qword ptr [rbp - 0x300], rax
	je	.label_680
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x308], rax
	je	.label_595
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x68191122
	mov	qword ptr [rbp - 0x310], rax
	je	.label_603
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6b414653
	mov	qword ptr [rbp - 0x318], rax
	je	.label_611
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6e667364
	mov	qword ptr [rbp - 0x320], rax
	je	.label_618
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6e736673
	mov	qword ptr [rbp - 0x328], rax
	je	.label_638
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73636673
	mov	qword ptr [rbp - 0x330], rax
	je	.label_628
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73717368
	mov	qword ptr [rbp - 0x338], rax
	je	.label_637
	jmp	.label_641
.label_641:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73727279
	mov	qword ptr [rbp - 0x340], rax
	je	.label_643
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73757245
	mov	qword ptr [rbp - 0x348], rax
	je	.label_558
	jmp	.label_654
.label_654:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7461636f
	mov	qword ptr [rbp - 0x350], rax
	je	.label_656
	jmp	.label_661
.label_661:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x74726163
	mov	qword ptr [rbp - 0x358], rax
	je	.label_633
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x794c7630
	mov	qword ptr [rbp - 0x360], rax
	je	.label_672
	jmp	.label_674
.label_674:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x368], rax
	je	.label_676
	jmp	.label_681
.label_681:
	mov	eax, 0x858458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x370], rdx
	je	.label_683
	jmp	.label_552
.label_552:
	mov	eax, 0x9123683e
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x378], rdx
	je	.label_689
	jmp	.label_694
.label_694:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x380], rdx
	je	.label_696
	jmp	.label_702
.label_702:
	mov	eax, 0xa501fcf5
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	je	.label_704
	jmp	.label_684
.label_684:
	mov	eax, 0xaad7aaea
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x390], rdx
	je	.label_690
	jmp	.label_715
.label_715:
	mov	eax, 0xabba1974
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x398], rdx
	je	.label_738
	jmp	.label_723
.label_723:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a0], rdx
	je	.label_725
	jmp	.label_734
.label_734:
	mov	eax, 0xbeefdead
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a8], rdx
	je	.label_736
	jmp	.label_596
.label_596:
	mov	eax, 0xc97e8168
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b0], rdx
	je	.label_762
	jmp	.label_747
.label_747:
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b8], rdx
	je	.label_560
	jmp	.label_758
.label_758:
	mov	eax, 0xde5e81e4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c0], rdx
	je	.label_761
	jmp	.label_729
.label_729:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c8], rdx
	je	.label_524
	jmp	.label_529
.label_529:
	mov	eax, 0xf97cff8c
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d0], rdx
	je	.label_531
	jmp	.label_539
.label_539:
	mov	eax, 0xf995e849
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d8], rdx
	je	.label_541
	jmp	.label_686
.label_686:
	mov	eax, 0xfe534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_660
	jmp	.label_670
.label_670:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e8], rdx
	je	.label_706
	jmp	.label_567
.label_753:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_525:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_657:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_664:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_698:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_550:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_538:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_720:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_578:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_614:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_546:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_599:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_560:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_647:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_689:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_643:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_713:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_695:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_571:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_706:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_558:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_551:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_555:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_615:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_659:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_581:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_568:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_733:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_759:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_699:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_761:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_701:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_666:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_604:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_742:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_677:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_669:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_524:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_556:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_592:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_680:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_586:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_559:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_737:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_673:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_565:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_572:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_576:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_708:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_541:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_696:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_605:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_535:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_620:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_629:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_548:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_542:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_726:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_623:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_634:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_611:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_762:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_745:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_692:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_631:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_752:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_766:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_527:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_646:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_663:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_607:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_597:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_612:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_618:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_534:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_638:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_711:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_644:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_656:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_672:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_690:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_679:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_676:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_718:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_530:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_710:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_603:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_683:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_537:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_687:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_601:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_595:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_763:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_628:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_531:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_653:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_590:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_660:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_736:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_716:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_637:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_564:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_749:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_756:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_754:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_633:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_608:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_583:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_561:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_722:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_651:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_728:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_725:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_704:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_523
.label_731:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_705:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_738:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_748:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_648:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_630:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_625:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_741:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_523
.label_567:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_523:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x368
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408270

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rsi + 0x44]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082a0

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x44]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082e0

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	byte ptr [rbp - 0xa1], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	esi, OFFSET FLAT:label_62
	call	strcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa2], cl
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, byte ptr [rsi + 0x36]
	and	cl, 1
	mov	byte ptr [rbp - 0xa3], cl
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x3c]
	mov	dword ptr [rbp - 0xa8], eax
	test	byte ptr [rbp - 0xa2], 1
	je	.label_772
	xor	eax, eax
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_802
.label_772:
	mov	eax, 0x800
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	sil, byte ptr [rbp - 9]
	test	sil, 1
	cmovne	eax, ecx
	or	eax, 0
	mov	esi, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0xb4], eax
.label_802:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb0], eax
	mov	rdi, qword ptr [rbp - 8]
	call	valid_file_spec
	test	al, 1
	jne	.label_793
	jmp	.label_795
.label_793:
	jmp	.label_797
.label_795:
	movabs	rdi, OFFSET FLAT:label_799
	movabs	rsi, OFFSET FLAT:label_380
	mov	edx, 0x3df
	movabs	rcx, OFFSET FLAT:label_800
	call	__assert_fail
.label_797:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xb5], cl
	je	.label_809
	cmp	dword ptr [rbp - 0xb0], -1
	sete	al
	mov	byte ptr [rbp - 0xb5], al
.label_809:
	mov	al, byte ptr [rbp - 0xb5]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_775
	lea	rsi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	lstat
	cmp	eax, 0
	jne	.label_775
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_775
	movabs	rdi, OFFSET FLAT:label_782
	mov	byte ptr [rbp - 0xa1], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 1
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xc4], edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_773
.label_775:
	cmp	dword ptr [rbp - 0xb0], -1
	je	.label_803
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0xb0]
	call	fstat
	cmp	eax, 0
	jge	.label_810
.label_803:
	mov	byte ptr [rbp - 0xa1], 0
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x36], 1
	jne	.label_813
	test	byte ptr [rbp - 0xa3], 1
	je	.label_817
	movabs	rdi, OFFSET FLAT:label_770
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x3c]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xd0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_784
.label_817:
	jmp	.label_784
.label_784:
	jmp	.label_786
.label_813:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0xd4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	cmp	ecx, dword ptr [rax]
	je	.label_815
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xd8], esi
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_345
	mov	esi, dword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_815:
	jmp	.label_786
.label_786:
	jmp	.label_771
.label_810:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_768
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_768
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_768
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_768
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0xa1], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x3c], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x36], 0
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_776
	cmp	dword ptr [dword ptr [follow_mode]],  1
	sete	al
	mov	byte ptr [rbp - 0xd9], al
.label_776:
	mov	al, byte ptr [rbp - 0xd9]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x34], al
	test	byte ptr [rbp - 0xa3], 1
	jne	.label_788
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rcx + 0x3c]
	je	.label_811
.label_788:
	movabs	rdi, OFFSET FLAT:label_796
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xe8], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rsi, qword ptr [rbp - 8]
	test	byte ptr [rsi + 0x34], 1
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_808
	movabs	rdi, OFFSET FLAT:label_202
	call	gettext
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_816
.label_808:
	movabs	rax, OFFSET FLAT:label_35
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_816
.label_816:
	mov	rax, qword ptr [rbp - 0xf8]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_811:
	jmp	.label_769
.label_768:
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xfc], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xfc]
	mov	rsi, rax
	call	fremote
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi + 0x35], cl
	test	al, 1
	jne	.label_783
	jmp	.label_790
.label_783:
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_790
	movabs	rdi, OFFSET FLAT:label_780
	mov	byte ptr [rbp - 0xa1], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x108], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x10c], edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + 0x34], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + 0x35], 1
	jmp	.label_814
.label_790:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0
.label_814:
	jmp	.label_769
.label_769:
	jmp	.label_771
.label_771:
	jmp	.label_773
.label_773:
	mov	byte ptr [rbp - 0xa9], 0
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_774
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x110], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x110]
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x114], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x114]
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_779
.label_774:
	cmp	dword ptr [rbp - 0xa8], 0
	je	.label_792
	cmp	dword ptr [rbp - 0xa8], 2
	je	.label_792
	mov	byte ptr [rbp - 0xa9], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_807
	jmp	.label_804
.label_807:
	movabs	rdi, OFFSET FLAT:label_805
	movabs	rsi, OFFSET FLAT:label_380
	mov	edx, 0x42c
	movabs	rcx, OFFSET FLAT:label_800
	call	__assert_fail
.label_804:
	movabs	rdi, OFFSET FLAT:label_812
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x124], edi
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_777
.label_792:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_778
	movabs	rdi, OFFSET FLAT:label_781
	mov	byte ptr [rbp - 0xa9], 1
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x130], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x134], edi
	mov	esi, dword ptr [rbp - 0x134]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_785
.label_778:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_794
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0xa0]
	je	.label_801
.label_794:
	movabs	rdi, OFFSET FLAT:label_806
	mov	byte ptr [rbp - 0xa9], 1
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x140], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x144], edi
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 8]
	mov	edi, dword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x148], edi
	mov	rdi, rcx
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x148]
	mov	rsi, rax
	call	close_fd
	jmp	.label_787
.label_801:
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14c], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x14c]
	mov	rsi, rax
	call	close_fd
.label_787:
	jmp	.label_785
.label_785:
	jmp	.label_777
.label_777:
	jmp	.label_779
.label_779:
	test	byte ptr [rbp - 0xa9], 1
	je	.label_789
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xb0]
	test	byte ptr [rbp - 0xa2], 1
	mov	qword ptr [rbp - 0x158], rdi
	mov	dword ptr [rbp - 0x15c], esi
	je	.label_791
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x160], eax
	jmp	.label_798
.label_791:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x160], ecx
.label_798:
	mov	eax, dword ptr [rbp - 0x160]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rcx, [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x158]
	mov	esi, dword ptr [rbp - 0x15c]
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x164], edi
	mov	rdi, rcx
	call	pretty_name
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x164]
	mov	rcx, rax
	call	xlseek
	mov	qword ptr [rbp - 0x170], rax
.label_789:
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b30

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	dword ptr [rsi + 0x38], -1
	jne	.label_824
	jmp	.label_819
.label_824:
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	call	fstat
	cmp	eax, 0
	je	.label_825
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_819
.label_825:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_821
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_821
	movabs	rdi, OFFSET FLAT:label_348
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	edi, dword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rbp - 0xa8]
	call	xlseek
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_820
.label_821:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_818
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_818
	lea	rdi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xe0], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xb0]
	call	timespec_cmp
	cmp	eax, 0
	jne	.label_818
	jmp	.label_819
.label_818:
	jmp	.label_820
.label_820:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [print_headers]],  1
	mov	byte ptr [rbp - 0xe1], cl
	je	.label_822
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	setne	dl
	mov	byte ptr [rbp - 0xe1], dl
.label_822:
	mov	al, byte ptr [rbp - 0xe1]
	mov	rcx, -1
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rdx + 0x38]
	and	al, 1
	movzx	edi, al
	call	dump_remainder
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_819
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_823
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_59
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xe8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_823:
	jmp	.label_819
.label_819:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408dc0

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	mov	dword ptr [rbp - 4], eax
	call	exit
	.section	.text
	.align	16
	#Procedure 0x408de0

	.globl valid_file_spec
	.type valid_file_spec, @function
valid_file_spec:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x38], -1
	sete	al
	and	al, 1
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x3c], 0
	sete	al
	and	al, 1
	movzx	edx, al
	xor	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e20

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_826
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_826
	mov	byte ptr [rbp - 1], 1
	jmp	.label_827
.label_826:
	mov	qword ptr [rbp - 0x20], 0
.label_831:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_833
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_828
	mov	byte ptr [rbp - 1], 1
	jmp	.label_827
.label_828:
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_829
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_829
	mov	byte ptr [rbp - 1], 1
	jmp	.label_827
.label_829:
	jmp	.label_830
.label_830:
	jmp	.label_832
.label_832:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_831
.label_833:
	mov	byte ptr [rbp - 1], 0
.label_827:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ee0

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	test	byte ptr [byte ptr [monitor_output]],  1
	jne	.label_834
	jmp	.label_835
.label_834:
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	lea	rax, [rbp - 0x90]
	mov	ecx, 0x10
	xor	edx, edx
	mov	qword ptr [rbp - 0xa0], rax
	mov	eax, edx
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, edi
	mov	dword ptr [rbp - 0x98], eax
	mov	edi, 2
	lea	rsi, [rbp - 0x90]
	xor	eax, eax
	mov	ecx, eax
	lea	r8, [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, 2
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	call	select
	cmp	eax, 1
	jne	.label_835
	call	die_pipe
.label_835:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f90

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x408fa0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_846:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_841
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_838
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_844
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_837
.label_844:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_847
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_836
.label_847:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_840
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_839
.label_840:
	mov	byte ptr [rbp - 0x41], 1
.label_839:
	jmp	.label_836
.label_836:
	jmp	.label_842
.label_842:
	jmp	.label_838
.label_838:
	jmp	.label_845
.label_845:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_846
.label_841:
	test	byte ptr [rbp - 0x41], 1
	je	.label_843
	mov	qword ptr [rbp - 8], -2
	jmp	.label_837
.label_843:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_837:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090f0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_848
	movabs	rdi, OFFSET FLAT:label_851
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_850
.label_848:
	movabs	rdi, OFFSET FLAT:label_849
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_850:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409190

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_856
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_858:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_860
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_854
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_853
.label_854:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_852
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_859
.label_853:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_857
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_859:
	jmp	.label_855
.label_855:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_858
.label_860:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092e0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_862
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_861
.label_862:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_861:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409370
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_865:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_863
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_867
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_866
.label_867:
	jmp	.label_864
.label_864:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_865
.label_863:
	mov	qword ptr [rbp - 8], 0
.label_866:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409410

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	strtod
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_868
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	c_strtod
	movsd	qword ptr [rbp - 0x38], xmm0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_871
	movsd	xmm0, qword ptr [rbp - 0x38]
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_869
.label_871:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_869:
	jmp	.label_868
.label_868:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_870
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_870:
	movsd	xmm0, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409500

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_874
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_876
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_874
.label_876:
	movabs	rdi, OFFSET FLAT:label_59
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_872
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_109
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_873
.label_872:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_345
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_873:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_874:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_875
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_875:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095f0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_877
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_882
.label_877:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_882:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_880:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_878
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_879
	jmp	.label_878
.label_879:
	jmp	.label_881
.label_881:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_880
.label_878:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096a0
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_883
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_883
.label_883:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_885
	mov	qword ptr [rbp - 8], 0
	jmp	.label_884
.label_885:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_886
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_886:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_884:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409770

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_892:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_887
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_892
.label_887:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_894:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_889
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_893
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_888
.label_893:
	test	byte ptr [rbp - 0x19], 1
	je	.label_891
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_891:
	jmp	.label_888
.label_888:
	jmp	.label_890
.label_890:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_894
.label_889:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409810
	.globl base_len
	.type base_len, @function
base_len:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_897:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_895
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_895:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_896
	jmp	.label_899
.label_896:
	jmp	.label_898
.label_898:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_897
.label_899:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098a0

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_900
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_900:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_901
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_902
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_903
.label_902:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_903:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_901:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409aa0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ac0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ae0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b00

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_910:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_905
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_906
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_904:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_907
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_904
.label_907:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_909
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_909:
	jmp	.label_906
.label_906:
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_910
.label_905:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bb0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_918:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_915
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_912
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_917:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_914
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_917
.label_914:
	jmp	.label_912
.label_912:
	jmp	.label_911
.label_911:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_918
.label_915:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_913
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_913
	mov	byte ptr [rbp - 1], 1
	jmp	.label_916
.label_913:
	mov	byte ptr [rbp - 1], 0
.label_916:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ca0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_919
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_922
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_920
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_923]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_924]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_925]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_921
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dc0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_932
	mov	qword ptr [rbp - 8], 0
	jmp	.label_926
.label_932:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_930:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_927
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_928
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_928
	jmp	.label_931
.label_928:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_926
.label_931:
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_930
.label_927:
	mov	qword ptr [rbp - 8], 0
.label_926:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e80

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_933
	call	abort
.label_933:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ef0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_934
	mov	qword ptr [rbp - 8], 0
	jmp	.label_935
.label_934:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_936:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_937
	call	abort
.label_937:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_939
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_935
.label_939:
	jmp	.label_938
.label_938:
	jmp	.label_940
.label_940:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_936
.label_935:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f80
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_942:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_945
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_945
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_941
.label_945:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_942
	jmp	.label_943
.label_943:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_946
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_944
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_941
.label_944:
	jmp	.label_943
.label_946:
	mov	qword ptr [rbp - 8], 0
.label_941:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a050
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_953:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_950
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_947
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_949:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_954
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_948
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_951
.label_948:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_949
.label_954:
	jmp	.label_947
.label_947:
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_953
.label_950:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_951:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a120
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_957:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_961
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_962
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_958:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_960
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_956
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_959
.label_956:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_958
.label_960:
	jmp	.label_962
.label_962:
	jmp	.label_955
.label_955:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_957
.label_961:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_959:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_964:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_963
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_964
.label_963:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a250
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_965]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_966]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a280

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_967
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_967:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_973
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_973:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_970
	mov	qword ptr [rbp - 8], 0
	jmp	.label_969
.label_970:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_974
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_974:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_971
	jmp	.label_968
.label_971:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_975
	jmp	.label_968
.label_975:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_972
	jmp	.label_968
.label_972:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_969
.label_968:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_969:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a420

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a460

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a480

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_976
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_976:
	movss	xmm0,  dword ptr [dword ptr [rip + label_980]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_978
	movss	xmm0,  dword ptr [dword ptr [rip + label_977]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_978
	movss	xmm0,  dword ptr [dword ptr [rip + label_977]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_978
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_978
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_978
	movss	xmm0,  dword ptr [dword ptr [rip + label_977]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_978
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_978
	mov	byte ptr [rbp - 1], 1
	jmp	.label_979
.label_978:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_979:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5b0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_981
	movss	xmm0,  dword ptr [dword ptr [rip + label_986]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_987
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_987:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_983
	mov	qword ptr [rbp - 8], 0
	jmp	.label_982
.label_983:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_985]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_981:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_984
	mov	qword ptr [rbp - 8], 0
	jmp	.label_982
.label_984:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_982:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6d0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_994:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_990
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_993
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_988:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_991
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_995
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_995:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_988
.label_991:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_989
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_989:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_993:
	jmp	.label_992
.label_992:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_994
.label_990:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7f0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_996
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_996
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_998:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1008
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1006
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1004:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_999
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1004
.label_999:
	jmp	.label_1006
.label_1006:
	jmp	.label_1009
.label_1009:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_998
.label_1008:
	jmp	.label_996
.label_996:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1007:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1002
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1003:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_997
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1003
.label_997:
	jmp	.label_1005
.label_1005:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1007
.label_1002:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1000:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1001
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1000
.label_1001:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a970

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1011
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1015
.label_1011:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1016
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1015
.label_1016:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1013
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1015
.label_1013:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1012
	jmp	.label_1014
.label_1012:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1015
.label_1014:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1017
	jmp	.label_1018
.label_1017:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1010
.label_1018:
	call	abort
.label_1010:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1015:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab80

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_1031:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1026
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1029
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1030:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1021
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1028
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1022
.label_1028:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1022:
	jmp	.label_1023
.label_1023:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1030
.label_1021:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1027
	jmp	.label_1020
.label_1027:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1024
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1032
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1019
.label_1032:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1025
.label_1024:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1025:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1029:
	jmp	.label_1020
.label_1020:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1031
.label_1026:
	mov	byte ptr [rbp - 1], 1
.label_1019:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad60

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1044
	call	abort
.label_1044:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1043
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1047
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1047:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1037
.label_1043:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1038
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1038:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1041
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1041:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1049
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1042
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1042:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1051
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1051:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1036
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1046
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1050
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1050:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1035
.label_1046:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1045
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1045:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1035:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_986]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1039
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1037
.label_1039:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_985]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1034
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1037
.label_1034:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1048
	call	abort
.label_1048:
	jmp	.label_1036
.label_1036:
	jmp	.label_1049
.label_1049:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1033
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1040
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1037
.label_1040:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1037
.label_1033:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1037:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b200

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1064
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1054
.label_1064:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1058
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1058
	jmp	.label_1052
.label_1058:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1062
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1060
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_1059
.label_1060:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1059:
	jmp	.label_1062
.label_1062:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1054
.label_1052:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1063:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1053
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1057
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1057
	jmp	.label_1055
.label_1057:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1056
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_1056:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1054
.label_1055:
	jmp	.label_1061
.label_1061:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1063
.label_1053:
	mov	qword ptr [rbp - 8], 0
.label_1054:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3d0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1065
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1066
.label_1065:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1066:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b430

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1067
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1070
.label_1067:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1069
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1068
.label_1069:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1068:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1070:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4a0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1073
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1077
.label_1073:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1081
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1072
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1072:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1080
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1080:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1085
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1075
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1075:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1074
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1074:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1084
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1079
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1086
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1086:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1083
.label_1079:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1082
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1082:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1083:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_985]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_1078
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1076:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1071
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1076
.label_1071:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1078:
	jmp	.label_1084
.label_1084:
	jmp	.label_1085
.label_1085:
	jmp	.label_1081
.label_1081:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1077:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8a0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1087
	mov	qword ptr [rbp - 8], 0xa
.label_1087:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1089:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1091
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1091:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1088
	jmp	.label_1090
.label_1088:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1089
.label_1090:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b920

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1095:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1094
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1094:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1093
	jmp	.label_1092
.label_1093:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1095
.label_1092:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9e0

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba20

	.globl offtostr
	.type offtostr, @function
offtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_1096
	jmp	.label_1099
.label_1099:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1099
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1097
.label_1096:
	jmp	.label_1098
.label_1098:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1098
	jmp	.label_1097
.label_1097:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb20

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:label_1100
	mov	qword ptr [rbp - 8], 0x31069
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1102
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1102
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1105
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1105:
	jmp	.label_1102
.label_1102:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_1104
	mov	rax, -0x80000000
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1106
.label_1104:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	jge	.label_1103
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1101
.label_1103:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1101
.label_1101:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1106:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbf0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1111
	movabs	rdi, OFFSET FLAT:label_1110
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1111:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1113
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1108
.label_1113:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1108:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1107
	movabs	rsi, OFFSET FLAT:label_1114
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1107
	movabs	rsi, OFFSET FLAT:label_1112
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1109
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1109:
	jmp	.label_1107
.label_1107:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd10
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1115
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1116
.label_1115:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1116
.label_1116:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd90
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1117
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1118
.label_1117:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1118
.label_1118:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdd0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_1119
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1120
.label_1119:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1120
.label_1120:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be20

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_1121
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1122
.label_1121:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1122
.label_1122:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bed0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1123
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1123:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf10

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1124
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1124:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1126
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1125
.label_1126:
	call	abort
.label_1125:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf80
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1127
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1128
.label_1127:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1128
.label_1128:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c050

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_1279:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1180
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1253]]
	jmp	rcx
.label_1798:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1797:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1193
	jmp	.label_1197
.label_1197:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1198
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1198:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1193
.label_1193:
	movabs	rax, OFFSET FLAT:label_1136
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1137
.label_1799:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1137
.label_1800:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1325
	movabs	rdi, OFFSET FLAT:label_1221
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_1224
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1325:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1231
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1251:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1235
	jmp	.label_1238
.label_1238:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1240
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1240:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1246
.label_1246:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1251
.label_1235:
	jmp	.label_1231
.label_1231:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1137
.label_1795:
	mov	byte ptr [rbp - 0x79], 1
.label_1794:
	mov	byte ptr [rbp - 0x7b], 1
.label_1796:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1262
	mov	byte ptr [rbp - 0x79], 1
.label_1262:
	jmp	.label_1157
.label_1157:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1258
	jmp	.label_1265
.label_1265:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1266
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1266:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1258
.label_1258:
	movabs	rax, OFFSET FLAT:label_1224
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1137
.label_1793:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1137
.label_1180:
	call	abort
.label_1137:
	mov	qword ptr [rbp - 0x58], 0
.label_1249:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1283
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1286
.label_1283:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1286:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1299
	jmp	.label_1233
.label_1299:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1306
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1306
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1306
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1313
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1313
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1227
.label_1313:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1227:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1306
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1306
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1330
	jmp	.label_1149
.label_1330:
	mov	byte ptr [rbp - 0x81], 1
.label_1306:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_1131
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1140]]
	jmp	rcx
.label_1652:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1141
	jmp	.label_1145
.label_1145:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1171
	jmp	.label_1149
.label_1171:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1153
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1153
	jmp	.label_1155
.label_1155:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1156
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1156:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1162
.label_1162:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1166
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1166:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1169
.label_1169:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1176
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1176:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1153:
	jmp	.label_1186
.label_1186:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1188
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1188:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1196
.label_1196:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1200
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1200
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1200
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1200
	jmp	.label_1215
.label_1215:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1217
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1217:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1223
.label_1223:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1228
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1228:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1200
.label_1200:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1245
.label_1141:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1273
	jmp	.label_1247
.label_1273:
	jmp	.label_1245
.label_1245:
	jmp	.label_1132
.label_1663:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1248
	jmp	.label_1255
.label_1255:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1256
	jmp	.label_1203
.label_1248:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1211
	jmp	.label_1149
.label_1211:
	jmp	.label_1129
.label_1256:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1239
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1239
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1239
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1268
	jmp	.label_1277
.label_1277:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1268
	jmp	.label_1281
.label_1281:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1268
	jmp	.label_1288
.label_1288:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1268
	jmp	.label_1293
.label_1293:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1294
	jmp	.label_1268
.label_1268:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1301
	jmp	.label_1149
.label_1301:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1305
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1305:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1312
.label_1312:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1315
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1315:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1318
.label_1318:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1322
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1322:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1327
.label_1327:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1326:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1329
.label_1294:
	jmp	.label_1329
.label_1329:
	jmp	.label_1239
.label_1239:
	jmp	.label_1129
.label_1203:
	jmp	.label_1129
.label_1129:
	jmp	.label_1132
.label_1653:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1133
.label_1654:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1133
.label_1658:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1133
.label_1656:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1139
.label_1659:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1139
.label_1655:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1139
.label_1657:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1133
.label_1664:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1143
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1257
	jmp	.label_1149
.label_1257:
	jmp	.label_1146
.label_1143:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1151
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1151
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1151
	jmp	.label_1146
.label_1151:
	jmp	.label_1139
.label_1139:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1161
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1161
	jmp	.label_1149
.label_1161:
	jmp	.label_1133
.label_1133:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1168
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1148
.label_1168:
	jmp	.label_1132
.label_1665:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1174
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1177
	jmp	.label_1182
.label_1174:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1177
.label_1182:
	jmp	.label_1132
.label_1177:
	jmp	.label_1185
.label_1185:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1187
	jmp	.label_1132
.label_1187:
	jmp	.label_1190
.label_1190:
	mov	byte ptr [rbp - 0x83], 1
.label_1660:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1195
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1195
	jmp	.label_1149
.label_1195:
	jmp	.label_1132
.label_1662:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1201
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1207
	jmp	.label_1149
.label_1207:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1212
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1212
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1212:
	jmp	.label_1219
.label_1219:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1209
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1209:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1225
.label_1225:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1230
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1230:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1237
.label_1237:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1243
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1243:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1201:
	jmp	.label_1132
.label_1661:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1132
.label_1131:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1275
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_1183
.label_1275:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1269
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1269:
	jmp	.label_1178
.label_1178:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_1291
	jmp	.label_1297
.label_1291:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1298
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1297
.label_1298:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1303
	mov	byte ptr [rbp - 0x91], 0
.label_1319:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1307
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1307:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1316
	jmp	.label_1317
.label_1316:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1319
.label_1317:
	jmp	.label_1297
.label_1303:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1159
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1159
	mov	qword ptr [rbp - 0xb8], 1
.label_1154:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1328
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_1164
	jmp	.label_1135
.label_1135:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1164
	jmp	.label_1194
.label_1194:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1164
	jmp	.label_1142
.label_1142:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1144
	jmp	.label_1164
.label_1164:
	jmp	.label_1149
.label_1144:
	jmp	.label_1270
.label_1270:
	jmp	.label_1278
.label_1278:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1154
.label_1328:
	jmp	.label_1159
.label_1159:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1163
	mov	byte ptr [rbp - 0x91], 0
.label_1163:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1289
.label_1289:
	jmp	.label_1172
.label_1172:
	jmp	.label_1173
.label_1173:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1178
.label_1297:
	jmp	.label_1183
.label_1183:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1184
	test	byte ptr [rbp - 0x79], 1
	je	.label_1192
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1192
.label_1184:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1276:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1202
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1202
	jmp	.label_1208
.label_1208:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1210
	jmp	.label_1149
.label_1210:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1214
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1214
	jmp	.label_1218
.label_1218:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1220
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1220:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1244
.label_1244:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1229
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1229:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1236
.label_1236:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1241
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1241:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1214:
	jmp	.label_1250
.label_1250:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1252
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1252:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1323
.label_1323:
	jmp	.label_1260
.label_1260:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1261
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1261:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1264
.label_1264:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1267
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1267:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1272
.label_1202:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1280
	jmp	.label_1282
.label_1282:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1284
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1284:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1280:
	jmp	.label_1272
.label_1272:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1296
	jmp	.label_1300
.label_1296:
	jmp	.label_1302
.label_1302:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1304
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1304
	jmp	.label_1308
.label_1308:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1309
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1309:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1311
.label_1311:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1314
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1314:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1304:
	jmp	.label_1320
.label_1320:
	jmp	.label_1321
.label_1321:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1324
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1324:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_1276
.label_1300:
	jmp	.label_1146
.label_1192:
	jmp	.label_1132
.label_1132:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1331
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1332
.label_1331:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1134
.label_1332:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1134
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_1138
.label_1134:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1138
	jmp	.label_1146
.label_1138:
	jmp	.label_1148
.label_1148:
	jmp	.label_1226
.label_1226:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1150
	jmp	.label_1149
.label_1150:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1152
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1152
	jmp	.label_1158
.label_1158:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1160
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1160:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1165
.label_1165:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1170
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1170:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1175
.label_1175:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1181
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1181:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1152:
	jmp	.label_1189
.label_1189:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1191
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1191:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1199
.label_1199:
	jmp	.label_1146
.label_1146:
	jmp	.label_1204
.label_1204:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1205
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1205
	jmp	.label_1147
.label_1147:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1213
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1213:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1216
.label_1216:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1222
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1222:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1205:
	jmp	.label_1232
.label_1232:
	jmp	.label_1234
.label_1234:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1130
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1130:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1242
	mov	byte ptr [rbp - 0x7e], 0
.label_1242:
	jmp	.label_1247
.label_1247:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1249
.label_1233:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1254
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1254
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1254
	jmp	.label_1149
.label_1254:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1259
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1259
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1259
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1263
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1271
.label_1263:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1274
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1274
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1279
.label_1274:
	jmp	.label_1179
.label_1179:
	jmp	.label_1259
.label_1259:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1285
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1285
	jmp	.label_1290
.label_1290:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1292
	jmp	.label_1295
.label_1295:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1206
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1206:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1287
.label_1287:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1290
.label_1292:
	jmp	.label_1285
.label_1285:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1310
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1310:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1271
.label_1149:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1167
	test	byte ptr [rbp - 0x79], 1
	je	.label_1167
	mov	dword ptr [rbp - 0x34], 4
.label_1167:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_1271:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d3f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d430

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1333
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1334
.label_1333:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1334
.label_1334:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1335
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1335:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d590
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1337:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1339
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1337
.label_1339:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1340
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1338]],  rax
.label_1340:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1336
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1336:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d670

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6b0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1341
	call	abort
.label_1341:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1345
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1348
	call	xalloc_die
.label_1348:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1344
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1347
.label_1344:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1347:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_1346
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1338]]
	mov	qword ptr [rax + 8], rcx
.label_1346:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_1345:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_1342
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1343
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1343:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_1342:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d930

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
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
	.align	16
	#Procedure 0x40d970
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d990
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9c0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da00

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_1349
	call	abort
.label_1349:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da70

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dab0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dae0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
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
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db10

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db90

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dbc0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dbe0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc10

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcc0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd00

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddf0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
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
	.align	16
	#Procedure 0x40de30
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de60

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de90

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40deb0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1351
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1356
.label_1351:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1352
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1350
	movabs	rax, OFFSET FLAT:label_1354
	movabs	rcx, OFFSET FLAT:label_1355
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1356
.label_1350:
	movabs	rsi, OFFSET FLAT:label_1359
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1353
	movabs	rax, OFFSET FLAT:label_1357
	movabs	rcx, OFFSET FLAT:label_1358
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1356
.label_1353:
	movabs	rax, OFFSET FLAT:label_1224
	movabs	rcx, OFFSET FLAT:label_1136
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1356:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dfb0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1360:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1367
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1363
.label_1367:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_1366
	jmp	.label_1360
.label_1366:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1364
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_1364
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1362
.label_1364:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1363
.label_1362:
	jmp	.label_1365
.label_1365:
	jmp	.label_1361
.label_1361:
	jmp	.label_1360
.label_1363:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e060
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e080
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0a0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0c0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0d0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0f0
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e110

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e130
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e160
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e170

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1a0

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1368
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1369
.label_1368:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_1372
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1369
.label_1372:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_1370
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_1370
	jmp	.label_1370
.label_1370:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_1371
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_1371
	jmp	.label_1371
.label_1371:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_1369:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e250
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_1373
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1375
.label_1373:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_1374
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_1374:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_1375:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2a0
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_1376]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2d0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1377
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1377
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_1377:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e330

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1396
	movabs	rsi, OFFSET FLAT:label_1388
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1379
.label_1396:
	movabs	rsi, OFFSET FLAT:label_1382
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1379:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1395
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_1381
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_1394
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1384]]
	jmp	rcx
.label_1748:
	jmp	.label_1383
.label_1749:
	movabs	rdi, OFFSET FLAT:label_1390
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1383
.label_1750:
	movabs	rdi, OFFSET FLAT:label_1387
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1383
.label_1751:
	movabs	rdi, OFFSET FLAT:label_1386
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1383
.label_1752:
	movabs	rdi, OFFSET FLAT:label_1380
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1383
.label_1753:
	movabs	rdi, OFFSET FLAT:label_1389
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1383
.label_1754:
	movabs	rdi, OFFSET FLAT:label_1391
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_1383
.label_1755:
	movabs	rdi, OFFSET FLAT:label_1393
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_1383
.label_1756:
	movabs	rdi, OFFSET FLAT:label_1385
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_1383
.label_1757:
	movabs	rdi, OFFSET FLAT:label_1378
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_1383
.label_1394:
	movabs	rdi, OFFSET FLAT:label_1392
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_1383:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_1399:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1397
	jmp	.label_1398
.label_1398:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1399
.label_1397:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e960

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_1403:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1400
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1405
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1404
.label_1405:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1404:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1400:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1406
	jmp	.label_1401
.label_1406:
	jmp	.label_1402
.label_1402:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1403
.label_1401:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea70

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_1407
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_1407:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ebe0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1408
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1410
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1409
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_38
	movabs	rdx, OFFSET FLAT:label_27
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1411
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec70

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_1412
	call	xalloc_die
.label_1412:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ecc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1413
	cmp	qword ptr [rbp - 8], 0
	je	.label_1413
	call	xalloc_die
.label_1413:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed00
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1414
	call	xalloc_die
.label_1414:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed50

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1415
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1415
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1417
.label_1415:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1416
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1416
	call	xalloc_die
.label_1416:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1417:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40edd0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1418
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1421
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1421:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1419
	call	xalloc_die
.label_1419:
	jmp	.label_1420
.label_1418:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1422
	call	xalloc_die
.label_1422:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1420:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eec0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eee0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef10
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef50
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_1423
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1424
.label_1423:
	call	xalloc_die
.label_1424:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40efb0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eff0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f030

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1425
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_345
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f070

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f080

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_1426
	call	xset_binary_mode_error
.label_1426:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f0b0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_1438
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1427
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1430
.label_1427:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_1434
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1440
.label_1434:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_1440:
	jmp	.label_1430
.label_1430:
	jmp	.label_1429
.label_1438:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1432
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1428
.label_1432:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_1437
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1437:
	jmp	.label_1428
.label_1428:
	jmp	.label_1429
.label_1429:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1431
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1433
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1435
.label_1433:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1435
.label_1435:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1439
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1436
.label_1439:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_1436:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_109
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_1431:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f230

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f280

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movsd	qword ptr [rbp - 0x10], xmm0
	movsd	xmm0, qword ptr [rbp - 0x10]
	call	dtotimespec
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], rdx
.label_1444:
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rax], 0
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_1445
	jmp	.label_1441
.label_1445:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1443
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1443
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1442
.label_1443:
	jmp	.label_1444
.label_1441:
	mov	dword ptr [rbp - 4], 0
.label_1442:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f310

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x31], 1
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	call	rax
	movsd	qword ptr [rbp - 0x28], xmm0
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 8]
	je	.label_1448
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1447
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1447
.label_1448:
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_1449
.label_1447:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	jne	.label_1450
	jp	.label_1450
	jmp	.label_1451
.label_1450:
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_1451
	mov	byte ptr [rbp - 0x31], 0
.label_1451:
	jmp	.label_1449
.label_1449:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1446
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1446:
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	movsd	qword ptr [rax], xmm0
	mov	cl, byte ptr [rbp - 0x31]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f3f0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1459
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1459
	jmp	.label_1461
.label_1459:
	movabs	rdi, OFFSET FLAT:label_1462
	movabs	rsi, OFFSET FLAT:label_1463
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1464
	call	__assert_fail
.label_1461:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1470
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1473
.label_1470:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1473
.label_1473:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1487:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1485
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1487
.label_1485:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1492
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1453
.label_1492:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1456
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1460
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1460
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1460
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1472
.label_1460:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1453
.label_1472:
	jmp	.label_1476
.label_1456:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1478
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1481
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1453
.label_1481:
	mov	dword ptr [rbp - 0x4c], 1
.label_1478:
	jmp	.label_1476
.label_1476:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1484
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1453
.label_1484:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1477
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1454
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1453
.label_1454:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1452
	jmp	.label_1467
.label_1467:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1452
	jmp	.label_1471
.label_1471:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1452
	jmp	.label_1475
.label_1475:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1452
	jmp	.label_1480
.label_1480:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1452
	jmp	.label_1486
.label_1486:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1452
	jmp	.label_1466
.label_1466:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1452
	jmp	.label_1489
.label_1489:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1452
	jmp	.label_1493
.label_1493:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1452
	jmp	.label_1494
.label_1494:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1452
	jmp	.label_1457
.label_1457:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1483
	jmp	.label_1452
.label_1452:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1465
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1469
	jmp	.label_1474
.label_1474:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1469
	jmp	.label_1479
.label_1479:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1488
	jmp	.label_1482
.label_1482:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1490
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1490:
	jmp	.label_1488
.label_1469:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1488:
	jmp	.label_1465
.label_1465:
	jmp	.label_1483
.label_1483:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1491
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1458]]
	jmp	rcx
.label_1745:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1736:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1746:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1455
.label_1737:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1738:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1739:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1740:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1741:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1742:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1747:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1743:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1744:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1455
.label_1491:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1453
.label_1455:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_1468
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1468:
	jmp	.label_1477
.label_1477:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1453:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9a0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_1495
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1496
.label_1495:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1496:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa00

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_1498:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1497
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1498
.label_1497:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa50

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_1519
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_1519:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_1507
	jmp	.label_1500
.label_1500:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1511
	jmp	.label_1516
.label_1507:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1518
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1525
.label_1518:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1525:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1514
.label_1511:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1512
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1524
.label_1512:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1524:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1514
.label_1516:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1499
	jmp	.label_1522
.label_1522:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1503
	jmp	.label_1527
.label_1527:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1499
	jmp	.label_1501
.label_1501:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1503
	jmp	.label_1508
.label_1508:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1499
	jmp	.label_1504
.label_1504:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1499
	jmp	.label_1509
.label_1509:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1503
	jmp	.label_1528
.label_1528:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1499
	jmp	.label_1502
.label_1502:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1503
	jmp	.label_1510
.label_1510:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1499
	jmp	.label_1515
.label_1515:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1503
	jmp	.label_1523
.label_1523:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1499
	jmp	.label_1529
.label_1529:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1499
	jmp	.label_1505
.label_1505:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1506
	jmp	.label_1503
.label_1503:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1517
.label_1499:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1520
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1526
.label_1520:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1526:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1517
.label_1506:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1521
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1513
.label_1521:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1513:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1517:
	jmp	.label_1514
.label_1514:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ff70

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ffa0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_1535
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1533
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1536
.label_1533:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1534
.label_1536:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
.label_1705:
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1532
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1532:
	jmp	.label_1534
.label_1534:
	jmp	.label_1537
.label_1535:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1537:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1530
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1530
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1538
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1531
.label_1538:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_1531:
	jmp	.label_1530
.label_1530:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4100d0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1539
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1539:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1540
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1540
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1540
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1541
.label_1540:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1541:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410180

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jl	.label_1542
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1548
.label_1542:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1544
.label_1548:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1543:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1545
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, 0x1fa400
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1547
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1546
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_1546:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1544
.label_1547:
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1543
.label_1545:
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_1544:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410280

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410290

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4102a0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_1550
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1549
.label_1550:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_1549:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4102f0
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410330
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410370
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103a0
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103d0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410420

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410470
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4104b0
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4104f0
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410530
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410570

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_1551
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1555
.label_1551:
	jmp	.label_1552
.label_1552:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_1554
	jmp	.label_1553
.label_1554:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1552
.label_1553:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1555:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410630

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1557
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1556
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_1556:
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1558
.label_1557:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 8], xmm0
.label_1558:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106b0

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_1559
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:label_1560
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_1559:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106f0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_1561
	test	byte ptr [rbp - 0x13], 1
	je	.label_1562
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1561
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1562
.label_1561:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1563
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1563:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1564
.label_1562:
	mov	dword ptr [rbp - 4], 0
.label_1564:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107a0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movsd	xmm1,  qword ptr [word ptr [rip + label_1565]]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	ucomisd	xmm0, xmm1
	ja	.label_1566
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_1570
.label_1566:
	movsd	xmm0,  qword ptr [word ptr [rip + label_1567]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_1568
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_1570
.label_1568:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movsd	xmm0,  qword ptr [word ptr [rip + label_1376]]
	cvttsd2si	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	movsd	xmm1, qword ptr [rbp - 0x18]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x20]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x28], xmm0
	cvttsd2si	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	seta	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1569
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x30], rax
.label_1569:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
.label_1570:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4108f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1571
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1560
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1574
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1572
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1573
.label_1574:
	mov	byte ptr [rbp - 5], 0
.label_1573:
	jmp	.label_1571
.label_1571:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410970

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1575
	movabs	rax, OFFSET FLAT:label_35
	mov	qword ptr [rbp - 8], rax
.label_1575:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1576
	movabs	rax, OFFSET FLAT:label_1577
	mov	qword ptr [rbp - 8], rax
.label_1576:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109d0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_1578
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1581
.label_1578:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1579
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1580
.label_1579:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1580
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1580:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1582
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1582:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1581:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ad0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1583
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1584
.label_1583:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1585
.label_1584:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1585:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b30

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1586
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1586:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b70

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1587
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1587
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1587
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1589
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1588
.label_1589:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1588
.label_1587:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1588:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c40

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_1590
	jmp	.label_1592
.label_1592:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1591
.label_1590:
	jmp	.label_1591
.label_1591:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c90
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
	jb	.label_1593
	jmp	.label_1596
.label_1596:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1593
	jmp	.label_1594
.label_1594:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1595
	jmp	.label_1593
.label_1593:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1597
.label_1595:
	mov	byte ptr [rbp - 1], 0
.label_1597:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d00
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
	jb	.label_1598
	jmp	.label_1601
.label_1601:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1599
	jmp	.label_1598
.label_1598:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1600
.label_1599:
	mov	byte ptr [rbp - 1], 0
.label_1600:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d50
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1602
	jmp	.label_1603
.label_1603:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1604
.label_1602:
	mov	byte ptr [rbp - 1], 0
.label_1604:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d80
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1605
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1605:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410db0
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
	jb	.label_1606
	jmp	.label_1608
.label_1608:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1609
	jmp	.label_1606
.label_1606:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1607
.label_1609:
	mov	byte ptr [rbp - 1], 0
.label_1607:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e00
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1610
	jmp	.label_1612
.label_1612:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1611
.label_1610:
	mov	byte ptr [rbp - 1], 0
.label_1611:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1613
	jmp	.label_1615
.label_1615:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1614
.label_1613:
	mov	byte ptr [rbp - 1], 0
.label_1614:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e80
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1616
	jmp	.label_1618
.label_1618:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1617
.label_1616:
	mov	byte ptr [rbp - 1], 0
.label_1617:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ec0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1619
	jmp	.label_1621
.label_1621:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1620
.label_1619:
	mov	byte ptr [rbp - 1], 0
.label_1620:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f00
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_1622
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1624]]
	jmp	rcx
.label_1789:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1623
.label_1622:
	mov	byte ptr [rbp - 1], 0
.label_1623:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f50
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
	jb	.label_1625
	jmp	.label_1628
.label_1628:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1627
	jmp	.label_1625
.label_1625:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1626
.label_1627:
	mov	byte ptr [rbp - 1], 0
.label_1626:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fa0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1629
	jmp	.label_1631
.label_1631:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1630
.label_1629:
	mov	byte ptr [rbp - 1], 0
.label_1630:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fe0
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
	jb	.label_1632
	jmp	.label_1634
.label_1634:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1632
	jmp	.label_1633
.label_1633:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1635
	jmp	.label_1632
.label_1632:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1636
.label_1635:
	mov	byte ptr [rbp - 1], 0
.label_1636:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411050

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1637
	jmp	.label_1639
.label_1639:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1638
.label_1637:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1638:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411090
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1640
	jmp	.label_1642
.label_1642:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1641
.label_1640:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1641:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411180

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x411190

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
