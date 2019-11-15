	.section	.text
	.align	32
	#Procedure 0x401800

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	nop	
	jmp	.label_8
.label_8:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	call	emit_stdin_note
	nop	
	call	emit_mandatory_arg_note
	nop	
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401a70

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ab0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.28
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x401af0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_14:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rdx], 0
	nop	
	mov	byte ptr [rbp - 0x21], cl
	mov	rbp, rbp
	je	.label_12
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x21], cl
.label_12:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	test	al, 1
	jne	.label_11
	mov	rbp, rbp
	jmp	.label_13
.label_11:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_14
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_10
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	mov	edi, 5
	nop	
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_15
	movabs	rsi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	strncmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_15
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.42
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.43
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	nop	
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x16], 0
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	nop	
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	nop	
	movabs	rdi, OFFSET FLAT:.str.14
	movabs	rsi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.14
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	call	atexit
	mov	rsp, rsp
	mov	dword ptr [dword ptr [operating_mode]],  0
	mov	byte ptr [byte ptr [suppress_non_delimited]],  0
	mov	byte ptr [byte ptr [delim]],  0
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
.label_54:
	movabs	rdx, OFFSET FLAT:.str.16
	movabs	rcx, OFFSET FLAT:longopts
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8d, eax
	nop	
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_59
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	je	.label_60
	lea	rdi, [rdi]
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x48], eax
	mov	rsp, rsp
	je	.label_21
	nop	
	jmp	.label_29
.label_29:
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	eax, -0x62
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
	jb	.label_30
	lea	rsi, [rsi]
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x50], eax
	je	.label_35
	nop	
	jmp	.label_49
.label_49:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	eax, 0x66
	nop	
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	je	.label_37
	nop	
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	eax, 0x6e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	nop	
	je	.label_42
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x73
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_26
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	eax, 0x7a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	je	.label_53
	jmp	.label_56
.label_56:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x64], eax
	je	.label_32
	mov	rsp, rsp
	jmp	.label_36
.label_36:
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x68], eax
	je	.label_16
	mov	rsp, rsp
	jmp	.label_19
.label_30:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [operating_mode]],  0
	je	.label_50
	lea	rsi, [rsi]
	jmp	.label_25
.label_25:
	nop	
	movabs	rdi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_50:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [operating_mode]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_18
.label_37:
	cmp	dword ptr [dword ptr [operating_mode]],  0
	je	.label_43
	jmp	.label_46
.label_46:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_43:
	nop	
	mov	dword ptr [dword ptr [operating_mode]],  2
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_18
.label_35:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	nop	
	je	.label_17
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_17
	lea	rdi, [rdi]
	jmp	.label_34
.label_34:
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_17:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [byte ptr [delim]],  cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16], 1
	mov	rbp, rbp
	jmp	.label_18
.label_32:
	mov	byte ptr [byte ptr [output_delimiter_specified]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_41
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rcx
	nop	
	jmp	.label_48
.label_41:
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x70], rax
.label_48:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [output_delimiter_length]],  rax
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	xstrdup
	mov	qword ptr [word ptr [output_delimiter_string]],  rax
	mov	rsp, rsp
	jmp	.label_18
.label_42:
	lea	rsi, [rsi]
	jmp	.label_18
.label_26:
	mov	byte ptr [byte ptr [suppress_non_delimited]],  1
	jmp	.label_18
.label_53:
	nop	
	mov	byte ptr [byte ptr [line_delim]],  0
	nop	
	jmp	.label_18
.label_16:
	mov	byte ptr [byte ptr [complement]],  1
	jmp	.label_18
.label_21:
	xor	edi, edi
	call	usage
.label_60:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.12
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.20
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str.21
	movabs	rax, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	rbp, rbp
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	rsp, rsp
	mov	rdi, r10
	nop	
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	lea	rdi, [rdi]
	call	version_etc
	xor	edi, edi
	call	exit
.label_19:
	mov	edi, 1
	call	usage
.label_18:
	nop	
	jmp	.label_54
.label_59:
	nop	
	cmp	dword ptr [dword ptr [operating_mode]],  0
	jne	.label_55
	mov	rsp, rsp
	jmp	.label_57
.label_57:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.23
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_55:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x16], 1
	mov	rbp, rbp
	je	.label_23
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [operating_mode]],  2
	je	.label_23
	mov	rbp, rbp
	jmp	.label_44
.label_44:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.24
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
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_23:
	test	byte ptr [byte ptr [suppress_non_delimited]],  1
	je	.label_39
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [operating_mode]],  2
	je	.label_39
	jmp	.label_45
.label_45:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.25
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	usage
.label_39:
	xor	eax, eax
	mov	ecx, 2
	mov	edx, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	dword ptr [dword ptr [operating_mode]],  2
	cmove	edx, eax
	lea	rsi, [rsi]
	mov	sil,  byte ptr [byte ptr [complement]]
	test	sil, 1
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rsi, [rsi]
	or	edx, eax
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	call	set_fields
	test	byte ptr [rbp - 0x16], 1
	mov	rbp, rbp
	jne	.label_22
	mov	byte ptr [byte ptr [delim]],  9
.label_22:
	cmp	qword ptr [word ptr [output_delimiter_string]],  0
	lea	rdi, [rdi]
	jne	.label_28
	movabs	rax, OFFSET FLAT:main.dummy
	mov	cl,  byte ptr [byte ptr [delim]]
	mov	byte ptr [byte ptr [main.dummy]],  cl
	mov	rbp, rbp
	mov	byte ptr [byte ptr [label_31]],  0
	mov	qword ptr [word ptr [output_delimiter_string]],  rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [output_delimiter_length]],  1
.label_28:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	nop	
	jne	.label_38
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	call	cut_file
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	jmp	.label_24
.label_38:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], 1
.label_58:
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_51
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	cut_file
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x15]
	lea	rsi, [rsi]
	and	al, 1
	movzx	esi, al
	lea	rsi, [rsi]
	and	esi, edx
	cmp	esi, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [optind]],  eax
	mov	rbp, rbp
	jmp	.label_58
.label_51:
	mov	rbp, rbp
	jmp	.label_24
