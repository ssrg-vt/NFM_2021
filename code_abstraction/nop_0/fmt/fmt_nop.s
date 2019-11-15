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
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
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
	mov	dword ptr [rbp - 0x14], eax
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
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	dword ptr [rbp - 0x20], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_9:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	call	exit
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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_16
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	nop	
	sete	cl
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
.label_16:
	mov	al, byte ptr [rbp - 0x21]
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
	mov	qword ptr [rbp - 0x10], rax
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
	mov	dword ptr [rbp - 0x28], eax
	nop	
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_12
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.35
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	nop	
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019d0

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	textdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:close_stdout
	nop	
	mov	qword ptr [rbp - 0x50], rax
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
	cmp	dword ptr [rbp - 8], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	jle	.label_18
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_18
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	sub	ecx, 0x30
	mov	rbp, rbp
	cmp	ecx, 9
	ja	.label_18
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 8]
	mov	rbp, rbp
	add	edx, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edx
.label_18:
	lea	rsi, [rsi]
	jmp	.label_35
.label_35:
	movabs	rdx, OFFSET FLAT:.str.11
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_41
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	nop	
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], ecx
	mov	rbp, rbp
	je	.label_44
	nop	
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x60], eax
	je	.label_50
	nop	
	jmp	.label_51
.label_51:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x64], eax
	lea	rdi, [rdi]
	je	.label_17
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	je	.label_22
	jmp	.label_24
.label_24:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x70
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	je	.label_25
	lea	rdi, [rdi]
	jmp	.label_28
.label_28:
	nop	
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x73
	nop	
	mov	dword ptr [rbp - 0x70], eax
	mov	rbp, rbp
	je	.label_19
	lea	rdi, [rdi]
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	je	.label_32
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x78], eax
	lea	rdi, [rdi]
	je	.label_38
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	sub	eax, 0x77
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_46
	jmp	.label_26
.label_26:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x30
	mov	rbp, rbp
	cmp	eax, 9
	ja	.label_42
	movabs	rdi, OFFSET FLAT:.str.12
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x80], edx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x80]
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_42:
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_17:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [crown]],  1
	mov	rbp, rbp
	jmp	.label_20
.label_19:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [split]],  1
	jmp	.label_20
.label_32:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [tagged]],  1
	jmp	.label_20
.label_38:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [uniform]],  1
	jmp	.label_20
.label_46:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_20
.label_22:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_20
.label_25:
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	set_prefix
	jmp	.label_20
.label_50:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_44:
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
.label_20:
	jmp	.label_35
.label_41:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_53
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
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
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	dword ptr [dword ptr [max_width]],  r9d
.label_53:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_31
	movabs	rdi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rdx,  dword ptr [dword ptr [max_width]]
	mov	qword ptr [rbp - 0x90], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [goal_width]],  r9d
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_45
	mov	eax,  dword ptr [dword ptr [goal_width]]
	add	eax, 0xa
	mov	dword ptr [dword ptr [max_width]],  eax
.label_45:
	jmp	.label_52
.label_31:
	mov	eax, 0xc8
	imul	ecx,  dword ptr [dword ptr [max_width]],  0xbb
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	idiv	ecx
	mov	dword ptr [dword ptr [goal_width]],  eax
.label_52:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 8]
	jne	.label_23
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fmt
	jmp	.label_29
.label_23:
	mov	rsp, rsp
	jmp	.label_30
.label_30:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_33
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.16
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_40
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	call	fmt
	jmp	.label_43
.label_40:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17_0
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	fopen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_48
	mov	rdi, qword ptr [rbp - 0x38]
	call	fmt
	mov	rdi, qword ptr [rbp - 0x38]
	call	rpl_fclose
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_34
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xa0], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0xa0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], 0
.label_34:
	lea	rsi, [rsi]
	jmp	.label_27
.label_48:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.19
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_27:
	jmp	.label_43
.label_43:
	jmp	.label_47
.label_47:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_30
.label_33:
	nop	
	jmp	.label_29
.label_29:
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	lea	rdi, [rdi]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402120

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
	.section	.text
	.align	16
	#Procedure 0x402240

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
.label_61:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	get_paragraph
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_60
	mov	rbp, rbp
	jmp	.label_62
.label_60:
	nop	
	call	fmt_paragraph
	nop	
	mov	rdi,  qword ptr [word ptr [word_limit]]
	nop	
	call	put_paragraph
	nop	
	jmp	.label_61
.label_62:
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022d0

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [dword ptr [in_column]],  0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	mov	rbp, rbp
	call	getc_unlocked
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, eax
	mov	rbp, rbp
	call	get_space
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [prefix_length]],  0
	jne	.label_69
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	cmp	eax,  dword ptr [dword ptr [in_column]]
	lea	rdi, [rdi]
	jge	.label_64
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_67
.label_64:
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 0x34], eax
.label_67:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [next_prefix_indent]],  eax
	mov	rsp, rsp
	jmp	.label_66
.label_69:
	nop	
	mov	eax,  dword ptr [dword ptr [in_column]]
	nop	
	mov	dword ptr [dword ptr [next_prefix_indent]],  eax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [prefix]]
	mov	qword ptr [rbp - 0x20], rcx
.label_63:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_70
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	mov	edx, dword ptr [rbp - 0x14]
	movzx	esi, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	edx, esi
	je	.label_68
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_65
.label_68:
	mov	eax,  dword ptr [dword ptr [in_column]]
	nop	
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [dword ptr [in_column]],  eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_63
.label_70:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	get_space
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_66:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
.label_65:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402440

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
	mov	dword ptr [rbp - 0x14], eax
