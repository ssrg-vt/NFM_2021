	.section	.text
	.align	16
	#Procedure 0x401bb0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
	jmp	.label_7
.label_7:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_9
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	esi, 0xa
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	esi, 0xa
	mov	edx, 5
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401dd0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.23
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
	#Procedure 0x401e00

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.24
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
	#Procedure 0x401e30

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
.label_12:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_11
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_10
	jmp	.label_13
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_12
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_14
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_14:
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
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
	je	.label_15
	movabs	rsi, OFFSET FLAT:.str.36
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_15
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.39
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.40
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
	#Procedure 0x401fd0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1d0
	movsd	xmm0,  qword ptr [word ptr [label_50]]
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
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.15
	movabs	rsi, OFFSET FLAT:.str.16
	mov	qword ptr [rbp - 0x190], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.15
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
	je	.label_17
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_21
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_21:
	jmp	.label_17
.label_17:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_29
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_38
.label_29:
	movabs	rax, OFFSET FLAT:main.dummy_stdin
	mov	qword ptr [rbp - 0x28], 1
	mov	qword ptr [rbp - 0x30], rax
.label_38:
	mov	byte ptr [rbp - 0x51], 0
	mov	qword ptr [rbp - 0x40], 0
.label_46:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_39
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_44
	mov	byte ptr [rbp - 0x51], 1
.label_44:
	jmp	.label_45
.label_45:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_46
.label_39:
	test	byte ptr [rbp - 0x51], 1
	je	.label_20
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_20
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.17_0
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_20:
	test	byte ptr [byte ptr [forever]],  1
	je	.label_23
	test	byte ptr [rbp - 0x51], 1
	je	.label_23
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_32
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_32
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 1
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_32
	xor	edi, edi
	lea	rsi, [rbp - 0xe8]
	call	__fstat
	xor	edi, edi
	mov	cl, dil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_32
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x1b1], cl
.label_32:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	test	byte ptr [rbp - 0xe9], 1
	jne	.label_48
	xor	edi, edi
	call	isatty
	cmp	eax, 0
	je	.label_48
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_48:
	jmp	.label_23
.label_23:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_25
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_25
	test	byte ptr [byte ptr [from_start]],  1
	jne	.label_25
	mov	dword ptr [rbp - 4], 0
	jmp	.label_18
.label_25:
	mov	eax, 0x60
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	xnmalloc
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
.label_51:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_36
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
	jmp	.label_51
.label_36:
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_43
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_24
	cmp	qword ptr [rbp - 0x28], 1
	jbe	.label_24
.label_43:
	mov	byte ptr [byte ptr [print_headers]],  1
.label_24:
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	qword ptr [rbp - 0x40], 0
.label_28:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_52
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
	jmp	.label_28
.label_52:
	test	byte ptr [byte ptr [forever]],  1
	je	.label_30
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	ignore_fifo_and_pipe
	cmp	rax, 0
	je	.label_30
	mov	edi, 1
	lea	rsi, [rbp - 0x180]
	call	__fstat
	cmp	eax, 0
	jge	.label_35
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.20
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_35:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x168]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	mov	byte ptr [rbp - 0x1b9], al
	je	.label_42
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x1b9], cl
	jmp	.label_42
.label_42:
	mov	al, byte ptr [rbp - 0x1b9]
	and	al, 1
	mov	byte ptr [byte ptr [monitor_output]],  al
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_26
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	tailable_stdin
	test	al, 1
	jne	.label_19
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_remote_file
	test	al, 1
	jne	.label_19
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_non_remote_file
	test	al, 1
	jne	.label_27
	jmp	.label_19
.label_27:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_symlinks
	test	al, 1
	jne	.label_19
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_non_regular_fifo
	test	al, 1
	jne	.label_19
	test	byte ptr [rbp - 0x15], 1
	jne	.label_26
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_26
.label_19:
	mov	byte ptr [byte ptr [disable_inotify]],  1
.label_26:
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_31
	call	inotify_init
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x184], eax
	cmp	ecx, dword ptr [rbp - 0x184]
	jg	.label_22
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_40
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_40:
	mov	edi, dword ptr [rbp - 0x184]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	movsd	xmm0, qword ptr [rbp - 0x50]
	call	tail_forever_inotify
	test	al, 1
	jne	.label_16
	mov	dword ptr [rbp - 4], 1
	jmp	.label_18
.label_16:
	jmp	.label_22
.label_22:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.22
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 0x40], 0
.label_49:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_33
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x44], -1
	je	.label_34
	mov	edi, dword ptr [rbp - 0x184]
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	dword ptr [rbp - 0x1c8], eax
.label_34:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x48], -1
	je	.label_41
	mov	edi, dword ptr [rbp - 0x184]
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x48]
	call	inotify_rm_watch
	mov	dword ptr [rbp - 0x1cc], eax
.label_41:
	jmp	.label_47
.label_47:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_49
.label_33:
	jmp	.label_31
.label_31:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	movsd	xmm0, qword ptr [rbp - 0x50]
	call	tail_forever
.label_30:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_37
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_37
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.17_0
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_37:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_18:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402760

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
	je	.label_59
	cmp	dword ptr [rbp - 8], 3
	jne	.label_56
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_59
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_59
.label_56:
	mov	eax, 3
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_68
	cmp	dword ptr [rbp - 8], 4
	jg	.label_68
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x10]
	mov	ecx, OFFSET FLAT:.str.41
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_59
.label_68:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_58
.label_59:
	call	posix2_version
	mov	cl, 1
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0x30db0
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x3d], dl
	test	byte ptr [rbp - 0x3d], 1
	mov	byte ptr [rbp - 0x3f], cl
	jne	.label_53
	mov	eax, 0x31069
	cmp	eax, dword ptr [rbp - 0x3c]
	setle	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_53:
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
	je	.label_65
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_75
	jmp	.label_72
.label_72:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_58
.label_65:
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_54
	mov	byte ptr [rbp - 1], 0
	jmp	.label_58
.label_54:
	mov	byte ptr [rbp - 0x35], 1
	jmp	.label_60
.label_75:
	test	byte ptr [rbp - 0x3d], 1
	jne	.label_61
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_61
	mov	byte ptr [rbp - 1], 0
	jmp	.label_58
.label_61:
	mov	byte ptr [rbp - 0x35], 0
.label_60:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_77:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_74
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_77
.label_74:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x62
	mov	dword ptr [rbp - 0x50], ecx
	mov	dword ptr [rbp - 0x54], edx
	je	.label_55
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_64
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_69
	jmp	.label_70
.label_55:
	mov	eax, dword ptr [rbp - 0x34]
	shl	eax, 9
	mov	dword ptr [rbp - 0x34], eax
.label_64:
	mov	byte ptr [rbp - 0x36], 0
.label_69:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_70:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jne	.label_76
	mov	byte ptr [rbp - 0x37], 1
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_76:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_57
	mov	byte ptr [rbp - 1], 0
	jmp	.label_58
.label_57:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_62
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_66
.label_62:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	r8, OFFSET FLAT:.str.42
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	and	eax, 0xfffffffd
	cmp	eax, 0
	je	.label_71
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.44
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, rax
	mov	al, 0
	call	error
.label_71:
	jmp	.label_66
.label_66:
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
.label_58:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a80

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
.label_129:
	movabs	rdx, OFFSET FLAT:.str.45
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, -1
	je	.label_120
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_124
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x44], eax
	je	.label_126
	jmp	.label_128
.label_128:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_78
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_83
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x50], eax
	je	.label_87
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x54], eax
	je	.label_100
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x58], eax
	je	.label_87
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_103
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x60], eax
	je	.label_105
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x64], eax
	je	.label_111
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x68], eax
	je	.label_113
	jmp	.label_115
.label_115:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_122
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x70], eax
	je	.label_123
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x74], eax
	je	.label_125
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x78], eax
	je	.label_114
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_100
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x80], eax
	je	.label_85
	jmp	.label_88
.label_83:
	mov	byte ptr [byte ptr [forever]],  1
	mov	dword ptr [dword ptr [follow_mode]],  1
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_80
.label_87:
	cmp	dword ptr [rbp - 0x2c], 0x6e
	sete	al
	and	al, 1
	mov	byte ptr [byte ptr [count_lines]],  al
	mov	rcx,  qword ptr [word ptr [optarg]]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	jne	.label_99
	mov	byte ptr [byte ptr [from_start]],  1
	jmp	.label_90
.label_99:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_110
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_110:
	jmp	.label_90
.label_90:
	mov	rdi,  qword ptr [word ptr [optarg]]
	test	byte ptr [byte ptr [count_lines]],  1
	mov	qword ptr [rbp - 0x88], rdi
	je	.label_118
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_102
.label_118:
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_102:
	mov	rax, qword ptr [rbp - 0x90]
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str.46
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_80
.label_100:
	mov	byte ptr [byte ptr [forever]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_91
	mov	dword ptr [dword ptr [follow_mode]],  2
	jmp	.label_97
.label_91:
	movabs	rdi, OFFSET FLAT:.str.49
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
.label_97:
	jmp	.label_80
.label_122:
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_80
.label_123:
	movabs	rdi, OFFSET FLAT:.str.50
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [max_n_unchanged_stats_between_opens]],  rax
	jmp	.label_80
.label_85:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	jmp	.label_80
.label_125:
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 0x7fffffff
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	dword ptr [dword ptr [pid]],  r9d
	jmp	.label_80
.label_114:
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	jmp	.label_80
.label_103:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 2
	jmp	.label_80
.label_105:
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:cl_strtod
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtod
	test	al, 1
	jne	.label_117
	jmp	.label_119
.label_117:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x38]
	ucomisd	xmm1, xmm0
	jae	.label_121
.label_119:
	movabs	rdi, OFFSET FLAT:.str.52
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
.label_121:
	movsd	xmm0, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	movsd	qword ptr [rax], xmm0
	jmp	.label_80
.label_111:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 1
	jmp	.label_80
.label_113:
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_80
.label_126:
	xor	edi, edi
	call	usage
.label_124:
	movabs	rsi, OFFSET FLAT:.str.13
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.53
	movabs	r9, OFFSET FLAT:.str.54
	movabs	rax, OFFSET FLAT:.str.55
	movabs	rcx, OFFSET FLAT:.str.56
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
.label_78:
	movabs	rdi, OFFSET FLAT:.str.57
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_88:
	mov	edi, 1
	call	usage
.label_80:
	jmp	.label_129
.label_120:
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_79
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_81
	movabs	rdi, OFFSET FLAT:.str.58
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_93
.label_81:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_94
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_94:
	jmp	.label_93
.label_93:
	jmp	.label_79
.label_79:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_106
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_106
	movabs	rdi, OFFSET FLAT:.str.60
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_116
.label_106:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_107
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	cmp	eax, 0
	je	.label_107
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_107
	movabs	rdi, OFFSET FLAT:.str.61
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [pid]],  0
.label_107:
	jmp	.label_116
.label_116:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403130

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
	mov	eax, OFFSET FLAT:.str.17_0
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	test	byte ptr [rbp - 0x16], 1
	je	.label_144
	xor	eax, eax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	dword ptr [rbp - 0x14], 0
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	jmp	.label_132
.label_144:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x14], eax
.label_132:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xb1], cl
	je	.label_136
	cmp	dword ptr [rbp - 0x14], -1
	sete	al
	mov	byte ptr [rbp - 0xb1], al
.label_136:
	mov	al, byte ptr [rbp - 0xb1]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_141
	test	byte ptr [byte ptr [forever]],  1
	je	.label_145
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
.label_145:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.79
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
	jmp	.label_131