.label_24:
	mov	rsp, rsp
	test	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rsp, rsp
	je	.label_27
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	nop	
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_27
	call	__errno_location
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x15], 0
.label_27:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	lea	rdi, [rdi]
	add	rsp, 0x90
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024b0

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_1
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_64
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	nop	
	mov	rax,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_63
.label_64:
	movabs	rsi, OFFSET FLAT:.str.54
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_66
	nop	
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_61
.label_66:
	jmp	.label_63
.label_63:
	mov	esi, 2
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	fadvise
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	cut_stream
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_68
	nop	
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_61
.label_68:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str_1
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_67
	mov	rdi, qword ptr [rbp - 0x18]
	call	clearerr_unlocked
	jmp	.label_62
.label_67:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_65
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_61
.label_65:
	jmp	.label_62
.label_62:
	mov	byte ptr [rbp - 1], 1
.label_61:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl cut_stream
	.type cut_stream, @function
cut_stream:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	cmp	dword ptr [dword ptr [operating_mode]],  1
	jne	.label_69
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	cut_bytes
	jmp	.label_70
.label_69:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	cut_fields
.label_70:
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl cut_bytes
	.type cut_bytes, @function
cut_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [frp]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [current_rp]],  rdi
.label_77:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	getc_unlocked
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	nop	
	jne	.label_76
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	nop	
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [word ptr [current_rp]],  rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_73
.label_76:
	cmp	dword ptr [rbp - 0x18], -1
	lea	rdi, [rdi]
	jne	.label_80
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_71
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_71:
	mov	rbp, rbp
	jmp	.label_78
.label_80:
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rsi]
	call	next_item
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_kth
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_82
	nop	
	jmp	.label_79
.label_82:
	nop	
	test	byte ptr [byte ptr [output_delimiter_specified]],  1
	je	.label_74
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_72
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	is_range_start_index
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_81
	jmp	.label_72
.label_81:
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [output_delimiter_string]]
	nop	
	mov	rdx,  qword ptr [word ptr [output_delimiter_length]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fwrite_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_72:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
.label_74:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_79:
	jmp	.label_75
.label_75:
	jmp	.label_73
.label_73:
	nop	
	jmp	.label_77
.label_78:
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028b0

	.globl cut_fields
	.type cut_fields, @function
cut_fields:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 1
	mov	byte ptr [rbp - 0x19], 0
	mov	rdi,  qword ptr [word ptr [frp]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [current_rp]],  rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	getc_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_122
	jmp	.label_86
.label_122:
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	call	ungetc
	lea	rsi, [rsi]
	mov	edi, 1
	mov	dword ptr [rbp - 0xc], 0
	mov	cl,  byte ptr [byte ptr [suppress_non_delimited]]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	dword ptr [rbp - 0x44], edx
	call	print_kth
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	xor	r8d, edx
	nop	
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
.label_100:
	cmp	qword ptr [rbp - 0x18], 1
	nop	
	jne	.label_107
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_107
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:field_1_buffer
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:field_1_bufsize
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx, -1
	mov	rbp, rbp
	movzx	r8d,  byte ptr [byte ptr [delim]]
	movzx	r9d,  byte ptr [byte ptr [line_delim]]
	mov	r10, qword ptr [rbp - 8]
	mov	qword ptr [rsp], r10
	call	getndelim2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_119
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [field_1_buffer]]
	call	free
	mov	qword ptr [word ptr [field_1_buffer]],  0
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	ferror_unlocked
	cmp	eax, 0
	jne	.label_88
	mov	rdi, qword ptr [rbp - 8]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_91
.label_88:
	mov	rsp, rsp
	jmp	.label_86
.label_91:
	mov	rsp, rsp
	call	xalloc_die
.label_119:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_96
	jmp	.label_102
.label_96:
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.57
	mov	edx, 0x149
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cut_fields
	call	__assert_fail
.label_102:
	mov	dword ptr [rbp - 0xc], 0
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [field_1_buffer]]
	movsx	edi, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	movzx	edx,  byte ptr [byte ptr [delim]]
	cmp	edi, edx
	je	.label_124
	mov	rbp, rbp
	test	byte ptr [byte ptr [suppress_non_delimited]],  1
	je	.label_116
	mov	rsp, rsp
	jmp	.label_118
.label_116:
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [field_1_buffer]]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fwrite_unlocked
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [field_1_buffer]]
	mov	rbp, rbp
	movsx	r8d, byte ptr [rdx + rcx]
	movzx	r9d,  byte ptr [byte ptr [line_delim]]
	cmp	r8d, r9d
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	je	.label_83
	mov	rbp, rbp
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
.label_83:
	nop	
	movzx	eax,  byte ptr [byte ptr [line_delim]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_118:
	lea	rdi, [rdi]
	jmp	.label_100
.label_124:
	mov	rsp, rsp
	mov	eax, 1
	mov	edi, eax
	call	print_kth
	mov	rbp, rbp
	test	al, 1
	jne	.label_104
	jmp	.label_106
.label_104:
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [field_1_buffer]]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x60], rdx
	nop	
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	fwrite_unlocked
	movzx	r8d,  byte ptr [byte ptr [delim]]
	movzx	r9d,  byte ptr [byte ptr [line_delim]]
	lea	rdi, [rdi]
	cmp	r8d, r9d
	mov	qword ptr [rbp - 0x68], rax
	jne	.label_114
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], -1
	nop	
	je	.label_120
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 8]
	call	ungetc
	mov	byte ptr [rbp - 0x19], 1
	nop	
	mov	dword ptr [rbp - 0x6c], eax
.label_120:
	lea	rdi, [rdi]
	jmp	.label_85
.label_114:
	mov	byte ptr [rbp - 0x19], 1
.label_85:
	lea	rdi, [rdi]
	jmp	.label_106
.label_106:
	lea	rdi, [rbp - 0x18]
	call	next_item
.label_107:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x38], eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	print_kth
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_101
	lea	rsi, [rsi]
	jmp	.label_112