.label_86:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0xa
	mov	byte ptr [rbp - 0x15], al
	je	.label_71
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], -1
	mov	byte ptr [rbp - 0x15], al
	je	.label_71
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	mov	rbp, rbp
	cmp	ecx,  dword ptr [dword ptr [prefix_lead_space]]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], al
	mov	rbp, rbp
	jl	.label_71
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
	mov	byte ptr [rbp - 0x15], dl
.label_71:
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_89
	lea	rsi, [rsi]
	jmp	.label_93
.label_89:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	call	copy_rest
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_96
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [next_char]],  0xffffffff
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_72
.label_96:
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	call	get_prefix
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_86
.label_93:
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
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	call	get_line
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	call	same_para
	and	al, 1
	movzx	edi, al
	call	set_other_indent
	test	byte ptr [byte ptr [split]],  1
	mov	rbp, rbp
	je	.label_83
	jmp	.label_81
.label_83:
	test	byte ptr [byte ptr [crown]],  1
	lea	rsi, [rsi]
	je	.label_88
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	same_para
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_74
	jmp	.label_94
.label_74:
	jmp	.label_77
.label_77:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	call	get_line
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	cl, dil
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], cl
	nop	
	jne	.label_92
	jmp	.label_84
.label_92:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [in_column]]
	nop	
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	mov	rbp, rbp
	sete	cl
	mov	byte ptr [rbp - 0x1d], cl
.label_84:
	mov	al, byte ptr [rbp - 0x1d]
	test	al, 1
	jne	.label_77
	jmp	.label_94
.label_94:
	lea	rsi, [rsi]
	jmp	.label_80
.label_88:
	nop	
	test	byte ptr [byte ptr [tagged]],  1
	je	.label_98
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	same_para
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_73
	lea	rsi, [rsi]
	jmp	.label_75
.label_73:
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	je	.label_75
	jmp	.label_82
.label_82:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	call	get_line
	mov	dword ptr [rbp - 0x14], eax
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	lea	rsi, [rsi]
	xor	edi, edi
	mov	cl, dil
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1e], cl
	jne	.label_91
	lea	rdi, [rdi]
	jmp	.label_97
.label_91:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1e], cl
.label_97:
	mov	al, byte ptr [rbp - 0x1e]
	test	al, 1
	nop	
	jne	.label_82
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	jmp	.label_79
.label_98:
	lea	rdi, [rdi]
	jmp	.label_76
.label_76:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	cl, dil
	mov	rbp, rbp
	test	al, 1
	nop	
	mov	byte ptr [rbp - 0x1f], cl
	jne	.label_85
	lea	rsi, [rsi]
	jmp	.label_78
.label_85:
	mov	eax,  dword ptr [dword ptr [in_column]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f], cl
.label_78:
	mov	al, byte ptr [rbp - 0x1f]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_99
	lea	rdi, [rdi]
	jmp	.label_87
.label_99:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	get_line
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_76
.label_87:
	mov	rsp, rsp
	jmp	.label_79
.label_79:
	mov	rsp, rsp
	jmp	.label_80
.label_80:
	jmp	.label_81
.label_81:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:unused_word_type
	nop	
	cmp	rax,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	jae	.label_95
	jmp	.label_90
.label_95:
	movabs	rdi, OFFSET FLAT:.str.46
	movabs	rsi, OFFSET FLAT:.str.47
	mov	edx, 0x25e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_paragraph
	mov	rsp, rsp
	call	__assert_fail
.label_90:
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
	mov	edx, dword ptr [rbp - 0x14]
	mov	dword ptr [dword ptr [next_char]],  edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_72:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	.section	.text
	.align	16
	#Procedure 0x402880

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
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [max_width]]
	nop	
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	rax,  qword ptr [word ptr [word_limit]]
	add	rax, -0x28
	mov	qword ptr [rbp - 8], rax
.label_105:
	movabs	rax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jb	.label_107
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:unused_word_type
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jne	.label_104
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_101
.label_104:
	mov	eax,  dword ptr [dword ptr [other_indent]]
	mov	dword ptr [rbp - 0x30], eax
.label_101:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rcx + 8]
	add	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
.label_106:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	call	line_cost
	movabs	rdi, OFFSET FLAT:unused_word_type
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 8], rdi
	jne	.label_102
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [last_line_length]],  0
	jle	.label_102
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax,  dword ptr [dword ptr [last_line_length]]
	imul	eax, eax, 0xa
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
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
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_102:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jge	.label_103
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], edx
.label_103:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	jne	.label_100
	jmp	.label_108
.label_100:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax - 0x1c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	ecx, dword ptr [rax + 8]
	add	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax,  dword ptr [dword ptr [max_width]]
	jl	.label_106
.label_108:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	call	base_cost
	mov	rdi, qword ptr [rbp - 0x38]
	add	rdi, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 8]
	add	rax, -0x28
	mov	qword ptr [rbp - 8], rax
	jmp	.label_105
.label_107:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402af0

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
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [first_indent]]
	mov	rsp, rsp
	mov	rdi, rax
	call	put_line
	nop	
	mov	rax,  qword ptr [word ptr [label_110]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_111:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	je	.label_109
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi,  dword ptr [dword ptr [other_indent]]
	lea	rsi, [rsi]
	call	put_line
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_111
.label_109:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl get_space
	.type get_space, @function
get_space:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
.label_115:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0x20
	mov	rsp, rsp
	jne	.label_113
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [dword ptr [in_column]],  eax
	mov	rsp, rsp
	jmp	.label_114
.label_113:
	cmp	dword ptr [rbp - 0xc], 9
	lea	rsi, [rsi]
	jne	.label_112
	mov	eax, 8
	nop	
	mov	byte ptr [byte ptr [tabs]],  1
	mov	ecx,  dword ptr [dword ptr [in_column]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	nop	
	mov	eax, ecx
	nop	
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x10]
	idiv	ecx
	nop	
	add	eax, 1
	shl	eax, 3
	mov	rsp, rsp
	mov	dword ptr [dword ptr [in_column]],  eax
	jmp	.label_116
.label_112:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_116:
	lea	rdi, [rdi]
	jmp	.label_114
.label_114:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jmp	.label_115
	.section	.text
	.align	16
	#Procedure 0x402c40

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
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	dword ptr [dword ptr [out_column]],  0
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [in_column]]
	mov	rbp, rbp
	cmp	esi,  dword ptr [dword ptr [next_prefix_indent]]
	jg	.label_117
	cmp	dword ptr [rbp - 0xc], 0xa
	je	.label_119
	cmp	dword ptr [rbp - 0xc], -1
	mov	rsp, rsp
	je	.label_119