.label_141:
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_133
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	mov	rdi, rax
	call	write_header
.label_133:
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
	je	.label_142
	lea	rsi, [rbp - 0xb0]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	sub	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x3c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	call	__fstat
	cmp	eax, 0
	jge	.label_146
	mov	byte ptr [rbp - 0x15], 0
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_139
.label_146:
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_135
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_135
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_135
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_135
	movabs	rdi, OFFSET FLAT:.str.81
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
	je	.label_138
	movabs	rdi, OFFSET FLAT:.str.82
	call	gettext
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_130
.label_138:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 0xe8]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_135:
	jmp	.label_139
.label_139:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_134
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
	jmp	.label_143
.label_134:
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
.label_143:
	jmp	.label_137
.label_142:
	test	byte ptr [rbp - 0x16], 1
	jne	.label_140
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	cmp	eax, 0
	je	.label_140
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
.label_140:
	jmp	.label_137
.label_137:
	jmp	.label_131
.label_131:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035d0

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
.label_152:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_148
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	eax, OFFSET FLAT:.str.17_0
	mov	esi, eax
	mov	byte ptr [rbp - 0x22], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x23], cl
	jne	.label_147
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x34], 1
	mov	byte ptr [rbp - 0x23], cl
	jne	.label_147
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x38]
	mov	byte ptr [rbp - 0x23], cl
	jg	.label_147
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x30]
	and	edx, 0xf000
	cmp	edx, 0x1000
	mov	byte ptr [rbp - 0x24], al
	je	.label_151
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x24], cl
	jmp	.label_151
.label_151:
	mov	al, byte ptr [rbp - 0x24]
	mov	byte ptr [rbp - 0x23], al
.label_147:
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	je	.label_149
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_153
.label_149:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_153:
	jmp	.label_150
.label_150:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_152
.label_148:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_158:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_156
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_155
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.17_0
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_155
	mov	byte ptr [rbp - 1], 1
	jmp	.label_154
.label_155:
	jmp	.label_157
.label_157:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_158
.label_156:
	mov	byte ptr [rbp - 1], 0
.label_154:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037b0

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_162:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_160
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_159
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	je	.label_159
	mov	byte ptr [rbp - 1], 1
	jmp	.label_163
.label_159:
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_162
.label_160:
	mov	byte ptr [rbp - 1], 0
.label_163:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403830

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_167:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_165
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_164
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	jne	.label_164
	mov	byte ptr [rbp - 1], 1
	jmp	.label_168
.label_164:
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_167
.label_165:
	mov	byte ptr [rbp - 1], 0
.label_168:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038b0

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xb0], 0
.label_171:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_173
	lea	rsi, [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	__lstat
	cmp	eax, 0
	jne	.label_169
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_169
	mov	byte ptr [rbp - 1], 1
	jmp	.label_172
.label_169:
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_171
.label_173:
	mov	byte ptr [rbp - 1], 0
.label_172:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_175:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_177
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_174
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_174
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	je	.label_174
	mov	byte ptr [rbp - 1], 1
	jmp	.label_178
.label_174:
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_175
.label_177:
	mov	byte ptr [rbp - 1], 0
.label_178:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a10

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
	jne	.label_206
	call	xalloc_die
.label_206:
	mov	dword ptr [rbp - 0x64], 2
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_210
	mov	eax, dword ptr [rbp - 0x64]
	or	eax, 0xc04
	mov	dword ptr [rbp - 0x64], eax
.label_210:
	mov	qword ptr [rbp - 0x70], 0
.label_196:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_216
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_220
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_230
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
.label_230:
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_226
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
	je	.label_242
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x260], rax
	jmp	.label_262
.label_242:
	movabs	rax, OFFSET FLAT:.str.96
	mov	qword ptr [rbp - 0x260], rax
	jmp	.label_262
.label_262:
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
	jge	.label_189
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_203
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.97
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
	jmp	.label_214
.label_203:
	movabs	rdi, OFFSET FLAT:.str.98
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_214:
	mov	byte ptr [rbp - 0x33], 1
	jmp	.label_216
.label_189:
	jmp	.label_226
.label_226:
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
	jge	.label_231
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_241
	mov	byte ptr [rbp - 0x32], 1
.label_241:
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_244
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_247
.label_244:
	movabs	rdi, OFFSET FLAT:.str.98
	mov	byte ptr [rbp - 0x34], 1
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_216
.label_247:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x3c]
	je	.label_254
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.99
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
	jmp	.label_181
.label_181:
	jmp	.label_183
.label_231:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_191
	call	xalloc_die
.label_191:
	mov	byte ptr [rbp - 0x31], 1
.label_220:
	jmp	.label_183
.label_183:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_196
.label_216:
	test	byte ptr [rbp - 0x34], 1
	jne	.label_198
	test	byte ptr [rbp - 0x33], 1
	jne	.label_198
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_201
	test	byte ptr [rbp - 0x32], 1
	je	.label_201
.label_198:
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_180
.label_201:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_207
	test	byte ptr [rbp - 0x31], 1
	jne	.label_207
	mov	byte ptr [rbp - 1], 0
	jmp	.label_180
.label_207:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x70], 0
.label_194:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_218
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_221
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_248
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	recheck
	jmp	.label_186
.label_248:
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_184
	lea	rsi, [rbp - 0x118]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	stat
	cmp	eax, 0
	jne	.label_185
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_245
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x110]
	je	.label_185
.label_245:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.100
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
	jmp	.label_180
.label_185:
	jmp	.label_184
.label_184:
	jmp	.label_186
.label_186:
	lea	rsi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	check_fspec
.label_221:
	jmp	.label_193
.label_193:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_194
.label_218:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x11
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
.label_228:
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_199
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jne	.label_199
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_199
	movabs	rdi, OFFSET FLAT:.str.101
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_180
.label_199:
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_212
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_215
	test	byte ptr [rbp - 0x35], 1
	je	.label_219
	xor	edi, edi
	call	exit
.label_219:
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x291], cl
	je	.label_227
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x291], cl
.label_227:
	mov	al, byte ptr [rbp - 0x291]
	and	al, 1
	mov	byte ptr [rbp - 0x35], al
	test	byte ptr [rbp - 0x35], 1
	je	.label_234
	mov	qword ptr [rbp - 0x138], 0
	mov	qword ptr [rbp - 0x140], 0
	jmp	.label_239
.label_234:
	movsd	xmm0,  qword ptr [word ptr [label_243]]
	cvttsd2si	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x140], rax
	movsd	xmm1, qword ptr [rbp - 0x20]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x140]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	mov	qword ptr [rbp - 0x138], rax
.label_239:
	jmp	.label_215
.label_215:
	jmp	.label_253
.label_253:
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
	je	.label_257
	mov	rax, qword ptr [rbp - 0x1c0]
	or	rax, 2
	mov	qword ptr [rbp - 0x1c0], rax
.label_257:
	cmp	dword ptr [rbp - 8], 1
	jle	.label_250
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_197
.label_250:
	mov	eax, 1
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0x2b4]
	add	eax, 1
	cmp	dword ptr [dword ptr [pid]],  0
	mov	dword ptr [rbp - 0x2b8], eax
	je	.label_200
	lea	rax, [rbp - 0x140]
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_204
.label_200:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2c0], rcx
	jmp	.label_204
.label_204:
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
	jne	.label_217
	jmp	.label_211
.label_217:
	cmp	dword ptr [rbp - 0x1cc], -1
	jne	.label_222
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.102
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2cc], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x2cc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_222:
	mov	rax, qword ptr [rbp - 0x1c0]
	and	rax, 2
	cmp	rax, 0
	je	.label_236
	call	die_pipe
.label_236:
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_187
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	call	safe_read
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_246
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_209
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_209
.label_246:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x24], ecx
	cmp	eax, 0
	je	.label_209
	mov	qword ptr [rbp - 0x60], 0
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x48]
	call	xrealloc
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_228
.label_209:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_261
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_263
.label_261:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.103
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x2d0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_263:
	jmp	.label_187
.label_187:
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
	je	.label_188
	mov	rax, qword ptr [rbp - 0x128]
	cmp	dword ptr [rax + 0xc], 0
	jne	.label_188
	mov	qword ptr [rbp - 0x70], 0
.label_225:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_205
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x48]
	jne	.label_255
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	movabs	rdi, OFFSET FLAT:.str.104
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
	jmp	.label_180
.label_255:
	jmp	.label_223
.label_223:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_225
.label_205:
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	dword ptr [rax + 0xc], 0
	je	.label_195
	mov	qword ptr [rbp - 0x1d8], 0
.label_256:
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_235
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x128]
	cmp	ecx, dword ptr [rax]
	jne	.label_240
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
	jne	.label_240
	jmp	.label_235
.label_240:
	jmp	.label_259
.label_259:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	jmp	.label_256
.label_235:
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_258
	jmp	.label_228
.label_258:
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
	jne	.label_260
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 0x64]
	call	inotify_add_watch
	mov	dword ptr [rbp - 0x1dc], eax
.label_260:
	test	byte ptr [rbp - 0x1dd], 1
	jne	.label_192
	cmp	dword ptr [rbp - 0x1dc], 0
	jge	.label_192
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_202
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_238
.label_202:
	movabs	rdi, OFFSET FLAT:.str.98
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
	jmp	.label_180
.label_238:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.99
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
	jmp	.label_192
.label_192:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1dd], 1
	mov	byte ptr [rbp - 0x2e1], cl
	jne	.label_232
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	dword ptr [rcx + 0x44], 0
	mov	byte ptr [rbp - 0x2e2], al
	jl	.label_237
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	eax, dword ptr [rcx + 0x44]
	setne	dl
	mov	byte ptr [rbp - 0x2e2], dl
.label_237:
	mov	al, byte ptr [rbp - 0x2e2]
	mov	byte ptr [rbp - 0x2e1], al
.label_232:
	mov	al, byte ptr [rbp - 0x2e1]
	and	al, 1
	mov	byte ptr [rbp - 0x1de], al
	test	byte ptr [rbp - 0x1de], 1
	je	.label_249
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	eax, dword ptr [rcx + 0x44]
	jg	.label_252
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
.label_252:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	dword ptr [rcx + 0x44], eax
	cmp	dword ptr [rbp - 0x1dc], -1
	jne	.label_182
	jmp	.label_228
.label_182:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_179
	mov	rax, qword ptr [rbp - 0x1e8]
	cmp	rax, qword ptr [rbp - 0x120]
	je	.label_179
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_190
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	recheck
.label_190:
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
.label_179:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_251
	call	xalloc_die
.label_251:
	jmp	.label_249
.label_249:
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_208
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	call	recheck
.label_208:
	jmp	.label_213
.label_195:
	lea	rax, [rbp - 0x248]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	edx, dword ptr [rcx]
	mov	dword ptr [rbp - 0x204], edx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x120], rax
.label_213:
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_224
	jmp	.label_228
.label_224:
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xe04
	cmp	ecx, 0
	je	.label_229
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_233
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
.label_233:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	call	recheck
	jmp	.label_228
.label_229:
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x120]
	call	check_fspec
	jmp	.label_228
.label_180:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x300
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049b0

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
	jne	.label_265
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_265
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 1
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_265
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 0x38], -1
	mov	byte ptr [rbp - 0x119], cl
	je	.label_265
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x119], dl
.label_265:
	mov	al, byte ptr [rbp - 0x119]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	byte ptr [rbp - 0x29], 0
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
.label_289:
	mov	byte ptr [rbp - 0x39], 0
	mov	qword ptr [rbp - 0x38], 0