.label_101:
	test	byte ptr [rbp - 0x19], 1
	je	.label_99
	mov	eax, 1
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [output_delimiter_string]]
	nop	
	mov	rdx,  qword ptr [word ptr [output_delimiter_length]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x78], rax
.label_99:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 1
.label_89:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	getc_unlocked
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	movzx	ecx,  byte ptr [byte ptr [delim]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x79], dl
	je	.label_109
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xc]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	lea	rdi, [rdi]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x79], cl
	mov	rsp, rsp
	je	.label_109
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -1
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], al
.label_109:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	test	al, 1
	nop	
	jne	.label_123
	jmp	.label_84
.label_123:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	call	putchar_unlocked
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], edi
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_89
.label_84:
	lea	rsi, [rsi]
	jmp	.label_92
.label_112:
	jmp	.label_94
.label_94:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	getc_unlocked
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	nop	
	mov	dword ptr [rbp - 0xc], eax
	movzx	ecx,  byte ptr [byte ptr [delim]]
	nop	
	cmp	eax, ecx
	mov	byte ptr [rbp - 0x81], dl
	nop	
	je	.label_97
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rbp, rbp
	cmp	eax, edx
	nop	
	mov	byte ptr [rbp - 0x81], cl
	nop	
	je	.label_97
	cmp	dword ptr [rbp - 0xc], -1
	setne	al
	mov	byte ptr [rbp - 0x81], al
.label_97:
	nop	
	mov	al, byte ptr [rbp - 0x81]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_110
	nop	
	jmp	.label_113
.label_110:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_94
.label_113:
	jmp	.label_92
.label_92:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [delim]]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	nop	
	jne	.label_105
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [delim]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	jne	.label_105
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	cmp	dword ptr [rbp - 0x3c], -1
	je	.label_87
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	ungetc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_93
.label_87:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
.label_93:
	jmp	.label_105
.label_105:
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [delim]]
	cmp	eax, ecx
	jne	.label_117
	lea	rdi, [rbp - 0x18]
	mov	rbp, rbp
	call	next_item
	jmp	.label_98
.label_117:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rsp, rsp
	je	.label_103
	cmp	dword ptr [rbp - 0xc], -1
	mov	rsp, rsp
	jne	.label_95
.label_103:
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jne	.label_108
	test	byte ptr [byte ptr [suppress_non_delimited]],  1
	mov	rsp, rsp
	je	.label_108
	cmp	qword ptr [rbp - 0x18], 1
	je	.label_111
.label_108:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	je	.label_115
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	jne	.label_115
	movzx	eax,  byte ptr [byte ptr [delim]]
	movzx	ecx,  byte ptr [byte ptr [line_delim]]
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_121
.label_115:
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x8c], eax
.label_121:
	jmp	.label_111
.label_111:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_90
	nop	
	jmp	.label_86
.label_90:
	mov	qword ptr [rbp - 0x18], 1
	nop	
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [word ptr [current_rp]],  rax
	mov	byte ptr [rbp - 0x19], 0
.label_95:
	jmp	.label_98
.label_98:
	jmp	.label_100
.label_86:
	nop	
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl next_item
	.type next_item, @function
next_item:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rdi,  qword ptr [word ptr [current_rp]]
	cmp	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	jbe	.label_125
	mov	rax,  qword ptr [word ptr [current_rp]]
	nop	
	add	rax, 0x10
	mov	rbp, rbp
	mov	qword ptr [word ptr [current_rp]],  rax
.label_125:
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fd0

	.globl print_kth
	.type print_kth, @function
print_kth:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [current_rp]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	setbe	al
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl is_range_start_index
	.type is_range_start_index, @function
is_range_start_index:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [current_rp]]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x403050

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	al, dil
	nop	
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403070

	.globl set_fields
	.type set_fields, @function
set_fields:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	esi, 1
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_166
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str_1
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_166
	mov	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_166:
	lea	rdi, [rdi]
	jmp	.label_126
.label_126:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2d
	jne	.label_129
	mov	byte ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x23], 1
	je	.label_132
	jmp	.label_137
.label_137:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_144
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_144:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2_0
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
.label_154:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_132:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x23], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_168
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_168
	nop	
	jmp	.label_179
.label_179:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	cmp	eax, 0
	je	.label_145
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_128
.label_145:
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
.label_128:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_168:
	test	byte ptr [rbp - 0x21], 1
	je	.label_150
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_152
.label_150:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	jmp	.label_152
.label_152:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_159
.label_129:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2c
	mov	rsp, rsp
	je	.label_161
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar_0
	movzx	edi, al
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	rsp, rsp
	jne	.label_161
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_184
.label_161:
	mov	byte ptr [rbp - 0x24], 0
	mov	rsp, rsp
	test	byte ptr [rbp - 0x23], 1
	lea	rdi, [rdi]
	je	.label_188
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x23], 0
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	jne	.label_130
	mov	rsp, rsp
	test	byte ptr [rbp - 0x22], 1
	mov	rsp, rsp
	jne	.label_130
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_139
	mov	qword ptr [rbp - 0x18], 1
	jmp	.label_149
.label_139:
	jmp	.label_153
.label_153:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_149:
	lea	rdi, [rdi]
	jmp	.label_130
.label_130:
	test	byte ptr [rbp - 0x22], 1
	jne	.label_167
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	add_range_pair
	mov	rsp, rsp
	jmp	.label_173
.label_167:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jae	.label_175
	jmp	.label_182
.label_182:
	nop	
	movabs	rdi, OFFSET FLAT:.str.6_0
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_175:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
.label_173:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_136
.label_188:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_140
	jmp	.label_146
.label_146:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	and	eax, 4
	cmp	eax, 0
	je	.label_148
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_157
.label_148:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_157:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_140:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	add_range_pair
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
.label_136:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_176
	mov	rbp, rbp
	jmp	.label_183
.label_176:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x21], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], 0
	lea	rdi, [rdi]
	jmp	.label_147
.label_184:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_155
	test	byte ptr [rbp - 0x24], 1
	je	.label_134
	cmp	qword ptr [word ptr [set_fields.num_start]],  0
	nop	
	jne	.label_138