.label_117:
	mov	edi,  dword ptr [dword ptr [next_prefix_indent]]
	call	put_space
	nop	
	mov	rax,  qword ptr [word ptr [prefix]]
	mov	qword ptr [rbp - 0x18], rax
.label_124:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [out_column]]
	cmp	eax,  dword ptr [dword ptr [in_column]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	je	.label_127
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], dl
.label_127:
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_126
	mov	rbp, rbp
	jmp	.label_118
.label_126:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
	nop	
	mov	eax,  dword ptr [dword ptr [out_column]]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [dword ptr [out_column]],  eax
	lea	rsi, [rsi]
	jmp	.label_124
.label_118:
	nop	
	cmp	dword ptr [rbp - 0xc], -1
	mov	rsp, rsp
	je	.label_120
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0xa
	mov	rbp, rbp
	je	.label_120
	mov	eax,  dword ptr [dword ptr [in_column]]
	sub	eax,  dword ptr [dword ptr [out_column]]
	mov	edi, eax
	call	put_space
.label_120:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_122
	mov	eax,  dword ptr [dword ptr [in_column]]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	add	ecx,  dword ptr [dword ptr [prefix_length]]
	cmp	eax, ecx
	jl	.label_122
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
.label_122:
	lea	rsi, [rsi]
	jmp	.label_119
.label_119:
	mov	rsp, rsp
	jmp	.label_123
.label_123:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0xa
	mov	byte ptr [rbp - 0x25], cl
	lea	rdi, [rdi]
	je	.label_121
	cmp	dword ptr [rbp - 0xc], -1
	setne	al
	mov	byte ptr [rbp - 0x25], al
.label_121:
	mov	al, byte ptr [rbp - 0x25]
	test	al, 1
	jne	.label_125
	lea	rsi, [rsi]
	jmp	.label_128
.label_125:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2c], eax
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	jmp	.label_123
.label_128:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e40

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:unused_word_type
	lea	rsi, [rsi]
	add	rax, 0x9bf0
	movabs	rcx, OFFSET FLAT:parabuf
	nop	
	add	rcx, 0x1388
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_134:
	mov	rax,  qword ptr [word ptr [wptr]]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_129:
	mov	rax,  qword ptr [word ptr [wptr]]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jne	.label_133
	mov	edi, 1
	mov	rsp, rsp
	call	set_other_indent
	mov	rbp, rbp
	call	flush_paragraph
.label_133:
	mov	eax, dword ptr [rbp - 0xc]
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
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	getc_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], -1
	mov	byte ptr [rbp - 0x21], cl
	je	.label_139
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x30], rax
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x2000
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21], sil
.label_139:
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_129
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
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc]
	call	get_space
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	dword ptr [rbp - 0xc], eax
	mov	eax,  dword ptr [dword ptr [in_column]]
	sub	eax, dword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 0xc], eax
	cmp	dword ptr [rbp - 0xc], -1
	mov	byte ptr [rbp - 0x31], r8b
	mov	rbp, rbp
	je	.label_131
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	sil, byte ptr [rdx + 0x10]
	shr	sil, 1
	mov	rbp, rbp
	and	sil, 1
	movzx	eax, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x32], cl
	lea	rdi, [rdi]
	je	.label_130
	mov	al, 1
	cmp	dword ptr [rbp - 0xc], 0xa
	mov	byte ptr [rbp - 0x33], al
	nop	
	je	.label_136
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [word_limit]]
	cmp	dword ptr [rax + 0xc], 1
	setg	cl
	mov	byte ptr [rbp - 0x33], cl
.label_136:
	mov	al, byte ptr [rbp - 0x33]
	nop	
	mov	byte ptr [rbp - 0x32], al
.label_130:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x32]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], al
.label_131:
	mov	al, byte ptr [rbp - 0x31]
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
	cmp	dword ptr [rbp - 0xc], 0xa
	nop	
	je	.label_135
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], -1
	je	.label_135
	mov	rsp, rsp
	test	byte ptr [byte ptr [uniform]],  1
	je	.label_137
.label_135:
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
.label_137:
	nop	
	mov	rax,  qword ptr [word ptr [word_limit]]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_132
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_132:
	mov	rax,  qword ptr [word ptr [word_limit]]
	add	rax, 0x28
	mov	rsp, rsp
	mov	qword ptr [word ptr [word_limit]],  rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], 0xa
	mov	byte ptr [rbp - 0x34], cl
	je	.label_138
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], -1
	lea	rsi, [rsi]
	setne	al
	nop	
	mov	byte ptr [rbp - 0x34], al
.label_138:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	nop	
	jne	.label_134
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	get_prefix
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403190

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
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	test	byte ptr [byte ptr [split]],  1
	mov	rsp, rsp
	je	.label_148
	mov	eax,  dword ptr [dword ptr [first_indent]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [other_indent]],  eax
	jmp	.label_140
.label_148:
	test	byte ptr [byte ptr [crown]],  1
	lea	rdi, [rdi]
	je	.label_147
	test	byte ptr [rbp - 1], 1
	je	.label_150
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_143
.label_150:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [rbp - 8], eax
.label_143:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [other_indent]],  eax
	lea	rsi, [rsi]
	jmp	.label_142