.label_271:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_283
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_286
	jmp	.label_264
.label_286:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	jge	.label_291
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x19]
	and	cl, 1
	mov	rdi, rax
	movzx	esi, cl
	call	recheck
	jmp	.label_264
.label_291:
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
	je	.label_276
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
	jl	.label_272
	mov	eax, dword ptr [rbp - 0xf0]
	cmp	eax, dword ptr [rbp - 0xec]
	je	.label_279
	mov	esi, 4
	mov	edi, dword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0xf0]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_279
.label_272:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_292
	call	__errno_location
	cmp	dword ptr [rax], 1
	jne	.label_292
	jmp	.label_293
.label_292:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.116
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
.label_293:
	jmp	.label_268
.label_279:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x40], ecx
.label_268:
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x40], 0
	jne	.label_273
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 0x40]
	call	__fstat
	cmp	eax, 0
	je	.label_295
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
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rbp - 0x12c]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	mov	dword ptr [rbp - 0x130], eax
	jmp	.label_264
.label_295:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	cmp	ecx, dword ptr [rbp - 0xc8]
	jne	.label_266
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_296
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_266
.label_296:
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
	jne	.label_266
	mov	rax,  qword ptr [word ptr [max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x58], rsi
	cmp	rax, rdx
	ja	.label_288
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_288
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
.label_288:
	jmp	.label_264
.label_266:
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
	jne	.label_270
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_270
	movabs	rdi, OFFSET FLAT:.str.115
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
.label_270:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_280
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_269
	mov	rdi, qword ptr [rbp - 0x48]
	call	write_header
.label_269:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_280:
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x40], 0
	je	.label_274
	mov	qword ptr [rbp - 0x118], -2
	jmp	.label_277
.label_274:
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_282
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_281
.label_282:
	mov	qword ptr [rbp - 0x118], -1
.label_281:
	jmp	.label_277
.label_277:
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
.label_264:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_271
.label_283:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	any_live_files
	test	al, 1
	jne	.label_275
	movabs	rdi, OFFSET FLAT:.str.101
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_284
.label_275:
	test	byte ptr [rbp - 0x39], 1
	je	.label_285
	test	byte ptr [rbp - 0x19], 1
	je	.label_287
.label_285:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_287
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_287:
	call	check_output_alive
	test	byte ptr [rbp - 0x39], 1
	jne	.label_290
	test	byte ptr [rbp - 0x29], 1
	je	.label_294
	jmp	.label_284
.label_294:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x155], cl
	je	.label_267
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x155], cl
	je	.label_267
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x155], cl
.label_267:
	mov	al, byte ptr [rbp - 0x155]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_278
	movsd	xmm0, qword ptr [rbp - 0x18]
	call	xnanosleep
	cmp	eax, 0
	je	.label_278
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.117
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x15c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_278:
	jmp	.label_290
.label_290:
	jmp	.label_289
.label_284:
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051b0

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	eax, OFFSET FLAT:.str.17_0
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_298
	movabs	rdi, OFFSET FLAT:.str.83
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_297
.label_298:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_297:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl write_header
	.type write_header, @function
write_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:.str.84
	movabs	rcx, OFFSET FLAT:.str.85
	movabs	rdx, OFFSET FLAT:.str_0
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
	#Procedure 0x405270

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
	je	.label_299
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	tail_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_300
.label_299:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	tail_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_300:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl close_fd
	.type close_fd, @function
close_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 4], -1
	je	.label_301
	cmp	dword ptr [rbp - 4], 0
	je	.label_301
	mov	edi, dword ptr [rbp - 4]
	call	close
	cmp	eax, 0
	je	.label_301
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.93
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
.label_301:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405370

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
	#Procedure 0x405420

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
	je	.label_304
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_302
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.94
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
.label_302:
	jmp	.label_309
.label_304:
	mov	rdi, qword ptr [rbp - 0x90]
	call	is_local_fs_type
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_303
	jmp	.label_308
.label_308:
	mov	eax, dword ptr [rbp - 0xa4]
	test	eax, eax
	je	.label_310
	jmp	.label_306
.label_306:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 1
	mov	dword ptr [rbp - 0xac], eax
	je	.label_311
	jmp	.label_307
.label_310:
	jmp	.label_305
.label_303:
	jmp	.label_305
.label_311:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_305
.label_307:
	movabs	rdi, OFFSET FLAT:.str.95
	movabs	rsi, OFFSET FLAT:.str.92
	mov	edx, 0x3c9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.fremote
	call	__assert_fail
.label_305:
	jmp	.label_309
.label_309:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405560

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
	call	__fstat
	cmp	eax, 0
	je	.label_316
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.86
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
	jmp	.label_317
.label_316:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_318
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_lines
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	je	.label_315
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_317
.label_315:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	jmp	.label_313
.label_318:
	mov	qword ptr [rbp - 0xc8], -1
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_312
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_312
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	call	lseek
	mov	qword ptr [rbp - 0xc8], rax
	cmp	rax, -1
	je	.label_312
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
	jge	.label_312
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_314
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xd0]
	mov	r9, qword ptr [rbp - 0x28]
	call	file_lines
	test	al, 1
	jne	.label_314
	mov	byte ptr [rbp - 1], 0
	jmp	.label_317
.label_314:
	jmp	.label_319
.label_312:
	cmp	qword ptr [rbp - 0xc8], -1
	je	.label_320
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0xf0], rax
.label_320:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pipe_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_317
.label_319:
	jmp	.label_313
.label_313:
	mov	byte ptr [rbp - 1], 1
.label_317:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057a0

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
	call	__fstat
	cmp	eax, 0
	je	.label_330
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.86
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
	jmp	.label_326
.label_330:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_327
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_325
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_325
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_335
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	cmp	rax, 0
	jge	.label_321
.label_335:
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lseek
	cmp	rax, -1
	je	.label_325
.label_321:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	jmp	.label_338
.label_325:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_bytes
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	je	.label_333
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_326
.label_333:
	jmp	.label_338
.label_338:
	mov	qword ptr [rbp - 0x20], -1
	jmp	.label_340
.label_327:
	mov	qword ptr [rbp - 0xc8], -1
	mov	qword ptr [rbp - 0xd0], -1
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_323
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_323
	lea	rdi, [rbp - 0xb8]
	call	usable_st_size
	test	al, 1
	jne	.label_332
	jmp	.label_334
.label_332:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_336
.label_334:
	mov	edx, 2
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x14]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	call	lseek
	mov	qword ptr [rbp - 0xd0], rax
	cmp	rax, -1
	je	.label_322
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc8], rax
.label_322:
	jmp	.label_336
.label_336:
	jmp	.label_323
.label_323:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf0], rdx
	jge	.label_328
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_328
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_337
.label_328:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf8], rcx
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xf0]
	cmp	rcx, rax
	jg	.label_324
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pipe_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_326
.label_324:
	cmp	qword ptr [rbp - 0xd0], -1
	jne	.label_329
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0xd0], rax
.label_329:
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_331
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_339
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0x100], rax
.label_339:
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_340:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_326:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b10

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
	jne	.label_349
	mov	dword ptr [rbp - 4], 0
	jmp	.label_343
.label_349:
	jmp	.label_341
.label_341:
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_344
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_343
.label_344:
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_348
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_343
.label_348:
	lea	rax, [rbp - 0x2030]
	mov	rcx, rax
	add	rcx, qword ptr [rbp - 0x2038]
	mov	qword ptr [rbp - 0x2040], rcx
	mov	rcx, qword ptr [rbp - 0x2038]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rdx], rcx
	mov	qword ptr [rbp - 0x2048], rax
.label_346:
	mov	rdi, qword ptr [rbp - 0x2048]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x2048], rax
	cmp	rax, 0
	je	.label_347
	mov	rax, qword ptr [rbp - 0x2048]
	add	rax, 1
	mov	qword ptr [rbp - 0x2048], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_342
	mov	rax, qword ptr [rbp - 0x2048]
	cmp	rax, qword ptr [rbp - 0x2040]
	jae	.label_345
	mov	rdi, qword ptr [rbp - 0x2048]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
.label_345:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_343
.label_342:
	jmp	.label_346
.label_347:
	jmp	.label_341
.label_343:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd0

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
.label_354:
	cmp	qword ptr [rbp - 0x30], 0x2000
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2048], rax
	jmp	.label_353
.label_360:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2048], rcx
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x2048]
	lea	rsi, [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2038], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2038]
	call	safe_read
	mov	qword ptr [rbp - 0x2040], rax
	cmp	qword ptr [rbp - 0x2040], -1
	jne	.label_355
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_358
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
.label_358:
	jmp	.label_350
.label_355:
	cmp	qword ptr [rbp - 0x2040], 0
	jne	.label_352
	jmp	.label_350
.label_352:
	test	byte ptr [rbp - 1], 1
	je	.label_356
	mov	rdi, qword ptr [rbp - 0x10]
	call	write_header
	mov	byte ptr [rbp - 1], 0
.label_356:
	lea	rdi, [rbp - 0x2030]
	mov	rsi, qword ptr [rbp - 0x2040]
	call	xwrite_stdout
	mov	rsi, qword ptr [rbp - 0x2040]
	add	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_351
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_357
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_359
.label_357:
	jmp	.label_350
.label_359:
	jmp	.label_351
.label_351:
	jmp	.label_354
.label_350:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x2060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e70

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
	jne	.label_369
	mov	byte ptr [rbp - 1], 1
	jmp	.label_364
.label_369:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x2050]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x2048], rdx
	cmp	qword ptr [rbp - 0x2048], 0
	jne	.label_367
	mov	qword ptr [rbp - 0x2048], 0x2000
.label_367:
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
	jne	.label_370
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_364
.label_370:
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2048], 0
	je	.label_361
	mov	rax, qword ptr [rbp - 0x2048]
	sub	rax, 1
	movsx	ecx, byte ptr [rbp + rax - 0x2040]
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	je	.label_361
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_361:
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x2048]
	mov	qword ptr [rbp - 0x2058], rax
.label_373:
	cmp	qword ptr [rbp - 0x2058], 0
	je	.label_362
	lea	rdi, [rbp - 0x2040]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x2058]
	call	memrchr
	mov	qword ptr [rbp - 0x2060], rax
	cmp	qword ptr [rbp - 0x2060], 0
	jne	.label_363
	jmp	.label_362
.label_363:
	lea	rax, [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2060]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2058], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	jne	.label_365
	mov	rax, qword ptr [rbp - 0x2058]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rcx, 1
	cmp	rax, rcx
	je	.label_371
	mov	rax, qword ptr [rbp - 0x2060]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x2048]
	mov	rdx, qword ptr [rbp - 0x2058]
	add	rdx, 1
	sub	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	xwrite_stdout
.label_371:
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
	jmp	.label_364
.label_365:
	jmp	.label_373
.label_362:
	mov	rax, qword ptr [rbp - 0x2050]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_372
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
	jmp	.label_364
.label_372:
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
	jne	.label_366
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_364
.label_366:
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2048], 0
	ja	.label_368
	mov	byte ptr [rbp - 1], 1
.label_364:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406250

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
	jg	.label_379
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x80
	pop	rbp
	ret	
.label_379:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rbp - 0x40]
	call	offtostr
	mov	qword ptr [rbp - 0x48], rax
	mov	ecx, dword ptr [rbp - 0x14]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x4c], ecx
	je	.label_376
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	je	.label_380
	jmp	.label_381
