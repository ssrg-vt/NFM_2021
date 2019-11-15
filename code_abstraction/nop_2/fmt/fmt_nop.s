	.section	.text
	.align	16
	#Procedure 0x4015b0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x28], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_10
	jmp	.label_8
.label_8:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_9
.label_10:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x20], eax
	call	emit_ancillary_info
.label_9:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x28]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401740

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401790

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017d0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x35], cl
	je	.label_16
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	nop	
	sete	cl
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x35], cl
.label_16:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_14
	jmp	.label_11
.label_14:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_13
.label_11:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_15
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_15:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x20], eax
	nop	
	call	setlocale
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	je	.label_12
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_12
	nop	
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.35
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x28]
	nop	
	cmove	rdx, rsi
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4019d0

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rbp - 0xb9], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	call	set_program_name
	mov	edi, 6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.9
	nop	
	movabs	rsi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	textdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:close_stdout
	nop	
	mov	qword ptr [rbp - 0x20], rax
	call	atexit
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_0
	mov	byte ptr [byte ptr [uniform]],  0
	nop	
	mov	byte ptr [byte ptr [split]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [tagged]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [crown]],  0
	mov	dword ptr [dword ptr [max_width]],  0x4b
	mov	rbp, rbp
	mov	qword ptr [word ptr [prefix]],  rsi
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [prefix_full_length]],  0
	mov	dword ptr [dword ptr [prefix_lead_space]],  0
	mov	dword ptr [dword ptr [prefix_length]],  0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x64], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	jle	.label_19
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_19
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	sub	ecx, 0x30
	mov	rbp, rbp
	cmp	ecx, 9
	ja	.label_19
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 8
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	add	edx, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], edx
.label_19:
	lea	rsi, [rsi]
	jmp	.label_24
.label_24:
	movabs	rdx, OFFSET FLAT:.str.11
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x64]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	call	getopt_long
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, -1
	je	.label_43
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	nop	
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], ecx
	mov	rbp, rbp
	je	.label_46
	nop	
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x94], eax
	je	.label_52
	nop	
	jmp	.label_20
.label_20:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	je	.label_21
	jmp	.label_27
.label_27:
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	je	.label_28
	jmp	.label_31
.label_31:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x70
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	je	.label_33
	lea	rdi, [rdi]
	jmp	.label_34
.label_34:
	nop	
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x73
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_35
	lea	rdi, [rdi]
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	je	.label_40
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	je	.label_42
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	sub	eax, 0x77
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	je	.label_45
	jmp	.label_47
.label_47:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x30
	mov	rbp, rbp
	cmp	eax, 9
	ja	.label_49
	movabs	rdi, OFFSET FLAT:.str.12
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x88], edx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_49:
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_21:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [crown]],  1
	mov	rbp, rbp
	jmp	.label_29
.label_35:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [split]],  1
	jmp	.label_29
.label_40:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [tagged]],  1
	jmp	.label_29
.label_42:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [uniform]],  1
	jmp	.label_29
.label_45:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_29
.label_28:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_29
.label_33:
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	set_prefix
	jmp	.label_29
.label_52:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_46:
	movabs	rsi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.14
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r9d, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [Version]]
	lea	rdi, [rdi]
	mov	al, 0
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_29:
	jmp	.label_24
.label_43:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	je	.label_26
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 0x9c4
	nop	
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x40]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	dword ptr [dword ptr [max_width]],  r9d
.label_26:
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	je	.label_30
	movabs	rdi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	movsxd	rdx,  dword ptr [dword ptr [max_width]]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [goal_width]],  r9d
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_53
	mov	eax,  dword ptr [dword ptr [goal_width]]
	add	eax, 0xa
	mov	dword ptr [dword ptr [max_width]],  eax
.label_53:
	jmp	.label_23
.label_30:
	mov	eax, 0xc8
	imul	ecx,  dword ptr [dword ptr [max_width]],  0xbb
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	idiv	ecx
	mov	dword ptr [dword ptr [goal_width]],  eax
.label_23:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x64]
	jne	.label_32
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fmt
	jmp	.label_22
.label_32:
	mov	rsp, rsp
	jmp	.label_17
.label_17:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_36
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.16
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_39
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	call	fmt
	jmp	.label_48
.label_39:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17_0
	nop	
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	call	fopen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_18
	mov	rdi, qword ptr [rbp - 0x30]
	call	fmt
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_25
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0x48], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x48]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb9], 0
.label_25:
	lea	rsi, [rsi]
	jmp	.label_37
.label_18:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.19
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb9], 0
.label_37:
	jmp	.label_48
.label_48:
	jmp	.label_50
.label_50:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_17
.label_36:
	nop	
	jmp	.label_22
.label_22:
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0xb9]
	lea	rdi, [rdi]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xc0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402150

	.globl set_prefix
	.type set_prefix, @function
set_prefix:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [prefix_lead_space]],  0
.label_59:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x20
	jne	.label_58
	nop	
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	add	eax, 1
	mov	dword ptr [dword ptr [prefix_lead_space]],  eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_59
.label_58:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [prefix]],  rax
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [prefix_full_length]],  ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi,  dword ptr [dword ptr [prefix_full_length]]
	nop	
	add	rax, rdi
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_56:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], cl
	jbe	.label_57
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x20
	mov	rbp, rbp
	sete	dl
	mov	byte ptr [rbp - 0x11], dl
.label_57:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_54
	jmp	.label_55
.label_54:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_56
.label_55:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	sub	rax, rcx
	mov	edx, eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [prefix_length]],  edx
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402270

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	esi, 2
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	fadvise
	mov	byte ptr [byte ptr [tabs]],  0
	mov	dword ptr [dword ptr [other_indent]],  0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	get_prefix
	mov	dword ptr [dword ptr [next_char]],  eax
.label_62:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	get_paragraph
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_60
	mov	rbp, rbp
	jmp	.label_61
.label_60:
	nop	
	call	fmt_paragraph
	nop	
	mov	rdi,  qword ptr [word ptr [word_limit]]
	nop	
	call	put_paragraph
	nop	
	jmp	.label_62
.label_61:
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402300

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	dword ptr [dword ptr [in_column]],  0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	mov	rbp, rbp
	call	getc_unlocked
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, eax
	mov	rbp, rbp
	call	get_space
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [prefix_length]],  0
	jne	.label_65
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	cmp	eax,  dword ptr [dword ptr [in_column]]
	lea	rdi, [rdi]
	jge	.label_63
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_69
.label_63:
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 8], eax
.label_69:
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [next_prefix_indent]],  eax
	mov	rsp, rsp
	jmp	.label_68