.label_147:
	test	byte ptr [byte ptr [tagged]],  1
	nop	
	je	.label_149
	test	byte ptr [rbp - 1], 1
	je	.label_146
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	lea	rdi, [rdi]
	je	.label_146
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [other_indent]],  eax
	mov	rbp, rbp
	jmp	.label_141
.label_146:
	mov	eax,  dword ptr [dword ptr [other_indent]]
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	jne	.label_144
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 3
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [first_indent]],  0
	mov	rbp, rbp
	cmove	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [other_indent]],  eax
.label_144:
	nop	
	jmp	.label_141
.label_141:
	jmp	.label_145
.label_149:
	nop	
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [dword ptr [other_indent]],  eax
.label_145:
	jmp	.label_142
.label_142:
	jmp	.label_140
.label_140:
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032d0

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
	.section	.text
	.align	16
	#Procedure 0x403360

	.globl put_space
	.type put_space, @function
put_space:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [out_column]]
	mov	rsp, rsp
	add	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	nop	
	test	byte ptr [byte ptr [tabs]],  1
	je	.label_152
	mov	eax, 8
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x10]
	idiv	ecx
	lea	rdi, [rdi]
	shl	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	mov	eax,  dword ptr [dword ptr [out_column]]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_156
	jmp	.label_153
.label_153:
	mov	eax,  dword ptr [dword ptr [out_column]]
	cmp	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	jge	.label_155
	lea	rdi, [rdi]
	mov	edi, 9
	call	putchar_unlocked
	mov	edi, 8
	mov	ecx,  dword ptr [dword ptr [out_column]]
	mov	dword ptr [rbp - 0x14], eax
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
.label_155:
	jmp	.label_156
.label_156:
	jmp	.label_152
.label_152:
	mov	rbp, rbp
	jmp	.label_154
.label_154:
	mov	eax,  dword ptr [dword ptr [out_column]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_157
	lea	rdi, [rdi]
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [out_column]]
	lea	rsi, [rsi]
	add	edi, 1
	mov	dword ptr [dword ptr [out_column]],  edi
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_154
.label_157:
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403480

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
	jne	.label_158
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
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_164
.label_158:
	call	fmt_paragraph
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [label_110]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_162:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	je	.label_163
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rcx + 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_159
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_159:
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffffff6
	cmp	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jg	.label_161
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	qword ptr [rbp - 0x20], rax
.label_161:
	jmp	.label_165
.label_165:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_162
.label_163:
	mov	rdi, qword ptr [rbp - 8]
	call	put_paragraph
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	nop	
	movabs	rcx, OFFSET FLAT:parabuf
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	rdx,  qword ptr [word ptr [wptr]]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r8]
	lea	rdi, [rdi]
	sub	rdx, r8
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:parabuf
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	call	memmove
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx,  qword ptr [word ptr [wptr]]
	mov	rsp, rsp
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x30]
	sub	rdi, rsi
	lea	rsi, [rsi]
	add	rcx, rdi
	mov	qword ptr [word ptr [wptr]],  rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rcx
.label_166:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	ja	.label_160
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx]
	movsxd	rdi, eax
	lea	rdi, [rdi]
	sub	rcx, rdi
	lea	rdi, [rdi]
	add	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rdx], rsi
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_166
.label_160:
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
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [word_limit]]
	mov	r9, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	r8, r9
	mov	rax, r8
	mov	qword ptr [rbp - 0x40], rdx
	nop	
	cqo	
	nop	
	mov	r8, qword ptr [rbp - 0x40]
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
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	mov	rsi, r9
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	call	memmove
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	sub	rax, rcx
	cqo	
	mov	rsi, qword ptr [rbp - 0x40]
	idiv	rsi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [word_limit]]
	mov	r8, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	r8, rax
	lea	rsi, [rsi]
	imul	rax, r8, 0x28
	add	rdi, rax
	mov	qword ptr [word ptr [word_limit]],  rdi
.label_164:
	add	rsp, 0x60
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037c0

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	sub	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	add	rdi, rcx
	mov	qword ptr [rbp - 0x18], rdi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	sil, byte ptr [rcx]
	nop	
	mov	byte ptr [rbp - 0x19], sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8b, dl
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rax + 0x10]
	and	r8b, 1
	and	r9b, 0xfe
	or	r9b, r8b
	mov	byte ptr [rax + 0x10], r9b
	movzx	edx, byte ptr [rbp - 0x19]
	movsxd	rax, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
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
	mov	rax, qword ptr [rbp - 8]
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
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
	mov	rbp, rbp
	jae	.label_169
	movabs	rdi, OFFSET FLAT:.str.49
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_168
.label_170:
	nop	
	movabs	rdi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 8]
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
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl line_cost
	.type line_cost, @function
line_cost:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	cmp	rdi,  qword ptr [word ptr [word_limit]]
	mov	rsp, rsp
	jne	.label_171
	mov	qword ptr [rbp - 8], 0
	jmp	.label_173
.label_171:
	mov	eax,  dword ptr [dword ptr [goal_width]]
	sub	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	nop	
	imul	eax, dword ptr [rbp - 0x18], 0xa
	movsxd	rcx, eax
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x18], 0xa
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	imul	rcx, rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [word_limit]]
	lea	rsi, [rsi]
	je	.label_172
	mov	rsp, rsp
	mov	eax, 2
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x18], 0xa
	nop	
	movsxd	rdx, eax
	imul	eax, dword ptr [rbp - 0x18], 0xa
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
	mov	qword ptr [rbp - 8], rax