.label_381:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x54], eax
	je	.label_374
	jmp	.label_375
.label_376:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.88
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
	jmp	.label_377
.label_380:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.89
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
	jmp	.label_377
.label_374:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.90
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
	jmp	.label_377
.label_375:
	call	abort
.label_377:
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4063d0

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
.label_392:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x38]
	call	safe_read
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_401
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_403
.label_401:
	jmp	.label_406
.label_403:
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
.label_407:
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x60], rax
	cmp	rax, 0
	je	.label_394
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	jmp	.label_407
.label_394:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_389
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
	jmp	.label_382
.label_389:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_396
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
	jmp	.label_402
.label_396:
	mov	eax, 0x2018
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_402:
	jmp	.label_382
.label_382:
	jmp	.label_392
.label_406:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_398
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_385
.label_398:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x2000], 0
	jne	.label_387
	jmp	.label_385
.label_387:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_390
	jmp	.label_385
.label_390:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	je	.label_397
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_397:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_391:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_386
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_391
.label_386:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_383
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_404:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_399
	mov	rdi, qword ptr [rbp - 0x68]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_393
	jmp	.label_384
.label_393:
	movabs	rdi, OFFSET FLAT:.str.91
	movabs	rsi, OFFSET FLAT:.str.92
	mov	edx, 0x2e0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.pipe_lines
	call	__assert_fail
.label_384:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_404
.label_399:
	jmp	.label_383
.label_383:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
.label_400:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_395
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_400
.label_395:
	jmp	.label_385
.label_385:
	jmp	.label_388
.label_388:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_405
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_388
.label_405:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068c0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_408
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_408
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.87
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.20
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_408:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406960

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
.label_413:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_412
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_415
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_411
.label_415:
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_416
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_411
.label_416:
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x2038]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_409
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_410
.label_409:
	mov	rax, qword ptr [rbp - 0x2038]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2040], rax
	cmp	qword ptr [rbp - 0x2040], 0
	je	.label_414
	lea	rax, [rbp - 0x2030]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rdi, rax
	call	xwrite_stdout
.label_414:
	jmp	.label_412
.label_410:
	jmp	.label_413
.label_412:
	mov	dword ptr [rbp - 4], 0
.label_411:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2050
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ac0

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
	je	.label_417
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_417
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_417
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_417
.label_417:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b40

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
.label_434:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x38]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_430
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_421
.label_430:
	jmp	.label_419
.label_421:
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
	jae	.label_428
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
	jmp	.label_431
.label_428:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x2008], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_420
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
	jmp	.label_424
.label_420:
	mov	eax, 0x2010
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_424:
	jmp	.label_431
.label_431:
	jmp	.label_434
.label_419:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_418
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_423
.label_418:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_435:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_425
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_435
.label_425:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_429
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_432
.label_429:
	mov	qword ptr [rbp - 0x40], 0
.label_432:
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
.label_427:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_422
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_427
.label_422:
	jmp	.label_423
.label_423:
	jmp	.label_426
.label_426:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_433
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_426
.label_433:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e90

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
	je	.label_585
	jmp	.label_596
.label_596:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x187
	mov	qword ptr [rbp - 0x28], rax
	je	.label_598
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7c0
	mov	qword ptr [rbp - 0x30], rax
	je	.label_605
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x38], rax
	je	.label_612
	jmp	.label_618
.label_618:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137d
	mov	qword ptr [rbp - 0x40], rax
	je	.label_620
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0x48], rax
	je	.label_595
	jmp	.label_629
.label_629:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x138f
	mov	qword ptr [rbp - 0x50], rax
	je	.label_631
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1cd1
	mov	qword ptr [rbp - 0x58], rax
	je	.label_637
	jmp	.label_642
.label_642:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2468
	mov	qword ptr [rbp - 0x60], rax
	je	.label_645
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x68], rax
	je	.label_650
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x70], rax
	je	.label_656
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4000
	mov	qword ptr [rbp - 0x78], rax
	je	.label_664
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4004
	mov	qword ptr [rbp - 0x80], rax
	je	.label_669
	jmp	.label_673
.label_673:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x88], rax
	je	.label_675
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4244
	mov	qword ptr [rbp - 0x90], rax
	je	.label_436
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x482b
	mov	qword ptr [rbp - 0x98], rax
	je	.label_443
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4858
	mov	qword ptr [rbp - 0xa0], rax
	je	.label_451
	jmp	.label_457
.label_457:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4d44
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_459
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_591
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x517b
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_471
	jmp	.label_478
.label_478:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x564c
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_481
	jmp	.label_485
.label_485:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_476
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0xd0], rax
	je	.label_489
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_496
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x72b6
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_587
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0xe8], rax
	je	.label_510
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_516
	jmp	.label_519
.label_519:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa1
	mov	qword ptr [rbp - 0xf8], rax
	je	.label_472
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa2
	mov	qword ptr [rbp - 0x100], rax
	je	.label_527
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x108], rax
	je	.label_546
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xadff
	mov	qword ptr [rbp - 0x110], rax
	je	.label_538
	jmp	.label_543
.label_543:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xef51
	mov	qword ptr [rbp - 0x118], rax
	je	.label_545
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xef53
	mov	qword ptr [rbp - 0x120], rax
	je	.label_553
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xf15f
	mov	qword ptr [rbp - 0x128], rax
	je	.label_559
	jmp	.label_499
.label_499:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11954
	mov	qword ptr [rbp - 0x130], rax
	je	.label_564
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x27e0eb
	mov	qword ptr [rbp - 0x138], rax
	je	.label_572
	jmp	.label_576
.label_576:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x414a53
	mov	qword ptr [rbp - 0x140], rax
	je	.label_577
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc0ffee
	mov	qword ptr [rbp - 0x148], rax
	je	.label_582
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc36400
	mov	qword ptr [rbp - 0x150], rax
	je	.label_590
	jmp	.label_597
.label_597:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x158], rax
	je	.label_464
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1021997
	mov	qword ptr [rbp - 0x160], rax
	je	.label_607
	jmp	.label_614
.label_614:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1161970
	mov	qword ptr [rbp - 0x168], rax
	je	.label_616
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12fd16d
	mov	qword ptr [rbp - 0x170], rax
	je	.label_622
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b4
	mov	qword ptr [rbp - 0x178], rax
	je	.label_628
	jmp	.label_633
.label_633:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x180], rax
	je	.label_666
	jmp	.label_641
.label_641:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b6
	mov	qword ptr [rbp - 0x188], rax
	je	.label_643
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b7
	mov	qword ptr [rbp - 0x190], rax
	je	.label_498
	jmp	.label_655
.label_655:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x13111a8
	mov	qword ptr [rbp - 0x198], rax
	je	.label_657
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x1a0], rax
	je	.label_574
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9041934
	mov	qword ptr [rbp - 0x1a8], rax
	je	.label_671
	jmp	.label_676
.label_676:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x1b0], rax
	je	.label_677
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xbd00bd0
	mov	qword ptr [rbp - 0x1b8], rax
	je	.label_456
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11307854
	mov	qword ptr [rbp - 0x1c0], rax
	je	.label_446
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x13661366
	mov	qword ptr [rbp - 0x1c8], rax
	je	.label_454
	jmp	.label_460
.label_460:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_568
	jmp	.label_465
.label_465:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x19800202
	mov	qword ptr [rbp - 0x1d8], rax
	je	.label_466
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1e0], rax
	je	.label_475
	jmp	.label_482
.label_482:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1badface
	mov	qword ptr [rbp - 0x1e8], rax
	je	.label_452
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x1f0], rax
	je	.label_490
	jmp	.label_491
.label_491:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x1f8], rax
	je	.label_492
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2bad1dea
	mov	qword ptr [rbp - 0x200], rax
	je	.label_565
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2fc12fc1
	mov	qword ptr [rbp - 0x208], rax
	je	.label_505
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x210], rax
	je	.label_512
	jmp	.label_517
.label_517:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42465331
	mov	qword ptr [rbp - 0x218], rax
	je	.label_447
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42494e4d
	mov	qword ptr [rbp - 0x220], rax
	je	.label_522
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x43415d53
	mov	qword ptr [rbp - 0x228], rax
	je	.label_529
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x453dcd28
	mov	qword ptr [rbp - 0x230], rax
	je	.label_534
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x45584653
	mov	qword ptr [rbp - 0x238], rax
	je	.label_541
	jmp	.label_547
.label_547:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x47504653
	mov	qword ptr [rbp - 0x240], rax
	je	.label_549
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x50495045
	mov	qword ptr [rbp - 0x248], rax
	je	.label_555
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x250], rax
	je	.label_561
	jmp	.label_566
.label_566:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346314d
	mov	qword ptr [rbp - 0x258], rax
	je	.label_567
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x260], rax
	je	.label_575
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x53464846
	mov	qword ptr [rbp - 0x268], rax
	je	.label_599
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x270], rax
	je	.label_483
	jmp	.label_592
.label_592:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x278], rax
	je	.label_594
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x54190100
	mov	qword ptr [rbp - 0x280], rax
	je	.label_601
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x565a4653
	mov	qword ptr [rbp - 0x288], rax
	je	.label_609
	jmp	.label_617
.label_617:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x58295829
	mov	qword ptr [rbp - 0x290], rax
	je	.label_619
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x298], rax
	je	.label_504
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_632
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5dca2df5
	mov	qword ptr [rbp - 0x2a8], rax
	je	.label_640
	jmp	.label_648
.label_648:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x2b0], rax
	je	.label_480
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6165676c
	mov	qword ptr [rbp - 0x2b8], rax
	je	.label_653
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x2c0], rax
	je	.label_660
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62646576
	mov	qword ptr [rbp - 0x2c8], rax
	je	.label_589
	jmp	.label_672
.label_672:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62656570
	mov	qword ptr [rbp - 0x2d0], rax
	je	.label_674
	jmp	.label_678
.label_678:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62656572
	mov	qword ptr [rbp - 0x2d8], rax
	je	.label_680
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_474
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2e8], rax
	je	.label_450
	jmp	.label_455
.label_455:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x64646178
	mov	qword ptr [rbp - 0x2f0], rax
	je	.label_458
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735543
	mov	qword ptr [rbp - 0x2f8], rax
	je	.label_463
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735546
	mov	qword ptr [rbp - 0x300], rax
	je	.label_470
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x308], rax
	je	.label_479
	jmp	.label_484
.label_484:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x68191122
	mov	qword ptr [rbp - 0x310], rax
	je	.label_468
	jmp	.label_487
.label_487:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6b414653
	mov	qword ptr [rbp - 0x318], rax
	je	.label_508
	jmp	.label_493
.label_493:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6e667364
	mov	qword ptr [rbp - 0x320], rax
	je	.label_495
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6e736673
	mov	qword ptr [rbp - 0x328], rax
	je	.label_502
	jmp	.label_507
.label_507:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73636673
	mov	qword ptr [rbp - 0x330], rax
	je	.label_625
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73717368
	mov	qword ptr [rbp - 0x338], rax
	je	.label_515
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73727279
	mov	qword ptr [rbp - 0x340], rax
	je	.label_520
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73757245
	mov	qword ptr [rbp - 0x348], rax
	je	.label_526
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7461636f
	mov	qword ptr [rbp - 0x350], rax
	je	.label_532
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x74726163
	mov	qword ptr [rbp - 0x358], rax
	je	.label_537
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x794c7630
	mov	qword ptr [rbp - 0x360], rax
	je	.label_544
	jmp	.label_550