.label_65:
	nop	
	mov	eax,  dword ptr [dword ptr [in_column]]
	nop	
	mov	dword ptr [dword ptr [next_prefix_indent]],  eax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [prefix]]
	mov	qword ptr [rbp - 0x18], rcx
.label_66:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_67
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], cl
	mov	edx, dword ptr [rbp - 0xc]
	movzx	esi, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	cmp	edx, esi
	je	.label_70
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_64
.label_70:
	mov	eax,  dword ptr [dword ptr [in_column]]
	nop	
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [dword ptr [in_column]],  eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	getc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_66
.label_67:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	call	get_space
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
.label_68:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], eax
.label_64:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402470

	.globl get_paragraph
	.type get_paragraph, @function
get_paragraph:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [dword ptr [last_line_length]],  0
	mov	eax,  dword ptr [dword ptr [next_char]]
	mov	dword ptr [rbp - 0x1c], eax
.label_99:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0xa
	mov	byte ptr [rbp - 1], al
	je	.label_77
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], -1
	mov	byte ptr [rbp - 1], al
	je	.label_77
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	mov	rbp, rbp
	cmp	ecx,  dword ptr [dword ptr [prefix_lead_space]]
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	jl	.label_77
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	mov	rsp, rsp
	add	ecx,  dword ptr [dword ptr [prefix_full_length]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	nop	
	setl	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], dl
.label_77:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_72
	lea	rsi, [rsi]
	jmp	.label_79
.label_72:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x1c]
	call	copy_rest
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_78
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [next_char]],  0xffffffff
	mov	byte ptr [rbp - 0x1d], 0
	lea	rsi, [rsi]
	jmp	.label_86
.label_78:
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	call	get_prefix
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_99
.label_79:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:unused_word_type
	movabs	rcx, OFFSET FLAT:parabuf
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [next_prefix_indent]]
	mov	dword ptr [dword ptr [prefix_indent]],  edx
	mov	edx,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [dword ptr [first_indent]],  edx
	mov	qword ptr [word ptr [wptr]],  rcx
	mov	qword ptr [word ptr [word_limit]],  rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1c]
	nop	
	call	get_line
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	call	same_para
	and	al, 1
	movzx	edi, al
	call	set_other_indent
	test	byte ptr [byte ptr [split]],  1
	mov	rbp, rbp
	je	.label_96
	jmp	.label_94
.label_96:
	test	byte ptr [byte ptr [crown]],  1
	lea	rsi, [rsi]
	je	.label_71
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	same_para
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_82
	jmp	.label_80
.label_82:
	jmp	.label_76
.label_76:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1c]
	call	get_line
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	edi, dword ptr [rbp - 0x1c]
	call	same_para
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	cl, dil
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	nop	
	jne	.label_93
	jmp	.label_97
.label_93:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [in_column]]
	nop	
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	mov	rbp, rbp
	sete	cl
	mov	byte ptr [rbp - 0x15], cl
.label_97:
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_76
	jmp	.label_80
.label_80:
	lea	rsi, [rsi]
	jmp	.label_81
.label_71:
	nop	
	test	byte ptr [byte ptr [tagged]],  1
	je	.label_84
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	call	same_para
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_87
	lea	rsi, [rsi]
	jmp	.label_90
.label_87:
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	je	.label_90
	jmp	.label_89
.label_89:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	call	get_line
	mov	dword ptr [rbp - 0x1c], eax
	mov	edi, dword ptr [rbp - 0x1c]
	call	same_para
	lea	rsi, [rsi]
	xor	edi, edi
	mov	cl, dil
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 3], cl
	jne	.label_75
	lea	rdi, [rdi]
	jmp	.label_83
.label_75:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 3], cl
.label_83:
	mov	al, byte ptr [rbp - 3]
	test	al, 1
	nop	
	jne	.label_89
	lea	rsi, [rsi]
	jmp	.label_90
.label_90:
	jmp	.label_92
.label_84:
	lea	rdi, [rdi]
	jmp	.label_91
.label_91:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1c]
	call	same_para
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	cl, dil
	mov	rbp, rbp
	test	al, 1
	nop	
	mov	byte ptr [rbp - 2], cl
	jne	.label_98
	lea	rsi, [rsi]
	jmp	.label_74
.label_98:
	mov	eax,  dword ptr [dword ptr [in_column]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 2], cl
.label_74:
	mov	al, byte ptr [rbp - 2]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_85
	lea	rdi, [rdi]
	jmp	.label_95
.label_85:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x1c]
	call	get_line
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_91
.label_95:
	mov	rsp, rsp
	jmp	.label_92
.label_92:
	mov	rsp, rsp
	jmp	.label_81
.label_81:
	jmp	.label_94
.label_94:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:unused_word_type
	nop	
	cmp	rax,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	jae	.label_73
	jmp	.label_88
.label_73:
	movabs	rdi, OFFSET FLAT:.str.46
	movabs	rsi, OFFSET FLAT:.str.47
	mov	edx, 0x25e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_paragraph
	mov	rsp, rsp
	call	__assert_fail
.label_88:
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	mov	cl, byte ptr [rax - 0x18]
	mov	rbp, rbp
	and	cl, 0xf7
	or	cl, 8
	lea	rdi, [rdi]
	mov	byte ptr [rax - 0x18], cl
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	cl, byte ptr [rax - 0x18]
	lea	rdi, [rdi]
	and	cl, 0xfd
	or	cl, 2
	mov	rbp, rbp
	mov	byte ptr [rax - 0x18], cl
	mov	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [next_char]],  edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], 1
.label_86:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1d]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028b0

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	qword ptr [rax + 0x18], 0
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [max_width]]
	nop	
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	rax,  qword ptr [word ptr [word_limit]]
	add	rax, -0x28
	mov	qword ptr [rbp - 8], rax
.label_106:
	movabs	rax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jb	.label_105
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:unused_word_type
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jne	.label_101
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_107
.label_101:
	mov	eax,  dword ptr [dword ptr [other_indent]]
	mov	dword ptr [rbp - 0x14], eax
.label_107:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 8]
	add	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], eax
.label_104:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x24]
	call	line_cost
	movabs	rdi, OFFSET FLAT:unused_word_type
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 8], rdi
	jne	.label_108
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [last_line_length]],  0
	jle	.label_108
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax,  dword ptr [dword ptr [last_line_length]]
	imul	eax, eax, 0xa
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax,  dword ptr [dword ptr [last_line_length]]
	nop	
	imul	eax, eax, 0xa
	movsxd	rsi, eax
	imul	rdx, rsi
	mov	rax, rdx
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_108:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jge	.label_103
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	edx, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], edx
.label_103:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	jne	.label_100
	jmp	.label_102