.label_173:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a80

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
	jbe	.label_174
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax - 0x18]
	shr	cl, 1
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_182
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax - 0x18]
	nop	
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_183
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	sub	rax, 0x9c4
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_179
.label_183:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x57e40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_179:
	jmp	.label_178
.label_182:
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
	je	.label_177
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 0x640
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_176
.label_177:
	movabs	rax, OFFSET FLAT:unused_word_type
	add	rax, 0x28
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], rax
	jbe	.label_175
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
	je	.label_175
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
.label_175:
	mov	rbp, rbp
	jmp	.label_176
.label_176:
	jmp	.label_178
.label_178:
	lea	rsi, [rsi]
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_184
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 0x640
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_181
.label_184:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x10]
	lea	rdi, [rdi]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_180
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
.label_180:
	nop	
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c70

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], esi
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
	mov	ecx, dword ptr [rbp - 0xc]
	sub	ecx,  dword ptr [dword ptr [out_column]]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	call	put_space
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	add	rsi, -0x28
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
.label_186:
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d80

	.globl put_word
	.type put_word, @function
put_word:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 8]
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_187:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_188
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_187
.label_188:
	mov	rax, qword ptr [rbp - 8]
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
	.section	.text
	.align	16
	#Procedure 0x403e20
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
	.align	16
	#Procedure 0x403e50
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
	.align	16
	#Procedure 0x403e80

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
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_193
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
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_191
.label_193:
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
.label_191:
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
	.section	.text
	.align	16
	#Procedure 0x403fb0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	je	.label_194
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_194:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404050

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
	jne	.label_197
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_197:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_195
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_199
.label_195:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_199:
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
	jl	.label_198
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_0
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
	jne	.label_198
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
	jne	.label_196
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_196:
	jmp	.label_198
.label_198:
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
	.align	16
	#Procedure 0x4041d0
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
	je	.label_201
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_200
.label_201:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_200
.label_200:
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
	.align	16
	#Procedure 0x404280
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
	je	.label_202
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_203
.label_202:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042e0
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
	je	.label_204
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_205
.label_204:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404340

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
	je	.label_206
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_207
.label_206:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_207
.label_207:
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
	.align	16
	#Procedure 0x404440
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
	jne	.label_208
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_208:
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
	.align	16
	#Procedure 0x4044a0

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
	jne	.label_209
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_209:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
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
	.align	16
	#Procedure 0x404540
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
	je	.label_212
	mov	rax, qword ptr [rbp - 0x28]
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
	.align	16
	#Procedure 0x404640

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
.label_320:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_375
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_379]]
	jmp	rcx
.label_661:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_660:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_385
	jmp	.label_390
.label_390:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_378
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_378:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_385
.label_385:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_254
.label_662:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_254
.label_663:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_405
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
.label_405:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_216
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_239:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_223
	jmp	.label_224
.label_224:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_226
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_226:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_239
.label_223:
	mov	rbp, rbp
	jmp	.label_216
.label_216:
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
	jmp	.label_254
.label_658:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_657:
	mov	byte ptr [rbp - 0x7b], 1
.label_659:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_257
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_257:
	jmp	.label_261
.label_261:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_263
	jmp	.label_269
.label_269:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_270
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_270:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_263
.label_263:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_254
.label_656:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_254
.label_375:
	call	abort
.label_254:
	mov	qword ptr [rbp - 0x58], 0
.label_260:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_296
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
	jmp	.label_298
.label_296:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_298:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_316
	mov	rbp, rbp
	jmp	.label_325
.label_316:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_266
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_266
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_266
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_337
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_337
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_351
.label_337:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_351:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_266
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
	jne	.label_266
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_366
	jmp	.label_243
.label_366:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_266:
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
	ja	.label_370
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_380]]
	nop	
	jmp	rcx
.label_642:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_383
	mov	rsp, rsp
	jmp	.label_387
.label_387:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_393
	jmp	.label_243
.label_393:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_275
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_275
	nop	
	jmp	.label_303
.label_303:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_399
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_399:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_404
.label_404:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_408
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_408:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_414
.label_414:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_221
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_275:
	lea	rsi, [rsi]
	jmp	.label_309
.label_309:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_322
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_322:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_236
.label_236:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_242
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_242
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_242
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_242
	nop	
	jmp	.label_290
.label_290:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_262
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_262:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_271
.label_271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_278
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_278:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_242
.label_242:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_267
.label_383:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_292
	mov	rbp, rbp
	jmp	.label_279
.label_292:
	jmp	.label_267
.label_267:
	jmp	.label_220
.label_653:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_301
	mov	rbp, rbp
	jmp	.label_306
.label_306:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_311
	jmp	.label_317
.label_301:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_319
	jmp	.label_243
.label_319:
	jmp	.label_218
.label_311:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_215
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_215
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_215
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
	je	.label_339
	nop	
	jmp	.label_346
.label_346:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_339
	jmp	.label_352
.label_352:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_339
	jmp	.label_354
.label_354:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_339
	jmp	.label_345
.label_345:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_362
	jmp	.label_339
.label_339:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_368
	jmp	.label_243
.label_368:
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
	jae	.label_373
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_373:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_384
.label_384:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_392:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_397
.label_397:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_398:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_403
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_357
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_357:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_214
.label_362:
	jmp	.label_214
.label_214:
	jmp	.label_215
.label_215:
	jmp	.label_218
.label_317:
	jmp	.label_218
.label_218:
	jmp	.label_220
.label_643:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_222
.label_644:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_222
.label_648:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_222
.label_646:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_227
.label_649:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_227
.label_645:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_227
.label_647:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_222
.label_654:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_233
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_238
	nop	
	jmp	.label_243
.label_238:
	lea	rsi, [rsi]
	jmp	.label_244
.label_233:
	test	byte ptr [rbp - 0x79], 1
	je	.label_247
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_247
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_247
	jmp	.label_244
.label_247:
	jmp	.label_227