.label_550:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x368], rax
	je	.label_552
	jmp	.label_556
.label_556:
	mov	eax, 0x858458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x370], rdx
	je	.label_558
	jmp	.label_562
.label_562:
	mov	eax, 0x9123683e
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x378], rdx
	je	.label_506
	jmp	.label_571
.label_571:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x380], rdx
	je	.label_548
	jmp	.label_578
.label_578:
	mov	eax, 0xa501fcf5
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	je	.label_580
	jmp	.label_584
.label_584:
	mov	eax, 0xaad7aaea
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x390], rdx
	je	.label_644
	jmp	.label_593
.label_593:
	mov	eax, 0xabba1974
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x398], rdx
	je	.label_445
	jmp	.label_602
.label_602:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a0], rdx
	je	.label_604
	jmp	.label_613
.label_613:
	mov	eax, 0xbeefdead
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a8], rdx
	je	.label_615
	jmp	.label_570
.label_570:
	mov	eax, 0xc97e8168
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b0], rdx
	je	.label_647
	jmp	.label_627
.label_627:
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b8], rdx
	je	.label_563
	jmp	.label_636
.label_636:
	mov	eax, 0xde5e81e4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c0], rdx
	je	.label_639
	jmp	.label_583
.label_583:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c8], rdx
	je	.label_624
	jmp	.label_652
.label_652:
	mov	eax, 0xf97cff8c
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d0], rdx
	je	.label_654
	jmp	.label_661
.label_661:
	mov	eax, 0xf995e849
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d8], rdx
	je	.label_663
	jmp	.label_540
.label_540:
	mov	eax, 0xfe534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_611
	jmp	.label_646
.label_646:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e8], rdx
	je	.label_659
	jmp	.label_440
.label_632:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_480:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_546:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_538:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_575:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_671:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_660:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_598:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_454:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_447:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_589:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_452:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_563:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_522:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_506:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_520:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_590:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_572:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_474:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_659:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_526:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_498:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_674:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_492:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_534:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_458:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_450:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_612:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_637:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_559:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_639:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_577:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_541:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_476:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_620:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_553:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_545:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_624:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_675:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_475:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_470:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_463:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_677:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_616:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_549:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_436:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_443:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_451:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_582:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_663:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_548:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_446:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_657:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_565:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_510:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_669:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_664:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_605:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_587:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_512:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_508:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_647:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_456:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_567:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_595:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_631:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_645:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_650:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_591:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_466:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_459:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_481:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_489:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_495:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_656:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_502:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_483:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_472:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_532:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_544:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_644:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_555:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_552:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_516:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_653:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_585:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_468:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_558:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_574:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_561:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_496:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_479:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_640:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_625:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_654:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_529:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_471:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_611:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_615:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_594:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_515:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_680:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_643:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_666:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_464:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_537:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_490:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_568:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_564:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_601:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_527:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_607:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_604:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_580:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_609:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_599:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_445:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_628:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_504:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_622:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_505:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_619:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_440:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_437:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x368
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081e0

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
	#Procedure 0x408210

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
	#Procedure 0x408250

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
	mov	esi, OFFSET FLAT:.str.17_0
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
	je	.label_706
	xor	eax, eax
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_713
.label_706:
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
.label_713:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb0], eax
	mov	rdi, qword ptr [rbp - 8]
	call	valid_file_spec
	test	al, 1
	jne	.label_682
	jmp	.label_684
.label_682:
	jmp	.label_685
.label_684:
	movabs	rdi, OFFSET FLAT:.str.105
	movabs	rsi, OFFSET FLAT:.str.92
	mov	edx, 0x3df
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	call	__assert_fail
.label_685:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xb5], cl
	je	.label_695
	cmp	dword ptr [rbp - 0xb0], -1
	sete	al
	mov	byte ptr [rbp - 0xb5], al
.label_695:
	mov	al, byte ptr [rbp - 0xb5]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_703
	lea	rsi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	__lstat
	cmp	eax, 0
	jne	.label_703
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_703
	movabs	rdi, OFFSET FLAT:.str.106
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
	jmp	.label_688
.label_703:
	cmp	dword ptr [rbp - 0xb0], -1
	je	.label_689
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0xb0]
	call	__fstat
	cmp	eax, 0
	jge	.label_697
.label_689:
	mov	byte ptr [rbp - 0xa1], 0
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x36], 1
	jne	.label_699
	test	byte ptr [rbp - 0xa3], 1
	je	.label_704
	movabs	rdi, OFFSET FLAT:.str.107
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
	jmp	.label_714
.label_704:
	jmp	.label_714
.label_714:
	jmp	.label_693
.label_699:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0xd4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	cmp	ecx, dword ptr [rax]
	je	.label_707
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
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_707:
	jmp	.label_693
.label_693:
	jmp	.label_696
.label_697:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_698
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_698
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_698
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_698
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0xa1], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x3c], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x36], 0
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_709
	cmp	dword ptr [dword ptr [follow_mode]],  1
	sete	al
	mov	byte ptr [rbp - 0xd9], al
.label_709:
	mov	al, byte ptr [rbp - 0xd9]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x34], al
	test	byte ptr [rbp - 0xa3], 1
	jne	.label_716
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rcx + 0x3c]
	je	.label_720
.label_716:
	movabs	rdi, OFFSET FLAT:.str.109
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
	je	.label_694
	movabs	rdi, OFFSET FLAT:.str.82
	call	gettext
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_701
.label_694:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0xf8]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_720:
	jmp	.label_705
.label_698:
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
	jne	.label_715
	jmp	.label_718
.label_715:
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_718
	movabs	rdi, OFFSET FLAT:.str.110
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
	jmp	.label_700
.label_718:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0
.label_700:
	jmp	.label_705
.label_705:
	jmp	.label_696
.label_696:
	jmp	.label_688
.label_688:
	mov	byte ptr [rbp - 0xa9], 0
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_691
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
	jmp	.label_708
.label_691:
	cmp	dword ptr [rbp - 0xa8], 0
	je	.label_681
	cmp	dword ptr [rbp - 0xa8], 2
	je	.label_681
	mov	byte ptr [rbp - 0xa9], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_702
	jmp	.label_692
.label_702:
	movabs	rdi, OFFSET FLAT:.str.111
	movabs	rsi, OFFSET FLAT:.str.92
	mov	edx, 0x42c
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	call	__assert_fail
.label_692:
	movabs	rdi, OFFSET FLAT:.str.112
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
	jmp	.label_690
.label_681:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_710
	movabs	rdi, OFFSET FLAT:.str.113
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
	jmp	.label_686
.label_710:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_683
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0xa0]
	je	.label_712
.label_683:
	movabs	rdi, OFFSET FLAT:.str.114
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
	jmp	.label_711
.label_712:
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14c], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x14c]
	mov	rsi, rax
	call	close_fd
.label_711:
	jmp	.label_686
.label_686:
	jmp	.label_690
.label_690:
	jmp	.label_708
.label_708:
	test	byte ptr [rbp - 0xa9], 1
	je	.label_717
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xb0]
	test	byte ptr [rbp - 0xa2], 1
	mov	qword ptr [rbp - 0x158], rdi
	mov	dword ptr [rbp - 0x15c], esi
	je	.label_719
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x160], eax
	jmp	.label_687
.label_719:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x160], ecx
.label_687:
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
.label_717:
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408aa0

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
	jne	.label_725
	jmp	.label_722
.label_725:
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	call	__fstat
	cmp	eax, 0
	je	.label_727
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
	jmp	.label_722
.label_727:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_726
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_726
	movabs	rdi, OFFSET FLAT:.str.115
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
	jmp	.label_723
.label_726:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_724
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_724
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
	jne	.label_724
	jmp	.label_722
.label_724:
	jmp	.label_723
.label_723:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [print_headers]],  1
	mov	byte ptr [rbp - 0xe1], cl
	je	.label_721
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	setne	dl
	mov	byte ptr [rbp - 0xe1], dl
.label_721:
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
	je	.label_722
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_728
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xe8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_728:
	jmp	.label_722
.label_722:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d30

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
	#Procedure 0x408d50

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
	#Procedure 0x408d90

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_732
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_732
	mov	byte ptr [rbp - 1], 1
	jmp	.label_734
.label_732:
	mov	qword ptr [rbp - 0x20], 0
.label_735:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_731
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_736
	mov	byte ptr [rbp - 1], 1
	jmp	.label_734
.label_736:
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_733
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_733
	mov	byte ptr [rbp - 1], 1
	jmp	.label_734
.label_733:
	jmp	.label_729
.label_729:
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_735
.label_731:
	mov	byte ptr [rbp - 1], 0
.label_734:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e50

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	test	byte ptr [byte ptr [monitor_output]],  1
	jne	.label_737
	jmp	.label_738
.label_737:
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
	jne	.label_738
	call	die_pipe
.label_738:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f00

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x408f10

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
.label_743:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_740
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_745
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_741
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_744
.label_741:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_747
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_746
.label_747:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_750
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
	je	.label_749
.label_750:
	mov	byte ptr [rbp - 0x41], 1
.label_749:
	jmp	.label_746
.label_746:
	jmp	.label_739
.label_739:
	jmp	.label_745
.label_745:
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_743
.label_740:
	test	byte ptr [rbp - 0x41], 1
	je	.label_748
	mov	qword ptr [rbp - 8], -2
	jmp	.label_744
.label_748:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_744:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409060

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
	jne	.label_751
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_752
.label_751:
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_752:
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
	#Procedure 0x409100

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_0
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
.label_756:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_755
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_757
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_753
.label_757:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_0
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
	jmp	.label_754
.label_753:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_754:
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_756
.label_755:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409250

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
	jl	.label_760
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_759
.label_760:
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
.label_759:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092e0
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
.label_762:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_761
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_763
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_764
.label_763:
	jmp	.label_765
.label_765:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_762
.label_761:
	mov	qword ptr [rbp - 8], 0
.label_764:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409380

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
	je	.label_766
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	c_strtod
	movsd	qword ptr [rbp - 0x38], xmm0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_768
	movsd	xmm0, qword ptr [rbp - 0x38]
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_769
.label_768:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_769:
	jmp	.label_766
.label_766:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_767
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_767:
	movsd	xmm0, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409430
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
	#Procedure 0x409450
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
	#Procedure 0x409470

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_771
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_773
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_771
.label_773:
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_774
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_770
.label_774:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_770:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_771:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_772
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_772:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409560

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_775
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_780
.label_775:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_780:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_777:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_776
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_778
	jmp	.label_776
.label_778:
	jmp	.label_779
.label_779:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_777
.label_776:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409610
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
	je	.label_781
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_781
.label_781:
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
	jne	.label_783
	mov	qword ptr [rbp - 8], 0
	jmp	.label_782
.label_783:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_784
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_784:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_782:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096e0

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_786:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_788
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_786
.label_788:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_789:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_791
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_787
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_790
.label_787:
	test	byte ptr [rbp - 0x19], 1
	je	.label_785
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_785:
	jmp	.label_790
.label_790:
	jmp	.label_792
.label_792:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_789
.label_791:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409780
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
.label_794:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_793
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_793:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_795
	jmp	.label_797
.label_795:
	jmp	.label_796
.label_796:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_794
.label_797:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409810

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
	je	.label_798
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
.label_798:
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
	je	.label_799
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
	ja	.label_800
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_801
.label_800:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_801:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_799:
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
	#Procedure 0x409a10

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
	#Procedure 0x409a30

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
	#Procedure 0x409a50

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
	#Procedure 0x409a70

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
.label_805:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_803
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_806
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_804:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_807
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_804
.label_807:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_802
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_802:
	jmp	.label_806