.label_134:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [set_fields.num_start]],  rax
.label_138:
	nop	
	mov	byte ptr [rbp - 0x24], 1
	nop	
	test	byte ptr [rbp - 0x23], 1
	je	.label_151
	mov	byte ptr [rbp - 0x22], 1
	lea	rsi, [rsi]
	jmp	.label_141
.label_151:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_141:
	movabs	rax, 0x1999999999999999
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_177
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 0x20], 0xa
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	nop	
	sub	edx, 0x30
	nop	
	movsxd	rcx, edx
	nop	
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_135
.label_177:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	jmp	.label_180
.label_135:
	lea	rsi, [rsi]
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x20], 0xa
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	mov	rbp, rbp
	sub	esi, 0x30
	mov	rsp, rsp
	movsxd	rdx, esi
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	dword ptr [rbp - 0x74], eax
.label_180:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_163
	cmp	qword ptr [rbp - 0x20], -1
	mov	rbp, rbp
	jne	.label_187
.label_163:
	movabs	rsi, OFFSET FLAT:.str.7_0
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	call	strspn
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	xstrndup
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_158
	movabs	rdi, OFFSET FLAT:.str.8_0
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_156
.label_158:
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
.label_156:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_187:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_181
.label_155:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_185
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_131
.label_185:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11_0
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_131:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_181:
	jmp	.label_147
.label_147:
	mov	rsp, rsp
	jmp	.label_159
.label_159:
	jmp	.label_126
.label_183:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [n_frp]],  0
	jne	.label_164
	jmp	.label_171
.label_171:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_172
	movabs	rdi, OFFSET FLAT:.str.12_0
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	jmp	.label_127
.label_172:
	movabs	rdi, OFFSET FLAT:.str.13
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
.label_127:
	mov	rax, qword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
	nop	
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_164:
	lea	rdi, [rdi]
	mov	eax, 0x10
	nop	
	mov	edx, eax
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:compare_ranges
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [frp]]
	mov	rdi,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	qsort
	mov	qword ptr [rbp - 0x40], 0
.label_162:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_143
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_186:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	nop	
	jae	.label_169
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	ja	.label_178
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_170
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [frp]]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	jmp	.label_133
.label_170:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_133:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	nop	
	add	rcx,  qword ptr [word ptr [frp]]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx,  qword ptr [word ptr [frp]]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	shl	rdx, 4
	add	rcx, rdx
	add	rcx, 0x10
	mov	rdx,  qword ptr [word ptr [n_frp]]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rbp - 0x48]
	sub	rdx, 1
	lea	rsi, [rsi]
	shl	rdx, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memmove
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, -1
	mov	qword ptr [word ptr [n_frp]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_160
.label_178:
	lea	rdi, [rdi]
	jmp	.label_169
.label_160:
	lea	rsi, [rsi]
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_186
.label_169:
	jmp	.label_142
.label_142:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_162
.label_143:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 2
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_165
	lea	rdi, [rdi]
	call	complement_rp
.label_165:
	nop	
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [n_frp]],  rax
	mov	rax,  qword ptr [word ptr [frp]]
	nop	
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [frp]],  rax
	nop	
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax,  qword ptr [word ptr [frp]]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], -1
	mov	rax,  qword ptr [word ptr [n_frp]]
	lea	rsi, [rsi]
	sub	rax, 1
	shl	rax, 4
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [frp]]
	nop	
	mov	qword ptr [rax], -1
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b50

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [n_frp]]
	nop	
	cmp	rsi,  qword ptr [word ptr [n_frp_allocated]]
	lea	rsi, [rsi]
	jne	.label_189
	nop	
	movabs	rsi, OFFSET FLAT:n_frp_allocated
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdi, rcx
	mov	rbp, rbp
	call	x2nrealloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [frp]],  rax
.label_189:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rsp, rsp
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c10

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	nop	
	mov	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	jge	.label_190
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_191
.label_190:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	cmp	eax, dword ptr [rbp - 0x18]
	nop	
	setg	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_191:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c90

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [frp]],  0
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 1
	lea	rsi, [rsi]
	jbe	.label_195
	mov	eax, 1
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	sub	rcx, 1
	mov	rsi, rcx
	call	add_range_pair
.label_195:
	mov	qword ptr [rbp - 0x18], 1
.label_194:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_197
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	nop	
	jne	.label_193
	jmp	.label_192
.label_193:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 1
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	add_range_pair
.label_192:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_194
.label_197:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jae	.label_196
	mov	rsi, -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rbp, rbp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rdi, rax
	lea	rsi, [rsi]
	call	add_range_pair
.label_196:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e40
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	qword ptr [word ptr [frp]],  0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e90
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
	#Procedure 0x403ec0
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
	#Procedure 0x403ef0

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
	je	.label_200
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_202
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_200
.label_202:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_199
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
	jmp	.label_201
.label_199:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_201:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_200:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_198
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_198:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404020

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
	.align	32
	#Procedure 0x404060

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
	je	.label_203
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
.label_203:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], r9d
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], -1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jne	.label_215
	nop	
	cmp	qword ptr [rbp - 0x28], 0x40
	nop	
	jae	.label_219
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_222
.label_219:
	nop	
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	lea	rsi, [rsi]
	jmp	.label_222
.label_222:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_242
	mov	qword ptr [rbp - 8], -1
	jmp	.label_210
.label_242:
	jmp	.label_215
.label_215:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_217
	jmp	.label_221
.label_217:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_226
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x60]
	ja	.label_226
	lea	rdi, [rdi]
	jmp	.label_221
.label_226:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], -1
	nop	
	jne	.label_205
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_211
.label_205:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x30], -1
	mov	rbp, rbp
	jne	.label_218
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
.label_218:
	jmp	.label_211
.label_211:
	mov	byte ptr [rbp - 0x61], 0
.label_224:
	nop	
	lea	rsi, [rbp - 0x78]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	freadptr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_229
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], -1
	mov	rsp, rsp
	je	.label_223
	mov	rdi, qword ptr [rbp - 0x70]
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	call	memchr2
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_240
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	sub	rax, rcx
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x61], 1
.label_240:
	mov	rsp, rsp
	jmp	.label_223