.label_227:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_256
	test	byte ptr [rbp - 0x7b], 1
	je	.label_256
	jmp	.label_243
.label_256:
	mov	rsp, rsp
	jmp	.label_222
.label_222:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_265
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_229
.label_265:
	jmp	.label_220
.label_655:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_274
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_231
	jmp	.label_283
.label_274:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_231
.label_283:
	nop	
	jmp	.label_220
.label_231:
	jmp	.label_289
.label_289:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_287
	lea	rsi, [rsi]
	jmp	.label_220
.label_287:
	nop	
	jmp	.label_295
.label_295:
	mov	byte ptr [rbp - 0x83], 1
.label_650:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_297
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_297
	jmp	.label_243
.label_297:
	lea	rsi, [rsi]
	jmp	.label_220
.label_652:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_305
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_315
	jmp	.label_243
.label_315:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_321
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_321
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_321:
	jmp	.label_328
.label_328:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_330
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_336
.label_336:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_299
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_299:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_348
.label_348:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_367
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_367:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_305:
	lea	rsi, [rsi]
	jmp	.label_220
.label_651:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_220
.label_370:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_363
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
	jmp	.label_342
.label_363:
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
	jne	.label_386
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_386:
	jmp	.label_253
.label_253:
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
	jne	.label_406
	jmp	.label_248
.label_406:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_412
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_248
.label_412:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_217
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_388:
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
	jae	.label_258
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_258:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_237
	jmp	.label_240
.label_237:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_388
.label_240:
	jmp	.label_248
.label_217:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_249
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_249
	mov	qword ptr [rbp - 0xb8], 1
.label_304:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_323
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
	jb	.label_259
	jmp	.label_280
.label_280:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_259
	jmp	.label_285
.label_285:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_259
	jmp	.label_293
.label_293:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_294
	mov	rsp, rsp
	jmp	.label_259
.label_259:
	mov	rsp, rsp
	jmp	.label_243
.label_294:
	jmp	.label_302
.label_302:
	mov	rsp, rsp
	jmp	.label_300
.label_300:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_304
.label_323:
	mov	rbp, rbp
	jmp	.label_249
.label_249:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_318
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_318:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_382
.label_382:
	lea	rsi, [rsi]
	jmp	.label_329
.label_329:
	jmp	.label_331
.label_331:
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
	jne	.label_253
.label_248:
	jmp	.label_342
.label_342:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_343
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_349
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_349
.label_343:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_324:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_356
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_356
	jmp	.label_359
.label_359:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_361
	jmp	.label_243
.label_361:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_365
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_365
	lea	rdi, [rdi]
	jmp	.label_371
.label_371:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_374
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_374:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_377
.label_377:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_394
.label_394:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_251
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_365:
	jmp	.label_400
.label_400:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_402
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_402:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_407
.label_407:
	jmp	.label_409
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_413
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
.label_413:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_286
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
.label_286:
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
	jmp	.label_235
.label_356:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_245
	lea	rdi, [rdi]
	jmp	.label_250
.label_250:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_252
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_252:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_245:
	nop	
	jmp	.label_235
.label_235:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_264
	jmp	.label_272
.label_264:
	lea	rsi, [rsi]
	jmp	.label_273
.label_273:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_277
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_277
	lea	rsi, [rsi]
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_284
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_291
.label_291:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_255
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_277:
	nop	
	jmp	.label_310
.label_310:
	mov	rsp, rsp
	jmp	.label_312
.label_312:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_314
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_314:
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
	jmp	.label_324
.label_272:
	mov	rsp, rsp
	jmp	.label_244
.label_349:
	lea	rsi, [rsi]
	jmp	.label_220
.label_220:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_276
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_341
.label_276:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_344
.label_341:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_344
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
	jne	.label_340
.label_344:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_340
	mov	rsp, rsp
	jmp	.label_244
.label_340:
	nop	
	jmp	.label_229
.label_229:
	jmp	.label_234
.label_234:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_358
	jmp	.label_243
.label_358:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_364
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_364
	lea	rdi, [rdi]
	jmp	.label_369
.label_369:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_372
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_389
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_389:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_391
.label_391:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_396
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_364:
	jmp	.label_401
.label_401:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_332
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_332:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_308
.label_308:
	nop	
	jmp	.label_244
.label_244:
	jmp	.label_411
.label_411:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_355
	test	byte ptr [rbp - 0x82], 1
	jne	.label_355
	lea	rdi, [rdi]
	jmp	.label_228
.label_228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_219
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_230
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_355:
	jmp	.label_241
.label_241:
	nop	
	jmp	.label_381
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_395
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_395:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_232
	mov	byte ptr [rbp - 0x7e], 0
.label_232:
	mov	rbp, rbp
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_260
.label_325:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_268
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_268
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_268
	nop	
	jmp	.label_243
.label_268:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_281
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_281
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_281
	test	byte ptr [rbp - 0x7e], 1
	je	.label_288
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
	jmp	.label_307
.label_288:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_313
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_313
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_320
.label_313:
	jmp	.label_326
.label_326:
	mov	rbp, rbp
	jmp	.label_281
.label_281:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_327
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_327
	mov	rbp, rbp
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_334
	lea	rdi, [rdi]
	jmp	.label_335
.label_335:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_333
.label_334:
	jmp	.label_327
.label_327:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_353
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_307
.label_243:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_360
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_360
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_360:
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
.label_307:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f60
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
	.align	16
	#Procedure 0x405fd0

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
	je	.label_415
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_416
.label_415:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_416
.label_416:
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
	je	.label_417
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_417:
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
	.align	16
	#Procedure 0x4061a0
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
	.section	.text
	.align	16
	#Procedure 0x4062b0

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
	.align	16
	#Procedure 0x406300

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
	jge	.label_428
	call	abort