.label_806:
	jmp	.label_808
.label_808:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_805
.label_803:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b20
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
.label_814:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_809
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_812
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_815:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_816
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_815
.label_816:
	jmp	.label_812
.label_812:
	jmp	.label_813
.label_813:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_814
.label_809:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_810
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_810
	mov	byte ptr [rbp - 1], 1
	jmp	.label_811
.label_810:
	mov	byte ptr [rbp - 1], 0
.label_811:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c10
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_1
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
	mov	ecx, OFFSET FLAT:.str_5
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_1
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_817]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_818]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_819]]
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
	movabs	rsi, OFFSET FLAT:.str.3_1
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
	#Procedure 0x409d30

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
	jne	.label_823
	mov	qword ptr [rbp - 8], 0
	jmp	.label_825
.label_823:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_822:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_826
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_821
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_821
	jmp	.label_824
.label_821:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_825
.label_824:
	jmp	.label_820
.label_820:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_822
.label_826:
	mov	qword ptr [rbp - 8], 0
.label_825:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409df0

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
	jb	.label_827
	call	abort
.label_827:
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
	#Procedure 0x409e60
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_828
	mov	qword ptr [rbp - 8], 0
	jmp	.label_829
.label_828:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_830:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_831
	call	abort
.label_831:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_832
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_829
.label_832:
	jmp	.label_833
.label_833:
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_830
.label_829:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ef0
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
.label_839:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_838
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_838
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_840
.label_838:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_839
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_836
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_840
.label_836:
	jmp	.label_835
.label_837:
	mov	qword ptr [rbp - 8], 0
.label_840:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fc0
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
.label_845:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_842
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_841
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_847:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_846
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_848
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_843
.label_848:
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
	jmp	.label_847
.label_846:
	jmp	.label_841
.label_841:
	jmp	.label_844
.label_844:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_845
.label_842:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_843:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a090
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
.label_852:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_851
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_850
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_853:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_856
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_855
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_849
.label_855:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_853
.label_856:
	jmp	.label_850
.label_850:
	jmp	.label_854
.label_854:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_852
.label_851:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_849:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a160
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_858:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_857
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
	jmp	.label_858
.label_857:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1c0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_859]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_860]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1f0

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
	jne	.label_869
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_869:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_866
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_866:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_862
	mov	qword ptr [rbp - 8], 0
	jmp	.label_864
.label_862:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_867
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_867:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_863
	jmp	.label_861
.label_863:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_868
	jmp	.label_861
.label_868:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_865
	jmp	.label_861
.label_865:
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
	jmp	.label_864
.label_861:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_864:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a390

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
	#Procedure 0x40a3d0

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
	#Procedure 0x40a3f0

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
	jne	.label_874
	mov	byte ptr [rbp - 1], 1
	jmp	.label_873
.label_874:
	movss	xmm0,  dword ptr [dword ptr [label_870]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_871
	movss	xmm0,  dword ptr [dword ptr [label_872]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_871
	movss	xmm0,  dword ptr [dword ptr [label_872]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_871
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_871
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_871
	movss	xmm0,  dword ptr [dword ptr [label_872]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_871
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_871
	mov	byte ptr [rbp - 1], 1
	jmp	.label_873
.label_871:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_873:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a520

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
	jne	.label_875
	movss	xmm0,  dword ptr [dword ptr [label_880]]
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
	js	.label_881
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_881:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_878
	mov	qword ptr [rbp - 8], 0
	jmp	.label_877
.label_878:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_876]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_875:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_879
	mov	qword ptr [rbp - 8], 0
	jmp	.label_877
.label_879:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_877:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a640
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
.label_886:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_887
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_885
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_889:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_883
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_888
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_888:
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
	jmp	.label_889
.label_883:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_882
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_882:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_885:
	jmp	.label_884
.label_884:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_886
.label_887:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a760

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_894
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_894
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_901:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_902
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_896
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_893:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_903
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_893
.label_903:
	jmp	.label_896
.label_896:
	jmp	.label_898
.label_898:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_901
.label_902:
	jmp	.label_894
.label_894:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_897:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_891
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_892:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_900
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_892
.label_900:
	jmp	.label_895
.label_895:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_897
.label_891:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_899:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_890
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_899
.label_890:
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
	#Procedure 0x40a8e0

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
	jne	.label_904
	mov	byte ptr [rbp - 1], 0
	jmp	.label_908
.label_904:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_909
	mov	byte ptr [rbp - 1], 1
	jmp	.label_908
.label_909:
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
	jne	.label_906
	mov	byte ptr [rbp - 1], 0
	jmp	.label_908
.label_906:
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
	jne	.label_905
	jmp	.label_907
.label_905:
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
	jmp	.label_908
.label_907:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_910
	jmp	.label_911
.label_910:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_912
.label_911:
	call	abort
.label_912:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_908:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aaf0

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
.label_922:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_917
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_921
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_916:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_925
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
	je	.label_919
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_926
.label_919:
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
.label_926:
	jmp	.label_914
.label_914:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_916
.label_925:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_918
	jmp	.label_920
.label_918:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_915
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_923
	mov	byte ptr [rbp - 1], 0
	jmp	.label_924
.label_923:
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
	jmp	.label_913
.label_915:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_913:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_921:
	jmp	.label_920
.label_920:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_922
.label_917:
	mov	byte ptr [rbp - 1], 1
.label_924:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40acd0

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
	jne	.label_932
	call	abort
.label_932:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_929
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_933
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_933:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_935
.label_929:
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
	js	.label_944
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_944:
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
	js	.label_945
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_945:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_940
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
	js	.label_930
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_930:
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
	js	.label_941
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_941:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_938
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_927
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
	js	.label_936
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_936:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_943
.label_927:
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
	js	.label_934
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_934:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_943:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [label_880]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_939
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_935
.label_939:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_876]]
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
	jne	.label_931
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_935
.label_931:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_937
	call	abort
.label_937:
	jmp	.label_938
.label_938:
	jmp	.label_940
.label_940:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_942
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_928
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_935
.label_928:
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
	jmp	.label_935
.label_942:
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
.label_935:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b170

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
	jne	.label_952
	mov	qword ptr [rbp - 8], 0
	jmp	.label_954
.label_952:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_947
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_947
	jmp	.label_955
.label_947:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_953
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_949
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
	jmp	.label_948
.label_949:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_948:
	jmp	.label_953
.label_953:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_954
.label_955:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_951:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_956
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_946
	jmp	.label_957
.label_946:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_958
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
.label_958:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_954
.label_957:
	jmp	.label_950
.label_950:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_951
.label_956:
	mov	qword ptr [rbp - 8], 0
.label_954:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b340

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_959
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_960
.label_959:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_960:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3a0

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
	jne	.label_961
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_964
.label_961:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_963
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_962
.label_963:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_962:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_964:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b410

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
	jne	.label_979
	mov	qword ptr [rbp - 8], 0
	jmp	.label_976
.label_979:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_970
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
	js	.label_977
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_977:
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
	js	.label_971
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_971:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_974
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
	js	.label_968
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_968:
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
	js	.label_978
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_978:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_973
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_967
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
	js	.label_975
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_975:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_980
.label_967:
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
	js	.label_972
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_972:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_980:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_876]]
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
	jne	.label_966
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_965:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_969
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_965
.label_969:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_966:
	jmp	.label_973
.label_973:
	jmp	.label_974
.label_974:
	jmp	.label_970
.label_970:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_976:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b810

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_981
	mov	qword ptr [rbp - 8], 0xa
.label_981:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_983:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_985
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_985:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_982
	jmp	.label_984
.label_982:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_983
.label_984:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b890

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
.label_987:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_989
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_989:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_988
	jmp	.label_986
.label_988:
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
	jmp	.label_987
.label_986:
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
	#Procedure 0x40b950

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
	#Procedure 0x40b990

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
	jge	.label_990
	jmp	.label_993
.label_993:
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
	jne	.label_993
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_992
.label_990:
	jmp	.label_991
.label_991:
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
	jne	.label_991
	jmp	.label_992
.label_992:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba90

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:.str_6
	mov	qword ptr [rbp - 8], 0x31069
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_997
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_997
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_994
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_994:
	jmp	.label_997
.label_997:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_999
	mov	rax, -0x80000000
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_996
.label_999:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	jge	.label_998
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_995
.label_998:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_996:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb60

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1000
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1000:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1001
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1003
.label_1001:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1003:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1002
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1002
	movabs	rsi, OFFSET FLAT:.str.2_2
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1004
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1004:
	jmp	.label_1002
.label_1002:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc80
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
	je	.label_1005
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1006
.label_1005:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1006
.label_1006:
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
	#Procedure 0x40bd00
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1007
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1008
.label_1007:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1008
.label_1008:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd40
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
	je	.label_1009
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1010
.label_1009:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd90

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
	je	.label_1011
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1012
.label_1011:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1012
.label_1012:
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
	#Procedure 0x40be40
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1013
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1013:
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
	#Procedure 0x40be80

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
	jne	.label_1014
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1014:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1016
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1015
.label_1016:
	call	abort
.label_1015:
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
	#Procedure 0x40bef0
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
	je	.label_1017
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1018
.label_1017:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1018
.label_1018:
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
	#Procedure 0x40bfc0

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
.label_1137:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1041
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1169]]
	jmp	rcx
.label_1593:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1592:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1040
	jmp	.label_1054
.label_1054:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1055
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1055:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1040
.label_1040:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1066
.label_1594:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1066
.label_1595:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1171
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1171:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1088
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1077:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1093
	jmp	.label_1097
.label_1097:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1099
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1099:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1105
.label_1105:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1077
.label_1093:
	jmp	.label_1088
.label_1088:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1066
.label_1590:
	mov	byte ptr [rbp - 0x79], 1
.label_1589:
	mov	byte ptr [rbp - 0x7b], 1
.label_1591:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1121
	mov	byte ptr [rbp - 0x79], 1
.label_1121:
	jmp	.label_1123
.label_1123:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1131
	jmp	.label_1126
.label_1126:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1127
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1127:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1131
.label_1131:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1066
.label_1588:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1066
.label_1041:
	call	abort
.label_1066:
	mov	qword ptr [rbp - 0x58], 0
.label_1107:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1141
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1144
.label_1141:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1144:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1156
	jmp	.label_1163
.label_1156:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1164
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1164
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1164
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1176
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1176
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1187
.label_1176:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1187:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1164
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1164
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1197
	jmp	.label_1024
.label_1197:
	mov	byte ptr [rbp - 0x81], 1
.label_1164:
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
	ja	.label_1129
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1204]]
	jmp	rcx
.label_1596:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1205
	jmp	.label_1155
.label_1155:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1210
	jmp	.label_1024
.label_1210:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1213
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1213
	jmp	.label_1216
.label_1216:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1217
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1217:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1021
.label_1021:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1026
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1026:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1032
.label_1032:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1037
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1037:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1213:
	jmp	.label_1046
.label_1046:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1048
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1048:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1200
.label_1200:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1057
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1057
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1057
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1057
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1073
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1073:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1081
.label_1081:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1085
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1085:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1057
.label_1057:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1098
.label_1205:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1101
	jmp	.label_1104
.label_1101:
	jmp	.label_1098
.label_1098:
	jmp	.label_1033
.label_1607:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1106
	jmp	.label_1112
.label_1112:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1113
	jmp	.label_1115