.label_100:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax - 0x1c]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	ecx, dword ptr [rax + 8]
	add	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax,  dword ptr [dword ptr [max_width]]
	jl	.label_104
.label_102:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	base_cost
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 8]
	add	rax, -0x28
	mov	qword ptr [rbp - 8], rax
	jmp	.label_106
.label_105:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

	.globl put_paragraph
	.type put_paragraph, @function
put_paragraph:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:unused_word_type
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [first_indent]]
	mov	rsp, rsp
	mov	rdi, rax
	call	put_line
	nop	
	mov	rax,  qword ptr [word ptr [label_110]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_111:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	je	.label_109
	mov	rdi, qword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [other_indent]]
	lea	rsi, [rsi]
	call	put_line
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_111
.label_109:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

	.globl get_space
	.type get_space, @function
get_space:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
.label_114:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0x20
	mov	rsp, rsp
	jne	.label_113
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [dword ptr [in_column]],  eax
	mov	rsp, rsp
	jmp	.label_115
.label_113:
	cmp	dword ptr [rbp - 8], 9
	lea	rsi, [rsi]
	jne	.label_112
	mov	eax, 8
	nop	
	mov	byte ptr [byte ptr [tabs]],  1
	mov	ecx,  dword ptr [dword ptr [in_column]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	mov	eax, ecx
	nop	
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	idiv	ecx
	nop	
	add	eax, 1
	shl	eax, 3
	mov	rsp, rsp
	mov	dword ptr [dword ptr [in_column]],  eax
	jmp	.label_116
.label_112:
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_116:
	lea	rdi, [rdi]
	jmp	.label_115
.label_115:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	getc_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	jmp	.label_114
	.section	.text
	.align	16
	#Procedure 0x402c70

	.globl copy_rest
	.type copy_rest, @function
copy_rest:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], esi
	mov	rsp, rsp
	mov	dword ptr [dword ptr [out_column]],  0
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [in_column]]
	mov	rbp, rbp
	cmp	esi,  dword ptr [dword ptr [next_prefix_indent]]
	jg	.label_126
	cmp	dword ptr [rbp - 0x18], 0xa
	je	.label_124
	cmp	dword ptr [rbp - 0x18], -1
	mov	rsp, rsp
	je	.label_124
.label_126:
	mov	edi,  dword ptr [dword ptr [next_prefix_indent]]
	call	put_space
	nop	
	mov	rax,  qword ptr [word ptr [prefix]]
	mov	qword ptr [rbp - 0x20], rax
.label_120:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [out_column]]
	cmp	eax,  dword ptr [dword ptr [in_column]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	je	.label_123
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], dl
.label_123:
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_122
	mov	rbp, rbp
	jmp	.label_127
.label_122:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 4], eax
	nop	
	mov	eax,  dword ptr [dword ptr [out_column]]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [dword ptr [out_column]],  eax
	lea	rsi, [rsi]
	jmp	.label_120
.label_127:
	nop	
	cmp	dword ptr [rbp - 0x18], -1
	mov	rsp, rsp
	je	.label_118
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x18], 0xa
	mov	rbp, rbp
	je	.label_118
	mov	eax,  dword ptr [dword ptr [in_column]]
	sub	eax,  dword ptr [dword ptr [out_column]]
	mov	edi, eax
	call	put_space
.label_118:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], -1
	jne	.label_117
	mov	eax,  dword ptr [dword ptr [in_column]]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	add	ecx,  dword ptr [dword ptr [prefix_length]]
	cmp	eax, ecx
	jl	.label_117
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
.label_117:
	lea	rsi, [rsi]
	jmp	.label_124
.label_124:
	mov	rsp, rsp
	jmp	.label_119
.label_119:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x18], 0xa
	mov	byte ptr [rbp - 5], cl
	lea	rdi, [rdi]
	je	.label_128
	cmp	dword ptr [rbp - 0x18], -1
	setne	al
	mov	byte ptr [rbp - 5], al
.label_128:
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	jne	.label_121
	lea	rsi, [rsi]
	jmp	.label_125
.label_121:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x18]
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xc], eax
	call	getc_unlocked
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_119
.label_125:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e70

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:unused_word_type
	lea	rsi, [rsi]
	add	rax, 0x9bf0
	movabs	rcx, OFFSET FLAT:parabuf
	nop	
	add	rcx, 0x1388
	mov	qword ptr [rbp - 0x30], rdi
	mov	dword ptr [rbp - 0x20], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_130:
	mov	rax,  qword ptr [word ptr [wptr]]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_138:
	mov	rax,  qword ptr [word ptr [wptr]]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jne	.label_129
	mov	edi, 1
	mov	rsp, rsp
	call	set_other_indent
	mov	rbp, rbp
	call	flush_paragraph
.label_129:
	mov	eax, dword ptr [rbp - 0x20]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [wptr]]
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	qword ptr [word ptr [wptr]],  rsi
	mov	rsp, rsp
	mov	byte ptr [rdx], cl
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	getc_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], -1
	mov	byte ptr [rbp - 0x24], cl
	je	.label_135
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x2000
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x24], sil
.label_135:
	mov	al, byte ptr [rbp - 0x24]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_138
	mov	rax,  qword ptr [word ptr [wptr]]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rsp, rsp
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [word_limit]]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], edx
	add	edx,  dword ptr [dword ptr [in_column]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [in_column]],  edx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	call	check_punctuation
	mov	edx,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x20]
	call	get_space
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	eax,  dword ptr [dword ptr [in_column]]
	sub	eax, dword ptr [rbp - 0x1c]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 0xc], eax
	cmp	dword ptr [rbp - 0x20], -1
	mov	byte ptr [rbp - 0x23], r8b
	mov	rbp, rbp
	je	.label_139
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	sil, byte ptr [rdx + 0x10]
	shr	sil, 1
	mov	rbp, rbp
	and	sil, 1
	movzx	eax, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	je	.label_136
	mov	al, 1
	cmp	dword ptr [rbp - 0x20], 0xa
	mov	byte ptr [rbp - 0x25], al
	nop	
	je	.label_133
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [word_limit]]
	cmp	dword ptr [rax + 0xc], 1
	setg	cl
	mov	byte ptr [rbp - 0x25], cl
.label_133:
	mov	al, byte ptr [rbp - 0x25]
	nop	
	mov	byte ptr [rbp - 0x21], al