.label_428:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_423
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
	jge	.label_424
	call	xalloc_die
.label_424:
	test	byte ptr [rbp - 0x31], 1
	je	.label_425
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_429
.label_425:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_429:
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
	je	.label_427
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_418]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_427:
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
.label_423:
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
	ja	.label_426
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
	je	.label_430
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_430:
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
.label_426:
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
	.align	16
	#Procedure 0x406630

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
	.align	16
	#Procedure 0x406670
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
	.align	16
	#Procedure 0x4066a0
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
	.align	16
	#Procedure 0x4066e0

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
	.align	16
	#Procedure 0x406740

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
	jne	.label_431
	call	abort
.label_431:
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
	.align	16
	#Procedure 0x4067e0

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
	.align	16
	#Procedure 0x406850

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
	.align	16
	#Procedure 0x406890
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
	.align	16
	#Procedure 0x4068d0

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
	.align	16
	#Procedure 0x406980

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
	.align	16
	#Procedure 0x4069c0

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
	.align	16
	#Procedure 0x4069f0
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
	.align	16
	#Procedure 0x406a30

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
	.align	16
	#Procedure 0x406b20

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
	.align	16
	#Procedure 0x406b70

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
	.align	16
	#Procedure 0x406c10
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
	.align	16
	#Procedure 0x406c60
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
	.align	16
	#Procedure 0x406cc0

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
	.align	16
	#Procedure 0x406d00
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
	.align	16
	#Procedure 0x406d40

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
	.align	16
	#Procedure 0x406d80

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
	.align	16
	#Procedure 0x406dc0

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
	je	.label_435
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_433
.label_435:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_434
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
	jmp	.label_433
.label_434:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_433
.label_432:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_433:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f00

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
	je	.label_436
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
	jmp	.label_440
.label_436:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_440:
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
	ja	.label_439
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_437]]
	jmp	rcx
.label_696:
	jmp	.label_438
.label_697:
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
	jmp	.label_438
.label_698:
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
	jmp	.label_438
.label_699:
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
	jmp	.label_438
.label_700:
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
	jmp	.label_438
.label_701:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
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
	jmp	.label_438
.label_702:
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
	jmp	.label_438
.label_703:
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
	jmp	.label_438
.label_704:
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
	jmp	.label_438
.label_705:
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
	jmp	.label_438
.label_439:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_438:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407670
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
.label_441:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_442
	mov	rbp, rbp
	jmp	.label_443
.label_443:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_441
.label_442:
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
	.align	16
	#Procedure 0x407720

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
.label_450:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_449
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_445
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
	jmp	.label_446
.label_445:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_446:
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
.label_449:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_448
	mov	rsp, rsp
	jmp	.label_444
.label_448:
	jmp	.label_447
.label_447:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_450
.label_444:
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
	.align	16
	#Procedure 0x407880

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
	je	.label_451
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
.label_451:
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
	.align	16
	#Procedure 0x407a30
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
	.align	16
	#Procedure 0x407ae0
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
	.section	.text
	.align	16
	#Procedure 0x407b40

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
	jne	.label_453
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_453
	lea	rdi, [rdi]
	call	xalloc_die
.label_453:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ba0
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
	jae	.label_454
	mov	rsp, rsp
	call	xalloc_die
.label_454:
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
	.align	16
	#Procedure 0x407c20

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
	jne	.label_455
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_455
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_457
.label_455:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_456
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_456
	lea	rsi, [rsi]
	call	xalloc_die
.label_456:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_457:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cd0

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
	jne	.label_458
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_460
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
.label_460:
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
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_459
	call	xalloc_die
.label_459:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_461:
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
	.align	16
	#Procedure 0x407e00

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
	.align	16
	#Procedure 0x407e30
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
	.align	16
	#Procedure 0x407e70
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
	.align	16
	#Procedure 0x407ec0
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
	jb	.label_463
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_464
.label_463:
	lea	rsi, [rsi]
	call	xalloc_die
.label_464:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f30

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
	.align	16
	#Procedure 0x407f80
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
	.align	16
	#Procedure 0x407fe0

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
	.section	.text
	.align	16
	#Procedure 0x408040

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
	lea	rbx, [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	nop	
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoumax
	nop	
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_470
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_476
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_468
.label_476:
	mov	dword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_474
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_477
.label_474:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_477:
	jmp	.label_468
.label_468:
	nop	
	jmp	.label_466
.label_470:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_469
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_465
.label_469:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_478
	call	__errno_location
	mov	dword ptr [rax], 0
.label_478:
	jmp	.label_465
.label_465:
	jmp	.label_466
.label_466:
	nop	
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_467
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_472
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_475
.label_472:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_475
.label_475:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_473
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_471
.label_473:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
.label_471:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408230

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
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
	#Procedure 0x4082a0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_524
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_524
	jmp	.label_520
.label_524:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_520:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_530
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_493
.label_530:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_493
.label_493:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_528:
	nop	
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_519
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_528
.label_519:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_534
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_504
.label_534:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_481
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_492
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_492
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_492
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_514
.label_492:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_504
.label_514:
	lea	rdi, [rdi]
	jmp	.label_522
.label_481:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_525
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_531
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_504
.label_531:
	mov	dword ptr [rbp - 0x4c], 1
.label_525:
	jmp	.label_522
.label_522:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_494
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_504
.label_494:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_479
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_503
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_504
.label_503:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], edx
	nop	
	je	.label_490
	jmp	.label_523
.label_523:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_490
	nop	
	jmp	.label_532
.label_532:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_490
	nop	
	jmp	.label_536
.label_536:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_490
	lea	rsi, [rsi]
	jmp	.label_540
.label_540:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_490
	jmp	.label_485
.label_485:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_490
	jmp	.label_495
.label_495:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_490
	mov	rsp, rsp
	jmp	.label_544