.label_223:
	jmp	.label_225
.label_229:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	getc_unlocked
	nop	
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x68], -1
	jne	.label_230
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_234
	jmp	.label_228
.label_234:
	jmp	.label_239
.label_230:
	mov	eax, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	je	.label_238
	mov	eax, dword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x30]
	jne	.label_241
.label_238:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x61], 1
.label_241:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 1
.label_225:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_220
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_220
	cmp	qword ptr [rbp - 0x60], 0x40
	nop	
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 0x40
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_235
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_235:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, rdx
	nop	
	sub	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	add	rcx, 1
	cmp	rax, rcx
	mov	rbp, rbp
	jae	.label_212
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rax, rcx
	nop	
	add	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_212:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_236
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x28]
	jbe	.label_204
.label_236:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
.label_204:
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_214
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_213
	jmp	.label_228
.label_213:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
.label_214:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, rdx
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x88]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	mov	rbp, rbp
	jne	.label_237
	mov	rsp, rsp
	jmp	.label_228
.label_237:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_220:
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jae	.label_216
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa0]
	jae	.label_209
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
.label_209:
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_208
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	call	memcpy
	jmp	.label_231
.label_208:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x68]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx], cl
.label_231:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
.label_216:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_233
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	call	freadseek
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_233
	lea	rsi, [rsi]
	jmp	.label_228
.label_233:
	mov	rbp, rbp
	jmp	.label_206
.label_206:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x61]
	lea	rdi, [rdi]
	xor	al, 0xff
	nop	
	test	al, 1
	nop	
	jne	.label_224
.label_239:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_228:
	jmp	.label_221
.label_221:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_227
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_207
.label_227:
	mov	rax, -1
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	jmp	.label_207
.label_207:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_210:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], al
	mov	edx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, dl
	mov	byte ptr [rbp - 0x52], al
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x51]
	mov	rsp, rsp
	movzx	esi, byte ptr [rbp - 0x52]
	cmp	edx, esi
	lea	rdi, [rdi]
	jne	.label_243
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movzx	esi, byte ptr [rbp - 0x51]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	memchr
	mov	qword ptr [rbp - 8], rax
	jmp	.label_245
.label_243:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_244:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x69], cl
	jbe	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 7
	cmp	rax, 0
	lea	rsi, [rsi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x69], cl
.label_257:
	mov	al, byte ptr [rbp - 0x69]
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_254
	jmp	.label_256
.label_254:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	nop	
	movzx	edx, byte ptr [rbp - 0x51]
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	je	.label_258
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x52]
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_252
.label_258:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_245
.label_252:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_244
.label_256:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], 0x1010101
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x51]
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x51]
	mov	rbp, rbp
	shl	edx, 8
	or	ecx, edx
	movsxd	rax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	movzx	ecx, byte ptr [rbp - 0x52]
	movzx	edx, byte ptr [rbp - 0x52]
	shl	edx, 8
	or	ecx, edx
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	shl	rax, 0x10
	nop	
	or	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rax, 0x10
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rax, 0x1f
	shl	rax, 1
	or	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 0x1f
	lea	rdi, [rdi]
	shl	rax, 1
	or	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 0x1f
	mov	rbp, rbp
	shl	rax, 1
	or	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
.label_249:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 8
	nop	
	jb	.label_247
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	xor	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	xor	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	xor	rdx, 0xffffffffffffffff
	and	rcx, rdx
	or	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 7
	mov	rbp, rbp
	and	rax, rcx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_248
	nop	
	jmp	.label_247
.label_248:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_249
.label_247:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_253:
	cmp	qword ptr [rbp - 0x20], 0
	jbe	.label_250
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	movzx	edx, byte ptr [rbp - 0x51]
	nop	
	cmp	ecx, edx
	nop	
	je	.label_246
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x52]
	cmp	ecx, edx
	mov	rbp, rbp
	jne	.label_255
.label_246:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_245
.label_255:
	mov	rbp, rbp
	jmp	.label_251
.label_251:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_253
.label_250:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_245:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a30

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
	jne	.label_261
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_261:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_259
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_263
.label_259:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_263:
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
	jl	.label_262
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
	jne	.label_262
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
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
	jne	.label_260
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_260:
	jmp	.label_262
.label_262:
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
	#Procedure 0x404bb0
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
	je	.label_264
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_265
.label_264:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_265
.label_265:
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
	#Procedure 0x404c60
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
	je	.label_266
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_267
.label_266:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cc0
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
	je	.label_268
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_269
.label_268:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d20

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
	je	.label_270
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_271
.label_270:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_271
.label_271:
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
	#Procedure 0x404e20
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
	jne	.label_272
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_272:
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
	#Procedure 0x404e80

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
	jne	.label_273
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_273:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_275
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_274
.label_275:
	call	abort
.label_274:
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
	#Procedure 0x404f20
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
	je	.label_276
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_277
.label_276:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_277
.label_277:
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
	#Procedure 0x405020

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
.label_467:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_333
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_337]]
	jmp	rcx
.label_656:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_655:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_344
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_350
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_350:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_344
.label_344:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_294
.label_657:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_294
.label_658:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_366
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_366:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_379
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_398:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_386
	jmp	.label_387
.label_387:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_389
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_389:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_398
.label_386:
	mov	rbp, rbp
	jmp	.label_379
.label_379:
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
	jmp	.label_294
.label_653:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_652:
	mov	byte ptr [rbp - 0x7b], 1
.label_654:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_412
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_412:
	jmp	.label_416
.label_416:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_418
	jmp	.label_421
.label_421:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_422
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_422:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_418
.label_418:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_294
.label_651:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_294
.label_333:
	call	abort
.label_294:
	mov	qword ptr [rbp - 0x58], 0
.label_313:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_446
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
	jmp	.label_292
.label_446:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_292:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_462
	mov	rbp, rbp
	jmp	.label_470
.label_462:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_278
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_278
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_278
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_283
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_283
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_299
.label_283:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_299:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_278
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
	jne	.label_278
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_324
	jmp	.label_321
.label_324:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_278:
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
	ja	.label_328
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_338]]
	nop	
	jmp	rcx