.label_136:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x23], al
.label_139:
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	al, cl
	lea	rdi, [rdi]
	mov	sil, byte ptr [rdx + 0x10]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	shl	al, 3
	and	sil, 0xf7
	mov	rbp, rbp
	or	sil, al
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x10], sil
	cmp	dword ptr [rbp - 0x20], 0xa
	nop	
	je	.label_131
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x20], -1
	je	.label_131
	mov	rsp, rsp
	test	byte ptr [byte ptr [uniform]],  1
	je	.label_134
.label_131:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, 2
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	sil, byte ptr [rdx + 0x10]
	shr	sil, 3
	and	sil, 1
	movzx	edi, sil
	nop	
	cmp	edi, 0
	mov	rbp, rbp
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rdx + 0xc], eax
.label_134:
	nop	
	mov	rax,  qword ptr [word ptr [word_limit]]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_137
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_137:
	mov	rax,  qword ptr [word ptr [word_limit]]
	add	rax, 0x28
	mov	rsp, rsp
	mov	qword ptr [word ptr [word_limit]],  rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 0xa
	mov	byte ptr [rbp - 0x22], cl
	je	.label_132
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	setne	al
	nop	
	mov	byte ptr [rbp - 0x22], al
.label_132:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	nop	
	jne	.label_130
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	get_prefix
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031c0

	.globl set_other_indent
	.type set_other_indent, @function
set_other_indent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	nop	
	mov	byte ptr [rbp - 5], al
	mov	rsp, rsp
	test	byte ptr [byte ptr [split]],  1
	mov	rsp, rsp
	je	.label_140
	mov	eax,  dword ptr [dword ptr [first_indent]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [other_indent]],  eax
	jmp	.label_142
.label_140:
	test	byte ptr [byte ptr [crown]],  1
	lea	rdi, [rdi]
	je	.label_150
	test	byte ptr [rbp - 5], 1
	je	.label_144
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_147
.label_144:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [rbp - 4], eax
.label_147:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [other_indent]],  eax
	lea	rsi, [rsi]
	jmp	.label_146
.label_150:
	test	byte ptr [byte ptr [tagged]],  1
	nop	
	je	.label_143
	test	byte ptr [rbp - 5], 1
	je	.label_141
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	lea	rdi, [rdi]
	je	.label_141
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [other_indent]],  eax
	mov	rbp, rbp
	jmp	.label_145
.label_141:
	mov	eax,  dword ptr [dword ptr [other_indent]]
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	jne	.label_149
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 3
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [first_indent]],  0
	mov	rbp, rbp
	cmove	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [other_indent]],  eax
.label_149:
	nop	
	jmp	.label_145
.label_145:
	jmp	.label_148
.label_143:
	nop	
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [dword ptr [other_indent]],  eax
.label_148:
	jmp	.label_146
.label_146:
	jmp	.label_142
.label_142:
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403300

	.globl same_para
	.type same_para, @function
same_para:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [prefix_indent]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], cl
	jne	.label_151
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	edx,  dword ptr [dword ptr [next_prefix_indent]]
	mov	rbp, rbp
	add	edx,  dword ptr [dword ptr [prefix_full_length]]
	mov	rbp, rbp
	cmp	eax, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], cl
	jl	.label_151
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0xa
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], cl
	je	.label_151
	cmp	dword ptr [rbp - 4], -1
	setne	al
	nop	
	mov	byte ptr [rbp - 5], al
.label_151:
	mov	al, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl put_space
	.type put_space, @function
put_space:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [out_column]]
	mov	rsp, rsp
	add	edi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], edi
	nop	
	test	byte ptr [byte ptr [tabs]],  1
	je	.label_156
	mov	eax, 8
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x14]
	idiv	ecx
	lea	rdi, [rdi]
	shl	eax, 3
	mov	dword ptr [rbp - 8], eax
	mov	eax,  dword ptr [dword ptr [out_column]]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_154
	jmp	.label_153
.label_153:
	mov	eax,  dword ptr [dword ptr [out_column]]
	cmp	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	jge	.label_152
	lea	rdi, [rdi]
	mov	edi, 9
	call	putchar_unlocked
	mov	edi, 8
	mov	ecx,  dword ptr [dword ptr [out_column]]
	mov	dword ptr [rbp - 4], eax
	mov	eax, ecx
	nop	
	cdq	
	idiv	edi
	add	eax, 1
	shl	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [out_column]],  eax
	nop	
	jmp	.label_153
.label_152:
	jmp	.label_154
.label_154:
	jmp	.label_156
.label_156:
	mov	rbp, rbp
	jmp	.label_157
.label_157:
	mov	eax,  dword ptr [dword ptr [out_column]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_155
	lea	rdi, [rdi]
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [out_column]]
	lea	rsi, [rsi]
	add	edi, 1
	mov	dword ptr [dword ptr [out_column]],  edi
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_157
.label_155:
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [word ptr [word_limit]],  rax
	jne	.label_163
	movabs	rax, OFFSET FLAT:parabuf
	nop	
	mov	ecx, 1
	nop	
	mov	esi, ecx
	mov	rdx,  qword ptr [word ptr [wptr]]
	lea	rsi, [rsi]
	sub	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fwrite_unlocked
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:parabuf
	mov	rbp, rbp
	mov	qword ptr [word ptr [wptr]],  rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_166
.label_163:
	call	fmt_paragraph
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [label_110]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_158:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	je	.label_160
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rcx + 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_165
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rbp - 8], rax
.label_165:
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffffff6
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jg	.label_159
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 9
	mov	qword ptr [rbp - 8], rax
.label_159:
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_158
.label_160:
	mov	rdi, qword ptr [rbp - 0x50]
	call	put_paragraph
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	nop	
	movabs	rcx, OFFSET FLAT:parabuf
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rdx]
	mov	rdx,  qword ptr [word ptr [wptr]]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r8]
	lea	rdi, [rdi]
	sub	rdx, r8
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:parabuf
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	call	memmove
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rcx, rdx
	mov	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx,  qword ptr [word ptr [wptr]]
	mov	rsp, rsp
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rdi, rsi
	lea	rsi, [rsi]
	add	rcx, rdi
	mov	qword ptr [word ptr [wptr]],  rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x28], rcx