.label_544:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_490
	jmp	.label_511
.label_511:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_490
	mov	rsp, rsp
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_490
	jmp	.label_529
.label_529:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_500
	jmp	.label_490
.label_490:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_502
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edx
	mov	rsp, rsp
	je	.label_535
	lea	rsi, [rsi]
	jmp	.label_491
.label_491:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_535
	jmp	.label_508
.label_508:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_501
	lea	rsi, [rsi]
	jmp	.label_507
.label_507:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_509
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_509:
	jmp	.label_501
.label_535:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_501:
	jmp	.label_502
.label_502:
	nop	
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	mov	rbp, rbp
	je	.label_527
	jmp	.label_513
.label_513:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_538
	jmp	.label_541
.label_541:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_488
	jmp	.label_482
.label_482:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_498
	nop	
	jmp	.label_497
.label_497:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_499
	nop	
	jmp	.label_506
.label_506:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_517
	mov	rsp, rsp
	jmp	.label_515
.label_515:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_486
	jmp	.label_512
.label_512:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_533
	mov	rbp, rbp
	jmp	.label_505
.label_505:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_516
	jmp	.label_537
.label_537:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_539
	jmp	.label_542
.label_542:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_543
	jmp	.label_483
.label_483:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_488
	jmp	.label_496
.label_496:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_498
	jmp	.label_480
.label_480:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_499
	jmp	.label_510
.label_510:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_486
	jmp	.label_518
.label_518:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_484
	jmp	.label_526
.label_539:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_527:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_543:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_487
.label_538:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_488:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_498:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_499:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_517:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_487
.label_486:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_487
.label_484:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_533:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_516:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_487
.label_526:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_504
.label_487:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_489
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_489:
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_504:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b90

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_545
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_546
.label_545:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_546:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c10

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_547:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_548
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_547
.label_548:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c90

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
	jge	.label_553
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_551
.label_553:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_550
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
	je	.label_549
.label_550:
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_552
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
.label_552:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_551:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408db0

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
	je	.label_554
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_555
.label_554:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_556
.label_555:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_556:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e20

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
	je	.label_557
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
.label_557:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e80

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
	jne	.label_558
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_558
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_558
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
	jne	.label_559
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_560
.label_559:
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
	jmp	.label_560
.label_558:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_560:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f90

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
	jne	.label_561
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_561:
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
	ja	.label_562
	nop	
	cmp	qword ptr [rbp - 0x20], 0
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
	jmp	.label_563
.label_562:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_563:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409080

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
	jne	.label_564
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_568
.label_564:
	mov	rbp, rbp
	jmp	.label_565
.label_565:
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
	jne	.label_566
	jmp	.label_567
.label_566:
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
	je	.label_565
.label_567:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_568:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409170

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
	jne	.label_571
	test	byte ptr [rbp - 0x13], 1
	je	.label_570
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_571
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_570
.label_571:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_569
	call	__errno_location
	mov	dword ptr [rax], 0
.label_569:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_572
.label_570:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_572:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409250

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
	je	.label_574
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_575
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_573
.label_575:
	mov	byte ptr [rbp - 5], 0
.label_573:
	jmp	.label_574
.label_574:
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
	.align	16
	#Procedure 0x4092f0

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
	.section	.text
	.align	16
	#Procedure 0x409370

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
	.section	.text
	.align	16
	#Procedure 0x4093d0
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
	jb	.label_581
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_581
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_584
	jmp	.label_581
.label_581:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_585
.label_584:
	mov	byte ptr [rbp - 1], 0
.label_585:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409440
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
	jb	.label_586
	jmp	.label_589
.label_589:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_587
	jmp	.label_586
.label_586:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_588
.label_587:
	mov	byte ptr [rbp - 1], 0
.label_588:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409490
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_590
	jmp	.label_591
.label_591:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_592
.label_590:
	mov	byte ptr [rbp - 1], 0
.label_592:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094c0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_593
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_593:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094f0
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
	jb	.label_594
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_597
	jmp	.label_594
.label_594:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_595
.label_597:
	mov	byte ptr [rbp - 1], 0
.label_595:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409540
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_598
	jmp	.label_600
.label_600:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_599
.label_598:
	mov	byte ptr [rbp - 1], 0
.label_599:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409580
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_601
	jmp	.label_603
.label_603:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_602
.label_601:
	mov	byte ptr [rbp - 1], 0
.label_602:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095c0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_604
	jmp	.label_606
.label_606:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_605
.label_604:
	mov	byte ptr [rbp - 1], 0
.label_605:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409600
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_607
	jmp	.label_609
.label_609:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_607:
	mov	byte ptr [rbp - 1], 0
.label_608:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409640
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
	jb	.label_610
	jmp	.label_613
.label_613:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_610
	jmp	.label_614
.label_614:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_610
	jmp	.label_612
.label_612:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_615
	jmp	.label_610
.label_610:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_611
.label_615:
	mov	byte ptr [rbp - 1], 0
.label_611:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096c0
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
	jb	.label_616
	jmp	.label_618
.label_618:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_619
	jmp	.label_616
.label_616:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_617
.label_619:
	mov	byte ptr [rbp - 1], 0
.label_617:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409710
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_620
	jmp	.label_622
.label_622:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_621
.label_620:
	mov	byte ptr [rbp - 1], 0
.label_621:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409750
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
	jb	.label_623
	jmp	.label_626
.label_626:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_623
	jmp	.label_624
.label_624:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_625
	jmp	.label_623
.label_623:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_627
.label_625:
	mov	byte ptr [rbp - 1], 0
.label_627:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097c0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_628
	jmp	.label_630
.label_630:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_629
.label_628:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_629:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409800
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_631
	jmp	.label_633
.label_633:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_632
.label_631:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_632:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