.label_721:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_342
	mov	rsp, rsp
	jmp	.label_346
.label_346:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_448
	jmp	.label_321
.label_448:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_351
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_351
	nop	
	jmp	.label_358
.label_358:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_359
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_365
.label_365:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_371
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_371:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_378
.label_378:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_383
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_351:
	lea	rsi, [rsi]
	jmp	.label_334
.label_334:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_391
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_391:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_395
.label_395:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_402
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_402
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_402
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_402
	nop	
	jmp	.label_415
.label_415:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_417
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_417:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_423
.label_423:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_427
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_427:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_402
.label_402:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_442
.label_342:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_440
	mov	rbp, rbp
	jmp	.label_413
.label_440:
	jmp	.label_442
.label_442:
	jmp	.label_280
.label_732:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_447
	mov	rbp, rbp
	jmp	.label_454
.label_454:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_456
	jmp	.label_464
.label_447:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_466
	jmp	.label_321
.label_466:
	jmp	.label_303
.label_456:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_298
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_298
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_298
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
	je	.label_285
	nop	
	jmp	.label_394
.label_394:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_285
	jmp	.label_304
.label_304:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_285
	jmp	.label_309
.label_309:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_285
	jmp	.label_317
.label_317:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_319
	jmp	.label_285
.label_285:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_325
	jmp	.label_321
.label_325:
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
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_331:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_343
.label_343:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_349:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_289
.label_289:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_357
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_357:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_385
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_385:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_375
.label_319:
	jmp	.label_375
.label_375:
	jmp	.label_298
.label_298:
	jmp	.label_303
.label_464:
	jmp	.label_303
.label_303:
	jmp	.label_280
.label_722:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_384
.label_723:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_384
.label_727:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_384
.label_725:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_390
.label_728:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_390
.label_724:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_390
.label_726:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_384
.label_733:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_392
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_397
	nop	
	jmp	.label_321
.label_397:
	lea	rsi, [rsi]
	jmp	.label_311
.label_392:
	test	byte ptr [rbp - 0x79], 1
	je	.label_405
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_405
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_405
	jmp	.label_311
.label_405:
	jmp	.label_390
.label_390:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_305
	test	byte ptr [rbp - 0x7b], 1
	je	.label_305
	jmp	.label_321
.label_305:
	mov	rsp, rsp
	jmp	.label_384
.label_384:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_420
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_314
.label_420:
	jmp	.label_280
.label_734:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_425
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_428
	jmp	.label_432
.label_425:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_428
.label_432:
	nop	
	jmp	.label_280
.label_428:
	jmp	.label_437
.label_437:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_438
	lea	rsi, [rsi]
	jmp	.label_280
.label_438:
	nop	
	jmp	.label_444
.label_444:
	mov	byte ptr [rbp - 0x83], 1
.label_729:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_308
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_308
	jmp	.label_321
.label_308:
	lea	rsi, [rsi]
	jmp	.label_280
.label_731:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_452
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_461
	jmp	.label_321
.label_461:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_356
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_356
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_356:
	jmp	.label_473
.label_473:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_475
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_475:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_282
.label_282:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_353
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_296
.label_296:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_302
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_452:
	lea	rsi, [rsi]
	jmp	.label_280
.label_730:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_280
.label_328:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_320
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
	jmp	.label_287
.label_320:
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
	jne	.label_345
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_345:
	jmp	.label_355
.label_355:
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
	jne	.label_367
	jmp	.label_374
.label_367:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_376
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_374
.label_376:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_380
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_401:
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
	jae	.label_445
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_445:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_396
	jmp	.label_400
.label_396:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_401
.label_400:
	jmp	.label_374
.label_380:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_407
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_407
	mov	qword ptr [rbp - 0xb8], 1
.label_451:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_410
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
	jb	.label_414
	jmp	.label_429
.label_429:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_414
	jmp	.label_435
.label_435:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_414
	jmp	.label_441
.label_441:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_443
	mov	rsp, rsp
	jmp	.label_414
.label_414:
	mov	rsp, rsp
	jmp	.label_321
.label_443:
	jmp	.label_449
.label_449:
	mov	rsp, rsp
	jmp	.label_326
.label_326:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_451
.label_410:
	mov	rbp, rbp
	jmp	.label_407
.label_407:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_465
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_465:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_468
.label_468:
	lea	rsi, [rsi]
	jmp	.label_474
.label_474:
	jmp	.label_477
.label_477:
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
	jne	.label_355
.label_374:
	jmp	.label_287
.label_287:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_288
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_297
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_297
.label_288:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_469:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_312
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_312
	jmp	.label_316
.label_316:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_318
	jmp	.label_321
.label_318:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_323
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_323
	lea	rdi, [rdi]
	jmp	.label_329
.label_329:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_332:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_336
.label_336:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_341
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_341:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_450
.label_450:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_476
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_323:
	jmp	.label_360
.label_360:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_362
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_362:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_368
.label_368:
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_411
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
.label_411:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_472
.label_472:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_310
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
.label_310:
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
	jmp	.label_393
.label_312:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_404
	lea	rdi, [rdi]
	jmp	.label_434
.label_434:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_408
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_408:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_404:
	nop	
	jmp	.label_393
.label_393:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_419
	jmp	.label_424
.label_419:
	lea	rsi, [rsi]
	jmp	.label_364
.label_364:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_426
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_426
	lea	rsi, [rsi]
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_433
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_433:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_439
.label_439:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_279:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_426:
	nop	
	jmp	.label_455
.label_455:
	mov	rsp, rsp
	jmp	.label_458
.label_458:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_460
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_460:
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
	jmp	.label_469
.label_424:
	mov	rsp, rsp
	jmp	.label_311
.label_297:
	lea	rsi, [rsi]
	jmp	.label_280
.label_280:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_300
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_286
.label_300:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_290
.label_286:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_290
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
	jne	.label_293
.label_290:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_293
	mov	rsp, rsp
	jmp	.label_311
.label_293:
	nop	
	jmp	.label_314
.label_314:
	jmp	.label_463
.label_463:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_315
	jmp	.label_321