.label_162:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	ja	.label_164
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx]
	movsxd	rdi, eax
	lea	rdi, [rdi]
	sub	rcx, rdi
	lea	rdi, [rdi]
	add	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rdx], rsi
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x28
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_162
.label_164:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	eax, 0x28
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:unused_word_type
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [word_limit]]
	mov	r9, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	r8, r9
	mov	rax, r8
	mov	qword ptr [rbp - 0x58], rdx
	nop	
	cqo	
	nop	
	mov	r8, qword ptr [rbp - 0x58]
	idiv	r8
	add	rax, 1
	mov	rbp, rbp
	imul	rax, rax, 0x28
	nop	
	mov	r10d, OFFSET FLAT:unused_word_type
	mov	rbp, rbp
	mov	r9d, r10d
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r9
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, r9
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	call	memmove
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rcx
	cqo	
	mov	rsi, qword ptr [rbp - 0x58]
	idiv	rsi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [word_limit]]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	r8, rax
	lea	rsi, [rsi]
	imul	rax, r8, 0x28
	add	rdi, rax
	mov	qword ptr [word ptr [word_limit]],  rdi
.label_166:
	add	rsp, 0x60
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl check_punctuation
	.type check_punctuation, @function
check_punctuation:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:.str.48
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	sub	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	add	rdi, rcx
	mov	qword ptr [rbp - 0x28], rdi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	sil, byte ptr [rcx]
	nop	
	mov	byte ptr [rbp - 0x11], sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx]
	mov	rdi, rax
	nop	
	call	strchr
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	setne	r8b
	and	r8b, 1
	movzx	edx, r8b
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8b, dl
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rax + 0x10]
	and	r8b, 1
	and	r9b, 0xfe
	or	r9b, r8b
	mov	byte ptr [rax + 0x10], r9b
	movzx	edx, byte ptr [rbp - 0x11]
	movsxd	rax, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	lea	rsi, [rsi]
	cmp	edx, 0
	setne	r8b
	xor	r8b, 0xff
	xor	r8b, 0xff
	and	r8b, 1
	movzx	edx, r8b
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8b, dl
	mov	r9b, byte ptr [rax + 0x10]
	and	r8b, 1
	lea	rsi, [rsi]
	shl	r8b, 2
	and	r9b, 0xfb
	or	r9b, r8b
	nop	
	mov	byte ptr [rax + 0x10], r9b
.label_168:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
	mov	rbp, rbp
	jae	.label_169
	movabs	rdi, OFFSET FLAT:.str.49
	mov	rax, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rax]
	mov	rsp, rsp
	call	strchr
	cmp	rax, 0
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
.label_169:
	mov	al, byte ptr [rbp - 0x29]
	nop	
	test	al, 1
	nop	
	jne	.label_167
	lea	rdi, [rdi]
	jmp	.label_170
.label_167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_168
.label_170:
	nop	
	movabs	rdi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rax]
	lea	rsi, [rsi]
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	cl, sil
	mov	dl, byte ptr [rax + 0x10]
	and	cl, 1
	mov	rbp, rbp
	shl	cl, 1
	and	dl, 0xfd
	or	dl, cl
	mov	byte ptr [rax + 0x10], dl
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl line_cost
	.type line_cost, @function
line_cost:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	cmp	rdi,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	jne	.label_171
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_173
.label_171:
	mov	eax,  dword ptr [dword ptr [goal_width]]
	sub	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	nop	
	imul	eax, dword ptr [rbp - 0x10], 0xa
	movsxd	rcx, eax
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x10], 0xa
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	imul	rcx, rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [word_limit]]
	lea	rsi, [rsi]
	je	.label_172
	mov	rsp, rsp
	mov	eax, 2
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	eax, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x10], 0xa
	nop	
	movsxd	rdx, eax
	imul	eax, dword ptr [rbp - 0x10], 0xa
	movsxd	rsi, eax
	imul	rdx, rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_172:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_173:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0

	.globl base_cost
	.type base_cost, @function
base_cost:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:unused_word_type
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0x1324
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], rax
	jbe	.label_181
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax - 0x18]
	shr	cl, 1
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_176
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax - 0x18]
	nop	
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_177
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	sub	rax, 0x9c4
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_182
.label_177:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x57e40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_182:
	jmp	.label_175
.label_176:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax - 0x18]
	lea	rdi, [rdi]
	shr	cl, 2
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_183
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 0x640
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_178
.label_183:
	movabs	rax, OFFSET FLAT:unused_word_type
	add	rax, 0x28
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], rax
	jbe	.label_179
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax - 0x40]
	nop	
	shr	cl, 3
	nop	
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_179
	nop	
	mov	eax, 0x9c40
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx - 0x20]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	nop	
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_179:
	mov	rbp, rbp
	jmp	.label_178
.label_178:
	jmp	.label_175
.label_175:
	lea	rsi, [rsi]
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_180
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 0x640
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_174
.label_180:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x10]
	lea	rdi, [rdi]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_184
	lea	rsi, [rsi]
	mov	eax, 0x57e4
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 8]
	add	edx, 2
	movsxd	rcx, edx
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_184:
	nop	
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], esi
	mov	dword ptr [dword ptr [out_column]],  0
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [prefix_indent]]
	mov	rsp, rsp
	call	put_space
	nop	
	mov	rdi,  qword ptr [word ptr [prefix]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [prefix_length]]
	add	ecx,  dword ptr [dword ptr [out_column]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [out_column]],  ecx
	mov	ecx, dword ptr [rbp - 0x18]
	sub	ecx,  dword ptr [dword ptr [out_column]]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	call	put_space
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	add	rsi, -0x28
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
.label_186:
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	je	.label_185
	mov	rdi, qword ptr [rbp - 8]
	call	put_word
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi + 0xc]
	call	put_space
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_186
.label_185:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	put_word
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	eax,  dword ptr [dword ptr [out_column]]
	mov	dword ptr [dword ptr [last_line_length]],  eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403db0

	.globl put_word
	.type put_word, @function
put_word:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 8]
	nop	
	mov	dword ptr [rbp - 4], eax
.label_187:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	je	.label_188
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_187
.label_188:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	add	ecx,  dword ptr [dword ptr [out_column]]
	nop	
	mov	dword ptr [dword ptr [out_column]],  ecx
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403e50
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e80
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0

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
	je	.label_189
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_192
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_189
.label_192:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_191
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_193
.label_191:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_193:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_189:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_190
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_190:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404020

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_194
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 8], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	call	fdadvise
.label_194:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_195
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_195:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_197
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_198
.label_197:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_198:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_196
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_196
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_199
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_199:
	jmp	.label_196
.label_196:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404200
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_200
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_201
.label_200:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_202
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_203
.label_202:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_204
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_205
.label_204:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_206
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_207
.label_206:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_207
.label_207:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404470
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_208
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_208:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_209
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_209:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_211
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_210
.label_211:
	call	abort
.label_210:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404570
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_212
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_213
.label_212:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_213
.label_213:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404670

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_396:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_385
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_395]]
	jmp	rcx
.label_723:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_722:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_397
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_341
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_341:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_397
.label_397:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_223
.label_724:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_223
.label_725:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_226
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_226:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_243
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_265:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_249
	jmp	.label_217