.label_1106:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1132
	jmp	.label_1024
.label_1132:
	jmp	.label_1120
.label_1113:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1084
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1084
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1084
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1130
	jmp	.label_1136
.label_1136:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1130
	jmp	.label_1139
.label_1139:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1130
	jmp	.label_1146
.label_1146:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1130
	jmp	.label_1150
.label_1150:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1151
	jmp	.label_1130
.label_1130:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1158
	jmp	.label_1024
.label_1158:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1162
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1162:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1175
.label_1175:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1178
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1178:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1183
.label_1183:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1145
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1145:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1191
.label_1191:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1174
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1174:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1195
.label_1151:
	jmp	.label_1195
.label_1195:
	jmp	.label_1084
.label_1084:
	jmp	.label_1120
.label_1115:
	jmp	.label_1120
.label_1120:
	jmp	.label_1033
.label_1597:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1027
.label_1598:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1027
.label_1602:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1027
.label_1600:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1019
.label_1603:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1019
.label_1599:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1019
.label_1601:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1027
.label_1608:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1208
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1211
	jmp	.label_1024
.label_1211:
	jmp	.label_1060
.label_1208:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1214
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1214
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1214
	jmp	.label_1060
.label_1214:
	jmp	.label_1019
.label_1019:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1020
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1020
	jmp	.label_1024
.label_1020:
	jmp	.label_1027
.label_1027:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1029
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1031
.label_1029:
	jmp	.label_1033
.label_1609:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1035
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1038
	jmp	.label_1043
.label_1035:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1038
.label_1043:
	jmp	.label_1033
.label_1038:
	jmp	.label_1045
.label_1045:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1047
	jmp	.label_1033
.label_1047:
	jmp	.label_1050
.label_1050:
	mov	byte ptr [rbp - 0x83], 1
.label_1604:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1053
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1053
	jmp	.label_1024
.label_1053:
	jmp	.label_1033
.label_1606:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1058
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1065
	jmp	.label_1024
.label_1065:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1068
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1068
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1068:
	jmp	.label_1076
.label_1076:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1079
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1079:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1083
.label_1083:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1087
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1087:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1096
.label_1096:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1102
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1102:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1058:
	jmp	.label_1033
.label_1605:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1033
.label_1129:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1090
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
	jmp	.label_1119
.label_1090:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1124
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1124:
	jmp	.label_1039
.label_1039:
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
	jne	.label_1148
	jmp	.label_1153
.label_1148:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1154
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1153
.label_1154:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1202
	mov	byte ptr [rbp - 0x91], 0
.label_1184:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1166
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1166:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1180
	jmp	.label_1181
.label_1180:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1184
.label_1181:
	jmp	.label_1153
.label_1202:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1190
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1190
	mov	qword ptr [rbp - 0xb8], 1
.label_1215:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1193
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
	jb	.label_1092
	jmp	.label_1203
.label_1203:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1092
	jmp	.label_1122
.label_1122:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1092
	jmp	.label_1207
.label_1207:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1209
	jmp	.label_1092
.label_1092:
	jmp	.label_1024
.label_1209:
	jmp	.label_1192
.label_1192:
	jmp	.label_1196
.label_1196:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1215
.label_1193:
	jmp	.label_1190
.label_1190:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1022
	mov	byte ptr [rbp - 0x91], 0
.label_1022:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1063
.label_1063:
	jmp	.label_1103
.label_1103:
	jmp	.label_1034
.label_1034:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1039
.label_1153:
	jmp	.label_1119
.label_1119:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1044
	test	byte ptr [rbp - 0x79], 1
	je	.label_1052
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1052
.label_1044:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1188:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1059
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1059
	jmp	.label_1061
.label_1061:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1067
	jmp	.label_1024
.label_1067:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1070
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1070
	jmp	.label_1074
.label_1074:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1078
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1078:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1082
.label_1082:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1086
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1086:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1094
.label_1094:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1100
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1100:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1070:
	jmp	.label_1108
.label_1108:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1110
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1110:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1114
.label_1114:
	jmp	.label_1117
.label_1117:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1118
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1118:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1125
.label_1125:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1128
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1128:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1134
.label_1059:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1138
	jmp	.label_1140
.label_1140:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1142
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1142:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1138:
	jmp	.label_1134
.label_1134:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1152
	jmp	.label_1157
.label_1152:
	jmp	.label_1159
.label_1159:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1161
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1161
	jmp	.label_1167
.label_1167:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1168
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1168:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1173
.label_1173:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1177
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1177:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1161:
	jmp	.label_1185
.label_1185:
	jmp	.label_1186
.label_1186:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1189
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1189:
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
	jmp	.label_1188
.label_1157:
	jmp	.label_1060
.label_1052:
	jmp	.label_1033
.label_1033:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1198
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1199
.label_1198:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1201
.label_1199:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1201
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
	jne	.label_1095
.label_1201:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1095
	jmp	.label_1060
.label_1095:
	jmp	.label_1031
.label_1031:
	jmp	.label_1212
.label_1212:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1182
	jmp	.label_1024
.label_1182:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1206
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1206
	jmp	.label_1219
.label_1219:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1023
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1023:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1025
.label_1025:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1030
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1030:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1042
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1042:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1206:
	jmp	.label_1049
.label_1049:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1051
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1051:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1056
.label_1056:
	jmp	.label_1060
.label_1060:
	jmp	.label_1062
.label_1062:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1064
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1064
	jmp	.label_1075
.label_1075:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1069
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1069:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1072
.label_1072:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1080
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1080:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1064:
	jmp	.label_1089
.label_1089:
	jmp	.label_1091
.label_1091:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1194
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1194:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1218
	mov	byte ptr [rbp - 0x7e], 0
.label_1218:
	jmp	.label_1104
.label_1104:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1107
.label_1163:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1111
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1111
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1111
	jmp	.label_1024
.label_1111:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1116
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1116
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1116
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1028
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
	jmp	.label_1133
.label_1028:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1135
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1135
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1137
.label_1135:
	jmp	.label_1109
.label_1109:
	jmp	.label_1116
.label_1116:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1143
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1143
	jmp	.label_1147
.label_1147:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1149
	jmp	.label_1165
.label_1165:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1172
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1172:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1160
.label_1160:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1147
.label_1149:
	jmp	.label_1143
.label_1143:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1170
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1170:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1133
.label_1024:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1179
	test	byte ptr [rbp - 0x79], 1
	je	.label_1179
	mov	dword ptr [rbp - 0x34], 4
.label_1179:
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
.label_1133:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d360
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
	#Procedure 0x40d3a0

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
	je	.label_1220
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1221
.label_1220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1221
.label_1221:
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
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1222:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d500
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1225:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1224
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1225
.label_1224:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1227
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1226]],  rax
.label_1227:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1223
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1223:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5e0

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
	#Procedure 0x40d620

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
	jge	.label_1235
	call	abort
.label_1235:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1232
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1234
	call	xalloc_die
.label_1234:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1231
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1233
.label_1231:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1233:
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
	je	.label_1230
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1226]]
	mov	qword ptr [rax + 8], rcx
.label_1230:
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
.label_1232:
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
	ja	.label_1228
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1229
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1229:
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
.label_1228:
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
	#Procedure 0x40d8a0

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
	#Procedure 0x40d8e0
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
	#Procedure 0x40d900
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
	#Procedure 0x40d930

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
	#Procedure 0x40d970

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
	jne	.label_1236
	call	abort
.label_1236:
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
	#Procedure 0x40d9e0

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
	#Procedure 0x40da20

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
	#Procedure 0x40da50
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
	#Procedure 0x40da80

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
	#Procedure 0x40db00

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
	#Procedure 0x40db30

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
	#Procedure 0x40db50
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
	#Procedure 0x40db80

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
	#Procedure 0x40dc30

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
	#Procedure 0x40dc70

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
	#Procedure 0x40dcf0
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
	#Procedure 0x40dd20
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
	#Procedure 0x40dd60

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
	#Procedure 0x40dda0
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
	#Procedure 0x40ddd0

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
	#Procedure 0x40de00

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
	#Procedure 0x40de20

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
	je	.label_1239
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1237
.label_1239:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1238
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1237
.label_1238:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1240
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1237
.label_1240:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1237:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df20

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1246:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1242
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1241
.label_1242:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_1243
	jmp	.label_1246
.label_1243:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1248
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_1248
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1247
.label_1248:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1241
.label_1247:
	jmp	.label_1245
.label_1245:
	jmp	.label_1244
.label_1244:
	jmp	.label_1246
.label_1241:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dfd0
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
	#Procedure 0x40dff0
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
	#Procedure 0x40e010
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
	#Procedure 0x40e030
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
	#Procedure 0x40e040
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
	#Procedure 0x40e060
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
	#Procedure 0x40e080

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
	#Procedure 0x40e0a0
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
	#Procedure 0x40e0d0
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
	#Procedure 0x40e0e0

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
	#Procedure 0x40e110

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
	jge	.label_1252
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1250
.label_1252:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_1253
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1250
.label_1253:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_1249
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_1249
	jmp	.label_1249
.label_1249:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_1251
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_1251
	jmp	.label_1251
.label_1251:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_1250:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1c0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_1254
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1256
.label_1254:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_1255
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_1255:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_1256:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e210
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_1257]]
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
	#Procedure 0x40e240

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1258
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1258
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
.label_1258:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2a0

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
	je	.label_1261
	movabs	rsi, OFFSET FLAT:.str_8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1263
.label_1261:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1263:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_3
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
	mov	ecx, OFFSET FLAT:.str.3_2
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
	ja	.label_1262
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1260]]
	jmp	rcx
.label_1632:
	jmp	.label_1259
.label_1633:
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_1259
.label_1634:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_1259
.label_1635:
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_1259
.label_1636:
	movabs	rdi, OFFSET FLAT:.str.7_0
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
	jmp	.label_1259
.label_1637:
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_1259
.label_1638:
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_1259
.label_1639:
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_1259
.label_1640:
	movabs	rdi, OFFSET FLAT:.str.11_1
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
	jmp	.label_1259
.label_1641:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_1259
.label_1262:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_1259:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e860
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
.label_1266:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1264
	jmp	.label_1265
.label_1265:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1266
.label_1264:
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
	#Procedure 0x40e8d0

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
.label_1267:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1272
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1270
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1268
.label_1270:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1268:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1272:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1269
	jmp	.label_1273
.label_1269:
	jmp	.label_1271
.label_1271:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1267
.label_1273:
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
	#Procedure 0x40e9e0

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
	je	.label_1274
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
.label_1274:
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
	#Procedure 0x40eb50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_0
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x40ebe0

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
	jae	.label_1275
	call	xalloc_die
.label_1275:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec30

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
	jne	.label_1276
	cmp	qword ptr [rbp - 8], 0
	je	.label_1276
	call	xalloc_die
.label_1276:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec70
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
	jae	.label_1277
	call	xalloc_die
.label_1277:
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
	#Procedure 0x40ecc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1278
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1278
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1280
.label_1278:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1279
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1279
	call	xalloc_die
.label_1279:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1280:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed40

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
	jne	.label_1281
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1284
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
.label_1284:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1282
	call	xalloc_die
.label_1282:
	jmp	.label_1283
.label_1281:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1285
	call	xalloc_die
.label_1285:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1283:
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
	#Procedure 0x40ee30

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
	#Procedure 0x40ee50
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
	#Procedure 0x40ee80
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
	#Procedure 0x40eec0
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
	jb	.label_1286
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1287
.label_1286:
	call	xalloc_die