.label_315:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_291
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_291
	lea	rdi, [rdi]
	jmp	.label_327
.label_327:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_409:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_348
.label_348:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_352
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_291:
	jmp	.label_361
.label_361:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_372
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_372:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_370
.label_370:
	nop	
	jmp	.label_311
.label_311:
	jmp	.label_340
.label_340:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_377
	test	byte ptr [rbp - 0x82], 1
	jne	.label_377
	lea	rdi, [rdi]
	jmp	.label_381
.label_381:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_382
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_382:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_388
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_377:
	jmp	.label_399
.label_399:
	nop	
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_403
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_403:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_457
	mov	byte ptr [rbp - 0x7e], 0
.label_457:
	mov	rbp, rbp
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_313
.label_470:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_354
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_354
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_354
	nop	
	jmp	.label_321
.label_354:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_430
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_430
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_430
	test	byte ptr [rbp - 0x7e], 1
	je	.label_436
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
	jmp	.label_453
.label_436:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_459
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_459
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_467
.label_459:
	jmp	.label_471
.label_471:
	mov	rbp, rbp
	jmp	.label_430
.label_430:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_306
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_306
	mov	rbp, rbp
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_478
	lea	rdi, [rdi]
	jmp	.label_281
.label_281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_284
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_301
.label_478:
	jmp	.label_306
.label_306:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_307
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_307:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_453
.label_321:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_322
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_322
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_322:
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
.label_453:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x406940
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
	#Procedure 0x4069b0

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
	je	.label_479
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_480
.label_479:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_480
.label_480:
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
	je	.label_481
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_481:
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
	#Procedure 0x406b80
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
.label_486:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_485
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
	jmp	.label_486
.label_485:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_484
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_482]],  rax
.label_484:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_483
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_483:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c90

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
	#Procedure 0x406ce0

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
	jge	.label_488
	call	abort
.label_488:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_491
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
	jge	.label_492
	call	xalloc_die
.label_492:
	test	byte ptr [rbp - 0x31], 1
	je	.label_493
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_489
.label_493:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_489:
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
	je	.label_487
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_482]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_487:
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
.label_491:
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
	ja	.label_494
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
	je	.label_490
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_490:
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
.label_494:
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
	#Procedure 0x407010

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
	#Procedure 0x407050
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
	#Procedure 0x407080
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
	#Procedure 0x4070c0

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
	#Procedure 0x407120

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
	jne	.label_495
	call	abort
.label_495:
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
	#Procedure 0x4071c0

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
	#Procedure 0x407230
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
	#Procedure 0x407270
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
	#Procedure 0x4072b0

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
	#Procedure 0x407360

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
	#Procedure 0x4073a0

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
	#Procedure 0x4073d0
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
	#Procedure 0x407410

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
	#Procedure 0x407500

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
	#Procedure 0x407550

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
	#Procedure 0x4075f0
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
	#Procedure 0x407640
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
	#Procedure 0x4076a0

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
	#Procedure 0x4076e0
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
	#Procedure 0x407720

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
	#Procedure 0x407760

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
	#Procedure 0x4077a0

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
	je	.label_499
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_497
.label_499:
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
	jne	.label_498
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
	jmp	.label_497
.label_498:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_496
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
	jmp	.label_497
.label_496:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_497:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078e0

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
	je	.label_504
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
	jmp	.label_502
.label_504:
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
.label_502:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_501
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_503]]
	jmp	rcx
.label_689:
	jmp	.label_500
.label_690:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_500
.label_691:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_500
.label_692:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_500
.label_693:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_500
.label_694:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_500
.label_695:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_500
.label_696:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_2
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
	jmp	.label_500
.label_697:
	movabs	rdi, OFFSET FLAT:.str.11_2
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
	jmp	.label_500
.label_698:
	movabs	rdi, OFFSET FLAT:.str.12_2
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
	jmp	.label_500
.label_501:
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
.label_500:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408050
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
.label_505:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_506
	mov	rbp, rbp
	jmp	.label_507
.label_507:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_505
.label_506:
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
	#Procedure 0x408100

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
.label_514:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_513
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_509
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
	jmp	.label_510
.label_509:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_510:
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
.label_513:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_512
	mov	rsp, rsp
	jmp	.label_508
.label_512:
	jmp	.label_511
.label_511:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_514
.label_508:
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
	#Procedure 0x408260

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
	je	.label_515
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
.label_515:
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
	#Procedure 0x408410
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
	movabs	rdi, OFFSET FLAT:.str.19
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
	#Procedure 0x4084c0
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
	jae	.label_516
	mov	rbp, rbp
	call	xalloc_die
.label_516:
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
	#Procedure 0x408520

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
	jne	.label_517
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_517
	lea	rdi, [rdi]
	call	xalloc_die
.label_517:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408580
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
	jae	.label_518
	mov	rsp, rsp
	call	xalloc_die
.label_518:
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
	#Procedure 0x408600

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
	jne	.label_519
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_519
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_521
.label_519:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_520
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_520
	lea	rsi, [rsi]
	call	xalloc_die
.label_520:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_521:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086b0

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
	jne	.label_522
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_524
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
.label_524:
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
	jae	.label_526
	call	xalloc_die
.label_526:
	lea	rsi, [rsi]
	jmp	.label_525
.label_522:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_523
	call	xalloc_die
.label_523:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_525:
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
	#Procedure 0x4087e0

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
	#Procedure 0x408810
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
	#Procedure 0x408850
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
	#Procedure 0x4088a0
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
	jb	.label_527
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_528
.label_527:
	lea	rsi, [rsi]
	call	xalloc_die
.label_528:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408910

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
	#Procedure 0x408960

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
	#Procedure 0x4089c0

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
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408a20

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	strndup
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_529
	nop	
	call	xalloc_die
.label_529:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a80

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
	jge	.label_533
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_531
.label_533:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_530
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
	je	.label_532
.label_530:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_532
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_532:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_534
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
.label_534:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_531:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ba0

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
	je	.label_535
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_536
.label_535:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_537
.label_536:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_537:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c10

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
	je	.label_538
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
.label_538:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c70

	.globl freadptr
	.type freadptr, @function