.label_217:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_251
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_251:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_265
.label_249:
	mov	rbp, rbp
	jmp	.label_243
.label_243:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_223
.label_720:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_719:
	mov	byte ptr [rbp - 0x3e], 1
.label_721:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_291
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_291:
	jmp	.label_294
.label_294:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_295
	jmp	.label_299
.label_299:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_300
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_300:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_295
.label_295:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_223
.label_718:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_223
.label_385:
	call	abort
.label_223:
	mov	qword ptr [rbp - 0xd8], 0
.label_332:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_326
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_329
.label_326:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_329:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_348
	mov	rbp, rbp
	jmp	.label_357
.label_348:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_359
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_359
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_359
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_369
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_369
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_378
.label_369:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_378:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_359
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_359
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_393
	jmp	.label_216
.label_393:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_359:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_400
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_412]]
	nop	
	jmp	rcx
.label_688:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_414
	mov	rsp, rsp
	jmp	.label_219
.label_219:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_222
	jmp	.label_216
.label_222:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_224
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_224
	nop	
	jmp	.label_232
.label_232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_235
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_235:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_244
.label_244:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_247
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_253
.label_253:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_258
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_258:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_224:
	lea	rsi, [rsi]
	jmp	.label_268
.label_268:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_271:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_278
.label_278:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_283
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_283
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_283
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_283
	nop	
	jmp	.label_306
.label_306:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_307
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_307:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_316
.label_316:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_257:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_283
.label_283:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_333
.label_414:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_338
	mov	rbp, rbp
	jmp	.label_319
.label_338:
	jmp	.label_333
.label_333:
	jmp	.label_270
.label_699:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_346
	mov	rbp, rbp
	jmp	.label_352
.label_352:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_355
	jmp	.label_404
.label_346:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_363
	jmp	.label_216
.label_363:
	jmp	.label_237
.label_355:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_242
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_242
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_242
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_364
	nop	
	jmp	.label_382
.label_382:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_364
	jmp	.label_387
.label_387:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_364
	jmp	.label_391
.label_391:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_364
	jmp	.label_315
.label_315:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_236
	jmp	.label_364
.label_364:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_405
	jmp	.label_216
.label_405:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_409:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_228
.label_228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_310:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_239
.label_239:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_246
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_246:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_269:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_261
.label_236:
	jmp	.label_261
.label_261:
	jmp	.label_242
.label_242:
	jmp	.label_237
.label_404:
	jmp	.label_237
.label_237:
	jmp	.label_270
.label_689:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_273
.label_690:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_273
.label_694:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_273
.label_692:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_281
.label_695:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_281
.label_691:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_281
.label_693:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_273
.label_700:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_293
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_297
	nop	
	jmp	.label_216
.label_297:
	lea	rsi, [rsi]
	jmp	.label_301
.label_293:
	test	byte ptr [rbp - 0x89], 1
	je	.label_311
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_311
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_311
	jmp	.label_301
.label_311:
	jmp	.label_281
.label_281:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_318
	test	byte ptr [rbp - 0x3e], 1
	je	.label_318
	jmp	.label_216
.label_318:
	mov	rsp, rsp
	jmp	.label_273
.label_273:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_324
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_327
.label_324:
	jmp	.label_270
.label_701:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_334
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_339
	jmp	.label_345
.label_334:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_339
.label_345:
	nop	
	jmp	.label_270
.label_339:
	jmp	.label_349
.label_349:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_350
	lea	rsi, [rsi]
	jmp	.label_270
.label_350:
	nop	
	jmp	.label_358
.label_358:
	mov	byte ptr [rbp - 0x91], 1
.label_696:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_361
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_361
	jmp	.label_216
.label_361:
	lea	rsi, [rsi]
	jmp	.label_270
.label_698:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_366
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_371
	jmp	.label_216
.label_371:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_308
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_308
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_308:
	jmp	.label_379
.label_379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_380
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_380:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_384
.label_384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_389
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_389:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_394
.label_394:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_399:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_366:
	lea	rsi, [rsi]
	jmp	.label_270
.label_697:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_270
.label_400:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_214
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_227
.label_214:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_245
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_245:
	jmp	.label_252
.label_252:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_328
	jmp	.label_274
.label_328:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_275
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_274
.label_275:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_280
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_304:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_285
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_285:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_381
	jmp	.label_302
.label_381:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_304
.label_302:
	jmp	.label_274
.label_280:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_314
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_314
	mov	qword ptr [rbp - 0xe8], 1
.label_365:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_320
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_323
	jmp	.label_342
.label_342:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_323
	jmp	.label_347
.label_347:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_323
	jmp	.label_354
.label_354:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_356
	mov	rsp, rsp
	jmp	.label_323
.label_323:
	mov	rsp, rsp
	jmp	.label_216
.label_356:
	jmp	.label_331
.label_331:
	mov	rsp, rsp
	jmp	.label_260
.label_260:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_365
.label_320:
	mov	rbp, rbp
	jmp	.label_314
.label_314:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_288
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_288:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_372
.label_372:
	lea	rsi, [rsi]
	jmp	.label_375
.label_375:
	jmp	.label_376
.label_376:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
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
	jne	.label_252
.label_274:
	jmp	.label_227
.label_227:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_383
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_259
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_259
.label_383:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_374:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_401
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_401
	jmp	.label_406
.label_406:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_407
	jmp	.label_216
.label_407:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_411
	test	byte ptr [rbp - 0x42], 1
	jne	.label_411
	lea	rdi, [rdi]
	jmp	.label_215
.label_215:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_231
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_321
.label_321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_233
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_233:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_240
.label_240:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_336
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_411:
	jmp	.label_254
.label_254:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_255
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_255:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_262
.label_262:
	jmp	.label_264
.label_264:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_266
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_266:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_286
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_286:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_296
.label_401:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_305
	lea	rdi, [rdi]
	jmp	.label_309
.label_309:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_313
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_313:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_305:
	nop	
	jmp	.label_296
.label_296:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_238
	jmp	.label_330
.label_238:
	lea	rsi, [rsi]
	jmp	.label_335
.label_335:
	test	byte ptr [rbp - 0x42], 1
	je	.label_290
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_290
	lea	rsi, [rsi]
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_344
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_344:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_351
.label_351:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_360:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_290:
	nop	
	jmp	.label_367
.label_367:
	mov	rsp, rsp
	jmp	.label_267
.label_267:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_370
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_370:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_374
.label_330:
	mov	rsp, rsp
	jmp	.label_301
.label_259:
	lea	rsi, [rsi]
	jmp	.label_270