.label_1287:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef20

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
	#Procedure 0x40ef60
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
	#Procedure 0x40efa0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_4
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40efe0

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eff0

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
	jge	.label_1288
	call	xset_binary_mode_error
.label_1288:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f020

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
	jne	.label_1300
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1302
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1289
.label_1302:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_1295
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1301
.label_1295:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_1301:
	jmp	.label_1289
.label_1289:
	jmp	.label_1291
.label_1300:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1292
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1298
.label_1292:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_1299
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1299:
	jmp	.label_1298
.label_1298:
	jmp	.label_1291
.label_1291:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1290
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1293
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1296
.label_1293:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1296
.label_1296:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1297
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1294
.label_1297:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_1294:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_1290:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f1a0

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
	#Procedure 0x40f1f0

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
.label_1307:
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rax], 0
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_1304
	jmp	.label_1303
.label_1304:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1305
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1305
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1306
.label_1305:
	jmp	.label_1307
.label_1303:
	mov	dword ptr [rbp - 4], 0
.label_1306:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f280

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
	je	.label_1312
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1310
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1310
.label_1312:
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_1308
.label_1310:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	jne	.label_1311
	jp	.label_1311
	jmp	.label_1309
.label_1311:
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_1309
	mov	byte ptr [rbp - 0x31], 0
.label_1309:
	jmp	.label_1308
.label_1308:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1313
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1313:
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
	#Procedure 0x40f360

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1339
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1339
	jmp	.label_1352
.label_1339:
	movabs	rdi, OFFSET FLAT:.str_9
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_1352:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1362
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1330
.label_1362:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1330
.label_1330:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1329:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1322
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1329
.label_1322:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1336
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1316
.label_1336:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1345
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1351
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1351
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1351
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1364
.label_1351:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1316
.label_1364:
	jmp	.label_1320
.label_1345:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1373
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1379
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1316
.label_1379:
	mov	dword ptr [rbp - 0x4c], 1
.label_1373:
	jmp	.label_1320
.label_1320:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1321
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1316
.label_1321:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1332
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1342
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1316
.label_1342:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1323
	jmp	.label_1356
.label_1356:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1323
	jmp	.label_1363
.label_1363:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1323
	jmp	.label_1370
.label_1370:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1323
	jmp	.label_1377
.label_1377:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1323
	jmp	.label_1319
.label_1319:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1323
	jmp	.label_1324
.label_1324:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1323
	jmp	.label_1331
.label_1331:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1323
	jmp	.label_1315
.label_1315:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1323
	jmp	.label_1346
.label_1346:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1323
	jmp	.label_1348
.label_1348:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1334
	jmp	.label_1323
.label_1323:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1333
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1357
	jmp	.label_1366
.label_1366:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1357
	jmp	.label_1376
.label_1376:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1328
	jmp	.label_1337
.label_1337:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1378
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1378:
	jmp	.label_1328
.label_1357:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1328:
	jmp	.label_1333
.label_1333:
	jmp	.label_1334
.label_1334:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_1335
	jmp	.label_1341
.label_1341:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1343
	jmp	.label_1349
.label_1349:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1344
	jmp	.label_1353
.label_1353:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1314
	jmp	.label_1359
.label_1359:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1355
	jmp	.label_1365
.label_1365:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1368
	jmp	.label_1375
.label_1375:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_1354
	jmp	.label_1318
.label_1318:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1340
	jmp	.label_1325
.label_1325:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1327
	jmp	.label_1347
.label_1347:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1369
	jmp	.label_1338
.label_1338:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_1372
	jmp	.label_1358
.label_1358:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_1344
	jmp	.label_1350
.label_1350:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1314
	jmp	.label_1374
.label_1374:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_1355
	jmp	.label_1360
.label_1360:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1354
	jmp	.label_1367
.label_1367:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_1371
	jmp	.label_1361
.label_1369:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1335:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1372:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1317
.label_1343:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1344:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1314:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1355:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1368:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1354:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1371:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1340:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1327:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1317
.label_1361:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1316
.label_1317:
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
	je	.label_1326
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1326:
	jmp	.label_1332
.label_1332:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1316:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa90

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
	jae	.label_1380
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1381
.label_1380:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1381:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40faf0

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
.label_1383:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1382
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1383
.label_1382:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb40

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
	je	.label_1399
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
.label_1399:
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
	je	.label_1388
	jmp	.label_1391
.label_1391:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1393
	jmp	.label_1396
.label_1388:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1398
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1408
.label_1398:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1408:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1394
.label_1393:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1410
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1407
.label_1410:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1407:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1394
.label_1396:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1392
	jmp	.label_1403
.label_1403:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1385
	jmp	.label_1411
.label_1411:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1392
	jmp	.label_1414
.label_1414:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1385
	jmp	.label_1389
.label_1389:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1392
	jmp	.label_1395
.label_1395:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1392
	jmp	.label_1404
.label_1404:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1385
	jmp	.label_1412
.label_1412:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1392
	jmp	.label_1384
.label_1384:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1385
	jmp	.label_1390
.label_1390:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1392
	jmp	.label_1401
.label_1401:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1385
	jmp	.label_1405
.label_1405:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1392
	jmp	.label_1413
.label_1413:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1392
	jmp	.label_1386
.label_1386:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1387
	jmp	.label_1385
.label_1385:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1397
.label_1392:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1400
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1409
.label_1400:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1409:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1397
.label_1387:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1402
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
.label_1568:
	jmp	.label_1406
.label_1402:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1406:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1397:
	jmp	.label_1394
.label_1394:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410060

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
	#Procedure 0x410090

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
	jg	.label_1417
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1420
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1418
.label_1420:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1416
.label_1418:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1423
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1423:
	jmp	.label_1416
.label_1416:
	jmp	.label_1419
.label_1417:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1419:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1421
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1421
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1415
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1422
.label_1415:
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
.label_1422:
	jmp	.label_1421
.label_1421:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4101c0

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
	jne	.label_1424
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1424:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1425
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1425
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1425
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1426
.label_1425:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1426:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410270

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
	jl	.label_1431
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1430
.label_1431:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1429
.label_1430:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1428:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1432
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, 0x1fa400
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1427
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1433
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_1433:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1429
.label_1427:
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1428
.label_1432:
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_1429:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410370

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
	#Procedure 0x410380

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
	#Procedure 0x410390

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
	je	.label_1435
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1434
.label_1435:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_1434:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103e0
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
	#Procedure 0x410420
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
	#Procedure 0x410460
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
	#Procedure 0x410490
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
	#Procedure 0x4104c0
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
	#Procedure 0x410510

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
	#Procedure 0x410560
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
	#Procedure 0x4105a0
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
	#Procedure 0x4105e0
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
	#Procedure 0x410620
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
	#Procedure 0x410660

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
	jne	.label_1436
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1440
.label_1436:
	jmp	.label_1437
.label_1437:
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
	jne	.label_1439
	jmp	.label_1438
.label_1439:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1437
.label_1438:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1440:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410720

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
	jne	.label_1442
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1441
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_1441:
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1443
.label_1442:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 8], xmm0
.label_1443:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107a0

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_1444
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_1444:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107e0

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
	jne	.label_1445
	test	byte ptr [rbp - 0x13], 1
	je	.label_1447
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1445
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1447
.label_1445:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1448
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1448:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1446
.label_1447:
	mov	dword ptr [rbp - 4], 0
.label_1446:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410890

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movsd	xmm1,  qword ptr [word ptr [label_1449]]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	ucomisd	xmm0, xmm1
	ja	.label_1450
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_1451
.label_1450:
	movsd	xmm0,  qword ptr [word ptr [label_1453]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_1454
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_1451
.label_1454:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movsd	xmm0,  qword ptr [word ptr [label_1257]]
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
	jge	.label_1452
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x30], rax
.label_1452:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
.label_1451:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109e0

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
	je	.label_1455
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_10
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1457
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_6
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1456
.label_1457:
	mov	byte ptr [rbp - 5], 0
.label_1456:
	jmp	.label_1455
.label_1455:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a60

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
	jne	.label_1458
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_1458:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1459
	movabs	rax, OFFSET FLAT:.str.1_7
	mov	qword ptr [rbp - 8], rax
.label_1459:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ac0

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
	#Procedure 0x410af0

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
	jge	.label_1463
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1460
.label_1463:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1464
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1462
.label_1464:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1462
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1462:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1461
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1461:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1460:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bc0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1465
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1466
.label_1465:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1467
.label_1466:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1467:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c20

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
	je	.label_1468
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1468:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c60

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
	jne	.label_1469
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1469
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1469
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1471
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1470
.label_1471:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1470
.label_1469:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1470:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d30

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
	ja	.label_1472
	jmp	.label_1474
.label_1474:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1473
.label_1472:
	jmp	.label_1473
.label_1473:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d80
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
	jb	.label_1475
	jmp	.label_1477
.label_1477:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1475
	jmp	.label_1476
.label_1476:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1478
	jmp	.label_1475
.label_1475:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1479
.label_1478:
	mov	byte ptr [rbp - 1], 0
.label_1479:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410df0
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
	jb	.label_1480
	jmp	.label_1483
.label_1483:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1481
	jmp	.label_1480
.label_1480:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1482
.label_1481:
	mov	byte ptr [rbp - 1], 0
.label_1482:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e40
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1484
	jmp	.label_1485
.label_1485:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1486
.label_1484:
	mov	byte ptr [rbp - 1], 0
.label_1486:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e70
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1487
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1487:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ea0
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
	jb	.label_1488
	jmp	.label_1490
.label_1490:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1491
	jmp	.label_1488
.label_1488:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1489
.label_1491:
	mov	byte ptr [rbp - 1], 0
.label_1489:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ef0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1492
	jmp	.label_1494
.label_1494:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1493
.label_1492:
	mov	byte ptr [rbp - 1], 0
.label_1493:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f30
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1495
	jmp	.label_1497
.label_1497:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1496
.label_1495:
	mov	byte ptr [rbp - 1], 0
.label_1496:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f70
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1498
	jmp	.label_1500
.label_1500:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1499
.label_1498:
	mov	byte ptr [rbp - 1], 0
.label_1499:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fb0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1501
	jmp	.label_1503
.label_1503:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1502
.label_1501:
	mov	byte ptr [rbp - 1], 0
.label_1502:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ff0
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
	jb	.label_1504
	jmp	.label_1507
.label_1507:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1504
	jmp	.label_1508
.label_1508:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1504
	jmp	.label_1506
.label_1506:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1509
	jmp	.label_1504
.label_1504:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1505
.label_1509:
	mov	byte ptr [rbp - 1], 0
.label_1505:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411070
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
	jb	.label_1510
	jmp	.label_1513
.label_1513:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1512
	jmp	.label_1510
.label_1510:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1511
.label_1512:
	mov	byte ptr [rbp - 1], 0
.label_1511:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110c0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1514
	jmp	.label_1516
.label_1516:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1515
.label_1514:
	mov	byte ptr [rbp - 1], 0
.label_1515:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411100
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
	jb	.label_1517
	jmp	.label_1519
.label_1519:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1517
	jmp	.label_1518
.label_1518:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1520
	jmp	.label_1517
.label_1517:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1521
.label_1520:
	mov	byte ptr [rbp - 1], 0
.label_1521:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411170

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1522
	jmp	.label_1524
.label_1524:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1523
.label_1522:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1523:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4111b0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1525
	jmp	.label_1527
.label_1527:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1526
.label_1525:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1526:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112a0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x4112b0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