freadptr:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	cmp	rsi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	jbe	.label_539
	mov	qword ptr [rbp - 8], 0
	jmp	.label_540
.label_539:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_541
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_540
.label_541:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_540:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d20

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
	jne	.label_542
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_542
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_542
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
	jne	.label_544
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_543
.label_544:
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
	jmp	.label_543
.label_542:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_543:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e30

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
	jne	.label_545
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_545:
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
	ja	.label_546
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_546
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_546
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
	jmp	.label_547
.label_546:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_547:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f20

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
	jne	.label_548
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_552
.label_548:
	mov	rbp, rbp
	jmp	.label_549
.label_549:
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
	jne	.label_550
	jmp	.label_551
.label_550:
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
	je	.label_549
.label_551:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_552:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409010

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
	jne	.label_555
	test	byte ptr [rbp - 0x13], 1
	je	.label_554
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_555
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_554
.label_555:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_553
	call	__errno_location
	mov	dword ptr [rax], 0
.label_553:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_556
.label_554:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_556:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090f0

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x1060
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_567
	mov	dword ptr [rbp - 4], 0
	jmp	.label_564
.label_567:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	freadahead
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_568:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jbe	.label_562
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	freadptr
	cmp	rax, 0
	je	.label_566
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_566
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_572
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1050], rax
	jmp	.label_557
.label_572:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1050], rax
.label_557:
	mov	rax, qword ptr [rbp - 0x1050]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	freadptrinc
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rsi, rax
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_560
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_564
.label_560:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_573
	mov	rbp, rbp
	jmp	.label_562
.label_573:
	lea	rsi, [rsi]
	jmp	.label_566
.label_566:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fgetc
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_565
	lea	rdi, [rdi]
	jmp	.label_570
.label_565:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_558
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_564
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_568
.label_562:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	fileno
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	jl	.label_563
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	call	lseek
	nop	
	cmp	rax, 0
	jl	.label_563
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	rpl_fseeko
	mov	dword ptr [rbp - 4], eax
	jmp	.label_564
.label_563:
	lea	rdi, [rdi]
	jmp	.label_569
.label_569:
	nop	
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_571
	lea	rsi, [rsi]
	mov	eax, 0x1000
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1058], rcx
	jmp	.label_559
.label_571:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1058], rax
.label_559:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1058]
	mov	ecx, 1
	mov	esi, ecx
	lea	rdi, [rbp - 0x1040]
	mov	qword ptr [rbp - 0x1048], rax
	mov	rdx, qword ptr [rbp - 0x1048]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	call	fread
	cmp	rax, qword ptr [rbp - 0x1048]
	jae	.label_561
	nop	
	jmp	.label_570
.label_561:
	mov	rax, qword ptr [rbp - 0x1048]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	ja	.label_569
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_564
.label_570:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	ferror
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_574
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_564
.label_574:
	mov	dword ptr [rbp - 4], 0
.label_564:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x1060
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093f0

	.globl freadptrinc
	.type freadptrinc, @function
freadptrinc:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + 8]
	mov	qword ptr [rdi + 8], rsi
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409420

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
	je	.label_576
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_577
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_575
.label_577:
	mov	byte ptr [rbp - 5], 0
.label_575:
	jmp	.label_576
.label_576:
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
	#Procedure 0x4094c0

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
	jne	.label_579
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_579:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_578
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_578:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409540

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x20]
	nop	
	jbe	.label_580
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_582
.label_580:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	mov	rbp, rbp
	cmp	edx, 0
	mov	qword ptr [rbp - 0x18], rax
	je	.label_581
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_583
.label_581:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
.label_582:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409610

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
	ja	.label_584
	jmp	.label_586
.label_586:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_585
.label_584:
	lea	rsi, [rsi]
	jmp	.label_585
.label_585:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409670
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
	jb	.label_587
	jmp	.label_590
.label_590:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_587
	jmp	.label_588
.label_588:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_589
	jmp	.label_587
.label_587:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_591
.label_589:
	mov	byte ptr [rbp - 1], 0
.label_591:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096e0
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
	jb	.label_592
	jmp	.label_595
.label_595:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_593
	jmp	.label_592
.label_592:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_594
.label_593:
	mov	byte ptr [rbp - 1], 0
.label_594:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409730
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_596
	jmp	.label_597
.label_597:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_598
.label_596:
	mov	byte ptr [rbp - 1], 0
.label_598:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409760
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_599
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_599:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409790
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
	jb	.label_600
	jmp	.label_602
.label_602:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_603
	jmp	.label_600
.label_600:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_601
.label_603:
	mov	byte ptr [rbp - 1], 0
.label_601:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097e0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
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
	.align	32
	#Procedure 0x409820
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
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
	.align	32
	#Procedure 0x409860
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_610
	jmp	.label_612
.label_612:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_611
.label_610:
	mov	byte ptr [rbp - 1], 0
.label_611:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098a0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_613
	jmp	.label_615
.label_615:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_614
.label_613:
	mov	byte ptr [rbp - 1], 0
.label_614:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098e0
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
	jb	.label_616
	jmp	.label_619
.label_619:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_616
	jmp	.label_620
.label_620:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_616
	jmp	.label_618
.label_618:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_621
	jmp	.label_616
.label_616:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_617
.label_621:
	mov	byte ptr [rbp - 1], 0
.label_617:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409960
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
	jb	.label_622
	jmp	.label_625
.label_625:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_623
	jmp	.label_622
.label_622:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_624
.label_623:
	mov	byte ptr [rbp - 1], 0
.label_624:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099b0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_626
	jmp	.label_628
.label_628:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_627
.label_626:
	mov	byte ptr [rbp - 1], 0
.label_627:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099f0
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
	jb	.label_629
	jmp	.label_631
.label_631:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_629
	jmp	.label_630
.label_630:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_632
	jmp	.label_629
.label_629:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_633
.label_632:
	mov	byte ptr [rbp - 1], 0
.label_633:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a60

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_634
	jmp	.label_636
.label_636:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_635
.label_634:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_635:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409aa0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_637
	jmp	.label_639
.label_639:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_638
.label_637:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_638:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