.label_270:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_403
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_388
.label_403:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_337
.label_388:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_337
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
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
	jne	.label_292
.label_337:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_292
	mov	rsp, rsp
	jmp	.label_301
.label_292:
	nop	
	jmp	.label_327
.label_327:
	jmp	.label_413
.label_413:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_408
	jmp	.label_216
.label_408:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_218
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_218
	lea	rdi, [rdi]
	jmp	.label_225
.label_225:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_276
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_241
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_241:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_248
.label_248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_390
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_390:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_218:
	jmp	.label_317
.label_317:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_263
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_263:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_272
.label_272:
	nop	
	jmp	.label_301
.label_301:
	jmp	.label_277
.label_277:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_282
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_282
	lea	rdi, [rdi]
	jmp	.label_402
.label_402:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_287
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_287:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_298
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_298:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_282:
	jmp	.label_312
.label_312:
	nop	
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_373
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_322
	mov	byte ptr [rbp - 0xb7], 0
.label_322:
	mov	rbp, rbp
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_332
.label_357:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_340
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_340
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_340
	nop	
	jmp	.label_216
.label_340:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_353
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_353
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_353
	test	byte ptr [rbp - 0xb7], 1
	je	.label_362
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_230
.label_362:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_377
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_377
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_396
.label_377:
	jmp	.label_386
.label_386:
	mov	rbp, rbp
	jmp	.label_353
.label_353:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_220
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_220
	mov	rbp, rbp
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_392
	lea	rdi, [rdi]
	jmp	.label_229
.label_229:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_398:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_284
.label_392:
	jmp	.label_220
.label_220:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_221
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_221:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_230
.label_216:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_234
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_234
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_234:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_230:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406110
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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_415
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_416
.label_415:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_416
.label_416:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
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
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
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
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_417
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_417:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350
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
.label_422:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_421
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
	jmp	.label_422
.label_421:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_420
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_418]],  rax
.label_420:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_419
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_419:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406460

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
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064b0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_427
	call	abort
.label_427:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_430
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_423
	call	xalloc_die
.label_423:
	test	byte ptr [rbp - 0x51], 1
	je	.label_424
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_428
.label_424:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_428:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_426
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_418]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_426:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
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
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_430:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_425
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_429
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_429:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_425:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4067e0

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
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406820
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406850
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406890

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0

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
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_431
	call	abort
.label_431:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406990

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a00

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a40
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a80

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b30

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b70

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ba0
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406be0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cc0

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
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406d10

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406db0
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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e00
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
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e60

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ea0
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ee0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f20

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f60

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_435
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_434
.label_435:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_433
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_434
.label_433:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_432
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_434
.label_432:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_434:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070a0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_440
	movabs	rsi, OFFSET FLAT:.str_5
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_437
.label_440:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_437:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
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
	mov	rdi, qword ptr [rbp - 0xc8]
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
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_438
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_439]]
	jmp	rcx
.label_674:
	jmp	.label_436
.label_675:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_436
.label_676:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_436
.label_677:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_436
.label_678:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_436
.label_679:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_436
.label_680:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_436
.label_681:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_436
.label_682:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_436
.label_683:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
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
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_436
.label_438:
	movabs	rdi, OFFSET FLAT:.str.13_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
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
	mov	dword ptr [rbp - 0x10c], eax
.label_436:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_441:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_442
	mov	rbp, rbp
	jmp	.label_443
.label_443:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_441
.label_442:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407990

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_448:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_444
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_450
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_449
.label_450:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_449:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_444:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_447
	mov	rsp, rsp
	jmp	.label_445
.label_447:
	jmp	.label_446
.label_446:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_448
.label_445:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407af0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_451
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_451:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407cb0
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
	movabs	rdi, OFFSET FLAT:.str.16_1
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
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d60
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
	jae	.label_452
	mov	rbp, rbp
	call	xalloc_die
.label_452:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407dc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_453
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_453
	lea	rdi, [rdi]
	call	xalloc_die
.label_453:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e20
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_454
	mov	rsp, rsp
	call	xalloc_die
.label_454:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ea0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_455
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_455
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_457
.label_455:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_456
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_456
	lea	rsi, [rsi]
	call	xalloc_die
.label_456:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_457:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_458
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_460
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_460:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_462
	call	xalloc_die
.label_462:
	lea	rsi, [rsi]
	jmp	.label_461
.label_458:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_459
	call	xalloc_die
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_461:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408080

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080b0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080f0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408140
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_463
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_464
.label_463:
	lea	rsi, [rsi]
	call	xalloc_die
.label_464:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081b0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408200
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408260

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_2
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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082c0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11d, r10d
	lea	rbx, [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x38], r8
	nop	
	mov	qword ptr [rbp - 0x58], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	r8, qword ptr [rbp - 0x38]
	mov	rsi, r11
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoumax
	nop	
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_470
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_474
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_468
.label_474:
	mov	dword ptr [rbp - 0x50], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0x3fffffff
	jbe	.label_478
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_476
.label_478:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_476:
	jmp	.label_468
.label_468:
	nop	
	jmp	.label_466
.label_470:
	cmp	dword ptr [rbp - 0x50], 1
	jne	.label_469
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_465
.label_469:
	cmp	dword ptr [rbp - 0x50], 3
	jne	.label_477
	call	__errno_location
	mov	dword ptr [rax], 0
.label_477:
	jmp	.label_465
.label_465:
	jmp	.label_466
.label_466:
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_467
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_471
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_473
.label_471:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_473
.label_473:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_472
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_475
.label_472:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], ecx
.label_475:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	call	quote
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084b0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], r9d
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x20]
	mov	r10d, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	dword ptr [rsp], r10d
	lea	rsi, [rsi]
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408520

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	mov	qword ptr [rbp - 0xd8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x54]
	jg	.label_489
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_489
	jmp	.label_528
.label_489:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_528:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_521
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_513
.label_521:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_513
.label_513:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x91], cl
.label_501:
	nop	
	movzx	eax, byte ptr [rbp - 0x91]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_542
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_501
.label_542:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_509
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_491
.label_509:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_525
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_531
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_531
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_531
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_493
.label_531:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_491
.label_493:
	lea	rdi, [rdi]
	jmp	.label_505
.label_525:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_508
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_511
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_491
.label_511:
	mov	dword ptr [rbp - 0x60], 1
.label_508:
	jmp	.label_505
.label_505:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_517
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_491
.label_517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_510
	mov	dword ptr [rbp - 0x64], 0x400
	mov	dword ptr [rbp - 0xd0], 1
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_486
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	jmp	.label_491
.label_486:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	nop	
	je	.label_502
	jmp	.label_533
.label_533:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_502
	nop	
	jmp	.label_519
.label_519:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_502
	nop	
	jmp	.label_530
.label_530:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_502
	lea	rsi, [rsi]
	jmp	.label_537
.label_537:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_502
	jmp	.label_543
.label_543:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_502
	jmp	.label_485
.label_485:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_502
	mov	rsp, rsp
	jmp	.label_499
.label_499:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_502
	jmp	.label_498
.label_498:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_502
	mov	rsp, rsp
	jmp	.label_512
.label_512:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_502
	jmp	.label_520
.label_520:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_535
	jmp	.label_502
.label_502:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_529
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], edx
	mov	rsp, rsp
	je	.label_484
	lea	rsi, [rsi]
	jmp	.label_483
.label_483:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_484
	jmp	.label_544
.label_544:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_496
	lea	rsi, [rsi]
	jmp	.label_503
.label_503:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_540
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_540:
	jmp	.label_496
.label_484:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_496:
	jmp	.label_529
.label_529:
	nop	
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rbp, rbp
	je	.label_524
	jmp	.label_538
.label_538:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_536
	jmp	.label_539
.label_539:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_541
	jmp	.label_479
.label_479:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_481
	nop	
	jmp	.label_490
.label_490:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_492
	nop	
	jmp	.label_500
.label_500:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_522
	mov	rsp, rsp
	jmp	.label_507
.label_507:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_497
	jmp	.label_534
.label_534:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_482
	mov	rbp, rbp
	jmp	.label_514
.label_514:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_516
	jmp	.label_526
.label_526:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_527
	jmp	.label_532
.label_532:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_523
	jmp	.label_494
.label_494:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_541
	jmp	.label_495
.label_495:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_481
	jmp	.label_515
.label_515:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_492
	jmp	.label_487
.label_487:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_497
	jmp	.label_518
.label_518:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_504
	jmp	.label_506
.label_527:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_524:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_523:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_480
.label_536:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_541:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_481:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_492:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_522:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_480
.label_497:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_480
.label_504:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_482:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_516:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_480
.label_506:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	jmp	.label_491
.label_480:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_488
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_488:
	jmp	.label_510
.label_510:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_491:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408eb0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_545
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_546
.label_545:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_546:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f30

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_547:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_548
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_547
.label_548:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408fb0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_553
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_551
.label_553:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_550
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
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
	je	.label_549
.label_550:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_549
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_549:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_552
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_552:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_551:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4090d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_554
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_555
.label_554:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_556
.label_555:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_556:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409140

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_557
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_557:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091a0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_558
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_558
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_558
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_559
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_560
.label_559:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_560
.label_558:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_560:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4092b0

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
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_561
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_561:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_562
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_562
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_562
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_563
.label_562:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_563:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_564
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_567
.label_564:
	mov	rbp, rbp
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_566
	jmp	.label_568
.label_566:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_565
.label_568:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_567:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409490

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
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_571
	test	byte ptr [rbp - 0x15], 1
	je	.label_570
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_571
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_570
.label_571:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_569
	call	__errno_location
	mov	dword ptr [rax], 0
.label_569:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_572
.label_570:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_572:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409570

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
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_573
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_575
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_574
.label_575:
	mov	byte ptr [rbp - 0xd], 0
.label_574:
	jmp	.label_573
.label_573:
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409610

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
	jne	.label_577
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_577:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_576
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_576:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409690

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
	ja	.label_578
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_579
.label_578:
	lea	rsi, [rsi]
	jmp	.label_579
.label_579:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096f0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jb	.label_581
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_581
	nop	
	jmp	.label_585
.label_585:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_584
	jmp	.label_581
.label_581:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_583
.label_584:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_583:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409780
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], eax
	jb	.label_586
	nop	
	jmp	.label_587
.label_587:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_588
	lea	rdi, [rdi]
	jmp	.label_586
.label_586:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_589
.label_588:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_589:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409800
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_590
	mov	rsp, rsp
	jmp	.label_592
.label_592:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_591
.label_590:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_591:
	nop	
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409850
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x20
	nop	
	mov	byte ptr [rbp - 5], al
	lea	rdi, [rdi]
	je	.label_593
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_593:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098a0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	eax, edi
	mov	rbp, rbp
	sub	edi, 0x20
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	jb	.label_594
	nop	
	jmp	.label_595
.label_595:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_596
	lea	rsi, [rsi]
	jmp	.label_594
.label_594:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_597
.label_596:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_597:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409910
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x30
	lea	rdi, [rdi]
	sub	edi, 9
	mov	dword ptr [rbp - 4], edi
	nop	
	ja	.label_599
	jmp	.label_598
.label_598:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_600
.label_599:
	mov	byte ptr [rbp - 5], 0
.label_600:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409960
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	nop
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	ja	.label_602
	lea	rsi, [rsi]
	jmp	.label_603
.label_603:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_601
.label_602:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_601:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4099b0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	ja	.label_604
	jmp	.label_605
.label_605:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_606
.label_604:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_606:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409a00
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, -0x20
	nop	
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_607
	jmp	.label_609
.label_609:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_608
.label_607:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_608:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a50
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rsp, rsp
	mov	eax, edi
	add	eax, -0x21
	mov	rsp, rsp
	sub	eax, 0xf
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_611
	jmp	.label_612
.label_612:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_611
	nop	
	jmp	.label_615
.label_615:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_611
	jmp	.label_613
.label_613:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_610
	mov	rsp, rsp
	jmp	.label_611
.label_611:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_614
.label_610:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_614:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b00
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rbp, rbp
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_616
	mov	rbp, rbp
	jmp	.label_617
.label_617:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_619
	mov	rsp, rsp
	jmp	.label_616
.label_616:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_618
.label_619:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_618:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b70
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x41
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	ja	.label_620
	jmp	.label_622
.label_622:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_621
.label_620:
	mov	byte ptr [rbp - 5], 0
.label_621:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bc0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_623
	lea	rdi, [rdi]
	jmp	.label_627
.label_627:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_623
	jmp	.label_624
.label_624:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_626
	jmp	.label_623
.label_623:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_625
.label_626:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_625:
	nop	
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c50

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	add	edi, -0x41
	lea	rdi, [rdi]
	sub	edi, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	ja	.label_628
	jmp	.label_629
.label_629:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_630
.label_628:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_630:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section .text
	.align	16
	#Procedure 0x409ca0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	add	edi, -0x61
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 8], edi
	ja	.label_631
	mov	rbp, rbp
	jmp	.label_632
.label_632:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_633
.label_631:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_633:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
