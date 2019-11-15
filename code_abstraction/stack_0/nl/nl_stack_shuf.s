	.section	.text
	.align	16
	#Procedure 0x401930

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edi
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_9
	mov	rsp, rsp
	jmp	.label_7
.label_7:
	movabs	rdi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	jmp	.label_8
.label_9:
	movabs	rdi, OFFSET FLAT:.str.1
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x38], eax
	call	emit_stdin_note
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	call	emit_ancillary_info
.label_8:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401b70

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bc0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.32
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c10

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_10:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_15
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_15:
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	test	al, 1
	jne	.label_14
	lea	rsi, [rsi]
	jmp	.label_12
.label_14:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_10
.label_12:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_13
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	nop	
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_11
	nop	
	movabs	rsi, OFFSET FLAT:.str.43
	mov	eax, 3
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_11
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_11:
	nop	
	movabs	rdi, OFFSET FLAT:.str.45
	nop	
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.47
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmove	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf8], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	byte ptr [rbp - 0xc9], 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.13
	movabs	rsi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0xd8], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x50], rax
	call	atexit
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	dword ptr [rbp - 0xa0], eax
.label_48:
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:longopts
	mov	rsp, rsp
	xor	eax, eax
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	getopt_long
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], eax
	cmp	eax, -1
	je	.label_59
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0xd0], ecx
	nop	
	je	.label_19
	nop	
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_25
	mov	rsp, rsp
	jmp	.label_31
.label_31:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_44
	mov	rsp, rsp
	jmp	.label_37
.label_37:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xc], eax
	je	.label_32
	jmp	.label_43
.label_43:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x24], eax
	je	.label_38
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x10], eax
	je	.label_47
	lea	rsi, [rsi]
	jmp	.label_49
.label_49:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x69
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_52
	mov	rsp, rsp
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	je	.label_56
	jmp	.label_57
.label_57:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	sub	eax, 0x6e
	nop	
	mov	dword ptr [rbp - 0x34], eax
	je	.label_58
	nop	
	jmp	.label_20
.label_20:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x70
	mov	dword ptr [rbp - 4], eax
	je	.label_45
	mov	rbp, rbp
	jmp	.label_22
.label_22:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x28], eax
	je	.label_23
	lea	rdi, [rdi]
	jmp	.label_27
.label_27:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x76
	nop	
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_29
	jmp	.label_35
.label_35:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	je	.label_36
	mov	rsp, rsp
	jmp	.label_41
.label_47:
	movabs	rdi, OFFSET FLAT:header_type
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:header_regex
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:header_fastmap
	mov	rbp, rbp
	call	build_type_arg
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_39
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0xc9], 0
.label_39:
	nop	
	jmp	.label_21
.label_44:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:body_type
	movabs	rsi, OFFSET FLAT:body_regex
	nop	
	movabs	rdx, OFFSET FLAT:body_fastmap
	lea	rsi, [rsi]
	call	build_type_arg
	test	al, 1
	mov	rsp, rsp
	jne	.label_26
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0xc9], 0
.label_26:
	jmp	.label_21
.label_38:
	movabs	rdi, OFFSET FLAT:footer_type
	movabs	rsi, OFFSET FLAT:footer_regex
	movabs	rdx, OFFSET FLAT:footer_fastmap
	call	build_type_arg
	nop	
	test	al, 1
	jne	.label_53
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc9], 0
.label_53:
	jmp	.label_21
.label_29:
	movabs	rdi, OFFSET FLAT:.str.19
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	nop	
	movabs	rsi, 0x8000000000000000
	nop	
	movabs	rdx, 0x7fffffffffffffff
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x90]
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [starting_line_number]],  rax
	jmp	.label_21
.label_52:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa8], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rbp, rbp
	movabs	rdx, 0x7fffffffffffffff
	movabs	rcx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	r8, rax
	lea	rsi, [rsi]
	call	xdectoimax
	mov	qword ptr [word ptr [page_incr]],  rax
	mov	rbp, rbp
	jmp	.label_21
.label_45:
	nop	
	mov	byte ptr [byte ptr [reset_numbers]],  0
	lea	rdi, [rdi]
	jmp	.label_21
.label_56:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	call	gettext
	mov	ecx, 1
	mov	rsp, rsp
	mov	esi, ecx
	movabs	rdx, 0x7fffffffffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str_0
	nop	
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x78]
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [blank_join]],  rax
	jmp	.label_21
.label_23:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [separator_str]],  rax
	nop	
	jmp	.label_21
.label_36:
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	call	gettext
	mov	ecx, 1
	nop	
	mov	esi, ecx
	mov	ecx, 0x7fffffff
	mov	edx, ecx
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoimax
	mov	rbp, rbp
	mov	r9d, eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [lineno_width]],  r9d
	jmp	.label_21
.label_58:
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_16
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:FORMAT_LEFT
	mov	qword ptr [word ptr [lineno_format]],  rax
	mov	rbp, rbp
	jmp	.label_17
.label_16:
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.24
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_40
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:FORMAT_RIGHT_NOLZ
	mov	rsp, rsp
	mov	qword ptr [word ptr [lineno_format]],  rax
	lea	rsi, [rsi]
	jmp	.label_30
.label_40:
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jne	.label_42
	nop	
	movabs	rax, OFFSET FLAT:FORMAT_RIGHT_LZ
	mov	qword ptr [word ptr [lineno_format]],  rax
	jmp	.label_51
.label_42:
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rbp, rbp
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc9], 0
.label_51:
	jmp	.label_30
.label_30:
	mov	rsp, rsp
	jmp	.label_17
.label_17:
	jmp	.label_21
.label_32:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [section_del]],  rax
	jmp	.label_21
.label_25:
	xor	edi, edi
	nop	
	call	usage
.label_19:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.11
	movabs	rdx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	movabs	r9, OFFSET FLAT:.str.29
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, r10
	mov	rbp, rbp
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	al, 0
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_41:
	nop	
	mov	byte ptr [rbp - 0xc9], 0
.label_21:
	lea	rsi, [rsi]
	jmp	.label_48
.label_59:
	test	byte ptr [rbp - 0xc9], 1
	jne	.label_50
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_50:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [section_del]]
	call	strlen
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x88], 3
	mov	qword ptr [word ptr [header_del_len]],  rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [header_del_len]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [header_del]],  rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [header_del]]
	mov	rsi,  qword ptr [word ptr [section_del]]
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [section_del]]
	mov	rdi, rax
	call	stpcpy
	nop	
	mov	rsi,  qword ptr [word ptr [section_del]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	stpcpy
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	shl	rsi, 1
	nop	
	mov	qword ptr [word ptr [body_del_len]],  rsi
	mov	rsi,  qword ptr [word ptr [body_del_len]]
	add	rsi, 1
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [body_del]],  rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [body_del]]
	mov	rsi,  qword ptr [word ptr [section_del]]
	lea	rsi, [rsi]
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [section_del]]
	mov	rsp, rsp
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x88]
	mov	qword ptr [word ptr [footer_del_len]],  rsi
	mov	rsi,  qword ptr [word ptr [footer_del_len]]
	lea	rdi, [rdi]
	add	rsi, 1
	mov	rdi, rsi
	nop	
	mov	qword ptr [rbp - 0x70], rax
	call	xmalloc
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:line_buf
	mov	rsp, rsp
	mov	qword ptr [word ptr [footer_del]],  rax
	nop	
	mov	rax,  qword ptr [word ptr [footer_del]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [section_del]]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rax
	call	stpcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x30], rax
	call	initbuffer
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [separator_str]]
	call	strlen
	mov	qword ptr [rbp - 0x88], rax
	movsxd	rax,  dword ptr [dword ptr [lineno_width]]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	xmalloc
	movabs	rsi, OFFSET FLAT:body_regex
	mov	ecx, 0x20
	nop	
	mov	qword ptr [word ptr [print_no_line_fmt]],  rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [print_no_line_fmt]]
	movsxd	rax,  dword ptr [dword ptr [lineno_width]]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rsi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	nop	
	call	memset
	nop	
	movsxd	rax,  dword ptr [dword ptr [lineno_width]]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x88]
	mov	rdx,  qword ptr [word ptr [print_no_line_fmt]]
	nop	
	mov	byte ptr [rdx + rax], 0
	nop	
	mov	rax,  qword ptr [word ptr [starting_line_number]]
	mov	qword ptr [word ptr [line_no]],  rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [body_type]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [current_type]],  rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [word ptr [current_regex]],  rax
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [optind]]
	cmp	ecx, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	jne	.label_54
	movabs	rdi, OFFSET FLAT:.str.30
	call	nl_file
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc9], al
	jmp	.label_28
.label_54:
	mov	rsp, rsp
	jmp	.label_33
.label_33:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	jge	.label_34
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	call	nl_file
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc9]
	mov	rbp, rbp
	and	al, 1
	movzx	esi, al
	and	esi, edx
	cmp	esi, 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc9], al
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [optind]],  eax
	nop	
	jmp	.label_33
.label_34:
	jmp	.label_28
.label_28:
	mov	rbp, rbp
	test	byte ptr [byte ptr [have_read_stdin]],  1
	nop	
	je	.label_18
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_18
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_18:
	mov	eax, 1
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0xc9]
	test	dl, 1
	cmovne	eax, ecx
	lea	rsi, [rsi]
	add	rsp, 0x100
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402970

	.globl build_type_arg
	.type build_type_arg, @function
build_type_arg:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rbp - 0x19], 1
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	eax, byte ptr [rdx]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	sub	ecx, 0x61
	nop	
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], ecx
	je	.label_64
	jmp	.label_66
.label_66:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	je	.label_64
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	sub	eax, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_65
	mov	rbp, rbp
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x38], eax
	jne	.label_67
	mov	rsp, rsp
	jmp	.label_64
.label_64:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	nop	
	jmp	.label_61
.label_65:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [word ptr [optarg]],  rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  0x2c6
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	call	strlen
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	je	.label_60
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_60:
	jmp	.label_61
.label_67:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
.label_61:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl nl_file
	.type nl_file, @function
nl_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.30
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_71
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_72
.label_71:
	movabs	rsi, OFFSET FLAT:.str.65
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_68
	nop	
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_69
.label_68:
	jmp	.label_72
.label_72:
	mov	esi, 2
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	fadvise
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	process_file
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	ferror_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_73
	mov	rsp, rsp
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_69
.label_73:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.30
	mov	esi, eax
	nop	
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_70
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	clearerr_unlocked
	jmp	.label_74
.label_70:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fclose
	cmp	eax, -1
	nop	
	jne	.label_75
	mov	rbp, rbp
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_69
.label_75:
	jmp	.label_74
.label_74:
	mov	byte ptr [rbp - 0x15], 1
.label_69:
	mov	al, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d30

	.globl process_file
	.type process_file, @function
process_file:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
.label_78:
	movabs	rdi, OFFSET FLAT:line_buf
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	readlinebuffer
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_79
	mov	rbp, rbp
	call	check_section
	mov	ecx, eax
	mov	edx, ecx
	nop	
	sub	eax, 3
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	ja	.label_76
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_77]]
	mov	rsp, rsp
	jmp	rcx
.label_3030:
	mov	rbp, rbp
	call	proc_header
	nop	
	jmp	.label_76
.label_3031:
	call	proc_body
	jmp	.label_76
.label_3032:
	mov	rsp, rsp
	call	proc_footer
	jmp	.label_76
.label_3033:
	call	proc_text
.label_76:
	jmp	.label_78
.label_79:
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402de0

	.globl check_section
	.type check_section, @function
check_section:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rax,  qword ptr [word ptr [label_80]]
	nop	
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 2
	jb	.label_81
	mov	rax,  qword ptr [word ptr [label_83]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [section_del]]
	nop	
	movzx	edx, word ptr [rcx]
	nop	
	movzx	esi, word ptr [rax]
	lea	rsi, [rsi]
	sub	esi, edx
	setne	dil
	movzx	edx, dil
	mov	rbp, rbp
	cmp	edx, 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_86
.label_81:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 3
	mov	rbp, rbp
	jmp	.label_85
.label_86:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [header_del_len]]
	lea	rsi, [rsi]
	jne	.label_87
	mov	rdi,  qword ptr [word ptr [label_83]]
	mov	rsi,  qword ptr [word ptr [header_del]]
	nop	
	mov	rdx,  qword ptr [word ptr [header_del_len]]
	call	memcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_87
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_85
.label_87:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [body_del_len]]
	lea	rdi, [rdi]
	jne	.label_84
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [label_83]]
	mov	rsi,  qword ptr [word ptr [body_del]]
	mov	rdx,  qword ptr [word ptr [body_del_len]]
	call	memcmp
	cmp	eax, 0
	jne	.label_84
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_85
.label_84:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [footer_del_len]]
	lea	rdi, [rdi]
	jne	.label_82
	mov	rdi,  qword ptr [word ptr [label_83]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [footer_del]]
	mov	rdx,  qword ptr [word ptr [footer_del_len]]
	lea	rdi, [rdi]
	call	memcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_82
	mov	dword ptr [rbp - 4], 2
	nop	
	jmp	.label_85
.label_82:
	mov	dword ptr [rbp - 4], 3
.label_85:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl proc_header
	.type proc_header, @function
proc_header:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:header_regex
	mov	rcx,  qword ptr [word ptr [header_type]]
	nop	
	mov	qword ptr [word ptr [current_type]],  rcx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [current_regex]],  rax
	test	byte ptr [byte ptr [reset_numbers]],  1
	je	.label_88
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [starting_line_number]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [line_no]],  rax
.label_88:
	lea	rsi, [rsi]
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl proc_body
	.type proc_body, @function
proc_body:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:body_regex
	mov	rcx,  qword ptr [word ptr [body_type]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [current_type]],  rcx
	mov	qword ptr [word ptr [current_regex]],  rax
	test	byte ptr [byte ptr [reset_numbers]],  1
	mov	rsp, rsp
	je	.label_89
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [starting_line_number]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [line_no]],  rax
.label_89:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl proc_footer
	.type proc_footer, @function
proc_footer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:footer_regex
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [footer_type]]
	mov	qword ptr [word ptr [current_type]],  rcx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [current_regex]],  rax
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [reset_numbers]],  1
	mov	rsp, rsp
	je	.label_90
	mov	rax,  qword ptr [word ptr [starting_line_number]]
	mov	qword ptr [word ptr [line_no]],  rax
.label_90:
	mov	edi, 0xa
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030f0

	.globl proc_text
	.type proc_text, @function
proc_text:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + current_type]]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x61
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	je	.label_107
	jmp	.label_103
.label_103:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x6e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	je	.label_105
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x70
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_92
	jmp	.label_100
.label_100:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_102
	jmp	.label_93
.label_107:
	cmp	qword ptr [word ptr [blank_join]],  1
	lea	rdi, [rdi]
	jle	.label_109
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [label_80]]
	lea	rdi, [rdi]
	jb	.label_96
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [proc_text.blank_lines]]
	add	rax, 1
	mov	qword ptr [word ptr [proc_text.blank_lines]],  rax
	cmp	rax,  qword ptr [word ptr [blank_join]]
	nop	
	jne	.label_104
.label_96:
	call	print_lineno
	nop	
	mov	qword ptr [word ptr [proc_text.blank_lines]],  0
	mov	rbp, rbp
	jmp	.label_98
.label_104:
	mov	rdi,  qword ptr [word ptr [print_no_line_fmt]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
.label_98:
	jmp	.label_91
.label_109:
	call	print_lineno
.label_91:
	mov	rsp, rsp
	jmp	.label_93
.label_102:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [label_80]]
	jae	.label_99
	nop	
	call	print_lineno
	jmp	.label_108
.label_99:
	mov	rdi,  qword ptr [word ptr [print_no_line_fmt]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x4c], eax
.label_108:
	mov	rbp, rbp
	jmp	.label_93
.label_105:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [print_no_line_fmt]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_93
.label_92:
	mov	rdi,  qword ptr [word ptr [rip + current_regex]]
	mov	rsi,  qword ptr [word ptr [rip + label_83]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + label_80]]
	dec	rax
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x48]
	call	rpl_re_search
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rax, -2
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	qword ptr [rbp - 0x38], rax
	je	.label_106
	jmp	.label_94
.label_94:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	je	.label_101
	mov	rsp, rsp
	jmp	.label_97
.label_106:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.66
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], esi
	nop	
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_101:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [print_no_line_fmt]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	jmp	.label_95
.label_97:
	call	print_lineno
.label_95:
	jmp	.label_93
.label_93:
	mov	eax, 1
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [label_83]]
	mov	rdx,  qword ptr [word ptr [label_80]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x28], rax
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl print_lineno
	.type print_lineno, @function
print_lineno:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [lineno_format]]
	mov	esi,  dword ptr [dword ptr [lineno_width]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [line_no]]
	mov	rcx,  qword ptr [word ptr [separator_str]]
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [line_no]]
	add	rcx,  qword ptr [word ptr [page_incr]]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rcx,  qword ptr [word ptr [line_no]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	jge	.label_111
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_111:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [line_no]],  rax
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403450
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
	#Procedure 0x403480
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
	#Procedure 0x4034b0

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
	je	.label_113
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_116
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_113
.label_116:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_114
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
	jmp	.label_115
.label_114:
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
.label_115:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_113:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_112
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_112:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035e0

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
	.section	.text
	.align	16
	#Procedure 0x403620

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
	je	.label_117
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
.label_117:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0x18
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c0

	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	edx, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	readlinebuffer_delim
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	al, dl
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x21], al
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_124
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_118
.label_124:
	jmp	.label_121
.label_121:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_119
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	je	.label_126
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_123
.label_126:
	nop	
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_118
.label_123:
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	ecx, edx
	jne	.label_122
	mov	rsp, rsp
	jmp	.label_120
.label_122:
	movsx	eax, byte ptr [rbp - 0x21]
	mov	dword ptr [rbp - 0xc], eax
.label_119:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_125
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	call	x2realloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rsi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_125:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	movsx	ecx, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_121
.label_120:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_118:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038d0
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403900

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
	jne	.label_127
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_127:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_130
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_129
.label_130:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_129:
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
	jl	.label_128
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
	jne	.label_128
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
	jne	.label_131
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_131:
	jmp	.label_128
.label_128:
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
	.section	.text
	.align	16
	#Procedure 0x403a80
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
	je	.label_133
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_132
.label_133:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_132
.label_132:
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
	.section	.text
	.align	16
	#Procedure 0x403b30
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
	je	.label_134
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_135
.label_134:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_135
.label_135:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b90
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
	je	.label_136
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_137
.label_136:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_137
.label_137:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bf0

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
	je	.label_138
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_139
.label_138:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_139
.label_139:
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
	.section	.text
	.align	16
	#Procedure 0x403cf0
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
	jne	.label_140
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_140:
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
	.section	.text
	.align	16
	#Procedure 0x403d50

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
	jne	.label_141
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_141:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_143
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_142
.label_143:
	call	abort
.label_142:
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
	.section	.text
	.align	16
	#Procedure 0x403df0
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
	je	.label_144
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_145
.label_144:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_145
.label_145:
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
	.section	.text
	.align	16
	#Procedure 0x403ef0

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
.label_337:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_194
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_147]]
	jmp	rcx
.label_2969:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_2968:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_159
	jmp	.label_342
.label_342:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_166
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_166:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_159
.label_159:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_182
.label_2970:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_182
.label_2971:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_195
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_195:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_211
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_234:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_219
	jmp	.label_222
.label_222:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_224
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_224:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_234
.label_219:
	mov	rbp, rbp
	jmp	.label_211
.label_211:
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
	jmp	.label_182
.label_2966:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_2965:
	mov	byte ptr [rbp - 0x3e], 1
.label_2967:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_258
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_258:
	jmp	.label_264
.label_264:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_265
	jmp	.label_270
.label_270:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_271
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_265
.label_265:
	movabs	rax, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_182
.label_2964:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_182
.label_194:
	call	abort
.label_182:
	mov	qword ptr [rbp - 0xd8], 0
.label_291:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_287
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
	jmp	.label_289
.label_287:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_289:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_304
	mov	rbp, rbp
	jmp	.label_312
.label_304:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_153
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_153
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_153
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_149
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_149
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_334
.label_149:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_334:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_153
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
	jne	.label_153
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_156
	jmp	.label_173
.label_156:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_153:
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
	ja	.label_164
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_180]]
	nop	
	jmp	rcx
.label_2972:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_185
	mov	rsp, rsp
	jmp	.label_189
.label_189:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_192
	jmp	.label_173
.label_192:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_174
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_174
	nop	
	jmp	.label_201
.label_201:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_204
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_213
.label_213:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_217
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_217:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_226
.label_226:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_229
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_174:
	lea	rsi, [rsi]
	jmp	.label_238
.label_238:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_239
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_239:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_246
.label_246:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_256
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_256
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_256
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_256
	nop	
	jmp	.label_274
.label_274:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_276
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_276:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_281
.label_281:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_263
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_263:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_256
.label_256:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_292
.label_185:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_171
	mov	rbp, rbp
	jmp	.label_206
.label_171:
	jmp	.label_292
.label_292:
	jmp	.label_179
.label_2983:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_302
	mov	rbp, rbp
	jmp	.label_308
.label_308:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_310
	jmp	.label_316
.label_302:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_317
	jmp	.label_173
.label_317:
	jmp	.label_236
.label_310:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_212
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_212
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_212
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
	je	.label_151
	nop	
	jmp	.label_288
.label_288:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_151
	jmp	.label_343
.label_343:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_151
	jmp	.label_148
.label_148:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_151
	jmp	.label_284
.label_284:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_260
	jmp	.label_151
.label_151:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_169
	jmp	.label_173
.label_169:
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
	jae	.label_175
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_175:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_198
.label_198:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_200:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_207
.label_207:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_215
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_215:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_311
.label_311:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_329
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_329:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_230
.label_260:
	jmp	.label_230
.label_230:
	jmp	.label_212
.label_212:
	jmp	.label_236
.label_316:
	jmp	.label_236
.label_236:
	jmp	.label_179
.label_2973:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_241
.label_2974:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_241
.label_2978:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_241
.label_2976:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_167
.label_2979:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_167
.label_2975:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_167
.label_2977:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_241
.label_2984:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_221
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_267
	nop	
	jmp	.label_173
.label_267:
	lea	rsi, [rsi]
	jmp	.label_168
.label_221:
	test	byte ptr [rbp - 0x89], 1
	je	.label_272
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_272
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_272
	jmp	.label_168
.label_272:
	jmp	.label_167
.label_167:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_282
	test	byte ptr [rbp - 0x3e], 1
	je	.label_282
	jmp	.label_173
.label_282:
	mov	rsp, rsp
	jmp	.label_241
.label_241:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_286
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_181
.label_286:
	jmp	.label_179
.label_2985:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_293
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_296
	jmp	.label_301
.label_293:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_296
.label_301:
	nop	
	jmp	.label_179
.label_296:
	jmp	.label_305
.label_305:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_306
	lea	rsi, [rsi]
	jmp	.label_179
.label_306:
	nop	
	jmp	.label_313
.label_313:
	mov	byte ptr [rbp - 0x91], 1
.label_2980:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_315
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_315
	jmp	.label_173
.label_315:
	lea	rsi, [rsi]
	jmp	.label_179
.label_2982:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_321
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_220
	jmp	.label_173
.label_220:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_269
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_269
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_269:
	jmp	.label_335
.label_335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_336
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_339
.label_339:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_346
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_346:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_157
.label_157:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_163
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_163:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_321:
	lea	rsi, [rsi]
	jmp	.label_179
.label_2981:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_179
.label_164:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_186
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
	jmp	.label_160
.label_186:
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
	jne	.label_214
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_214:
	jmp	.label_225
.label_225:
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
	jne	.label_237
	jmp	.label_243
.label_237:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_244
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_243
.label_244:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_248
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_273:
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
	jae	.label_253
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_253:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_197
	jmp	.label_210
.label_197:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_273
.label_210:
	jmp	.label_243
.label_248:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_262
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_262
	mov	qword ptr [rbp - 0xe8], 1
.label_319:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_283
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
	jb	.label_285
	jmp	.label_298
.label_298:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_285
	jmp	.label_303
.label_303:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_285
	jmp	.label_309
.label_309:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_275
	mov	rsp, rsp
	jmp	.label_285
.label_285:
	mov	rsp, rsp
	jmp	.label_173
.label_275:
	jmp	.label_318
.label_318:
	mov	rsp, rsp
	jmp	.label_259
.label_259:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_319
.label_283:
	mov	rbp, rbp
	jmp	.label_262
.label_262:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_327
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_327:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_328
.label_328:
	lea	rsi, [rsi]
	jmp	.label_331
.label_331:
	jmp	.label_332
.label_332:
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
	jne	.label_225
.label_243:
	jmp	.label_160
.label_160:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_338
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_345
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_345
.label_338:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_330:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_165
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_165
	jmp	.label_170
.label_170:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_172
	jmp	.label_173
.label_172:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_178
	test	byte ptr [rbp - 0x42], 1
	jne	.label_178
	lea	rdi, [rdi]
	jmp	.label_187
.label_187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_320
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_322
.label_322:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_202
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_202:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_208
.label_208:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_150
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_150:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_178:
	jmp	.label_227
.label_227:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_228
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_228:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_177
.label_177:
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_235
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
.label_235:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_254
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
.label_254:
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
	jmp	.label_266
.label_165:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_223
	lea	rdi, [rdi]
	jmp	.label_277
.label_277:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_249:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_223:
	nop	
	jmp	.label_266
.label_266:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_323
	jmp	.label_290
.label_323:
	lea	rsi, [rsi]
	jmp	.label_294
.label_294:
	test	byte ptr [rbp - 0x42], 1
	je	.label_295
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_295
	lea	rsi, [rsi]
	jmp	.label_299
.label_299:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_216
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_307
.label_307:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_314
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_295:
	nop	
	jmp	.label_324
.label_324:
	mov	rsp, rsp
	jmp	.label_325
.label_325:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_326
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_326:
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
	jmp	.label_330
.label_290:
	mov	rsp, rsp
	jmp	.label_168
.label_345:
	lea	rsi, [rsi]
	jmp	.label_179
.label_179:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_340
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_344
.label_340:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_146
.label_344:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_146
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
	jne	.label_154
.label_146:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_154
	mov	rsp, rsp
	jmp	.label_168
.label_154:
	nop	
	jmp	.label_181
.label_181:
	jmp	.label_183
.label_183:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_184
	jmp	.label_173
.label_184:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_188
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_188
	lea	rdi, [rdi]
	jmp	.label_193
.label_193:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_196
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_196:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_209
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_209:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_218
.label_218:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_257
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_257:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_188:
	jmp	.label_231
.label_231:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_232
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_240
.label_240:
	nop	
	jmp	.label_168
.label_168:
	jmp	.label_245
.label_245:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_250
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_250
	lea	rdi, [rdi]
	jmp	.label_252
.label_252:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_255
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_268
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_268:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_250:
	jmp	.label_278
.label_278:
	nop	
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_280
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_242
	mov	byte ptr [rbp - 0xb7], 0
.label_242:
	mov	rbp, rbp
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_291
.label_312:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_297
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_297
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_297
	nop	
	jmp	.label_173
.label_297:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_251
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_251
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_251
	test	byte ptr [rbp - 0xb7], 1
	je	.label_300
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
	jmp	.label_199
.label_300:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_333
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_333
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_337
.label_333:
	jmp	.label_341
.label_341:
	mov	rbp, rbp
	jmp	.label_251
.label_251:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_190
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_190
	mov	rbp, rbp
	jmp	.label_152
.label_152:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_155
	lea	rdi, [rdi]
	jmp	.label_158
.label_158:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_162
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_162:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_152
.label_155:
	jmp	.label_190
.label_190:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_191
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_191:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_199
.label_173:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_203
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_203
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_203:
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
.label_199:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405990
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
	.section	.text
	.align	16
	#Procedure 0x405a00

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
	je	.label_347
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_348
.label_347:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_348
.label_348:
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
	je	.label_349
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_349:
	mov	rax, qword ptr [rbp - 0x30]
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
	#Procedure 0x405bd0
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
.label_354:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_353
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
	jmp	.label_354
.label_353:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_352
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_350]],  rax
.label_352:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_351
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_351:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ce0

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
	.section	.text
	.align	16
	#Procedure 0x405d30

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
	jge	.label_359
	call	abort
.label_359:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_362
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
	jge	.label_355
	call	xalloc_die
.label_355:
	test	byte ptr [rbp - 0x51], 1
	je	.label_356
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_360
.label_356:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_360:
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
	je	.label_358
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_350]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_358:
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
.label_362:
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
	ja	.label_357
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
	je	.label_361
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_361:
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
.label_357:
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
	.section	.text
	.align	16
	#Procedure 0x406060

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
	.section	.text
	.align	16
	#Procedure 0x4060a0
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
	#Procedure 0x4060d0
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
	.section	.text
	.align	16
	#Procedure 0x406110

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
	.section	.text
	.align	16
	#Procedure 0x406170

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
	jne	.label_363
	call	abort
.label_363:
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
	.section	.text
	.align	16
	#Procedure 0x406210

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
	.section	.text
	.align	16
	#Procedure 0x406280
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
	.section	.text
	.align	16
	#Procedure 0x4062c0
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
	.section	.text
	.align	16
	#Procedure 0x406300

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
	.section	.text
	.align	16
	#Procedure 0x4063b0

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
	#Procedure 0x4063f0

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
	#Procedure 0x406420
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
	#Procedure 0x406460

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
	#Procedure 0x406540

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
	.section	.text
	.align	16
	#Procedure 0x406590

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
	.section	.text
	.align	16
	#Procedure 0x406630
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
	.section	.text
	.align	16
	#Procedure 0x406680
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
	.section	.text
	.align	16
	#Procedure 0x4066e0

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
	.section	.text
	.align	16
	#Procedure 0x406720
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
	#Procedure 0x406760

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
	#Procedure 0x4067a0

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
	#Procedure 0x4067e0

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
	je	.label_367
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_365
.label_367:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_366
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
	jmp	.label_365
.label_366:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_364
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_365
.label_364:
	nop	
	movabs	rax, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_365:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406920

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
	je	.label_372
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
	jmp	.label_370
.label_372:
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
.label_370:
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
	ja	.label_371
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_368]]
	jmp	rcx
.label_2987:
	jmp	.label_369
.label_2988:
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
	jmp	.label_369
.label_2989:
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
	jmp	.label_369
.label_2990:
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
	jmp	.label_369
.label_2991:
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
	jmp	.label_369
.label_2992:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_369
.label_2993:
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
	jmp	.label_369
.label_2994:
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
	jmp	.label_369
.label_2995:
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
	jmp	.label_369
.label_2996:
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_369
.label_371:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_369:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407160
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
.label_373:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_374
	mov	rbp, rbp
	jmp	.label_375
.label_375:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_373
.label_374:
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
	.section	.text
	.align	16
	#Procedure 0x407210

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
.label_379:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_376
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_381
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
	jmp	.label_380
.label_381:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_380:
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
.label_376:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_378
	mov	rsp, rsp
	jmp	.label_382
.label_378:
	jmp	.label_377
.label_377:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_379
.label_382:
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
	.section	.text
	.align	16
	#Procedure 0x407370

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
	je	.label_383
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
.label_383:
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
	.section	.text
	.align	16
	#Procedure 0x407530
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
	.section	.text
	.align	16
	#Procedure 0x4075e0
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
	jae	.label_384
	mov	rbp, rbp
	call	xalloc_die
.label_384:
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
	#Procedure 0x407640

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
	jne	.label_385
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_385
	lea	rdi, [rdi]
	call	xalloc_die
.label_385:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076a0
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
	jae	.label_386
	mov	rsp, rsp
	call	xalloc_die
.label_386:
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
	.section	.text
	.align	16
	#Procedure 0x407720

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
	jne	.label_387
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_387
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_389
.label_387:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_388
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_388
	lea	rsi, [rsi]
	call	xalloc_die
.label_388:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077d0

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
	jne	.label_390
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_392
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
.label_392:
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
	jae	.label_394
	call	xalloc_die
.label_394:
	lea	rsi, [rsi]
	jmp	.label_393
.label_390:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_391
	call	xalloc_die
.label_391:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_393:
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
	.section	.text
	.align	16
	#Procedure 0x407900

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
	#Procedure 0x407930

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
	#Procedure 0x407970
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
	#Procedure 0x4079c0
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
	jb	.label_395
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_396
.label_395:
	lea	rsi, [rsi]
	call	xalloc_die
.label_396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a30

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
	.section	.text
	.align	16
	#Procedure 0x407a80
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
	.section	.text
	.align	16
	#Procedure 0x407ae0

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
	#Procedure 0x407b40

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	push	rbx
	sub	rsp, 0x68
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11d, r10d
	nop	
	lea	rbx, [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dword ptr [rbp - 0x50], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], r9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, r11
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoimax
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_408
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_412
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_399
.label_412:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0x3fffffff
	jle	.label_404
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	jmp	.label_397
.label_404:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], -0x40000000
	nop	
	jge	.label_400
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	jmp	.label_407
.label_400:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x22
.label_407:
	mov	rbp, rbp
	jmp	.label_397
.label_397:
	mov	rbp, rbp
	jmp	.label_399
.label_399:
	jmp	.label_401
.label_408:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 1
	mov	rbp, rbp
	jne	.label_403
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_402
.label_403:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 3
	jne	.label_411
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
.label_411:
	nop	
	jmp	.label_402
.label_402:
	jmp	.label_401
.label_401:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_405
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	je	.label_409
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_398
.label_409:
	mov	rsp, rsp
	mov	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_398
.label_398:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x48], eax
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_406
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_410
.label_406:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_410:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x4c], eax
	mov	qword ptr [rbp - 0x68], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_405:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x68
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d70

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	eax, 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x20]
	mov	r10d, dword ptr [rbp - 0x24]
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rsp], r10d
	call	xnumtoimax
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407de0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xc8], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	dword ptr [rbp - 0xa0], edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0xdc], 0
	nop	
	cmp	eax, dword ptr [rbp - 0xa0]
	jg	.label_427
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa0], 0x24
	mov	rsp, rsp
	jg	.label_427
	lea	rdi, [rdi]
	jmp	.label_434
.label_427:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
.label_434:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_449
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_453
.label_449:
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_453
.label_453:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xa0]
	call	strtoimax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	jne	.label_473
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_419
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_419
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	je	.label_419
	nop	
	mov	qword ptr [rbp - 0x80], 1
	jmp	.label_448
.label_419:
	mov	dword ptr [rbp - 0x40], 4
	jmp	.label_413
.label_448:
	jmp	.label_457
.label_473:
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_460
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x22
	je	.label_463
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 4
	mov	rsp, rsp
	jmp	.label_413
.label_463:
	nop	
	mov	dword ptr [rbp - 0xdc], 1
.label_460:
	lea	rdi, [rdi]
	jmp	.label_457
.label_457:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_426
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
	lea	rdi, [rdi]
	jmp	.label_413
.label_426:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_418
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 0x400
	mov	dword ptr [rbp - 0x34], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	call	strchr
	nop	
	cmp	rax, 0
	jne	.label_444
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xdc]
	or	edx, 2
	mov	dword ptr [rbp - 0x40], edx
	jmp	.label_413
.label_444:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x88], ecx
	mov	dword ptr [rbp - 0x3c], edx
	mov	rsp, rsp
	je	.label_423
	jmp	.label_465
.label_465:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_423
	jmp	.label_470
.label_470:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_423
	jmp	.label_474
.label_474:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_423
	jmp	.label_420
.label_420:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	je	.label_423
	jmp	.label_430
.label_430:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x58], eax
	je	.label_423
	lea	rsi, [rsi]
	jmp	.label_437
.label_437:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	jb	.label_423
	mov	rsp, rsp
	jmp	.label_446
.label_446:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	je	.label_423
	mov	rsp, rsp
	jmp	.label_456
.label_456:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	je	.label_423
	mov	rsp, rsp
	jmp	.label_462
.label_462:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	eax, 0x6d
	nop	
	mov	dword ptr [rbp - 0x48], eax
	nop	
	je	.label_423
	lea	rdi, [rdi]
	jmp	.label_466
.label_466:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	eax, 0x74
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jne	.label_467
	jmp	.label_423
.label_423:
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	strchr
	nop	
	cmp	rax, 0
	je	.label_416
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x50], edx
	lea	rsi, [rsi]
	je	.label_421
	mov	rsp, rsp
	jmp	.label_435
.label_435:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_421
	lea	rsi, [rsi]
	jmp	.label_445
.label_445:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jne	.label_447
	jmp	.label_458
.label_458:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 2]
	mov	rsp, rsp
	cmp	ecx, 0x42
	jne	.label_459
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	eax, 2
	mov	dword ptr [rbp - 0x34], eax
.label_459:
	nop	
	jmp	.label_447
.label_421:
	mov	dword ptr [rbp - 0x94], 0x3e8
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_447:
	mov	rsp, rsp
	jmp	.label_416
.label_416:
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], edx
	nop	
	je	.label_471
	jmp	.label_417
.label_417:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_472
	nop	
	jmp	.label_428
.label_428:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x44], eax
	je	.label_424
	jmp	.label_454
.label_454:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x20], eax
	je	.label_431
	lea	rdi, [rdi]
	jmp	.label_440
.label_440:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	je	.label_439
	jmp	.label_451
.label_451:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	je	.label_415
	lea	rdi, [rdi]
	jmp	.label_450
.label_450:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_443
	nop	
	jmp	.label_433
.label_433:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	je	.label_464
	jmp	.label_468
.label_468:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	je	.label_469
	jmp	.label_432
.label_432:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	je	.label_425
	jmp	.label_475
.label_475:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_442
	jmp	.label_422
.label_422:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x10], eax
	je	.label_424
	jmp	.label_429
.label_429:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	je	.label_431
	jmp	.label_438
.label_438:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x78], eax
	je	.label_439
	jmp	.label_436
.label_436:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	je	.label_443
	lea	rsi, [rsi]
	jmp	.label_452
.label_452:
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_455
	jmp	.label_461
.label_425:
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, 0x200
	nop	
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_414
.label_471:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	jmp	.label_414
.label_442:
	mov	dword ptr [rbp - 0xbc], 0
	lea	rdi, [rdi]
	jmp	.label_414
.label_472:
	nop	
	lea	rdi, [rbp - 0x80]
	mov	edx, 6
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_414
.label_424:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_414
.label_431:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_414
.label_439:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x80]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_414
.label_415:
	lea	rdi, [rbp - 0x80]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_414
.label_443:
	lea	rdi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x94]
	nop	
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_414
.label_455:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x80]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_414
.label_464:
	lea	rdi, [rbp - 0x80]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x94]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_414
.label_469:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, 7
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_414
.label_461:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xdc]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0x40], edx
	nop	
	jmp	.label_413
.label_414:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	mov	rbp, rbp
	je	.label_441
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	or	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
.label_441:
	jmp	.label_418
.label_418:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0x40], edx
.label_413:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408700

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	nop	
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 4]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_476
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 1
	jmp	.label_477
.label_476:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jge	.label_478
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 1
	lea	rsi, [rsi]
	jmp	.label_477
.label_478:
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 8], 0
.label_477:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087e0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], 0
.label_479:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	cmp	eax, 0
	je	.label_480
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 4]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_479
.label_480:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408850

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
	jge	.label_485
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_483
.label_485:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_482
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
	je	.label_481
.label_482:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_481
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_481:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_484
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
.label_484:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_483:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408970

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
	je	.label_486
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_487
.label_486:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_488
.label_487:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_488:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089e0

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
	je	.label_489
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
.label_489:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a40

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
	jne	.label_490
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_490
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_490
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
	jne	.label_492
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_491
.label_492:
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
	jmp	.label_491
.label_490:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_491:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b50

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
	jne	.label_493
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_493:
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
	ja	.label_494
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_494
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_494
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
	jmp	.label_495
.label_494:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_495:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c40

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rdx,  qword ptr [word ptr [rpl_re_syntax_options]]
	and	rdx, 0x2000000
	mov	rbp, rbp
	cmp	rdx, 0
	setne	al
	xor	al, 0xff
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	al, cl
	mov	r8b, byte ptr [rdx + 0x38]
	and	al, 1
	shl	al, 4
	and	r8b, 0xef
	lea	rsi, [rsi]
	or	r8b, al
	mov	byte ptr [rdx + 0x38], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, byte ptr [rdx + 0x38]
	mov	rbp, rbp
	and	al, 0x7f
	lea	rdi, [rdi]
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rsi, [rsi]
	call	re_compile_internal
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	jne	.label_497
	nop	
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_496
.label_497:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_496:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d30

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0xd8], rsi
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rcx
	nop	
	mov	dword ptr [rbp - 8], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf7
	nop	
	mov	byte ptr [rcx + 0x38], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xbf
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x38], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xdf
	mov	byte ptr [rcx + 0x38], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xfe
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x38], al
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf9
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 8], 0xe8
	setb	al
	and	al, 1
	movzx	r8d, al
	mov	rbp, rbp
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_505
	mov	eax, 0xe8
	mov	rsp, rsp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_509
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_501
.label_509:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0xe8
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_505:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0xe8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xb8]
	call	init_dfa
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0xc1], dl
	mov	rbp, rbp
	jne	.label_498
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], cl
	jmp	.label_498
.label_498:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_503
	mov	dword ptr [rbp - 8], 0xc
.label_503:
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_499
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	free_dfa_content
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_501
.label_499:
	lea	rax, [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	and	rdi, 0x400000
	cmp	rdi, 0
	setne	r8b
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	and	r8b, 1
	nop	
	movzx	r8d, r8b
	lea	rdi, [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	call	re_string_construct
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	je	.label_508
	nop	
	jmp	.label_500
.label_500:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free_workarea_compile
	lea	rdi, [rbp - 0xb0]
	mov	rsp, rsp
	call	re_string_destruct
	mov	rdi, qword ptr [rbp - 0x18]
	call	free_dfa_content
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_501
.label_508:
	lea	rdi, [rbp - 0xb0]
	lea	rcx, [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	parse
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x68], 0
	lea	rdi, [rdi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_506
	jmp	.label_500
.label_506:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	analyze
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	mov	rsp, rsp
	movsxd	rdi, eax
	cmp	rdi, 0
	mov	rbp, rbp
	je	.label_504
	lea	rdi, [rdi]
	jmp	.label_500
.label_504:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	nop	
	je	.label_502
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_502
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_502
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	optimize_utf8
.label_502:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	create_initial_state
	mov	dword ptr [rbp - 8], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xb0]
	lea	rdi, [rdi]
	call	re_string_destruct
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_507
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], 0
.label_507:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_501:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0xe0
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091e0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409210

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	memset
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x50]
	je	.label_512
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_512:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	je	.label_510
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_510:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x60]
	nop	
	je	.label_511
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
.label_511:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 0xf7
	nop	
	or	dl, 8
	mov	byte ptr [rcx + 0x38], dl
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x409340

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x280
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x248], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	cmp	dword ptr [rdx + 0xb4], 1
	nop	
	mov	byte ptr [rbp - 0xaa], cl
	jne	.label_529
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	rax, 0x400000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	setne	cl
	mov	byte ptr [rbp - 0xaa], cl
.label_529:
	mov	al, byte ptr [rbp - 0xaa]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xa9], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x220], 0
.label_553:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x220]
	mov	rcx, qword ptr [rbp - 0x248]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_536
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x220]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x248]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x250], rax
	mov	rax, qword ptr [rbp - 0x250]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	cmp	dword ptr [rbp - 4], 1
	jne	.label_513
	mov	rax, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0xa9]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	movzx	edi, byte ptr [rdx]
	mov	qword ptr [rbp - 0x38], rax
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x206], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1e0], edi
	nop	
	movsxd	rax, dword ptr [rbp - 0x1e0]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x206], 1
	je	.label_535
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1e0]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], 1
.label_535:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_517
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_517
	mov	rbp, rbp
	lea	rax, [rbp - 0x240]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x250]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], dl
.label_520:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x250]
	add	rdx, 1
	mov	qword ptr [rbp - 0x250], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], cl
	mov	rsp, rsp
	jae	.label_537
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], cl
	nop	
	jne	.label_537
	mov	rax, qword ptr [rbp - 0x250]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x15
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], sil
.label_537:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_555
	jmp	.label_518
.label_555:
	nop	
	mov	rax, qword ptr [rbp - 0x250]
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], dl
	jmp	.label_520
.label_518:
	lea	rdi, [rbp - 0x5c]
	lea	rax, [rbp - 0x98]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x240]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 8
	mov	rbp, rbp
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rdi
	lea	rdi, [rdi]
	mov	rdi, r8
	nop	
	mov	qword ptr [rbp - 0x1f0], rcx
	mov	qword ptr [rbp - 0x78], rax
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x1f0]
	nop	
	sub	rax, rcx
	mov	rdi, qword ptr [rbp - 0x1e8]
	nop	
	mov	rsi, rcx
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	call	rpl_mbrtowc
	lea	rcx, [rbp - 0x240]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rbp, rbp
	cmp	rax, rdx
	jne	.label_523
	mov	rsp, rsp
	lea	rdi, [rbp - 0x240]
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x228], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	towlower
	lea	rdx, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x228]
	lea	rsi, [rsi]
	mov	esi, eax
	call	wcrtomb
	nop	
	cmp	rax, -1
	je	.label_523
	mov	rax, qword ptr [rbp - 0x270]
	movzx	ecx, byte ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0xb8], rax
	mov	byte ptr [rbp - 0x1da], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1cc], ecx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1cc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1da], 1
	lea	rdi, [rdi]
	je	.label_556
	mov	edi, dword ptr [rbp - 0x1cc]
	mov	rbp, rbp
	call	tolower
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	byte ptr [rdx + rcx], 1
.label_556:
	mov	rsp, rsp
	jmp	.label_523
.label_523:
	jmp	.label_517
.label_517:
	lea	rsi, [rsi]
	jmp	.label_548
.label_513:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 3
	lea	rdi, [rdi]
	jne	.label_549
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x254], 0
.label_540:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_550
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x250]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], 0
.label_516:
	cmp	dword ptr [rbp - 0x8c], 0x40
	nop	
	jge	.label_525
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x268], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x268]
	mov	rbp, rbp
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_534
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x270]
	nop	
	mov	cl, byte ptr [rbp - 0xa9]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x254]
	mov	qword ptr [rbp - 0x260], rax
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xab], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x204], edx
	nop	
	movsxd	rax, dword ptr [rbp - 0x204]
	mov	rsi, qword ptr [rbp - 0x260]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 1
	nop	
	test	byte ptr [rbp - 0xab], 1
	lea	rsi, [rsi]
	je	.label_542
	nop	
	mov	edi, dword ptr [rbp - 0x204]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x260]
	mov	byte ptr [rdx + rcx], 1
.label_542:
	jmp	.label_534
.label_534:
	jmp	.label_515
.label_515:
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x254]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	mov	rsp, rsp
	jmp	.label_516
.label_525:
	jmp	.label_528
.label_528:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_540
.label_550:
	jmp	.label_531
.label_549:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 6
	mov	rbp, rbp
	jne	.label_533
	mov	rax, qword ptr [rbp - 0x250]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_538
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	mov	rsp, rsp
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_538
.label_545:
	mov	byte ptr [rbp - 0x229], 0
.label_554:
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x229]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x218]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8d, 8
	mov	rsp, rsp
	mov	r9d, r8d
	nop	
	mov	r10, rcx
	mov	qword ptr [rbp - 0x200], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x40], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x200]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	jne	.label_539
	nop	
	mov	rax, qword ptr [rbp - 0x270]
	movzx	ecx, byte ptr [rbp - 0x229]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	mov	byte ptr [rbp - 0x205], 0
	mov	dword ptr [rbp - 0xc], ecx
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x205], 1
	mov	rbp, rbp
	je	.label_541
	mov	edi, dword ptr [rbp - 0xc]
	call	tolower
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], 1
.label_541:
	lea	rdi, [rdi]
	jmp	.label_539
.label_539:
	mov	rsp, rsp
	jmp	.label_551
.label_551:
	mov	al, byte ptr [rbp - 0x229]
	add	al, 1
	mov	byte ptr [rbp - 0x229], al
	lea	rdi, [rdi]
	movzx	ecx, al
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_554
	jmp	.label_514
.label_538:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], 0
.label_527:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jge	.label_543
	mov	rsp, rsp
	lea	rax, [rbp - 0x28]
	lea	rdi, [rbp - 0x1c0]
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rdi
	mov	rbp, rbp
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	esi, dword ptr [rdx + rax*4]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_519
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0xa9]
	movzx	edx, byte ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x274], edx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x274]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	je	.label_546
	mov	edi, dword ptr [rbp - 0x274]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rdx + rcx], 1
.label_546:
	mov	rsp, rsp
	jmp	.label_519
.label_519:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_522
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_522
	lea	rdi, [rbp - 0x1c0]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	mov	qword ptr [rbp - 0x1d8], rdi
	mov	rsp, rsp
	mov	edi, edx
	lea	rdi, [rdi]
	call	towlower
	lea	rdx, [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_521
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x270]
	movzx	ecx, byte ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x210], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d9], 0
	nop	
	mov	dword ptr [rbp - 0x258], ecx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rbp - 0x210]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1d9], 1
	lea	rsi, [rsi]
	je	.label_547
	mov	edi, dword ptr [rbp - 0x258]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x210]
	nop	
	mov	byte ptr [rdx + rcx], 1
.label_547:
	lea	rsi, [rsi]
	jmp	.label_521
.label_521:
	nop	
	jmp	.label_522
.label_522:
	mov	rbp, rbp
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x1f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rbp, rbp
	jmp	.label_527
.label_543:
	jmp	.label_514
.label_514:
	jmp	.label_530
.label_533:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 5
	mov	rbp, rbp
	je	.label_532
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 7
	je	.label_532
	cmp	dword ptr [rbp - 4], 2
	mov	rsp, rsp
	jne	.label_526
.label_532:
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	eax, 0x100
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x270]
	call	memset
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 2
	jne	.label_544
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	lea	rdi, [rdi]
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_544:
	mov	rbp, rbp
	jmp	.label_536
.label_526:
	jmp	.label_530
.label_530:
	jmp	.label_531
.label_531:
	mov	rsp, rsp
	jmp	.label_548
.label_548:
	jmp	.label_552
.label_552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x220]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x220], rax
	jmp	.label_553
.label_536:
	add	rsp, 0x280
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e10
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x100
	mov	ecx, eax
	mov	eax, 0x10102c6
	nop	
	mov	r8d, eax
	mov	eax, 0x3b2fc
	mov	r9d, eax
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	dword ptr [rbp - 0x34], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	r8, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], 0
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_559
	mov	dword ptr [rbp - 0x20], 0xc
	nop	
	jmp	.label_557
.label_559:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	eax, 0x400000
	lea	rdi, [rdi]
	mov	edx, eax
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	and	eax, 2
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	cmovne	rcx, rdx
	or	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_560
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	and	rax, 0xffffffffffffffbf
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	or	rax, 0x100
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x38], cl
	jmp	.label_561
.label_560:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	mov	rsp, rsp
	mov	byte ptr [rax + 0x38], cl
.label_561:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	and	eax, 8
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	cl, al
	mov	sil, byte ptr [rdx + 0x38]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	shl	cl, 4
	nop	
	and	sil, 0xef
	lea	rsi, [rsi]
	or	sil, cl
	mov	byte ptr [rdx + 0x38], sil
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	call	strlen
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	call	re_compile_internal
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0x10
	jne	.label_562
	mov	dword ptr [rbp - 0x1c], 8
.label_562:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	nop	
	je	.label_558
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_563
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax + 0x20], 0
.label_563:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
.label_557:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a080
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x14], 0x11
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x15], al
	jl	.label_564
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	setge	cl
	mov	byte ptr [rbp - 0x15], cl
.label_564:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_566
	lea	rdi, [rdi]
	call	abort
.label_566:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_567
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	seta	cl
	nop	
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_565
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_565:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	memcpy
.label_567:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1d0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	lea	rsi, [rsi]
	cmp	rdi, 0
	je	.label_568
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	free_dfa_content
.label_568:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], 0
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2a0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rdi], 0
	je	.label_581
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
.label_576:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_575
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	call	free_token
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_576
.label_575:
	nop	
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_583:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_570
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_580
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_580:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x38], 0
	je	.label_578
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_578:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	je	.label_572
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
.label_572:
	mov	rbp, rbp
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_583
.label_570:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_569
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_574:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_573
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	qword ptr [rbp - 8], 0
.label_571:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_577
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	free_state
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_577:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_574
.label_573:
	lea	rsi, [rsi]
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x78], rax
	je	.label_579
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rdi, rax
	call	free
.label_579:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5c0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	and	r8d, 0xfffffff8
	nop	
	cmp	r8d, 0
	je	.label_584
	nop	
	mov	dword ptr [rbp - 8], 2
	mov	rbp, rbp
	jmp	.label_585
.label_584:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 4
	cmp	eax, 0
	je	.label_589
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_587
.label_589:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x30]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_587:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 4
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_586
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [rbp - 0x50]
	mov	r10, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rcx, r8
	mov	r8, r9
	lea	rdi, [rdi]
	mov	r9, r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], eax
	call	re_search_internal
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_588
.label_586:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rbp - 0x34]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	nop	
	mov	dword ptr [rbp - 4], eax
.label_588:
	cmp	dword ptr [rbp - 4], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 8], ecx
.label_585:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a770

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x290
	mov	eax, dword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	r14d, 0x100
	mov	r15d, r14d
	lea	r12, [rbp - 0x128]
	mov	qword ptr [rbp - 0x188], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rdx
	mov	qword ptr [rbp - 0x200], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x228], r9
	mov	qword ptr [rbp - 0x240], r11
	nop	
	mov	qword ptr [rbp - 0x170], r10
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x208], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], -1
	mov	rdi, r12
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r15
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	mov	rcx, qword ptr [rbp - 0x188]
	cmp	qword ptr [rcx + 0x20], 0
	lea	rdi, [rdi]
	je	.label_598
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	nop	
	shr	cl, 3
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_598
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_598
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_598
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_634
.label_598:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_634
.label_634:
	nop	
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x1a8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x240]
	nop	
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	jbe	.label_642
	mov	rax, qword ptr [rbp - 0x240]
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	add	rcx, 1
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x270], rax
	mov	rbp, rbp
	jmp	.label_660
.label_642:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rcx
	mov	rbp, rbp
	jmp	.label_660
.label_660:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x270]
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x240]
	mov	rsp, rsp
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1e9], cl
	lea	rdi, [rdi]
	je	.label_591
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_591
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_591
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1e9], al
	je	.label_591
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1e9], cl
.label_591:
	mov	al, byte ptr [rbp - 0x1e9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_606
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	nop	
	jmp	.label_611
.label_606:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_615
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_615
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_590
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 7
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_615
.label_590:
	cmp	qword ptr [rbp - 0x200], 0
	mov	rbp, rbp
	je	.label_647
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_647
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x284], 1
	lea	rsi, [rsi]
	jmp	.label_611
.label_647:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x200], 0
.label_615:
	mov	al, 1
	cmp	qword ptr [rbp - 0x240], 0
	mov	byte ptr [rbp - 0x1f1], al
	lea	rsi, [rsi]
	jne	.label_664
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f1], cl
.label_664:
	mov	al, byte ptr [rbp - 0x1f1]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x128]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x149], al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	add	rcx, 1
	mov	r8, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	r8, qword ptr [r8 + 0x28]
	mov	r9, qword ptr [rbp - 0x188]
	mov	r9, qword ptr [r9 + 0x18]
	and	r9, 0x400000
	cmp	r9, 0
	setne	al
	mov	r9, qword ptr [rbp - 0x208]
	mov	r10, rsp
	mov	qword ptr [r10], r9
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	r9d, al
	mov	rbp, rbp
	call	re_string_allocate
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	setne	r11b
	mov	rsp, rsp
	and	r11b, 1
	mov	rbp, rbp
	movzx	eax, r11b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_681
	jmp	.label_592
.label_681:
	lea	rdi, [rbp - 0x128]
	mov	rax, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0x228]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9b], cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, rax
	call	match_ctx_init
	mov	dword ptr [rbp - 0x294], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x294], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_623
	lea	rsi, [rsi]
	jmp	.label_592
.label_623:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 1
	nop	
	ja	.label_637
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0xb0]
	lea	rdi, [rdi]
	shr	cl, 1
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_644
.label_637:
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	cmp	rax, qword ptr [rbp - 0xe8]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_655
	mov	dword ptr [rbp - 0x294], 0xc
	lea	rdi, [rdi]
	jmp	.label_592
.label_655:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_674
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_592
.label_674:
	jmp	.label_679
.label_644:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], 0
.label_679:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x238], rdi
	mov	r8d, dword ptr [rbp - 0x1dc]
	and	r8d, 1
	lea	rdi, [rdi]
	cmp	r8d, 0
	mov	rbp, rbp
	cmovne	edx, esi
	mov	dword ptr [rbp - 0xb8], edx
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rdi, qword ptr [rbp - 0x200]
	nop	
	cmovl	eax, ecx
	mov	dword ptr [rbp - 0x18c], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rdi, qword ptr [rbp - 0x200]
	mov	rsp, rsp
	jge	.label_683
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x230], rax
	jmp	.label_602
.label_683:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x230], rax
.label_602:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x290], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	jge	.label_693
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x200]
	nop	
	mov	qword ptr [rbp - 0x250], rax
	jmp	.label_617
.label_693:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x250], rax
.label_617:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x250]
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0x208]
	cmp	dword ptr [rax + 0xb4], 1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x14a], cl
	nop	
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_625
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c1], al
	jne	.label_640
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x219], al
	jne	.label_649
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1d8], 0
	setne	al
	mov	byte ptr [rbp - 0x219], al
.label_649:
	mov	al, byte ptr [rbp - 0x219]
	lea	rsi, [rsi]
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c1], al
.label_640:
	nop	
	mov	al, byte ptr [rbp - 0x1c1]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, 1
	mov	rbp, rbp
	mov	esi, 2
	lea	rsi, [rsi]
	mov	edi, 4
	test	al, 1
	mov	r8d, ecx
	cmovne	r8d, edi
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x200]
	lea	rsi, [rsi]
	cmp	r9, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	edi, ecx
	cmovle	edi, esi
	mov	rbp, rbp
	or	r8d, edi
	cmp	qword ptr [rbp - 0x1d8], 0
	cmovne	ecx, edx
	mov	rbp, rbp
	or	r8d, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], r8d
	jmp	.label_600
.label_625:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	jmp	.label_600
.label_600:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1f8], eax
.label_619:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x294], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jl	.label_692
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x238]
	jge	.label_695
.label_692:
	mov	rsp, rsp
	jmp	.label_592
.label_695:
	nop	
	mov	eax, dword ptr [rbp - 0x1f8]
	mov	rbp, rbp
	add	eax, -4
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	sub	eax, 4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rcx
	nop	
	mov	dword ptr [rbp - 0x12c], eax
	mov	rsp, rsp
	ja	.label_599
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_608]]
	jmp	rcx
.label_2963:
	jmp	.label_593
.label_2962:
	mov	rbp, rbp
	jmp	.label_613
.label_613:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x238]
	cmp	rdx, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	setl	sil
	and	sil, 1
	movzx	eax, sil
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x271], cl
	je	.label_616
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1d8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1a8]
	nop	
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x271], sil
.label_616:
	mov	al, byte ptr [rbp - 0x271]
	test	al, 1
	jne	.label_651
	jmp	.label_653
.label_651:
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_613
.label_653:
	mov	rbp, rbp
	jmp	.label_663
.label_2961:
	mov	rbp, rbp
	jmp	.label_665
.label_665:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x238]
	cmp	rdx, qword ptr [rbp - 0x168]
	setl	sil
	lea	rsi, [rsi]
	and	sil, 1
	lea	rdi, [rdi]
	movzx	eax, sil
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x209], cl
	lea	rdi, [rdi]
	je	.label_667
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x1d0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1a8]
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x209], sil
.label_667:
	mov	al, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_685
	mov	rbp, rbp
	jmp	.label_690
.label_685:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x238], rax
	mov	rbp, rbp
	jmp	.label_665
.label_690:
	mov	rbp, rbp
	jmp	.label_663
.label_663:
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_646
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_601
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x298], eax
	jmp	.label_605
.label_601:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x298], edx
.label_605:
	mov	eax, dword ptr [rbp - 0x298]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1d8], 0
	je	.label_614
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rcx, qword ptr [rbp - 0x1d8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x19c], edx
	lea	rsi, [rsi]
	jmp	.label_621
.label_614:
	mov	eax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x19c], eax
.label_621:
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1a8]
	cmp	byte ptr [rdx + rcx], 0
	mov	rbp, rbp
	jne	.label_633
	mov	rbp, rbp
	jmp	.label_592
.label_633:
	jmp	.label_646
.label_646:
	lea	rsi, [rsi]
	jmp	.label_593
.label_2960:
	jmp	.label_650
.label_650:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	jl	.label_688
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	jl	.label_657
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x244], eax
	jmp	.label_662
.label_657:
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x244], edx
.label_662:
	mov	eax, dword ptr [rbp - 0x244]
	mov	dword ptr [rbp - 0x1f0], eax
	cmp	qword ptr [rbp - 0x1d8], 0
	lea	rdi, [rdi]
	je	.label_671
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x248], edx
	jmp	.label_630
.label_671:
	mov	eax, dword ptr [rbp - 0x1f0]
	nop	
	mov	dword ptr [rbp - 0x248], eax
.label_630:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x248]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_680
	lea	rdi, [rdi]
	jmp	.label_688
.label_680:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x238], rax
	jmp	.label_650
.label_688:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	jge	.label_677
	jmp	.label_592
.label_677:
	nop	
	jmp	.label_593
.label_599:
	lea	rsi, [rsi]
	jmp	.label_595
.label_595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	sub	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x2a8], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xf0]
	setae	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_596
	lea	rdi, [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x238]
	mov	edx, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x294], eax
	nop	
	cmp	dword ptr [rbp - 0x294], 0
	mov	rbp, rbp
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_618
	jmp	.label_592
.label_618:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	sub	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x2a8], rax
.label_596:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jl	.label_635
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_643
.label_635:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rcx, qword ptr [rbp - 0x120]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], edx
.label_643:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x254]
	mov	dword ptr [rbp - 0x1f0], eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_654
	mov	rsp, rsp
	jmp	.label_666
.label_654:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x290]
	mov	rsp, rsp
	jl	.label_668
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x168]
	jle	.label_675
.label_668:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x294], 1
	nop	
	jmp	.label_592
.label_675:
	jmp	.label_595
.label_666:
	nop	
	jmp	.label_593
.label_593:
	nop	
	lea	rdi, [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x238]
	mov	edx, dword ptr [rbp - 0x1dc]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rsp, rsp
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_687
	lea	rdi, [rdi]
	jmp	.label_592
.label_687:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x14a], 1
	jne	.label_597
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0xf8]
	nop	
	je	.label_597
	mov	rax, qword ptr [rbp - 0x118]
	cmp	dword ptr [rax], -1
	jne	.label_597
	jmp	.label_603
.label_597:
	mov	dword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	al, byte ptr [rbp - 0x149]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x200]
	cmp	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	byte ptr [rbp - 0x139], al
	nop	
	jg	.label_604
	lea	rax, [rbp - 0x238]
	mov	qword ptr [rbp - 0x268], rax
	lea	rdi, [rdi]
	jmp	.label_612
.label_604:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x268], rcx
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x268]
	lea	rcx, [rbp - 0x128]
	nop	
	mov	dl, byte ptr [rbp - 0x139]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x128]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x160], rcx
	call	check_matching
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1e8], -1
	lea	rdi, [rdi]
	je	.label_628
	cmp	qword ptr [rbp - 0x1e8], -2
	sete	al
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_645
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], 0xc
	jmp	.label_592
.label_645:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	shr	cl, 4
	nop	
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_659
	cmp	qword ptr [rbp - 0x240], 1
	ja	.label_669
.label_659:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	je	.label_672
.label_669:
	lea	rdi, [rbp - 0x128]
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x218], rax
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1e8]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_672:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	jne	.label_684
	nop	
	cmp	qword ptr [rbp - 0x240], 1
	jbe	.label_684
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_694
.label_684:
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_626
.label_694:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x128]
	mov	rsp, rsp
	call	prune_impossible_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], eax
	cmp	dword ptr [rbp - 0x294], 0
	nop	
	jne	.label_607
	jmp	.label_609
.label_607:
	nop	
	cmp	dword ptr [rbp - 0x294], 1
	mov	rbp, rbp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_610
	mov	rbp, rbp
	jmp	.label_592
.label_610:
	mov	qword ptr [rbp - 0x1e8], -1
	jmp	.label_620
.label_626:
	jmp	.label_609
.label_620:
	lea	rdi, [rdi]
	jmp	.label_627
.label_627:
	nop	
	jmp	.label_628
.label_628:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x128]
	mov	rbp, rbp
	call	match_ctx_clean
.label_603:
	movsxd	rax, dword ptr [rbp - 0x18c]
	add	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	lea	rsi, [rsi]
	jmp	.label_619
.label_609:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x240], 0
	jbe	.label_631
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 1
.label_658:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_652
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	jmp	.label_658
.label_652:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	mov	dl, byte ptr [rax + 0x38]
	nop	
	shr	dl, 4
	mov	rsp, rsp
	and	dl, 1
	nop	
	movzx	esi, dl
	mov	rbp, rbp
	cmp	esi, 0
	mov	rsp, rsp
	jne	.label_641
	cmp	qword ptr [rbp - 0x240], 1
	lea	rdi, [rdi]
	jbe	.label_641
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x240]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x208]
	mov	r9b, byte ptr [r8 + 0xb0]
	lea	rdi, [rdi]
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	eax, r9b
	cmp	eax, 0
	mov	qword ptr [rbp - 0x2a0], rsi
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x280], rdx
	mov	byte ptr [rbp - 0x285], cl
	je	.label_691
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x285], cl
.label_691:
	mov	al, byte ptr [rbp - 0x285]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x128]
	and	al, 1
	nop	
	movzx	r8d, al
	nop	
	lea	rsi, [rbp - 0x128]
	nop	
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rdx, qword ptr [rbp - 0x280]
	mov	r9, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r9
	call	set_regs
	nop	
	mov	dword ptr [rbp - 0x294], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x294], 0
	setne	r10b
	mov	rbp, rbp
	and	r10b, 1
	nop	
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_682
	lea	rsi, [rsi]
	jmp	.label_592
.label_682:
	jmp	.label_641
.label_641:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], 0
.label_638:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_648
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	cmp	qword ptr [rax], -1
	je	.label_622
	movzx	eax, byte ptr [rbp - 0x9c]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_661
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	jne	.label_670
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x260], rax
	lea	rdi, [rdi]
	jmp	.label_676
.label_670:
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x260], rax
.label_676:
	mov	rax, qword ptr [rbp - 0x260]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xf8]
	jne	.label_632
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	jmp	.label_594
.label_632:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x1b0], rax
.label_594:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
.label_661:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x180]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_622:
	lea	rsi, [rsi]
	jmp	.label_636
.label_636:
	nop	
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_638
.label_648:
	mov	qword ptr [rbp - 0x180], 0
.label_656:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	cmp	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	jge	.label_689
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x180]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rax
	lea	rsi, [rsi]
	jmp	.label_656
.label_689:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0xe0], 0
	lea	rsi, [rsi]
	je	.label_629
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], 0
.label_624:
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_678
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x180]
	nop	
	je	.label_686
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	add	rcx, 1
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x170]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	mov	rcx, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x170]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	add	rcx, 1
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx + 8], rax
.label_686:
	mov	rsp, rsp
	jmp	.label_673
.label_673:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	jmp	.label_624
.label_678:
	jmp	.label_629
.label_629:
	jmp	.label_631
.label_631:
	jmp	.label_592
.label_592:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_639
	lea	rdi, [rbp - 0x128]
	call	match_ctx_free
.label_639:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x128]
	call	re_string_destruct
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x294]
	mov	dword ptr [rbp - 0x284], eax
.label_611:
	mov	eax, dword ptr [rbp - 0x284]
	add	rsp, 0x290
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf40
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, eax
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], r8
	mov	r8, r9
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	mov	dword ptr [rbp - 0x14], eax
	nop	
	call	re_search_stub
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bfc0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, byte ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	nop	
	mov	r11b, 1
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x98], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], r10
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x8d], al
	nop	
	mov	dword ptr [rbp - 0x9c], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x98]
	add	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], r11b
	lea	rdi, [rdi]
	jl	.label_712
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	setg	cl
	mov	byte ptr [rbp - 0x19], cl
.label_712:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_720
	mov	qword ptr [rbp - 0x50], -1
	mov	rsp, rsp
	jmp	.label_724
.label_720:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x71], al
	lea	rdi, [rdi]
	jl	.label_700
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rbp - 0x61], cl
	nop	
	jg	.label_705
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x98]
	setl	cl
	mov	byte ptr [rbp - 0x61], cl
.label_705:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x61]
	mov	byte ptr [rbp - 0x71], al
.label_700:
	mov	al, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_718
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_721
.label_718:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x62], al
	lea	rdi, [rdi]
	jl	.label_698
	nop	
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jge	.label_706
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x30]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_706:
	mov	al, byte ptr [rbp - 1]
	nop	
	mov	byte ptr [rbp - 0x62], al
.label_698:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_716
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_716:
	jmp	.label_721
.label_721:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 2
	mov	rbp, rbp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	dil, byte ptr [rsi + 0x38]
	mov	rsp, rsp
	shr	dil, 5
	nop	
	and	dil, 1
	nop	
	movzx	r8d, dil
	cmp	r8d, 0
	mov	r8d, eax
	cmovne	r8d, edx
	mov	rbp, rbp
	or	r8d, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], r8d
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 6
	and	dil, 1
	movzx	edx, dil
	cmp	edx, 0
	mov	rsp, rsp
	cmovne	eax, ecx
	or	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	cmp	rsi, qword ptr [rbp - 0x30]
	jge	.label_696
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_696
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_696
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x54], eax
.label_696:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	lea	rdi, [rdi]
	mov	eax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_717
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_717:
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_702
	mov	qword ptr [rbp - 0x88], 1
	jmp	.label_703
.label_702:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	mov	sil, byte ptr [rdx + 0x38]
	shr	sil, 1
	and	sil, 3
	mov	rsp, rsp
	movzx	eax, sil
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_711
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	setbe	dl
	mov	byte ptr [rbp - 0x41], dl
.label_711:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_723
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_701
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x88], 1
.label_701:
	lea	rsi, [rsi]
	jmp	.label_719
.label_723:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_719:
	jmp	.label_703
.label_703:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_697
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], -2
	jmp	.label_713
.label_697:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11d, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], r10
	nop	
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	mov	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0
	mov	rsp, rsp
	je	.label_709
	lea	rdi, [rdi]
	mov	eax, 0xfffffffe
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	cmp	dword ptr [rbp - 0x8c], 1
	mov	rbp, rbp
	cmove	eax, ecx
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdx
	jmp	.label_714
.label_709:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_699
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 1
	mov	rbp, rbp
	and	cl, 3
	movzx	ecx, cl
	mov	rsp, rsp
	call	re_copy_regs
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	r8b, al
	nop	
	mov	r9b, byte ptr [rdx + 0x38]
	and	r8b, 3
	shl	r8b, 1
	and	r9b, 0xf9
	or	r9b, r8b
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x38], r9b
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x38]
	lea	rsi, [rsi]
	shr	r8b, 1
	lea	rdi, [rdi]
	and	r8b, 3
	movzx	eax, r8b
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_710
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], -2
.label_710:
	jmp	.label_699
.label_699:
	jmp	.label_714
.label_714:
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	sete	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_704
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x8d], 1
	mov	rbp, rbp
	je	.label_722
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x98]
	nop	
	jne	.label_708
	jmp	.label_707
.label_708:
	nop	
	movabs	rdi, OFFSET FLAT:.str.21_0
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
.label_707:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	jmp	.label_715
.label_722:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa8], rax
.label_715:
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
.label_713:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_724:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0xc0
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c640

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rbp - 0x2c], eax
	call	re_search_stub
	add	rsp, 0x50
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6b0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	xor	r11d, r11d
	mov	rsp, rsp
	mov	ebx, r11d
	nop	
	mov	r11d, 1
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x58], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x20], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rbp - 0x48], rbx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], r11d
	mov	rsp, rsp
	call	re_search_2_stub
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
	#Procedure 0x40c770

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	r14b, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x88], r8
	mov	qword ptr [rbp - 0x68], r9
	mov	qword ptr [rbp - 0x28], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r10
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x58], 0
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], r14b
	lea	rdi, [rdi]
	jl	.label_729
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x49], al
	jl	.label_729
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x49], al
	lea	rdi, [rdi]
	jl	.label_729
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_736
	jmp	.label_727
.label_736:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	lea	rdi, [rdi]
	jge	.label_740
	nop	
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_725
	lea	rsi, [rsi]
	jmp	.label_728
.label_740:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jl	.label_725
	nop	
	jmp	.label_728
.label_727:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_737
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	jle	.label_725
	jmp	.label_728
.label_737:
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_733
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_725
	mov	rbp, rbp
	jmp	.label_728
.label_733:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	jl	.label_725
.label_728:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_725
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_739
.label_725:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_741
.label_739:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	mov	dword ptr [rbp - 0x94], eax
.label_741:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], cl
.label_729:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_731
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_738
.label_731:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	jle	.label_730
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_735
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	shl	rax, 0
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_726
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], -2
	lea	rdi, [rdi]
	jmp	.label_738
.label_726:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rsp, rsp
	jmp	.label_732
.label_735:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
.label_732:
	lea	rdi, [rdi]
	jmp	.label_734
.label_730:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_734:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	r10b, byte ptr [rbp - 0x31]
	nop	
	and	r10b, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	movzx	r11d, r10b
	mov	dword ptr [rsp + 8], r11d
	mov	rbp, rbp
	call	re_search_stub
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
.label_738:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0xa0
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb70
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x20], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x18], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 0x28]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x18]
	nop	
	mov	r11, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ebx
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc30
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_742
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	and	cl, 0xf9
	or	cl, 2
	nop	
	mov	byte ptr [rax + 0x38], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_743
.label_742:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
.label_743:
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccf0

	.globl free_token
	.type free_token, @function
free_token:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0xff
	cmp	eax, 6
	lea	rdi, [rdi]
	jne	.label_744
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	lea	rdi, [rdi]
	and	ecx, 1
	nop	
	cmp	ecx, 0
	jne	.label_744
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	free_charset
	jmp	.label_746
.label_744:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 3
	jne	.label_745
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_745
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_745:
	jmp	.label_746
.label_746:
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cdc0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x50]
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	cmp	rdi, rax
	je	.label_747
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_747:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cea0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	nop	
	call	free
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf00

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x60], 8
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	jae	.label_748
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_765
.label_748:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_765
.label_765:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_773
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	nop	
	jae	.label_779
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_784
.label_779:
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	jmp	.label_784
.label_784:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_791
.label_773:
	nop	
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	nop	
	jmp	.label_791
.label_791:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_800
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_751
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_758
.label_751:
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	nop	
	jae	.label_794
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_772
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_778
.label_772:
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rcx
	nop	
	jmp	.label_778
.label_778:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_787
.label_794:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_787
.label_787:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_795
.label_800:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	jmp	.label_795
.label_795:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, 0x18
	mov	edx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	nop	
	jae	.label_803
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_752
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_756
.label_752:
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_756
.label_756:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_792
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_775
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	jmp	.label_786
.label_775:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_786
.label_786:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_789
.label_792:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	jmp	.label_789
.label_789:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jae	.label_796
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_797
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	jmp	.label_749
.label_797:
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_749
.label_749:
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	jae	.label_760
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jae	.label_766
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_769
.label_766:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_769
.label_769:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_782
.label_760:
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc8], rcx
	nop	
	jmp	.label_782
.label_782:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_790
.label_796:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_790
.label_790:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_780
.label_803:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_780
.label_780:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rdx, -1
	xor	esi, esi
	mov	edi, 0xe8
	mov	r8d, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, rax
	jae	.label_768
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_783
.label_768:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe0], rax
.label_783:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0xa0]
	setbe	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_793
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0xc
	nop	
	jmp	.label_770
.label_793:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0xb8], 1
.label_776:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jbe	.label_767
	jmp	.label_771
.label_767:
	jmp	.label_774
.label_774:
	mov	rax, qword ptr [rbp - 0xb8]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	jmp	.label_776
.label_771:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	nop	
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x40], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x88], rax
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	edi, 0xe
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x58]
	mov	dword ptr [rax + 0xb4], ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x55
	lea	rdi, [rdi]
	je	.label_798
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	lea	rsi, [rsi]
	jne	.label_762
.label_798:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	mov	rbp, rbp
	je	.label_757
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	lea	rsi, [rsi]
	jne	.label_762
.label_757:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x46
	lea	rdi, [rdi]
	je	.label_781
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	lea	rsi, [rsi]
	jne	.label_762
.label_781:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	add	rax, 3
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + 3]
	cmp	edx, 0x2d
	nop	
	sete	sil
	lea	rdi, [rdi]
	and	sil, 1
	movzx	edx, sil
	movsxd	rcx, edx
	nop	
	add	rax, rcx
	mov	edx, OFFSET FLAT:.str_7
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_762
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfb
	mov	rsp, rsp
	or	cl, 4
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_762:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 0xf7
	mov	byte ptr [rax + 0xb0], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_753
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	je	.label_759
	movabs	rax, OFFSET FLAT:utf8_sb_map
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_755
.label_759:
	mov	eax, 0x20
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	nop	
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_761
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_770
.label_761:
	mov	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], 0
.label_801:
	cmp	dword ptr [rbp - 0x94], 4
	lea	rdi, [rdi]
	jge	.label_802
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0
.label_785:
	cmp	dword ptr [rbp - 0x3c], 0x40
	jge	.label_750
	mov	edi, dword ptr [rbp - 0xf4]
	mov	rbp, rbp
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], -1
	lea	rsi, [rsi]
	je	.label_788
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rdx, cl
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x94]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rdi + 0x78]
	or	rdx, qword ptr [rdi + rsi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rsi*8], rdx
.label_788:
	nop	
	mov	eax, dword ptr [rbp - 0xf4]
	and	eax, 0xffffff80
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_777
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xf4]
	je	.label_777
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	lea	rdi, [rdi]
	or	cl, 8
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_777:
	nop	
	jmp	.label_763
.label_763:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xf4], eax
	mov	rbp, rbp
	jmp	.label_785
.label_750:
	lea	rdi, [rdi]
	jmp	.label_799
.label_799:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_801
.label_802:
	jmp	.label_755
.label_755:
	jmp	.label_753
.label_753:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
	je	.label_754
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_754:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_764
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], 0xc
	mov	rbp, rbp
	jmp	.label_770
.label_764:
	mov	dword ptr [rbp - 0xd4], 0
.label_770:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8a0

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, r8b
	mov	rbp, rbp
	xor	r8d, r8d
	mov	r10d, 0x98
	mov	r11d, r10d
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 8], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x18], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	call	memset
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	r8d, al
	call	re_string_construct_common
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jle	.label_820
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_808
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_812
.label_808:
	nop	
	jmp	.label_820
.label_820:
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_810
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_818
.label_810:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_818:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	je	.label_805
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_816
	mov	rsp, rsp
	jmp	.label_817
.label_817:
	mov	rdi, qword ptr [rbp - 0x28]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_815
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_812
.label_815:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jl	.label_814
	jmp	.label_806
.label_814:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	lea	rsi, [rsi]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_811
	nop	
	jmp	.label_806
.label_811:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_821
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	nop	
	jmp	.label_812
.label_821:
	jmp	.label_817
.label_806:
	lea	rsi, [rsi]
	jmp	.label_819
.label_816:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	build_upper_buffer
.label_819:
	jmp	.label_804
.label_805:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rsp, rsp
	jle	.label_807
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_813
.label_807:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_822
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_809
.label_822:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x38], rax
.label_809:
	jmp	.label_813
.label_813:
	mov	rbp, rbp
	jmp	.label_804
.label_804:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], 0
.label_812:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dbb0

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
.label_823:
	cmp	qword ptr [rbp - 8], 0
	je	.label_824
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_823
.label_824:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax + 0x70], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x68], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc90

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	byte ptr [rdi + 0x8b], 0
	je	.label_825
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_825:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcf0

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x68], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx + 0xd8], rcx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	or	rcx, 0x800000
	mov	rdi, rax
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	fetch_token
	lea	rdx, [rbp - 0x20]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x50]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x31], r11b
	mov	rsp, rsp
	je	.label_830
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_830:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_826
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_827
.label_826:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 2
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_831
	nop	
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	create_tree
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_829
.label_831:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_829:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x51], al
	lea	rsi, [rsi]
	je	.label_828
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	sete	al
	nop	
	mov	byte ptr [rbp - 0x51], al
.label_828:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_832
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_827
.label_832:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_827:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ded0

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rbp, rbp
	mov	cl, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	nop	
	je	.label_836
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	je	.label_836
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	je	.label_836
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_836:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_846
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_839
.label_846:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	shl	rax, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0xe0], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xe0], 0
	nop	
	je	.label_840
	mov	qword ptr [rbp - 0x18], 0
.label_848:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	jae	.label_844
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_848
.label_844:
	movabs	rsi, OFFSET FLAT:optimize_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rax
	call	preorder
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
.label_838:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jae	.label_833
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	je	.label_847
	lea	rdi, [rdi]
	jmp	.label_833
.label_847:
	jmp	.label_837
.label_837:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_838
.label_833:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_842
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0xe0], 0
.label_842:
	jmp	.label_840
.label_840:
	movabs	rsi, OFFSET FLAT:lower_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_835
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_839
.label_835:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:calc_first
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	rbp, rbp
	call	postorder
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	nop	
	je	.label_850
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_839
.label_850:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:calc_next
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	rbp, rbp
	call	preorder
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	preorder
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_851
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_839
.label_851:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	calc_eclosure
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_843
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_839
.label_843:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_834
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_834
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	jne	.label_849
.label_834:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_845
.label_849:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	imul	rdi, qword ptr [rax + 0x10], 0x18
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x38], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_841
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rsp, rsp
	jmp	.label_839
.label_841:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x10], eax
.label_845:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_839:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3f0

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	byte ptr [rbp - 0x31], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	mov	qword ptr [rbp - 0x30], 0
.label_867:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_856
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	nop	
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	rbp, rbp
	dec	edx
	mov	eax, edx
	lea	rdi, [rdi]
	sub	edx, 0xb
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x18], edx
	nop	
	ja	.label_865
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_868]]
	lea	rsi, [rsi]
	jmp	rcx
.label_3041:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0x80
	nop	
	jl	.label_873
	mov	byte ptr [rbp - 0x31], 1
.label_873:
	jmp	.label_860
.label_3046:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	edx, dword ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	sub	esi, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	dword ptr [rbp - 0x48], esi
	je	.label_862
	jmp	.label_854
.label_854:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_862
	jmp	.label_871
.label_871:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x40
	nop	
	mov	dword ptr [rbp - 8], eax
	je	.label_862
	nop	
	jmp	.label_853
.label_853:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	jne	.label_872
	jmp	.label_862
.label_862:
	mov	rsp, rsp
	jmp	.label_859
.label_872:
	jmp	.label_864
.label_859:
	jmp	.label_860
.label_3044:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jmp	.label_860
.label_3042:
	jmp	.label_860
.label_3045:
	nop	
	jmp	.label_864
.label_3043:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x44], 2
.label_866:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 4
	jge	.label_869
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x24]
	nop	
	mov	ecx, esi
	lea	rsi, [rsi]
	shr	rax, cl
	cmp	rax, 0
	je	.label_876
	jmp	.label_864
.label_876:
	mov	dword ptr [rbp - 0x24], 0
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_866
.label_869:
	lea	rsi, [rsi]
	jmp	.label_860
.label_865:
	call	abort
.label_860:
	jmp	.label_863
.label_863:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_867
.label_856:
	test	byte ptr [rbp - 0x31], 1
	jne	.label_875
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_852
.label_875:
	mov	qword ptr [rbp - 0x30], 0
.label_877:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jae	.label_855
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	lea	rsi, [rsi]
	cmp	edx, 1
	jne	.label_861
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_861
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xffdfffff
	mov	dword ptr [rax + 8], edx
	jmp	.label_870
.label_861:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 5
	nop	
	jne	.label_858
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	nop	
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xffffff00
	mov	rsp, rsp
	or	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], edx
.label_858:
	lea	rdi, [rdi]
	jmp	.label_870
.label_870:
	nop	
	jmp	.label_874
.label_874:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_877
.label_855:
	mov	rsp, rsp
	jmp	.label_852
.label_852:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0xb4], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0xb0]
	lea	rsi, [rsi]
	and	dl, 0xfb
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0xb0], dl
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x98], 0
	mov	byte ptr [rbp - 0x1d], al
	jg	.label_857
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], al
.label_857:
	mov	al, byte ptr [rbp - 0x1d]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0xb0]
	and	al, 1
	shl	al, 1
	lea	rsi, [rsi]
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0xb0], sil
.label_864:
	nop	
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7b0

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdi, qword ptr [rdi + 0x68]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x90], rdi
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	imul	rdi, qword ptr [rbp - 0x28], 0x18
	nop	
	add	rcx, rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x74], 0
	lea	rsi, [rsi]
	setne	dl
	and	dl, 1
	mov	rbp, rbp
	movzx	eax, dl
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_881
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_884
.label_881:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_880
	mov	qword ptr [rbp - 0x58], 0
.label_887:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_888
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0x3c], edx
	cmp	dword ptr [rbp - 0x3c], 4
	je	.label_878
	mov	rsp, rsp
	jmp	.label_882
.label_878:
	nop	
	mov	qword ptr [rbp - 0x38], 0
.label_894:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_890
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	esi, dword ptr [rax + 8]
	mov	rbp, rbp
	and	esi, 0xff
	cmp	esi, 9
	mov	rsp, rsp
	jne	.label_885
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_885
	lea	rsi, [rsi]
	jmp	.label_890
.label_885:
	mov	rsp, rsp
	jmp	.label_892
.label_892:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_894
.label_890:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_879
	mov	rsp, rsp
	jmp	.label_882
.label_879:
	cmp	dword ptr [rbp - 0x3c], 4
	lea	rdi, [rdi]
	jne	.label_883
	mov	rbp, rbp
	lea	rdi, [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_893
	lea	rdi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 8], 0x18
	nop	
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_895
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_884
.label_895:
	nop	
	mov	qword ptr [rbp - 0x58], 0
.label_893:
	mov	rbp, rbp
	jmp	.label_883
.label_883:
	jmp	.label_882
.label_882:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_887
.label_888:
	mov	rsp, rsp
	jmp	.label_880
.label_880:
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax + 0x48], 0
	lea	rsi, [rsi]
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	ecx, r8b
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	nop	
	je	.label_896
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_884
.label_896:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_886
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rsi + 0x50], rax
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rbp, rbp
	lea	rdi, [rbp - 0x74]
	lea	rdx, [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x58], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	r8b, 1
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x50], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
	nop	
	je	.label_889
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x29], al
	je	.label_889
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], cl
.label_889:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_897
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	jmp	.label_884
.label_897:
	lea	rsi, [rsi]
	jmp	.label_891
.label_886:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x60], rax
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x58], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x50], rax
.label_891:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x5c], 0
.label_884:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec40

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, r8b
	mov	r10b, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], al
	mov	qword ptr [rbp - 0x10], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x58], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	and	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x88], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], r10b
	mov	rbp, rbp
	jne	.label_898
	mov	al, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
.label_898:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	al, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rdx + 0xb4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + 0x90], ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rdx + 0xb0]
	mov	rsp, rsp
	shr	al, 2
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x89], al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8a], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x68], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x60], rdx
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40edb0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_903
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], 8
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	setb	cl
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_899
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_900
.label_899:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rcx, 2
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	nop	
	je	.label_904
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0xc
	mov	rsp, rsp
	jmp	.label_900
.label_904:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_901
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	shl	rcx, 3
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_906
	mov	dword ptr [rbp - 0x14], 0xc
	lea	rdi, [rdi]
	jmp	.label_900
.label_906:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_901:
	lea	rdi, [rdi]
	jmp	.label_903
.label_903:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_905
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	shl	rax, 0
	mov	rsi, rax
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_902
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xc
	nop	
	jmp	.label_900
.label_902:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
.label_905:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_900:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40efc0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_953
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_911
.label_953:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
.label_911:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_927
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_927
	mov	rax, qword ptr [rbp - 0x100]
	cmp	byte ptr [rax + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_927
	lea	rdi, [rdi]
	jmp	.label_920
.label_920:
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	cmp	rax, qword ptr [rbp - 0x88]
	nop	
	jge	.label_928
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	and	edx, 0xffffff80
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_907
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_907
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	byte ptr [rsi + rcx], dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rsi + rcx]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	dword ptr [rsi + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	lea	rsi, [rsi]
	jmp	.label_920
.label_907:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xbc]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	add	rcx, 0x20
	mov	rsp, rsp
	mov	rsi, rax
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9b, r8b
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], r9b
	nop	
	jae	.label_950
	cmp	qword ptr [rbp - 0x20], -2
	nop	
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], al
.label_950:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_930
	mov	edi, dword ptr [rbp - 0xbc]
	call	towupper
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xbc]
	mov	rsp, rsp
	je	.label_939
	lea	rdx, [rbp - 0xd0]
	lea	rdi, [rbp - 0x70]
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	call	wcrtomb
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x108]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_951
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	memcpy
	mov	rbp, rbp
	jmp	.label_958
.label_951:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_917
.label_958:
	mov	rbp, rbp
	jmp	.label_912
.label_939:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x100]
	add	rcx, qword ptr [rdx + 0x28]
	add	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	memcpy
.label_912:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + rcx*4], eax
	nop	
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x20]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rcx
.label_967:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	jge	.label_963
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_967
.label_963:
	jmp	.label_918
.label_930:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	je	.label_921
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_921
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_910
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_910
.label_921:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xdc], edx
	mov	edx, dword ptr [rbp - 0xdc]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	edx, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + rax*4], edx
	cmp	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	sete	sil
	lea	rsi, [rsi]
	and	sil, 1
	movzx	edx, sil
	lea	rdi, [rdi]
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_937
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
.label_937:
	jmp	.label_926
.label_910:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_928
.label_926:
	jmp	.label_918
.label_918:
	lea	rdi, [rdi]
	jmp	.label_920
.label_928:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 0xe4], 0
	nop	
	jmp	.label_909
.label_927:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0xf0], rax
.label_954:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x88]
	jge	.label_944
	jmp	.label_917
.label_917:
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	nop	
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_965
	mov	dword ptr [rbp - 0x10c], 0
.label_955:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x10c]
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rdx + 0x90]
	nop	
	mov	byte ptr [rbp - 0xdd], cl
	lea	rdi, [rdi]
	jge	.label_913
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	setl	cl
	nop	
	mov	byte ptr [rbp - 0xdd], cl
.label_913:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdd]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_945
	mov	rbp, rbp
	jmp	.label_952
.label_945:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0xf0]
	movsxd	rcx, dword ptr [rbp - 0x10c]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	sil, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	byte ptr [rbp + rax - 0x70], sil
	mov	eax, dword ptr [rbp - 0x10c]
	add	eax, 1
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_955
.label_952:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_919
.label_965:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_919:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	rcx, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], r9b
	nop	
	jae	.label_941
	nop	
	cmp	qword ptr [rbp - 0x20], -2
	mov	rsp, rsp
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_941:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_959
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	call	towupper
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	je	.label_968
	lea	rdx, [rbp - 0xd0]
	nop	
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xb8]
	call	wcrtomb
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0xb0]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	nop	
	je	.label_922
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	nop	
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	jmp	.label_914
.label_922:
	cmp	qword ptr [rbp - 0xb0], -1
	mov	rbp, rbp
	je	.label_943
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_947
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_944
.label_947:
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jne	.label_929
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	nop	
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x100]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_957
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], 0xc
	lea	rdi, [rdi]
	jmp	.label_909
.label_957:
	lea	rdi, [rdi]
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_932
	mov	qword ptr [rbp - 0xc8], 0
.label_962:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_923
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_962
.label_923:
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	byte ptr [rax + 0x8c], 1
.label_932:
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0xc8], 1
.label_936:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_931
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jae	.label_964
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_966
.label_964:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_966:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rax*8], rcx
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_936
.label_931:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xf0]
	nop	
	jle	.label_924
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x100]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_924:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	jle	.label_940
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_948
.label_940:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x78], rax
.label_948:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_954
.label_943:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_914
.label_914:
	jmp	.label_925
.label_968:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	memcpy
.label_925:
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	movzx	ecx, byte ptr [rax + 0x8c]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	lea	rdi, [rdi]
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	je	.label_935
	mov	qword ptr [rbp - 0xf8], 0
.label_961:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_949
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	add	rax, 1
	mov	qword ptr [rbp - 0xf8], rax
	mov	rbp, rbp
	jmp	.label_961
.label_949:
	jmp	.label_935
.label_935:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	ecx, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0xd8], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x98], rax
.label_938:
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x98]
	jge	.label_934
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	nop	
	jmp	.label_938
.label_934:
	jmp	.label_933
.label_959:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_960
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_960
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_908
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_908
.label_960:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe8], edx
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	movzx	edx, sil
	nop	
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_916
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xe8], edx
.label_916:
	mov	eax, dword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x100]
	movzx	eax, byte ptr [rdx + 0x8c]
	nop	
	cmp	eax, 0
	nop	
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_946
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_946:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	ecx, dword ptr [rbp - 0xe8]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rdx, rax
	add	rdx, 1
	nop	
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	sete	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_915
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_915:
	mov	rsp, rsp
	jmp	.label_942
.label_908:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rax + 0x20], rcx
	nop	
	jmp	.label_944
.label_942:
	jmp	.label_933
.label_933:
	mov	rbp, rbp
	jmp	.label_954
.label_944:
	jmp	.label_956
.label_956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
.label_3029:
	mov	dword ptr [rbp - 0xe4], 0
.label_909:
	mov	eax, dword ptr [rbp - 0xe4]
	add	rsp, 0x110
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x410020

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rax + 0x58]
	mov	rbp, rbp
	jle	.label_969
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_973
.label_969:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_973:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_972:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_970
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	setne	sil
	mov	rbp, rbp
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_971
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_971:
	mov	edi, dword ptr [rbp - 0x1c]
	call	toupper
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_972
.label_970:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410170

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	jle	.label_987
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_982
.label_987:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_982:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
.label_979:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_980
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_986
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0
.label_991:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0x55], cl
	mov	rbp, rbp
	jge	.label_989
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	setl	cl
	mov	byte ptr [rbp - 0x55], cl
.label_989:
	mov	al, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	test	al, 1
	jne	.label_985
	lea	rdi, [rdi]
	jmp	.label_988
.label_985:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	byte ptr [rcx + rax], sil
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rax - 0xa0], sil
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	jmp	.label_991
.label_988:
	nop	
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	jmp	.label_974
.label_986:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_974:
	lea	rdi, [rbp - 0x54]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], -1
	mov	byte ptr [rbp - 0x39], r8b
	mov	rsp, rsp
	je	.label_977
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	je	.label_977
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
	jne	.label_978
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	setge	dl
	nop	
	mov	byte ptr [rbp - 9], dl
.label_978:
	mov	al, byte ptr [rbp - 9]
	nop	
	mov	byte ptr [rbp - 0x39], al
.label_977:
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_976
	mov	qword ptr [rbp - 8], 1
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x54], edx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	lea	rdi, [rdi]
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_984
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
.label_984:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_975
.label_976:
	cmp	qword ptr [rbp - 8], -2
	lea	rdi, [rdi]
	sete	al
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_990
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	lea	rdi, [rdi]
	jmp	.label_980
.label_990:
	jmp	.label_975
.label_975:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 8]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
.label_983:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jge	.label_981
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_983
.label_981:
	jmp	.label_979
.label_980:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410550

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_992
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_993
.label_992:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_993:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_995:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_994
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xc], edx
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_995
.label_994:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410660

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	peek_token
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi + 0x48]
	mov	qword ptr [rsi + 0x48], rdx
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106b0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x48], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r9
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x58], 0
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x20]
	nop	
	call	parse_branch
	mov	rbp, rbp
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	nop	
	mov	byte ptr [rbp - 0x69], r11b
	je	.label_1006
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x69], al
.label_1006:
	nop	
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1004
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1003
.label_1004:
	jmp	.label_998
.label_998:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	nop	
	jne	.label_1001
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	or	rax, 0x800000
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	call	fetch_token
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0xa
	mov	rsp, rsp
	je	.label_1002
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	mov	rbp, rbp
	je	.label_1002
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_999
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	je	.label_1002
.label_999:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xa8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], r11b
	je	.label_1007
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1007:
	mov	al, byte ptr [rbp - 0x61]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1005
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_996
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_996:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1003
.label_1005:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	or	rax, qword ptr [rcx + 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_997
.label_1002:
	mov	qword ptr [rbp - 0x58], 0
.label_997:
	mov	rbp, rbp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	jmp	.label_1003
.label_1000:
	jmp	.label_998
.label_1001:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
.label_1003:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109b0

	.globl create_tree
	.type create_tree, @function
create_tree:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	r8d, dword ptr [rbp - 8]
	and	ecx, 0xff
	and	r8d, 0xffffff00
	or	r8d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], r8d
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	create_token_tree
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a20

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0xf0], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_1013
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], 0
	jmp	.label_1030
.label_1013:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0xf2], dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0xf2]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffbfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	and	esi, 0xffdfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1062
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	je	.label_1062
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1062
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffdfffff
	or	ecx, 0x200000
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1030
.label_1062:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	mov	rbp, rbp
	cmp	eax, 0x5c
	jne	.label_1092
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1097
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x24
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1030
.label_1097:
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xf1], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xf1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rsi + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rsi + 8], ecx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rsi + 0x90], 1
	mov	rbp, rbp
	jle	.label_1114
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0xd8], eax
	mov	edi, dword ptr [rbp - 0xd8]
	mov	rsp, rsp
	call	iswalnum
	mov	rbp, rbp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x79], cl
	nop	
	jne	.label_1036
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd8], 0x5f
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], al
.label_1036:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	lea	rdi, [rdi]
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	mov	rsp, rsp
	or	esi, ecx
	nop	
	mov	dword ptr [rdx + 8], esi
	nop	
	jmp	.label_1047
.label_1114:
	movzx	eax, byte ptr [rbp - 0xf1]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 8
	lea	rdi, [rdi]
	cmp	esi, 0
	mov	byte ptr [rbp - 0xa9], dl
	jne	.label_1067
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf1]
	cmp	eax, 0x5f
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], cl
.label_1067:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1047:
	movzx	eax, byte ptr [rbp - 0xf1]
	mov	rsp, rsp
	mov	ecx, eax
	sub	ecx, 0x27
	mov	dword ptr [rbp - 0x50], eax
	mov	dword ptr [rbp - 0xe4], ecx
	je	.label_1076
	jmp	.label_1101
.label_1101:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	je	.label_1102
	nop	
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_1105
	nop	
	jmp	.label_1108
.label_1108:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_1111
	jmp	.label_1115
.label_1115:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	eax, -0x31
	mov	rsp, rsp
	sub	eax, 9
	mov	dword ptr [rbp - 0xcc], eax
	lea	rsi, [rsi]
	jb	.label_1113
	jmp	.label_1011
.label_1011:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x3c
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1012
	jmp	.label_1018
.label_1018:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x3e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1019
	lea	rdi, [rdi]
	jmp	.label_1027
.label_1027:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x10], eax
	je	.label_1029
	mov	rbp, rbp
	jmp	.label_1032
.label_1032:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1035
	jmp	.label_1041
.label_1041:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1043
	jmp	.label_1048
.label_1048:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	je	.label_1049
	jmp	.label_1056
.label_1056:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1057
	jmp	.label_1060
.label_1060:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1061
	lea	rdi, [rdi]
	jmp	.label_1053
.label_1053:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0xe0], eax
	mov	rbp, rbp
	je	.label_1064
	jmp	.label_1070
.label_1070:
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	sub	eax, 0x77
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	je	.label_1034
	lea	rsi, [rsi]
	jmp	.label_1075
.label_1075:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x7b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1077
	jmp	.label_1081
.label_1081:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x60], eax
	nop	
	je	.label_1082
	jmp	.label_1087
.label_1087:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	eax, 0x7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_1088
	jmp	.label_1093
.label_1082:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	nop	
	jne	.label_1084
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x8000
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_1084
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1084:
	jmp	.label_1015
.label_1113:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x4000
	nop	
	cmp	rax, 0
	jne	.label_1109
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 4
	mov	dword ptr [rax + 8], ecx
	movzx	ecx, byte ptr [rbp - 0xf1]
	sub	ecx, 0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rdx], rax
.label_1109:
	mov	rbp, rbp
	jmp	.label_1015
.label_1012:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1016
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 6
.label_1016:
	nop	
	jmp	.label_1015
.label_1019:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	nop	
	jne	.label_1037
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 9
.label_1037:
	lea	rsi, [rsi]
	jmp	.label_1015
.label_1061:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1058
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	dword ptr [rax], 0x100
.label_1058:
	lea	rsi, [rsi]
	jmp	.label_1015
.label_1035:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1074
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 0x200
.label_1074:
	jmp	.label_1015
.label_1034:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_1086
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x20
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1086:
	nop	
	jmp	.label_1015
.label_1049:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1098
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1098:
	jmp	.label_1015
.label_1064:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1106
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_1106:
	jmp	.label_1015
.label_1043:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1008
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_1008:
	jmp	.label_1015
.label_1057:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1085
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 0x40
.label_1085:
	jmp	.label_1015
.label_1076:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1040
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x80
.label_1040:
	jmp	.label_1015
.label_1102:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1059
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 8
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1059:
	jmp	.label_1015
.label_1105:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1069
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1069:
	jmp	.label_1015
.label_1111:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1079
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1079
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1079:
	jmp	.label_1015
.label_1029:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1096
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1096
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x13
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1096:
	lea	rsi, [rsi]
	jmp	.label_1015
.label_1077:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1023
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1023:
	jmp	.label_1015
.label_1088:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1022
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x1000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	jne	.label_1022
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x18
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1022:
	nop	
	jmp	.label_1015
.label_1093:
	jmp	.label_1015
.label_1015:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 2
	nop	
	jmp	.label_1030
.label_1092:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	nop	
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1050
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	mov	edi, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	call	iswalnum
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc5], cl
	jne	.label_1072
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x5f
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc5], al
.label_1072:
	nop	
	mov	al, byte ptr [rbp - 0xc5]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	mov	rsp, rsp
	setne	al
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rdx + 8]
	mov	rbp, rbp
	and	ecx, 1
	shl	ecx, 0x16
	mov	rsp, rsp
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1078
.label_1050:
	mov	rax, qword ptr [rbp - 0xf0]
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + rsi*2]
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0xb1], dl
	jne	.label_1100
	mov	rax, qword ptr [rbp - 0xf0]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb1], dl
.label_1100:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	lea	rdi, [rdi]
	and	esi, 0xffbfffff
	nop	
	or	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rdx + 8], esi
.label_1078:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xf2]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xa
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0xb0], ecx
	je	.label_1009
	mov	rbp, rbp
	jmp	.label_1017
.label_1017:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x24
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_1020
	mov	rsp, rsp
	jmp	.label_1026
.label_1026:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_1014
	nop	
	jmp	.label_1031
.label_1031:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x29
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	je	.label_1033
	jmp	.label_1039
.label_1039:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1042
	jmp	.label_1045
.label_1045:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	je	.label_1046
	jmp	.label_1051
.label_1051:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x2e
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	je	.label_1052
	lea	rdi, [rdi]
	jmp	.label_1066
.label_1066:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	eax, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rdi, [rdi]
	je	.label_1068
	jmp	.label_1063
.label_1063:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x5b
	nop	
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1103
	mov	rbp, rbp
	jmp	.label_1024
.label_1024:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1073
	jmp	.label_1071
.label_1071:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	nop	
	je	.label_1044
	lea	rdi, [rdi]
	jmp	.label_1107
.label_1107:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, 0x7c
	nop	
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	je	.label_1083
	lea	rsi, [rsi]
	jmp	.label_1089
.label_1089:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x7d
	nop	
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1091
	jmp	.label_1094
.label_1009:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1095
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1095:
	mov	rsp, rsp
	jmp	.label_1010
.label_1083:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x400
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1112
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x8000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1112
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1112:
	mov	rsp, rsp
	jmp	.label_1010
.label_1042:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1010
.label_1046:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1025
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	jne	.label_1025
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1025:
	mov	rbp, rbp
	jmp	.label_1010
.label_1068:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x400
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1055
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1055
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1055:
	mov	rsp, rsp
	jmp	.label_1010
.label_1044:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1065
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1065
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1065:
	jmp	.label_1010
.label_1091:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1080
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000
	cmp	rax, 0
	nop	
	je	.label_1080
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x18
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1080:
	lea	rsi, [rsi]
	jmp	.label_1010
.label_1014:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1099
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1099:
	jmp	.label_1010
.label_1033:
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x2000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1110
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1110:
	jmp	.label_1010
.label_1103:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1010
.label_1052:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	jmp	.label_1010
.label_1073:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 0x800008
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jne	.label_1028
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 0x48], 0
	nop	
	je	.label_1028
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax - 1]
	mov	byte ptr [rbp - 0x11], dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	and	rax, 0x800
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1038
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0xa
	je	.label_1054
.label_1038:
	jmp	.label_1010
.label_1054:
	mov	rsp, rsp
	jmp	.label_1028
.label_1028:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	dword ptr [rax], 0x10
	nop	
	jmp	.label_1010
.label_1020:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 8
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1021
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	je	.label_1021
	lea	rdi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	call	peek_token
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx + 0x48]
	add	rdx, -1
	nop	
	mov	qword ptr [rcx + 0x48], rdx
	mov	r8d, dword ptr [rbp - 0x98]
	and	r8d, 0xff
	lea	rsi, [rsi]
	cmp	r8d, 0xa
	nop	
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_1090
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xff
	lea	rsi, [rsi]
	cmp	eax, 9
	je	.label_1090
	jmp	.label_1010
.label_1090:
	mov	rsp, rsp
	jmp	.label_1021
.label_1021:
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	mov	dword ptr [rax], 0x20
	nop	
	jmp	.label_1010
.label_1094:
	jmp	.label_1010
.label_1010:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 1
.label_1030:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rsp, 0x100
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411c20

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	cmp	byte ptr [rsi + 0x8b], 0
	mov	rsp, rsp
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rsp, rsp
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_1116
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0xd], dl
	jmp	.label_1118
.label_1116:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1117
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1121
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	add	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	je	.label_1117
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_1117
.label_1121:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], dl
	jmp	.label_1118
.label_1117:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1120
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1120:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0xc], edx
	mov	rax, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_1119
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_1119
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd], dl
	lea	rsi, [rsi]
	jmp	.label_1118
.label_1119:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 0xd], cl
.label_1118:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0xd]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411e20

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	jne	.label_1122
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_1123
.label_1122:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_1123:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ea0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x70], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x58], r8
	mov	qword ptr [rbp - 0x60], r9
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x60]
	call	parse_expression
	lea	rdi, [rdi]
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], r11b
	je	.label_1124
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_1124:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1135
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	jmp	.label_1129
.label_1135:
	mov	rbp, rbp
	jmp	.label_1132
.label_1132:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	lea	rdi, [rdi]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	je	.label_1130
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], cl
	je	.label_1130
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x71], al
	je	.label_1125
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x71], dl
.label_1125:
	mov	al, byte ptr [rbp - 0x71]
	mov	byte ptr [rbp - 0x11], al
.label_1130:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_1137
	jmp	.label_1126
.label_1137:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbp - 0x60]
	nop	
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], r11b
	mov	rbp, rbp
	je	.label_1133
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], al
.label_1133:
	mov	al, byte ptr [rbp - 0x49]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1138
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1134
	movabs	rsi, OFFSET FLAT:free_tree
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	postorder
	nop	
	mov	dword ptr [rbp - 8], eax
.label_1134:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_1129
.label_1138:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1128
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1128
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_1136
	nop	
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	postorder
	movabs	rsi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	call	postorder
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	dword ptr [rdx], 0xc
	mov	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1129
.label_1136:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_1131
.label_1128:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1127
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
.label_1127:
	jmp	.label_1131
.label_1131:
	jmp	.label_1132
.label_1126:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
.label_1129:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4121d0

	.globl postorder
	.type postorder, @function
postorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rdx
.label_1141:
	jmp	.label_1140
.label_1140:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	jne	.label_1147
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x29], cl
.label_1147:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1144
	jmp	.label_1148
.label_1144:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1150
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1146
.label_1150:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1146:
	mov	rsp, rsp
	jmp	.label_1140
.label_1148:
	jmp	.label_1145
.label_1145:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	rax
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1142
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	jmp	.label_1143
.label_1142:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1149
	mov	dword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jmp	.label_1143
.label_1149:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_1139
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1139:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1145
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1141
.label_1143:
	mov	eax, dword ptr [rbp - 0x30]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412390

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsi, 0x28
	nop	
	mov	rdi, rsi
	call	free_token
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4123d0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x138
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x140], rdi
	nop	
	mov	qword ptr [rbp - 0xf8], rsi
	mov	qword ptr [rbp - 0xe0], rdx
	nop	
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0xb8], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], r9
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	eax, byte ptr [rcx + 8]
	mov	rbp, rbp
	dec	eax
	mov	ecx, eax
	sub	eax, 0x23
	mov	qword ptr [rbp - 0x130], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	ja	.label_1195
	mov	rax, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1165]]
	mov	rsp, rsp
	jmp	rcx
.label_3005:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	nop	
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	sete	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1181
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1181:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1198
	lea	rdi, [rdi]
	jmp	.label_1155
.label_1155:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	cmp	rdx, qword ptr [rsi + 0x48]
	nop	
	mov	byte ptr [rbp - 0xa9], cl
	mov	rsp, rsp
	jle	.label_1158
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x140]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	je	.label_1188
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x140]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], dl
.label_1188:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0xa9], al
.label_1158:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1183
	jmp	.label_1186
.label_1183:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	call	fetch_token
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	call	create_token_tree
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x90]
	call	create_tree
	mov	rbp, rbp
	mov	r8b, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0xc9], r8b
	mov	rbp, rbp
	je	.label_1154
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xc9], al
.label_1154:
	mov	al, byte ptr [rbp - 0xc9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1168
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1153
.label_1168:
	jmp	.label_1155
.label_1186:
	jmp	.label_1198
.label_1198:
	mov	rsp, rsp
	jmp	.label_1152
.label_3009:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	r9, qword ptr [rbp - 0x100]
	mov	r8, rax
	call	parse_sub_exp
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb9], r11b
	je	.label_1200
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_1200:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1162
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	jmp	.label_1153
.label_1162:
	mov	rbp, rbp
	jmp	.label_1152
.label_3011:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	r8, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	call	parse_bracket_exp
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	r10b, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x119], r10b
	je	.label_1180
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	nop	
	mov	byte ptr [rbp - 0x119], al
.label_1180:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x119]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1197
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1197:
	jmp	.label_1152
.label_3007:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	lea	rsi, [rsi]
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	cmp	rdi, 0
	lea	rsi, [rsi]
	jne	.label_1164
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1164:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdx, qword ptr [rbp - 0xe0]
	nop	
	mov	rdx, qword ptr [rdx]
	nop	
	mov	esi, edx
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	mov	ecx, esi
	shl	eax, cl
	lea	rsi, [rsi]
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	or	rdx, qword ptr [rdi + 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0xa0], rdx
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x68]
	call	create_token_tree
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1201
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1201:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 0x98]
	nop	
	add	rcx, 1
	mov	qword ptr [rax + 0x98], rcx
	mov	rax, qword ptr [rbp - 0xd8]
	mov	dl, byte ptr [rax + 0xb0]
	and	dl, 0xfd
	lea	rsi, [rsi]
	or	dl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xb0], dl
	lea	rsi, [rsi]
	jmp	.label_1152
.label_3012:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x1000000
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1176
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jmp	.label_1153
.label_1176:
	jmp	.label_1187
.label_1187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1190
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1153
.label_1190:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1202
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	fetch_token
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	r8, qword ptr [rbp - 0xb8]
	mov	r9, qword ptr [rbp - 0x100]
	nop	
	call	parse_expression
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1153
.label_1202:
	jmp	.label_1170
.label_1170:
	mov	rbp, rbp
	jmp	.label_1171
.label_1171:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	lea	rdi, [rdi]
	jne	.label_1174
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	and	rax, 0x20000
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1174
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1174:
	jmp	.label_1194
.label_1194:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	nop	
	mov	dword ptr [rdx + 8], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	mov	rbp, rbp
	movzx	r9d, r8b
	movsxd	rax, r9d
	nop	
	cmp	rax, 0
	je	.label_1159
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1159:
	nop	
	jmp	.label_1152
.label_3010:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0x30f
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1179
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1179
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	call	init_word_char
.label_1179:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x100
	je	.label_1191
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax], 0x200
	jne	.label_1196
.label_1191:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x100
	jne	.label_1199
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	nop	
	mov	dword ptr [rdx], 6
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x50], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x50]
	call	create_token_tree
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	jmp	.label_1163
.label_1199:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx], 5
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	dword ptr [rax], 0xa
.label_1163:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	create_token_tree
	mov	ecx, 0xa
	mov	qword ptr [rbp - 0x110], rax
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x110]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0xba], r8b
	je	.label_1156
	mov	al, 1
	cmp	qword ptr [rbp - 0x110], 0
	mov	byte ptr [rbp - 0xba], al
	lea	rdi, [rdi]
	je	.label_1156
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba], al
.label_1156:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1166
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1166:
	mov	rsp, rsp
	jmp	.label_1157
.label_1196:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x58], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	call	create_token_tree
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1193
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_1153
.label_1193:
	mov	rbp, rbp
	jmp	.label_1157
.label_1157:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	fetch_token
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdx
	lea	rsi, [rsi]
	jmp	.label_1153
.label_3008:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	r8b
	nop	
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1178
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jmp	.label_1153
.label_1178:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1203
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_1203:
	mov	rsp, rsp
	jmp	.label_1152
.label_3013:
	movabs	rax, OFFSET FLAT:.str.1_4
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rdx + 8]
	lea	rsi, [rsi]
	and	r8d, 0xff
	nop	
	cmp	r8d, 0x21
	mov	rbp, rbp
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.1_4
	mov	r10d, r8d
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.2_2
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	call	build_charclass_op
	mov	rbp, rbp
	xor	r8d, r8d
	mov	bl, r8b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x131], bl
	je	.label_1175
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x131], al
.label_1175:
	mov	al, byte ptr [rbp - 0x131]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_1177
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1153
.label_1177:
	lea	rdi, [rdi]
	jmp	.label_1152
.label_3014:
	movabs	rax, OFFSET FLAT:.str.3_1
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	lea	rdi, [rdi]
	cmp	r8d, 0x23
	lea	rsi, [rsi]
	sete	r9b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.3_1
	mov	r10d, r8d
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str_0
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, r10
	nop	
	mov	qword ptr [rbp - 0x118], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	call	build_charclass_op
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	bl, r8b
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x132], bl
	je	.label_1185
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x132], al
.label_1185:
	mov	al, byte ptr [rbp - 0x132]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1189
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1189:
	mov	rbp, rbp
	jmp	.label_1152
.label_3006:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_3015:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1195:
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1152:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x140]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	call	fetch_token
.label_1184:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	mov	rsp, rsp
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x81], al
	je	.label_1173
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	cmp	edx, 0x12
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x81], al
	je	.label_1173
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	edx, 0xff
	cmp	edx, 0x13
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], al
	je	.label_1173
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1173:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1172
	nop	
	jmp	.label_1160
.label_1172:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	call	parse_dup_op
	mov	rbp, rbp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x101], r11b
	je	.label_1167
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x101], al
.label_1167:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1182
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_1192
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x2c], eax
.label_1192:
	mov	qword ptr [rbp - 0x78], 0
	nop	
	jmp	.label_1153
.label_1182:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 0x1000000
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1151
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_1161
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	mov	rbp, rbp
	jne	.label_1151
.label_1161:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1169
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	postorder
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
.label_1169:
	mov	rax, qword ptr [rbp - 0x100]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_1153
.label_1151:
	mov	rsp, rsp
	jmp	.label_1184
.label_1160:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
.label_1153:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rsp, 0x138
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4133e0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x80]
	cmp	rcx, 0xf
	lea	rsi, [rsi]
	sete	al
	and	al, 1
	movzx	r8d, al
	lea	rdi, [rdi]
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1204
	mov	eax, 0x3c8
	mov	edi, eax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1206
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_1208
.label_1206:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0
.label_1204:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x80]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, 1
	mov	dword ptr [rax + 0x80], edx
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x70]
	lea	rsi, [rsi]
	add	rsi, 8
	shl	rax, 6
	mov	rsp, rsp
	add	rsi, rax
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rax + 0x28], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x30], rsi
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfffbffff
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x30], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xfff7ffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x38], -1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1207
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
.label_1207:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1205
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1205:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1208:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4135d0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x58], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	or	rcx, 0x800000
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	fetch_token
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 9
	mov	rsp, rsp
	jne	.label_1215
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jmp	.label_1214
.label_1215:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x58]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], r11b
	jne	.label_1209
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 9
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], dl
.label_1209:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1213
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1211
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	postorder
	mov	dword ptr [rbp - 0x44], eax
.label_1211:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rax], 8
.label_1213:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1216
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_1212
.label_1216:
	jmp	.label_1214
.label_1214:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 8
	ja	.label_1210
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, edx
	shl	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	or	rsi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rdi + 0xa8], rsi
.label_1210:
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	ecx, 0x11
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	ecx, r8b
	lea	rdi, [rdi]
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1217
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x28], 0
	nop	
	jmp	.label_1212
.label_1217:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1212:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413850

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x188
	lea	rsi, [rsi]
	mov	eax, 0x20
	nop	
	mov	r9d, eax
	mov	eax, 1
	nop	
	mov	r10d, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], r8
	mov	qword ptr [rbp - 0xe0], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	qword ptr [rbp - 0x158], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xc9], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x149], 1
	nop	
	mov	rdi, r9
	mov	rsi, r10
	lea	rsi, [rsi]
	call	calloc
	mov	r11d, 0x50
	mov	edi, r11d
	nop	
	mov	r11d, 1
	lea	rsi, [rsi]
	mov	esi, r11d
	nop	
	mov	qword ptr [rbp - 0x148], rax
	call	calloc
	lea	rdi, [rdi]
	mov	bl, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x148], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x10d], bl
	nop	
	je	.label_1224
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x10d], al
.label_1224:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x10d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1235
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	jmp	.label_1246
.label_1235:
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x10c], eax
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	cl
	and	cl, 1
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1261
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 2
	jmp	.label_1218
.label_1261:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x19
	jne	.label_1222
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 0xfe
	or	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], cl
	mov	byte ptr [rbp - 0xc9], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	and	rax, 0x100
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1230
	nop	
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_set
.label_1230:
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_1259
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 2
	jmp	.label_1218
.label_1259:
	jmp	.label_1222
.label_1222:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1223
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1223:
	jmp	.label_1237
.label_1237:
	lea	rdi, [rbp - 0xa0]
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x100]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x181], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	dword ptr [rbp - 0xa0], 3
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x10c]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 0x118]
	mov	r10b, byte ptr [rbp - 0x149]
	and	r10b, 1
	movzx	r11d, r10b
	mov	rbp, rbp
	mov	dword ptr [rsp], r11d
	mov	rsp, rsp
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 0
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rsp, rsp
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1264
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_1218
.label_1264:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x149], 0
	mov	rdi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	call	peek_token_bracket
	nop	
	mov	dword ptr [rbp - 0x10c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xa0], 4
	je	.label_1231
	nop	
	cmp	dword ptr [rbp - 0xa0], 2
	mov	rsp, rsp
	je	.label_1231
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 2
	nop	
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	nop	
	movsxd	rax, ecx
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1243
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1218
.label_1243:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1258
	lea	rdi, [rbp - 0x140]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x138]
	nop	
	and	eax, 0xff
	cmp	eax, 2
	mov	rbp, rbp
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_1221
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1218
.label_1221:
	nop	
	mov	eax, dword ptr [rbp - 0x138]
	mov	rsp, rsp
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 0x15
	jne	.label_1240
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x10c]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 1
	mov	dword ptr [rcx + 8], eax
	jmp	.label_1247
.label_1240:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x181], 1
.label_1247:
	mov	rsp, rsp
	jmp	.label_1258
.label_1258:
	jmp	.label_1231
.label_1231:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_1267
	lea	rdi, [rbp - 0x30]
	lea	rdx, [rbp - 0x140]
	mov	eax, 1
	lea	rcx, [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], 3
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xb4]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 0x118]
	mov	dword ptr [rsp], 1
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	call	parse_bracket_element
	nop	
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1232
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	jmp	.label_1218
.label_1232:
	nop	
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	call	peek_token_bracket
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10c], eax
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0xb4], 1
	mov	qword ptr [rbp - 0x68], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rsi
	mov	rbp, rbp
	jle	.label_1252
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_1262
.label_1252:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	jmp	.label_1262
.label_1262:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	lea	rcx, [rbp - 0xb0]
	nop	
	lea	r8, [rbp - 0xa0]
	mov	rsp, rsp
	lea	r9, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	build_range_exp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	lea	rsi, [rsi]
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	nop	
	movzx	eax, r10b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1228
	jmp	.label_1218
.label_1228:
	jmp	.label_1236
.label_1267:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0xd8], rdx
	ja	.label_1265
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1255]]
	mov	rbp, rbp
	jmp	rcx
.label_3060:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	esi, eax
	call	bitset_set
	lea	rdi, [rdi]
	jmp	.label_1234
.label_3061:
	mov	rax, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1266
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x158]
	shl	rcx, 2
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1241
	mov	rbp, rbp
	jmp	.label_1242
.label_1241:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
.label_1266:
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x28], rsi
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx + rdx*4], eax
	nop	
	jmp	.label_1234
.label_3062:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x120]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	build_equiv_class
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	lea	rsi, [rsi]
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_1219
	jmp	.label_1218
.label_1219:
	jmp	.label_1234
.label_3063:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	call	build_collating_symbol
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1245
	jmp	.label_1218
.label_1245:
	jmp	.label_1234
.label_3064:
	mov	rbp, rbp
	lea	rcx, [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	r8, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x118]
	call	build_charclass
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1239
	jmp	.label_1218
.label_1239:
	jmp	.label_1234
.label_1265:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
.label_1234:
	jmp	.label_1236
.label_1236:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 2
	nop	
	sete	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	mov	rbp, rbp
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1238
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1218
.label_1238:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x15
	jne	.label_1249
	jmp	.label_1260
.label_1249:
	jmp	.label_1237
.label_1260:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x10c]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xc9], 1
	je	.label_1263
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x148]
	call	bitset_not
.label_1263:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1220
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1220:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	jne	.label_1229
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1229
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	jne	.label_1229
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1229
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1254
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1229
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x20]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1254
.label_1229:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdx, [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	dil, byte ptr [rsi + 0xb0]
	nop	
	and	dil, 0xfd
	or	dil, 2
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xffffff00
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x38], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1225
	jmp	.label_1242
.label_1225:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], 0
.label_1256:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x12c], 4
	jge	.label_1244
	movsxd	rax, dword ptr [rbp - 0x12c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1248
	jmp	.label_1244
.label_1248:
	nop	
	jmp	.label_1253
.label_1253:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_1256
.label_1244:
	nop	
	cmp	dword ptr [rbp - 0x12c], 4
	mov	rsp, rsp
	jge	.label_1233
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	nop	
	movsxd	rax, r9d
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1257
	nop	
	jmp	.label_1242
.label_1257:
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x90], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	nop	
	movsxd	rax, ecx
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1251
	mov	rsp, rsp
	jmp	.label_1242
.label_1251:
	mov	rsp, rsp
	jmp	.label_1227
.label_1233:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x90], rax
.label_1227:
	mov	rbp, rbp
	jmp	.label_1250
.label_1254:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 3
	mov	dword ptr [rbp - 0x38], eax
	mov	rdx, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x40], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	create_token_tree
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	movsxd	rax, r9d
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1226
	lea	rdi, [rdi]
	jmp	.label_1242
.label_1226:
	jmp	.label_1250
.label_1250:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_1246
.label_1242:
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	dword ptr [rax], 0xc
.label_1218:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	qword ptr [rbp - 0x80], 0
.label_1246:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rsp, 0x188
	nop	
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146d0

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdi + 0xb0]
	mov	rbp, rbp
	and	al, 0xef
	mov	rbp, rbp
	or	al, 0x10
	mov	byte ptr [rdi + 0xb0], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdi + 0xb0]
	mov	rsp, rsp
	shr	al, 3
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	nop	
	cmp	ecx, 0
	sete	al
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1273
	mov	eax, 0x87fffffe
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x50], 0x3ff0000
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0x7fffffe
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rdx + 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 0x1f
	mov	rbp, rbp
	shl	rcx, 1
	lea	rdi, [rdi]
	or	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0xc0], rcx
	mov	dword ptr [rbp - 0x1c], 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0x80
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	sil, byte ptr [rcx + 0xb0]
	mov	rsp, rsp
	shr	sil, 2
	and	sil, 1
	lea	rdi, [rdi]
	movzx	eax, sil
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	je	.label_1272
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	mov	ecx, 0x100
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rdi, 0xb8
	shl	rdx, 3
	lea	rsi, [rsi]
	add	rdi, rdx
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xc]
	nop	
	idiv	ecx
	movsxd	r8, eax
	mov	rdx, r8
	call	memset
	mov	rsp, rsp
	jmp	.label_1271
.label_1272:
	mov	rsp, rsp
	jmp	.label_1273
.label_1273:
	lea	rsi, [rsi]
	jmp	.label_1276
.label_1276:
	mov	rbp, rbp
	jmp	.label_1269
.label_1269:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 4
	jge	.label_1271
	mov	dword ptr [rbp - 0x34], 0
.label_1278:
	cmp	dword ptr [rbp - 0x34], 0x40
	jge	.label_1268
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	jne	.label_1277
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0x5f
	jne	.label_1275
.label_1277:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, cl
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	or	rdx, qword ptr [rdi + rsi*8 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rsi*8 + 0xb8], rdx
.label_1275:
	lea	rdi, [rdi]
	jmp	.label_1274
.label_1274:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1278
.label_1268:
	mov	rbp, rbp
	jmp	.label_1270
.label_1270:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_1269
.label_1271:
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414970

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x88
	mov	al, r8b
	mov	rbp, rbp
	mov	r8d, 0x20
	mov	r10d, r8d
	mov	r8d, 1
	mov	r11d, r8d
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x18], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	mov	rdi, r10
	mov	rsi, r11
	lea	rdi, [rdi]
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	bl
	and	bl, 1
	movzx	r8d, bl
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1281
.label_1286:
	nop	
	mov	eax, 0x50
	mov	edi, eax
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x88], rax
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1292
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1281
.label_1292:
	lea	rcx, [rbp - 0x80]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r9d, eax
	mov	dl, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rsi, qword ptr [rbp - 0x88]
	mov	dl, al
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x20]
	and	dl, 1
	and	dil, 0xfe
	lea	rdi, [rdi]
	or	dil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0x20], dil
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	r8, qword ptr [rbp - 0x38]
	call	build_charclass
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1290
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	call	free_charset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	jmp	.label_1281
.label_1290:
	mov	rsp, rsp
	jmp	.label_1283
.label_1283:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_1288
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	rsi, byte ptr [rax]
	call	bitset_set
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_1283
.label_1288:
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	je	.label_1289
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	bitset_not
.label_1289:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1280
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1280:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x60], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1291
	jmp	.label_1284
.label_1291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1287
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdx, [rbp - 0x68]
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dil, byte ptr [rsi + 0xb0]
	lea	rsi, [rsi]
	and	dil, 0xfd
	lea	rsi, [rsi]
	or	dil, 2
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1285
	mov	rbp, rbp
	jmp	.label_1284
.label_1285:
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	movzx	ecx, r8b
	mov	rsp, rsp
	movsxd	rax, ecx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1282
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_1281
.label_1282:
	mov	rbp, rbp
	jmp	.label_1279
.label_1287:
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	call	free_charset
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rdi
	jmp	.label_1281
.label_1279:
	jmp	.label_1284
.label_1284:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	call	free_charset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x70], 0
.label_1281:
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x88
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414e00

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xd0
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0xb8], r8
	mov	qword ptr [rbp - 0x20], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x88], 0
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	and	eax, 0xff
	lea	rdi, [rdi]
	cmp	eax, 0x17
	jne	.label_1293
	mov	qword ptr [rbp - 0x58], 0
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	call	fetch_number
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1300
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1323
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2c
	lea	rsi, [rsi]
	jne	.label_1323
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1334
.label_1323:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1297
.label_1334:
	mov	rsp, rsp
	jmp	.label_1300
.label_1300:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	rsp, rsp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1302
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1307
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1314
.label_1307:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_1316
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	jne	.label_1316
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1327
.label_1316:
	lea	rsi, [rsi]
	mov	rax, -2
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1327
.label_1327:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
.label_1314:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
.label_1302:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -2
	mov	byte ptr [rbp - 0x69], al
	mov	rsp, rsp
	je	.label_1335
	cmp	qword ptr [rbp - 0x58], -2
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 0x69], al
.label_1335:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1299
	mov	rax, qword ptr [rbp - 0xb8]
	and	rax, 0x200000
	cmp	rax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1304
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	nop	
	jne	.label_1312
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 9
	jmp	.label_1319
.label_1312:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xa
.label_1319:
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1297
.label_1304:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xffffff00
	or	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rax + 8], edx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_1297
.label_1299:
	cmp	qword ptr [rbp - 0x58], -1
	mov	rbp, rbp
	je	.label_1295
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	jg	.label_1311
.label_1295:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x39], dl
.label_1311:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1306
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1297
.label_1306:
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1315
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1318
.label_1315:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 8], rax
.label_1318:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, 0x7fff
	mov	edx, ecx
	cmp	rdx, rax
	setl	sil
	and	sil, 1
	lea	rdi, [rdi]
	movzx	ecx, sil
	nop	
	movsxd	rax, ecx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1324
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1297
.label_1324:
	jmp	.label_1332
.label_1293:
	nop	
	mov	eax, 0xffffffff
	mov	ecx, 1
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rsi + 8]
	mov	rbp, rbp
	and	edi, 0xff
	mov	rsp, rsp
	cmp	edi, 0x12
	lea	rsi, [rsi]
	cmove	edx, ecx
	nop	
	movsxd	rsi, edx
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	lea	rdi, [rdi]
	cmp	edx, 0x13
	cmove	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x58], rsi
.label_1332:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	fetch_token
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1298
	mov	qword ptr [rbp - 0x68], 0
	jmp	.label_1297
.label_1298:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1322
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
.label_1322:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1326
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1297
.label_1326:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1294
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0xa0], 2
.label_1331:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jg	.label_1310
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	duplicate_tree
	nop	
	mov	ecx, 0x10
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x79], r8b
	nop	
	je	.label_1320
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x79], al
.label_1320:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1325
	nop	
	jmp	.label_1301
.label_1325:
	lea	rsi, [rsi]
	jmp	.label_1329
.label_1329:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1331
.label_1310:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_1333
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_1297
.label_1333:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	call	duplicate_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1330
	jmp	.label_1301
.label_1330:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	jmp	.label_1308
.label_1294:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
.label_1308:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1317
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:mark_opt_subexp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	postorder
	mov	dword ptr [rbp - 0x8c], eax
.label_1317:
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	eax, 0xa
	mov	ecx, 0xb
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	qword ptr [rbp - 0x58], -1
	cmove	eax, ecx
	mov	ecx, eax
	mov	rsp, rsp
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1336
	lea	rsi, [rsi]
	jmp	.label_1301
.label_1336:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 2
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_1313:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jg	.label_1305
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	call	duplicate_tree
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	lea	rsi, [rsi]
	mov	r8b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0xa9], r8b
	je	.label_1321
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa9], al
.label_1321:
	mov	al, byte ptr [rbp - 0xa9]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_1328
	jmp	.label_1301
.label_1328:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r8b
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	ecx, r8b
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1296
	nop	
	jmp	.label_1301
.label_1296:
	jmp	.label_1303
.label_1303:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_1313
.label_1305:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_1309
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x38], rax
.label_1309:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_1297
.label_1301:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], 0
.label_1297:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4156d0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_1346
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	jmp	.label_1339
.label_1346:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], dl
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1344
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	je	.label_1344
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1344
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 0x50], 1
	jmp	.label_1339
.label_1344:
	movzx	eax, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	cmp	eax, 0x5c
	jne	.label_1348
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 1
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1348
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	jge	.label_1348
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0x49], dl
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x49]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffffff00
	or	esi, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], 1
	jmp	.label_1339
.label_1348:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x5b
	nop	
	jne	.label_1343
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jge	.label_1347
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x51], dl
	lea	rdi, [rdi]
	jmp	.label_1337
.label_1347:
	mov	byte ptr [rbp - 0x51], 0
.label_1337:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x51]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 2
	movzx	edx, byte ptr [rbp - 0x51]
	mov	esi, edx
	nop	
	sub	esi, 0x2e
	mov	dword ptr [rbp - 0x38], edx
	mov	dword ptr [rbp - 0x10], esi
	je	.label_1354
	jmp	.label_1353
.label_1353:
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x18], eax
	nop	
	je	.label_1350
	lea	rdi, [rdi]
	jmp	.label_1356
.label_1356:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	je	.label_1357
	lea	rdi, [rdi]
	jmp	.label_1341
.label_1354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1345
.label_1357:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1345
.label_1350:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 4
	nop	
	cmp	rax, 0
	je	.label_1342
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1345
.label_1342:
	lea	rsi, [rsi]
	jmp	.label_1341
.label_1341:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	byte ptr [rax], dl
	nop	
	mov	dword ptr [rbp - 4], 1
.label_1345:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_1339
.label_1343:
	movzx	eax, byte ptr [rbp - 9]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x24], eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rbp, rbp
	je	.label_1340
	mov	rsp, rsp
	jmp	.label_1352
.label_1352:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	sub	eax, 0x5d
	nop	
	mov	dword ptr [rbp - 0x14], eax
	je	.label_1355
	jmp	.label_1358
.label_1358:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	sub	eax, 0x5e
	mov	dword ptr [rbp - 8], eax
	je	.label_1338
	lea	rdi, [rdi]
	jmp	.label_1349
.label_1340:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1351
.label_1355:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1351
.label_1338:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1351
.label_1349:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1351:
	mov	dword ptr [rbp - 0x50], 1
.label_1339:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ae0

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	eax, 1
	nop	
	mov	edx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	or	r8, qword ptr [rdi + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], r8
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415b70

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 0x4c], ecx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x30], r9
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rsi, qword ptr [rdx + 0x48]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 1
	jle	.label_1364
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	call	re_string_wchar_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rsi + 8], eax
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x24]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_1360
.label_1364:
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	cmp	edx, 0x1a
	je	.label_1362
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1362
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x1c
	jne	.label_1361
.label_1362:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	call	parse_bracket_symbol
	nop	
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1360
.label_1361:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	lea	rdi, [rdi]
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	nop	
	cmp	rax, 0
	je	.label_1359
	nop	
	test	byte ptr [rbp - 0x4d], 1
	jne	.label_1359
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x15
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1363
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 0xb
	lea	rdi, [rdi]
	jmp	.label_1360
.label_1363:
	nop	
	jmp	.label_1359
.label_1359:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], cl
	mov	dword ptr [rbp - 0x48], 0
.label_1360:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d50

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x50], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x78], r9
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	dword ptr [rcx], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1375
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1375
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rcx], 2
	nop	
	mov	byte ptr [rbp - 0x1d], al
	je	.label_1375
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], cl
.label_1375:
	mov	al, byte ptr [rbp - 0x1d]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1391
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0xb
	mov	rbp, rbp
	jmp	.label_1365
.label_1391:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_1369
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rcx + 8]
	mov	byte ptr [rbp - 0x69], al
	lea	rdi, [rdi]
	call	strlen
	cmp	rax, 1
	mov	dl, byte ptr [rbp - 0x69]
	mov	byte ptr [rbp - 0x6a], dl
	ja	.label_1383
.label_1369:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x59], cl
	mov	rbp, rbp
	jne	.label_1388
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	strlen
	mov	rsp, rsp
	cmp	rax, 1
	mov	rbp, rbp
	seta	cl
	mov	byte ptr [rbp - 0x59], cl
.label_1388:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x59]
	mov	byte ptr [rbp - 0x6a], al
.label_1383:
	mov	al, byte ptr [rbp - 0x6a]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1373
	mov	dword ptr [rbp - 0x2c], 3
	jmp	.label_1365
.label_1373:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 0
	jne	.label_1382
	mov	rax, qword ptr [rbp - 0x98]
	movzx	ecx, byte ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_1390
.label_1382:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1392
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	jmp	.label_1374
.label_1392:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_1374
.label_1374:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_1390:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_1398
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	mov	rbp, rbp
	jmp	.label_1387
.label_1398:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	nop	
	jne	.label_1394
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rsp, rsp
	jmp	.label_1370
.label_1394:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_1370
.label_1370:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8c], eax
.label_1387:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_1377
	mov	rax, qword ptr [rbp - 0x98]
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1386
.label_1377:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	movzx	edi, cl
	mov	rsp, rsp
	call	parse_byte
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_1393
.label_1386:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x1c], ecx
.label_1393:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	je	.label_1371
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax], 3
	jne	.label_1380
.label_1371:
	mov	eax, dword ptr [rbp - 0x30]
	mov	cl, al
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_1389
.label_1380:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x34], ecx
.label_1389:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], -1
	nop	
	je	.label_1395
	cmp	dword ptr [rbp - 0x70], -1
	lea	rsi, [rsi]
	jne	.label_1379
.label_1395:
	nop	
	mov	dword ptr [rbp - 0x2c], 3
	mov	rbp, rbp
	jmp	.label_1365
.label_1379:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	and	rdx, 0x10000
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
	nop	
	je	.label_1376
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	seta	cl
	mov	byte ptr [rbp - 9], cl
.label_1376:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1381
	mov	dword ptr [rbp - 0x2c], 0xb
	jmp	.label_1365
.label_1381:
	jmp	.label_1366
.label_1366:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1368
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x40]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1372
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shl	rcx, 2
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	dl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 1], dl
	je	.label_1378
	cmp	qword ptr [rbp - 0x68], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_1378:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1367
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	dword ptr [rbp - 0x2c], 0xc
	nop	
	jmp	.label_1365
.label_1367:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
.label_1372:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x40]
	mov	rsp, rsp
	mov	rsi, rdx
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x40], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rcx + rdx*4], eax
.label_1368:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], 0
.label_1397:
	cmp	dword ptr [rbp - 0x88], 0x100
	mov	rsp, rsp
	jge	.label_1384
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	ja	.label_1385
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	cmp	eax, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	ja	.label_1385
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	rsi, dword ptr [rbp - 0x88]
	call	bitset_set
.label_1385:
	nop	
	jmp	.label_1396
.label_1396:
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, 1
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1397
.label_1384:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_1365:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416330

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	strlen
	cmp	rax, 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1399
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 3
	jmp	.label_1400
.label_1399:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	call	bitset_set
	mov	dword ptr [rbp - 0xc], 0
.label_1400:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4163c0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 1
	setne	r8b
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	movsxd	rax, r9d
	nop	
	cmp	rax, 0
	je	.label_1401
	mov	dword ptr [rbp - 0x24], 3
	nop	
	jmp	.label_1402
.label_1401:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_set
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0
.label_1402:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416460

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0xe0], rdi
	mov	qword ptr [rbp - 0xf0], rsi
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x78], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x68], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	nop	
	je	.label_1443
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_1
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1482
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_1
	mov	esi, eax
	nop	
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	jne	.label_1443
.label_1482:
	movabs	rax, OFFSET FLAT:.str.9_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1443:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1503
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	realloc
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1542
	mov	dword ptr [rbp - 0xb4], 0xc
	mov	rsp, rsp
	jmp	.label_1493
.label_1542:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx], rax
.label_1503:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	wctype
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rdi + 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_1426
	jmp	.label_1431
.label_1431:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1435
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_1499:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1453
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 8
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1469
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1469:
	jmp	.label_1498
.label_1498:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1499
.label_1453:
	jmp	.label_1505
.label_1435:
	mov	dword ptr [rbp - 0xd4], 0
.label_1541:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1509
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 8
	cmp	edx, 0
	je	.label_1522
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_1522:
	nop	
	jmp	.label_1538
.label_1538:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1541
.label_1509:
	lea	rsi, [rsi]
	jmp	.label_1505
.label_1505:
	jmp	.label_1549
.label_1549:
	mov	rbp, rbp
	jmp	.label_1520
.label_1426:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.10_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1557
	lea	rsi, [rsi]
	jmp	.label_1561
.label_1561:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1486
	mov	dword ptr [rbp - 0xd4], 0
.label_1448:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1575
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 2
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1416
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	esi, edx
	nop	
	call	bitset_set
.label_1416:
	lea	rdi, [rdi]
	jmp	.label_1445
.label_1445:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1448
.label_1575:
	lea	rsi, [rsi]
	jmp	.label_1458
.label_1486:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_1504:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_1465
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 2
	nop	
	cmp	edx, 0
	nop	
	je	.label_1462
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_1462:
	jmp	.label_1501
.label_1501:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1504
.label_1465:
	jmp	.label_1458
.label_1458:
	lea	rsi, [rsi]
	jmp	.label_1512
.label_1512:
	nop	
	jmp	.label_1516
.label_1557:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1525
	lea	rsi, [rsi]
	jmp	.label_1527
.label_1527:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1425
	mov	dword ptr [rbp - 0xd4], 0
.label_1440:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1545
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 0x200
	cmp	edx, 0
	je	.label_1560
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1560:
	jmp	.label_1406
.label_1406:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1440
.label_1545:
	jmp	.label_1474
.label_1425:
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1466:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1428
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	nop	
	cmp	edx, 0
	je	.label_1444
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_1444:
	mov	rsp, rsp
	jmp	.label_1460
.label_1460:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1466
.label_1428:
	lea	rdi, [rdi]
	jmp	.label_1474
.label_1474:
	jmp	.label_1477
.label_1477:
	jmp	.label_1478
.label_1525:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.3_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1485
	mov	rsp, rsp
	jmp	.label_1492
.label_1492:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1495
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1546:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_1473
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x2000
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1523
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1523:
	mov	rbp, rbp
	jmp	.label_1544
.label_1544:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_1546
.label_1473:
	jmp	.label_1432
.label_1495:
	mov	dword ptr [rbp - 0xd4], 0
.label_1421:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1558
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1568
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1568:
	jmp	.label_1418
.label_1418:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1421
.label_1558:
	jmp	.label_1432
.label_1432:
	nop	
	jmp	.label_1436
.label_1436:
	jmp	.label_1437
.label_1485:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.9_1
	nop	
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_1446
	nop	
	jmp	.label_1449
.label_1449:
	nop	
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1451
	mov	dword ptr [rbp - 0xd4], 0
.label_1514:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1472
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_1484
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1484:
	lea	rdi, [rdi]
	jmp	.label_1510
.label_1510:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1514
.label_1472:
	mov	rsp, rsp
	jmp	.label_1529
.label_1451:
	mov	dword ptr [rbp - 0xd4], 0
.label_1553:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_1563
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x400
	nop	
	cmp	edx, 0
	je	.label_1534
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	call	bitset_set
.label_1534:
	nop	
	jmp	.label_1552
.label_1552:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1553
.label_1563:
	mov	rbp, rbp
	jmp	.label_1529
.label_1529:
	lea	rsi, [rsi]
	jmp	.label_1564
.label_1564:
	jmp	.label_1511
.label_1446:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	eax, OFFSET FLAT:.str.11_2
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1571
	nop	
	jmp	.label_1573
.label_1573:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1403
	mov	dword ptr [rbp - 0xd4], 0
.label_1467:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1419
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_1454
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1454:
	lea	rsi, [rsi]
	jmp	.label_1461
.label_1461:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1467
.label_1419:
	mov	rsp, rsp
	jmp	.label_1476
.label_1403:
	mov	dword ptr [rbp - 0xd4], 0
.label_1517:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1480
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1497
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1497:
	jmp	.label_1496
.label_1496:
	mov	eax, dword ptr [rbp - 0xd4]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1517
.label_1480:
	nop	
	jmp	.label_1476
.label_1476:
	lea	rsi, [rsi]
	jmp	.label_1524
.label_1524:
	mov	rbp, rbp
	jmp	.label_1508
.label_1571:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.12_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1532
	lea	rsi, [rsi]
	jmp	.label_1537
.label_1537:
	cmp	qword ptr [rbp - 0xe0], 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1539
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1422:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_1554
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x4000
	cmp	edx, 0
	nop	
	je	.label_1566
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rbp, rbp
	call	bitset_set
.label_1566:
	nop	
	jmp	.label_1411
.label_1411:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1422
.label_1554:
	jmp	.label_1434
.label_1539:
	mov	dword ptr [rbp - 0xd4], 0
.label_1452:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1438
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x4000
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1456
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1456:
	jmp	.label_1441
.label_1441:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_1452
.label_1438:
	jmp	.label_1434
.label_1434:
	jmp	.label_1487
.label_1487:
	mov	rbp, rbp
	jmp	.label_1491
.label_1532:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.7_1
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1500
	jmp	.label_1506
.label_1506:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1507
	mov	dword ptr [rbp - 0xd4], 0
.label_1409:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rsp, rsp
	jge	.label_1521
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 0x100
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1531
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1531:
	mov	rsp, rsp
	jmp	.label_1556
.label_1556:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_1409
.label_1521:
	mov	rbp, rbp
	jmp	.label_1463
.label_1507:
	mov	dword ptr [rbp - 0xd4], 0
.label_1572:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1569
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	nop	
	je	.label_1408
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_1408:
	jmp	.label_1567
.label_1567:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_1572
.label_1569:
	lea	rsi, [rsi]
	jmp	.label_1463
.label_1463:
	jmp	.label_1450
.label_1450:
	jmp	.label_1415
.label_1500:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.13_2
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_1543
	nop	
	jmp	.label_1468
.label_1468:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe0], 0
	nop	
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1471
	mov	dword ptr [rbp - 0xd4], 0
.label_1570:
	cmp	dword ptr [rbp - 0xd4], 0x100
	nop	
	jge	.label_1515
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1417
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1417:
	mov	rsp, rsp
	jmp	.label_1479
.label_1479:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1570
.label_1515:
	jmp	.label_1404
.label_1471:
	mov	dword ptr [rbp - 0xd4], 0
.label_1430:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1540
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1526
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	call	bitset_set
.label_1526:
	lea	rsi, [rsi]
	jmp	.label_1513
.label_1513:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1430
.label_1540:
	mov	rbp, rbp
	jmp	.label_1404
.label_1404:
	jmp	.label_1405
.label_1405:
	jmp	.label_1407
.label_1543:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.14_2
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_1420
	mov	rsp, rsp
	jmp	.label_1424
.label_1424:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1429
	mov	dword ptr [rbp - 0xd4], 0
.label_1519:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1457
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1459
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	mov	rsp, rsp
	call	bitset_set
.label_1459:
	jmp	.label_1494
.label_1494:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_1519
.label_1457:
	jmp	.label_1502
.label_1429:
	mov	dword ptr [rbp - 0xd4], 0
.label_1427:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1447
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1528
	mov	rdi, qword ptr [rbp - 0xf0]
	movsxd	rsi, dword ptr [rbp - 0xd4]
	call	bitset_set
.label_1528:
	mov	rbp, rbp
	jmp	.label_1535
.label_1535:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	jmp	.label_1427
.label_1447:
	lea	rdi, [rdi]
	jmp	.label_1502
.label_1502:
	jmp	.label_1555
.label_1555:
	lea	rsi, [rsi]
	jmp	.label_1442
.label_1420:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.15_2
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1559
	mov	rbp, rbp
	jmp	.label_1562
.label_1562:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1565
	nop	
	mov	dword ptr [rbp - 0xd4], 0
.label_1455:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rsi, [rsi]
	jge	.label_1574
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb0]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 4
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1423
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1423:
	jmp	.label_1488
.label_1488:
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1455
.label_1574:
	mov	rsp, rsp
	jmp	.label_1464
.label_1565:
	mov	dword ptr [rbp - 0xd4], 0
.label_1481:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_1414
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x98], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 4
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1439
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	movsxd	rsi, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	call	bitset_set
.label_1439:
	lea	rsi, [rsi]
	jmp	.label_1550
.label_1550:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1481
.label_1414:
	jmp	.label_1464
.label_1464:
	lea	rdi, [rdi]
	jmp	.label_1518
.label_1518:
	lea	rsi, [rsi]
	jmp	.label_1412
.label_1559:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_1548
	mov	rsp, rsp
	jmp	.label_1530
.label_1530:
	cmp	qword ptr [rbp - 0xe0], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1533
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
.label_1413:
	cmp	dword ptr [rbp - 0xd4], 0x100
	lea	rdi, [rdi]
	jge	.label_1551
	nop	
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1470
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1470:
	jmp	.label_1410
.label_1410:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_1413
.label_1551:
	jmp	.label_1483
.label_1533:
	mov	dword ptr [rbp - 0xd4], 0
.label_1547:
	cmp	dword ptr [rbp - 0xd4], 0x100
	mov	rbp, rbp
	jge	.label_1433
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_1489
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0xd4]
	nop	
	call	bitset_set
.label_1489:
	jmp	.label_1475
.label_1475:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_1547
.label_1433:
	nop	
	jmp	.label_1483
.label_1483:
	jmp	.label_1536
.label_1536:
	jmp	.label_1490
.label_1548:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 4
	jmp	.label_1493
.label_1490:
	mov	rsp, rsp
	jmp	.label_1412
.label_1412:
	jmp	.label_1442
.label_1442:
	jmp	.label_1407
.label_1407:
	lea	rdi, [rdi]
	jmp	.label_1415
.label_1415:
	lea	rsi, [rsi]
	jmp	.label_1491
.label_1491:
	lea	rdi, [rdi]
	jmp	.label_1508
.label_1508:
	jmp	.label_1511
.label_1511:
	lea	rsi, [rsi]
	jmp	.label_1437
.label_1437:
	jmp	.label_1478
.label_1478:
	mov	rbp, rbp
	jmp	.label_1516
.label_1516:
	jmp	.label_1520
.label_1520:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], 0
.label_1493:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417970

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 4], 0
.label_1577:
	cmp	dword ptr [rbp - 4], 4
	jge	.label_1576
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	xor	rax, 0xffffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1577
.label_1576:
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4179e0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], 0
.label_1578:
	cmp	dword ptr [rbp - 0xc], 4
	mov	rbp, rbp
	jge	.label_1579
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xc]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1578
.label_1579:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417a50

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rdi, [rdi]
	jne	.label_1580
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_1583
.label_1580:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
.label_1585:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	jge	.label_1581
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1582
	mov	rsp, rsp
	jmp	.label_1581
.label_1582:
	jmp	.label_1584
.label_1584:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1585
.label_1581:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
.label_1583:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417b00

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x2d], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1586
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 7
	mov	rsp, rsp
	jmp	.label_1590
.label_1586:
	nop	
	jmp	.label_1589
.label_1589:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x20
	lea	rdi, [rdi]
	jl	.label_1594
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_1590
.label_1594:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x1e
	jne	.label_1600
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	jmp	.label_1598
.label_1600:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], sil
.label_1598:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_1593
	mov	dword ptr [rbp - 0x2c], 7
	jmp	.label_1590
.label_1593:
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	movzx	ecx, byte ptr [rbp - 0x2d]
	mov	rbp, rbp
	cmp	eax, ecx
	jne	.label_1592
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x5d
	lea	rsi, [rsi]
	jne	.label_1592
	jmp	.label_1596
.label_1592:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1589
.label_1596:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + 0x48], rcx
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	esi, 0x1a
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	je	.label_1597
	jmp	.label_1601
.label_1601:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	eax, 0x1c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_1587
	nop	
	jmp	.label_1591
.label_1591:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax, 0x1e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1595
	mov	rbp, rbp
	jmp	.label_1599
.label_1597:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 3
	mov	rsp, rsp
	jmp	.label_1588
.label_1587:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1588
.label_1595:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 4
	jmp	.label_1588
.label_1599:
	nop	
	jmp	.label_1588
.label_1588:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0
.label_1590:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417d60

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1602
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	sil, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], sil
	lea	rsi, [rsi]
	jmp	.label_1604
.label_1602:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	byte ptr [rax + 0x8c], 0
	nop	
	je	.label_1606
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1603
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rcx + rax*4], -1
	nop	
	jne	.label_1603
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x15], sil
	jmp	.label_1604
.label_1603:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edx
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	and	edx, 0xffffff80
	cmp	edx, 0
	je	.label_1605
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	nop	
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x15], sil
	jmp	.label_1604
.label_1605:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	re_string_char_size_at
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], cl
	lea	rsi, [rsi]
	jmp	.label_1604
.label_1606:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x48], rsi
	add	rax, rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dil, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], dil
.label_1604:
	movzx	eax, byte ptr [rbp - 0x15]
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417f50

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	al, dil
	mov	byte ptr [rbp - 0xd], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1607
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0xd]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1608
.label_1607:
	movzx	edi, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1608:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x417fb0

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x30], -1
.label_1613:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rdx + 8]
	nop	
	and	ecx, 0xff
	cmp	ecx, 2
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1618
	mov	qword ptr [rbp - 0x48], -2
	jmp	.label_1616
.label_1618:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 0x18
	je	.label_1619
	nop	
	movzx	eax, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1611
.label_1619:
	lea	rsi, [rsi]
	jmp	.label_1614
.label_1611:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1609
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x30
	jl	.label_1609
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x39]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_1609
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -2
	nop	
	jne	.label_1615
.label_1609:
	mov	rax, -2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1620
.label_1615:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1610
	movzx	eax, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_1621
.label_1610:
	mov	rsp, rsp
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x30], 0xa
	movzx	eax, byte ptr [rbp - 0x39]
	mov	esi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	sub	rdx, 0x30
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1617
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1612
.label_1617:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x30], 0xa
	movzx	ecx, byte ptr [rbp - 0x39]
	mov	edx, ecx
	add	rax, rdx
	lea	rsi, [rsi]
	sub	rax, 0x30
	mov	qword ptr [rbp - 8], rax
.label_1612:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1621:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_1620:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1613
.label_1614:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1616:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418190

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rax, [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
.label_1631:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 0x28
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	create_token_tree
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_1629
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1624
.label_1629:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x30]
	and	edx, 0xfffbffff
	lea	rsi, [rsi]
	or	edx, 0x40000
	mov	dword ptr [rax + 0x30], edx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1622
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1625
.label_1622:
	mov	qword ptr [rbp - 0x18], 0
.label_1628:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_1626
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], cl
.label_1626:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1630
	mov	rbp, rbp
	jmp	.label_1623
.label_1630:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1627
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1624
.label_1627:
	mov	rbp, rbp
	jmp	.label_1628
.label_1623:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_1625:
	jmp	.label_1631
.label_1624:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418380

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 0x11
	mov	rbp, rbp
	jne	.label_1632
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_1632
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	or	ecx, 0x80000
	mov	dword ptr [rax + 0x30], ecx
.label_1632:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418400

	.globl preorder
	.type preorder, @function
preorder:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rdx
.label_1635:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1641
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1633
.label_1641:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1639
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1634
.label_1639:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
.label_1637:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	je	.label_1636
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], cl
.label_1636:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1642
	jmp	.label_1638
.label_1642:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1640
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1633
.label_1640:
	jmp	.label_1637
.label_1638:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1634:
	jmp	.label_1635
.label_1633:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418560

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1643
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xe0], 0
	mov	rsp, rsp
	je	.label_1643
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	dword ptr [rbp - 4], edx
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, edx
	nop	
	shl	eax, cl
	nop	
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	or	rsi, qword ptr [rdi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa0], rsi
	mov	rbp, rbp
	jmp	.label_1645
.label_1643:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 0x11
	mov	rsp, rsp
	jne	.label_1646
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_1646
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 0x11
	lea	rsi, [rsi]
	jne	.label_1646
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	je	.label_1644
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1644:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1647
	mov	eax, 1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	lea	rdi, [rdi]
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rdx, qword ptr [rsi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa0], rdx
.label_1647:
	jmp	.label_1646
.label_1646:
	lea	rsi, [rsi]
	jmp	.label_1645
.label_1645:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418770

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	je	.label_1650
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1650
	lea	rdi, [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_1648
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_1648:
	nop	
	jmp	.label_1650
.label_1650:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	je	.label_1651
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1651
	lea	rdi, [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	je	.label_1649
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1649:
	mov	rsp, rsp
	jmp	.label_1651
.label_1651:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4188c0

	.globl calc_first
	.type calc_first, @function
calc_first:
	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1653
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1652
.label_1653:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x28]
	nop	
	mov	rdx, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x38], -1
	lea	rdi, [rdi]
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1654
	nop	
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1656
.label_1654:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0xc
	nop	
	jne	.label_1655
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rdx]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0x3ff
	mov	rsp, rsp
	shl	ecx, 8
	mov	rsp, rsp
	and	esi, 0xfffc00ff
	mov	rbp, rbp
	or	esi, ecx
	mov	dword ptr [rax + 8], esi
.label_1655:
	jmp	.label_1652
.label_1652:
	mov	dword ptr [rbp - 4], 0
.label_1656:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418a40

	.globl calc_next
	.type calc_next, @function
calc_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	mov	ecx, eax
	sub	ecx, 0xb
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	je	.label_1657
	nop	
	jmp	.label_1660
.label_1660:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	sub	eax, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	je	.label_1661
	jmp	.label_1659
.label_1657:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1658
.label_1661:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	jmp	.label_1658
.label_1659:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1662
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x20], rax
.label_1662:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_1663
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + 0x20], rax
.label_1663:
	mov	rbp, rbp
	jmp	.label_1658
.label_1658:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418b60

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x28], rsi
	mov	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	add	eax, -2
	mov	esi, eax
	lea	rsi, [rsi]
	sub	eax, 0xe
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	ja	.label_1667
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1666]]
	jmp	rcx

.label_418bd7:
	mov	rbp, rbp
	jmp	.label_1668
	.section	.text
	.align	16
	#Procedure 0x418bdf

	.globl sub_418bdf
	.type sub_418bdf, @function
.label_418bdf:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_1670
	jmp	.label_1669
.label_1670:
	movabs	rdi, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1669:
	lea	rsi, [rsi]
	jmp	.label_1668
	.section	.text
	.align	16
	#Procedure 0x418c29

	.globl sub_418c29
	.type sub_418c29, @function
.label_418c29:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb0]
	lea	rsi, [rsi]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0xb0], cl
	nop
	mov	rax, qword ptr [rbp - 0x20]
	nop
	cmp	qword ptr [rax + 8], 0
	je	.label_1675
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_1677
.label_1675:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1677:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1676
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1671
.label_1676:
	mov	rax, qword ptr [rbp - 0x20]
	nop
	mov	rax, qword ptr [rax + 0x20]
	nop
	mov	rax, qword ptr [rax + 0x38]
	nop
	mov	qword ptr [rbp - 0x18], rax
.label_1671:
	cmp	qword ptr [rbp - 0x48], -1
	jle	.label_1678
	jmp	.label_1672
.label_1678:
	movabs	rdi, OFFSET FLAT:.str.18_2
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1672:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], -1
	mov	rbp, rbp
	jle	.label_1674
	nop
	jmp	.label_1673
.label_1674:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 0x5b0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1673:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_2
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1668
	.section	.text
	.align	16
	#Procedure 0x418d8c

	.globl sub_418d8c
	.type sub_418d8c, @function
.label_418d8c:
	nop
	.section	.text
	.align	16
	#Procedure 0x418d8d
	.globl sub_418d8d
	.type sub_418d8d, @function
.label_418d8d:

	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_1668
	.section	.text
	.align	16
	#Procedure 0x418dc2

	.globl sub_418dc2
	.type sub_418dc2, @function
.label_418dc2:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rax + 0x30]
	and	esi, 0xff
	mov	rbp, rbp
	cmp	esi, 4
	jne	.label_1679
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	nop
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
.label_1679:
	jmp	.label_1668
.label_1667:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	and	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1664
	jmp	.label_1665
.label_1664:
	movabs	rdi, OFFSET FLAT:.str.20_0
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1665:
	nop
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
.label_1668:
	mov	eax, dword ptr [rbp - 0x3c]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ed0

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x30], 0
.label_1680:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jne	.label_1686
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	jne	.label_1683
	jmp	.label_1687
.label_1683:
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x30], 0
.label_1686:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1682
	mov	rsp, rsp
	jmp	.label_1684
.label_1682:
	lea	rdi, [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1685
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	jmp	.label_1681
.label_1685:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jne	.label_1688
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 1
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_1688:
	lea	rsi, [rsi]
	jmp	.label_1684
.label_1684:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1680
.label_1687:
	mov	dword ptr [rbp - 0x38], 0
.label_1681:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419010

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
.label_1698:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	jae	.label_1691
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 0x18
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	lea	rsi, [rsi]
	imul	rdi, qword ptr [rbp - 0x28], 0x18
	lea	rsi, [rsi]
	add	rcx, rdi
	mov	rdi, rcx
	nop	
	call	memset
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1698
.label_1691:
	mov	qword ptr [rbp - 0x18], 0
.label_1692:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	jae	.label_1695
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1690:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1697
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_insert_last
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	al, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1693
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_1694
.label_1693:
	lea	rsi, [rsi]
	jmp	.label_1696
.label_1696:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1690
.label_1697:
	lea	rsi, [rsi]
	jmp	.label_1689
.label_1689:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1692
.label_1695:
	mov	dword ptr [rbp - 4], 0
.label_1694:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4191c0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0x38]
	shr	al, 4
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1699
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 8], 0
	je	.label_1699
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1703
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	shl	rsi, cl
	mov	rbp, rbp
	and	rdx, rsi
	lea	rdi, [rdi]
	cmp	rdx, 0
	jne	.label_1699
.label_1703:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1701
.label_1699:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 8
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	mov	rdx, rcx
	nop	
	mov	ecx, eax
	call	create_tree
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	ecx, 9
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	call	create_tree
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1702
	nop	
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1705
.label_1702:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_1705:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x11], r8b
	lea	rdi, [rdi]
	je	.label_1700
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	je	.label_1700
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	nop	
	mov	byte ptr [rbp - 0x11], al
	je	.label_1700
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	sete	al
	mov	byte ptr [rbp - 0x11], al
.label_1700:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1704
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jmp	.label_1701
.label_1704:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	shr	edx, 0x13
	lea	rsi, [rsi]
	and	edx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	edx, 1
	mov	edi, edx
	shl	edi, 0x13
	and	esi, 0xfff7ffff
	mov	rbp, rbp
	or	esi, edi
	mov	dword ptr [rax + 0x30], esi
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rsp, rsp
	and	edx, 1
	lea	rdi, [rdi]
	shl	edx, 0x13
	lea	rdi, [rdi]
	and	esi, 0xfff7ffff
	or	esi, edx
	mov	rsp, rsp
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x68], rax
.label_1701:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x419490

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rsi
	nop	
	mov	qword ptr [rbp - 0x70], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	setae	al
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1708
	nop	
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x18
	cmp	rax, qword ptr [rbp - 0x18]
	setb	dl
	mov	rsp, rsp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1713
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], -1
	nop	
	jmp	.label_1709
.label_1713:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1712
	mov	qword ptr [rbp - 0x30], -1
	lea	rsi, [rsi]
	jmp	.label_1709
.label_1712:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 3
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rsi, qword ptr [rbp - 0x18], 0x18
	nop	
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x30]
	imul	rsi, qword ptr [rbp - 0x18], 0x18
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	dl, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
	je	.label_1706
	mov	rsp, rsp
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], al
	mov	rsp, rsp
	je	.label_1706
	nop	
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	nop	
	je	.label_1706
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
.label_1706:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1710
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jmp	.label_1709
.label_1710:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
.label_1708:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xfffc00ff
	nop	
	mov	dword ptr [rax + 8], edx
	mov	edx, dword ptr [rbp - 0x70]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_1711
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], al
	mov	rbp, rbp
	jg	.label_1707
.label_1711:
	mov	eax, dword ptr [rbp - 0x70]
	nop	
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	nop	
	mov	byte ptr [rbp - 0x61], cl
.label_1707:
	mov	al, byte ptr [rbp - 0x61]
	xor	ecx, ecx
	mov	edx, 0x18
	mov	esi, edx
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x38]
	shl	rdi, 4
	add	rdi, qword ptr [r8]
	mov	rsp, rsp
	mov	r9d, dword ptr [rdi + 8]
	and	edx, 1
	shl	edx, 0x14
	mov	rbp, rbp
	and	r9d, 0xffefffff
	nop	
	or	r9d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 8], r9d
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r8 + 0x18]
	nop	
	mov	qword ptr [r8 + rdi*8], -1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	r8, qword ptr [r8 + 0x10], 0x18
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rsi
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0xc], ecx
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rdi, qword ptr [rdi + 0x10], 0x18
	mov	rbp, rbp
	add	rdx, rdi
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	r8, rdi
	mov	rbp, rbp
	add	r8, 1
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x10], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_1709:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419900

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], 2
	mov	rsp, rsp
	mov	rdi, rcx
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1717
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	jmp	.label_1719
.label_1717:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1715
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	jmp	.label_1716
.label_1715:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jge	.label_1714
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	jmp	.label_1718
.label_1714:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1718:
	nop	
	jmp	.label_1716
.label_1716:
	mov	dword ptr [rbp - 0xc], 0
.label_1719:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419a70

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 8
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 8], 1
	mov	rdi, rcx
	mov	rbp, rbp
	call	malloc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1721
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 0xc
	jmp	.label_1720
.label_1721:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_1720:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419b40

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	lea	r8, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x48], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x79], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x18
	lea	rdi, [rdi]
	add	rdx, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdx + 8]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	rdi, r8
	mov	rbp, rbp
	mov	rsi, rdx
	call	re_node_set_alloc
	nop	
	mov	dword ptr [rbp - 0x14], eax
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	nop	
	je	.label_1733
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_1723
.label_1733:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	edx, 8
	and	edx, 0x3ff
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1725
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1725
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	nop	
	shr	edx, 0x12
	lea	rsi, [rsi]
	and	edx, 1
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_1725
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [r8]
	mov	rsp, rsp
	mov	r9d, dword ptr [rax + 8]
	shr	r9d, 8
	and	r9d, 0x3ff
	mov	r8d, r9d
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1731
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	jmp	.label_1723
.label_1731:
	mov	rsp, rsp
	jmp	.label_1725
.label_1725:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	rbp, rbp
	and	edx, 8
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1729
	mov	qword ptr [rbp - 0x68], 0
.label_1737:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_1727
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], -1
	mov	rsp, rsp
	jne	.label_1730
	mov	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	jmp	.label_1724
.label_1730:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1736
	nop	
	lea	rdi, [rbp - 0x60]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1728
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_1723
.label_1728:
	jmp	.label_1732
.label_1736:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
.label_1732:
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rbp - 0x60]
	mov	rsp, rsp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_1734
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	jmp	.label_1723
.label_1734:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1735
	nop	
	mov	byte ptr [rbp - 0x21], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_1735:
	jmp	.label_1724
.label_1724:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1737
.label_1727:
	jmp	.label_1729
.label_1729:
	lea	rdi, [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	nop	
	je	.label_1738
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], 0xc
	lea	rdi, [rdi]
	jmp	.label_1723
.label_1738:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1722
	test	byte ptr [rbp - 0x79], 1
	jne	.label_1722
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1726
.label_1722:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
.label_1726:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
	mov	dword ptr [rbp - 0x6c], 0
.label_1723:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a020

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rsi, 3
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	call	malloc
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1739
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0xc
	lea	rdi, [rdi]
	jmp	.label_1740
.label_1739:
	mov	dword ptr [rbp - 0xc], 0
.label_1740:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a0d0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], r8d
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], r8d
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rcx
.label_1756:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	cmp	edx, 4
	jne	.label_1747
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], -1
	sete	r8b
	nop	
	and	r8b, 1
	mov	rbp, rbp
	movzx	edx, r8b
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1746
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], 0xc
	nop	
	jmp	.label_1741
.label_1746:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1749
	nop	
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1741
.label_1749:
	jmp	.label_1755
.label_1747:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1745
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	jmp	.label_1743
.label_1745:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_1752
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	jne	.label_1750
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	je	.label_1750
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	nop	
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	nop	
	movsxd	rcx, edx
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_1759
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1741
.label_1759:
	lea	rdi, [rdi]
	jmp	.label_1743
.label_1750:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	edx, 8
	and	edx, 0x3ff
	or	edx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], edx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	duplicate_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], -1
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1760
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1741
.label_1760:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x39], al
	nop	
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1753
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rsi, [rsi]
	jmp	.label_1741
.label_1753:
	lea	rdi, [rdi]
	jmp	.label_1751
.label_1752:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	call	search_duplicated_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], -1
	mov	rsp, rsp
	jne	.label_1761
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1762
	mov	dword ptr [rbp - 0x28], 0xc
	mov	rsp, rsp
	jmp	.label_1741
.label_1762:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1758
	nop	
	mov	dword ptr [rbp - 0x28], 0xc
	mov	rbp, rbp
	jmp	.label_1741
.label_1758:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x20]
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	setne	r9b
	mov	rbp, rbp
	and	r9b, 1
	movzx	eax, r9b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1748
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	jmp	.label_1741
.label_1748:
	jmp	.label_1757
.label_1761:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_1744
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rdi, [rdi]
	jmp	.label_1741
.label_1744:
	jmp	.label_1757
.label_1757:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], -1
	lea	rdi, [rdi]
	sete	r8b
	nop	
	and	r8b, 1
	movzx	edx, r8b
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_1742
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], 0xc
	lea	rdi, [rdi]
	jmp	.label_1741
.label_1742:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1763
	mov	dword ptr [rbp - 0x28], 0xc
	jmp	.label_1741
.label_1763:
	mov	rbp, rbp
	jmp	.label_1751
.label_1751:
	jmp	.label_1754
.label_1754:
	lea	rdi, [rdi]
	jmp	.label_1755
.label_1755:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1756
.label_1743:
	mov	dword ptr [rbp - 0x28], 0
.label_1741:
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a770

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x50], rsi
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1781
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1784
.label_1781:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_1764
.label_1784:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1783
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1780
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rbp, rbp
	jmp	.label_1764
.label_1780:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1783:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1768
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_1764
.label_1768:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1778:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], cl
	jl	.label_1776
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	setge	al
	nop	
	mov	byte ptr [rbp - 0x41], al
.label_1776:
	mov	al, byte ptr [rbp - 0x41]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1765
	jmp	.label_1773
.label_1765:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1774
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1772
.label_1774:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_1779
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	qword ptr [rdx + rcx*8 - 8], rax
	nop	
	jmp	.label_1775
.label_1779:
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
.label_1775:
	mov	rbp, rbp
	jmp	.label_1772
.label_1772:
	mov	rsp, rsp
	jmp	.label_1778
.label_1773:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jl	.label_1766
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx, 1
	nop	
	shl	rdx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1766:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	shl	rcx, 1
	lea	rsi, [rsi]
	add	rax, rcx
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1782
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_1764
.label_1782:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1767:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_1771
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	add	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1777
	jmp	.label_1769
.label_1777:
	lea	rdi, [rdi]
	jmp	.label_1770
.label_1771:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jge	.label_1785
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rdx, 3
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1769
.label_1785:
	lea	rsi, [rsi]
	jmp	.label_1770
.label_1770:
	mov	rsp, rsp
	jmp	.label_1767
.label_1769:
	nop	
	mov	dword ptr [rbp - 0x24], 0
.label_1764:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41acd0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	qword ptr [rsi], 0
	jne	.label_1791
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_node_set_init_1
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rbp, rbp
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	jmp	.label_1786
.label_1791:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jne	.label_1789
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1786
.label_1789:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1792
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1796
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1786
.label_1796:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
.label_1792:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	jge	.label_1787
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1794:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	jle	.label_1793
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1794
.label_1793:
	jmp	.label_1788
.label_1787:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_1790:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_1795
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1790
.label_1795:
	jmp	.label_1788
.label_1788:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	nop	
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 9], 1
.label_1786:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41af80

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	shl	rsi, 4
	nop	
	add	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_dfa_add_node
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1797
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	esi, dword ptr [rcx + 8]
	and	eax, 0x3ff
	shl	eax, 8
	nop	
	and	esi, 0xfffc00ff
	nop	
	or	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rcx + 8], esi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	shr	eax, 8
	and	eax, 0x3ff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	shr	esi, 8
	mov	rsp, rsp
	and	esi, 0x3ff
	lea	rdi, [rdi]
	or	esi, eax
	mov	eax, dword ptr [rcx + 8]
	and	esi, 0x3ff
	lea	rsi, [rsi]
	shl	esi, 8
	lea	rsi, [rsi]
	and	eax, 0xfffc00ff
	lea	rdi, [rdi]
	or	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 8], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xfffbffff
	lea	rdi, [rdi]
	or	eax, 0x40000
	mov	rbp, rbp
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rdx*8], rcx
.label_1797:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b100

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_1800:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	shr	eax, 0x12
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_1799
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 9], al
.label_1799:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	nop	
	jne	.label_1801
	jmp	.label_1804
.label_1801:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1798
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	shr	esi, 8
	lea	rdi, [rdi]
	and	esi, 0x3ff
	lea	rsi, [rsi]
	cmp	eax, esi
	jne	.label_1798
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1803
.label_1798:
	jmp	.label_1802
.label_1802:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1800
.label_1804:
	mov	qword ptr [rbp - 8], -1
.label_1803:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b220

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1805
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	sete	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1806
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_1807
.label_1806:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
.label_1805:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
.label_1807:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b330

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1808
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	nop	
	je	.label_1809
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1810
.label_1809:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_1811
.label_1808:
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 0x18
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memset
.label_1811:
	mov	dword ptr [rbp - 4], 0
.label_1810:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b460

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	mov	rbp, rbp
	jg	.label_1812
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1816
.label_1812:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_1818:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jae	.label_1817
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	shr	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_1814
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1819
.label_1814:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_1819:
	lea	rdi, [rdi]
	jmp	.label_1818
.label_1817:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jne	.label_1813
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1815
.label_1813:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_1815
.label_1815:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_1816:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b590

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx + 8], 0
	mov	rsp, rsp
	jne	.label_1824
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1821
.label_1824:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	and	rdi, qword ptr [rcx + 0x88]
	nop	
	imul	rcx, rdi, 0x18
	nop	
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x18], 0
.label_1822:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_1823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jne	.label_1820
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xf
	movzx	edx, cl
	cmp	edx, dword ptr [rbp - 0x1c]
	jne	.label_1820
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	re_node_set_compare
	test	al, 1
	mov	rsp, rsp
	jne	.label_1825
	jmp	.label_1820
.label_1825:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1821
.label_1820:
	mov	rsp, rsp
	jmp	.label_1827
.label_1827:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1822
.label_1823:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	call	create_cd_newstate
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1826
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax], 0xc
.label_1826:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1821:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b750

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x1c], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 8]
	nop	
	mov	esi, dword ptr [rbp - 0x1c]
	mov	eax, esi
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_1829:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1828
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1829
.label_1828:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b7e0

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1830
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_1830
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	je	.label_1834
.label_1830:
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1831
.label_1834:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1833:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_1832
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_1835
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1831
.label_1835:
	lea	rsi, [rsi]
	jmp	.label_1833
.label_1832:
	mov	byte ptr [rbp - 1], 1
.label_1831:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b8c0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	nop	
	mov	eax, 0x70
	mov	r8d, eax
	mov	eax, 1
	mov	r9d, eax
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	rdi, r8
	mov	rsi, r9
	lea	rdi, [rdi]
	call	calloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	sete	r10b
	and	r10b, 1
	nop	
	movzx	edx, r10b
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1839
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1840
.label_1839:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1850
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jmp	.label_1840
.label_1850:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	dl, al
	mov	sil, byte ptr [rcx + 0x68]
	nop	
	and	dl, 0xf
	mov	rbp, rbp
	and	sil, 0xf0
	or	sil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x68], sil
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, 8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x50], rcx
	mov	qword ptr [rbp - 0x50], 0
.label_1855:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1853
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x24], esi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	esi, 8
	mov	rsp, rsp
	and	esi, 0x3ff
	mov	dword ptr [rbp - 0x28], esi
	cmp	dword ptr [rbp - 0x24], 1
	mov	rbp, rbp
	jne	.label_1842
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_1842
	jmp	.label_1849
.label_1842:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	mov	rsp, rsp
	and	ecx, 1
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	dl, byte ptr [rax + 0x68]
	nop	
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	or	esi, ecx
	mov	rbp, rbp
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], dil
	nop	
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_1854
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	nop	
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_1838
.label_1854:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 4
	jne	.label_1851
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xbf
	mov	rsp, rsp
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_1851:
	lea	rdi, [rdi]
	jmp	.label_1838
.label_1838:
	cmp	dword ptr [rbp - 0x28], 0
	nop	
	je	.label_1841
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	cmp	rax, rcx
	jne	.label_1843
	mov	eax, 0x18
	nop	
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	nop	
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1846
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free_state
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jmp	.label_1840
.label_1846:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1845
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jmp	.label_1840
.label_1845:
	mov	qword ptr [rbp - 8], 0
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	and	cl, 0x7f
	mov	rbp, rbp
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_1843:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1852
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_1844
.label_1852:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1848
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1844
.label_1848:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1847
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1844
.label_1847:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 0x40
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1837
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1837
.label_1844:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 8
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	call	re_node_set_remove_at
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1837:
	jmp	.label_1841
.label_1841:
	jmp	.label_1849
.label_1849:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1855
.label_1853:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1836
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	call	free_state
	mov	qword ptr [rbp - 0x58], 0
.label_1836:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
.label_1840:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bd60

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jl	.label_1856
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_1859
.label_1856:
	mov	rsp, rsp
	jmp	.label_1857
.label_1859:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
.label_1858:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_1857
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1858
.label_1857:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41be10

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rdx, 0x20
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rdx
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1867
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rbp, rbp
	jmp	.label_1862
.label_1867:
	mov	qword ptr [rbp - 0x40], 0
.label_1868:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_1860
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	nop	
	jne	.label_1864
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_1863
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0xc
	jmp	.label_1862
.label_1863:
	lea	rsi, [rsi]
	jmp	.label_1864
.label_1864:
	jmp	.label_1861
.label_1861:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_1868
.label_1860:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rdx + 0x88]
	nop	
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	setle	sil
	and	sil, 1
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1865
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1866
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rsp, rsp
	jmp	.label_1862
.label_1866:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
.label_1865:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	mov	dword ptr [rbp - 0x24], 0
.label_1862:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c090

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	mov	dword ptr [rbp - 0x44], 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdx
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_1875
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 3
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1883
	mov	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_1881
.label_1883:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1874
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1881
.label_1874:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	jmp	.label_1879
.label_1875:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1885
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	je	.label_1869
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	lea	rdi, [rdi]
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1876
	nop	
	mov	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1881
.label_1876:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1872
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	nop	
	mov	dword ptr [rbp - 0x10], 0
	jmp	.label_1881
.label_1872:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1869:
	mov	rsp, rsp
	jmp	.label_1880
.label_1885:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 2
	mov	rsp, rsp
	jne	.label_1882
	mov	rbp, rbp
	jmp	.label_1886
.label_1882:
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	mov	rbp, rbp
	call	__assert_fail
.label_1886:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jb	.label_1884
	jmp	.label_1870
.label_1884:
	movabs	rdi, OFFSET FLAT:.str.24_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1870:
	mov	dword ptr [rbp - 0x44], 2
.label_1880:
	nop	
	jmp	.label_1879
.label_1879:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1878:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1873
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1878
.label_1873:
	lea	rsi, [rsi]
	jmp	.label_1877
.label_1877:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	mov	rbp, rbp
	jae	.label_1871
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], -1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1877
.label_1871:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10], eax
.label_1881:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c480

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x60
	nop	
	mov	al, r9b
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], r8
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 8], r10
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1887
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1887:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_1891
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1896
.label_1891:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1896:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8b, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	r8d, r8b
	call	re_string_construct_common
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	mov	rsp, rsp
	movzx	eax, r10b
	nop	
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_1890
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1895
.label_1890:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xb8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	mov	dl, sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x8e], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movzx	esi, byte ptr [rax + 0x8b]
	cmp	esi, 0
	nop	
	je	.label_1889
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1888
.label_1889:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_1888:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 0x8b]
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jne	.label_1894
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1893
.label_1894:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1892
.label_1893:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
.label_1892:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 0x54], 0
.label_1895:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c6b0

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x28], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0xa0], esi
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0xa8], -1
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1900
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0x28
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jae	.label_1901
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1899
.label_1901:
	nop	
	mov	rax, -1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1899:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1902
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0xc
	mov	rsp, rsp
	jmp	.label_1898
.label_1902:
	imul	rdi, qword ptr [rbp - 0x20], 0x28
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rsp, rsp
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xd8], 0
	nop	
	mov	byte ptr [rbp - 0x11], cl
	je	.label_1903
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
.label_1903:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1897
	mov	dword ptr [rbp - 0x24], 0xc
	jmp	.label_1898
.label_1897:
	jmp	.label_1900
.label_1900:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd0], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax + 0xe0], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xf0], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
.label_1898:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c880

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0xc8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	nop	
	mov	dword ptr [rbp - 0x6c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rsi + 0x28]
	cmp	rsi, qword ptr [rbp - 0xe8]
	setle	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_1946
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1970
.label_1946:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_1981
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_1981:
	mov	eax, 6
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x50]
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	mov	qword ptr [rsi + 0x58], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x60]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x30], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x28], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rdx + 0x38], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8c], 0
	mov	edi, dword ptr [rbp - 0x6c]
	and	edi, 1
	mov	rsp, rsp
	cmp	edi, 0
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	dword ptr [rdx + 0x70], eax
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 0x8b], 0
	jne	.label_1919
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 8], rax
.label_1919:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1970:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	setne	al
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1912
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x38]
	setl	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1904
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1908
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_1940:
	nop	
	mov	eax, 2
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jle	.label_1958
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_1907
.label_1958:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_1911
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1927
.label_1911:
	jmp	.label_1934
.label_1927:
	jmp	.label_1907
.label_1907:
	mov	rsp, rsp
	jmp	.label_1937
.label_1937:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	jl	.label_1940
.label_1934:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_1948
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
.label_1948:
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jle	.label_1905
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1905
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1905
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rsp, rsp
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], 0
.label_1924:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1943
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1924
.label_1943:
	lea	rsi, [rsi]
	jmp	.label_1949
.label_1905:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xe8]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	byte ptr [rax + 0x8c], 0
.label_1931:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd8], 0
	mov	byte ptr [rbp - 0x49], cl
	jle	.label_1979
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	sete	dl
	mov	byte ptr [rbp - 0x49], dl
.label_1979:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x49]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1920
	mov	rsp, rsp
	jmp	.label_1955
.label_1920:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	jmp	.label_1931
.label_1955:
	jmp	.label_1938
.label_1938:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1939
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_1915
	jmp	.label_1939
.label_1915:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1938
.label_1939:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jne	.label_1910
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1978
.label_1910:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	mov	rbp, rbp
	je	.label_1953
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], 0
.label_1947:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	jge	.label_1936
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_1947
.label_1936:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_1953:
	lea	rsi, [rsi]
	jmp	.label_1978
.label_1978:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x38], rax
.label_1949:
	jmp	.label_1914
.label_1908:
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1918
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rdx, 2
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memmove
.label_1918:
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8b]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1954
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memmove
.label_1954:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rdx
.label_1914:
	lea	rdi, [rdi]
	jmp	.label_1925
.label_1904:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1929
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	sub	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x8c], 0
.label_1929:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_1973
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], 0xffffffff
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	byte ptr [rax + 0x89], 0
	mov	rbp, rbp
	je	.label_1906
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rdx + 0x90]
	lea	rdi, [rdi]
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx]
	jae	.label_1916
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
.label_1916:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_1926:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jb	.label_1956
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movzx	ecx, byte ptr [rax]
	nop	
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_1964
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	qword ptr [rax + 0x78], 0
	nop	
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1975
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 6
	lea	rsi, [rsi]
	jge	.label_1922
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1928
.label_1922:
	nop	
	mov	eax, 6
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1928
.label_1928:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x14], ecx
.label_1963:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0
	mov	rbp, rbp
	jl	.label_1941
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	byte ptr [rbp + rax - 0x92], sil
	nop	
	jmp	.label_1963
.label_1941:
	lea	rax, [rbp - 0x92]
	mov	qword ptr [rbp - 0xb0], rax
.label_1975:
	lea	rdi, [rbp - 0x8c]
	mov	rbp, rbp
	lea	rax, [rbp - 0xa8]
	mov	rsp, rsp
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	call	memset
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	ja	.label_1921
	cmp	qword ptr [rbp - 0x88], -2
	jae	.label_1921
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rcx, 0x20
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	call	memset
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	sub	rdx, rdi
	mov	rsp, rsp
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x30], rcx
	nop	
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x50], eax
.label_1921:
	mov	rsp, rsp
	jmp	.label_1956
.label_1964:
	jmp	.label_1972
.label_1972:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_1926
.label_1956:
	mov	rbp, rbp
	jmp	.label_1906
.label_1906:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], -1
	jne	.label_1977
	mov	rbp, rbp
	lea	rdx, [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xe8]
	call	re_string_skip_chars
	sub	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rdx + 0x30], rax
.label_1977:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x50], -1
	nop	
	jne	.label_1923
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	nop	
	mov	edx, dword ptr [rbp - 0x6c]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	mov	dword ptr [rsi + 0x70], eax
	lea	rdi, [rdi]
	jmp	.label_1935
.label_1923:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x8e]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	nop	
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1945
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	jne	.label_1959
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0x5f
	jne	.label_1945
.label_1959:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1971
.label_1945:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x50], 0xa
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], cl
	mov	rbp, rbp
	jne	.label_1974
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], dl
.label_1974:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd9]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, 2
	mov	rsp, rsp
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], ecx
.label_1971:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x70], eax
.label_1935:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_1913
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
.label_1951:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jge	.label_1942
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1951
.label_1942:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_1969
	nop	
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	memset
.label_1969:
	jmp	.label_1913
.label_1913:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1960
.label_1973:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x78], 0
	je	.label_1917
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x5c], edx
.label_1917:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	call	bitset_contain
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1961
	mov	rbp, rbp
	jmp	.label_1966
.label_1961:
	mov	eax, 1
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	jmp	.label_1968
.label_1966:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x5c], 0xa
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	lea	rdi, [rdi]
	jne	.label_1976
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15], dl
.label_1976:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	nop	
	mov	dword ptr [rbp - 0xcc], ecx
.label_1968:
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	dword ptr [rcx + 0x70], eax
.label_1960:
	jmp	.label_1925
.label_1925:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1932
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
.label_1932:
	jmp	.label_1912
.label_1912:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x58], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rcx + 0x68]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x68], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	dword ptr [rax + 0x90], 1
	mov	rbp, rbp
	jle	.label_1950
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	je	.label_1967
	mov	rdi, qword ptr [rbp - 0xc8]
	nop	
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb4], eax
	cmp	dword ptr [rbp - 0xb4], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	lea	rsi, [rsi]
	je	.label_1957
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_1930
.label_1957:
	nop	
	jmp	.label_1933
.label_1967:
	mov	rdi, qword ptr [rbp - 0xc8]
	call	build_wcs_buffer
.label_1933:
	mov	rsp, rsp
	jmp	.label_1909
.label_1950:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1944
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	byte ptr [rax + 0x88], 0
	mov	rbp, rbp
	je	.label_1952
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	call	build_upper_buffer
	mov	rsp, rsp
	jmp	.label_1962
.label_1952:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	mov	rbp, rbp
	je	.label_1965
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	re_string_translate_buffer
.label_1965:
	mov	rbp, rbp
	jmp	.label_1962
.label_1962:
	jmp	.label_1980
.label_1944:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	qword ptr [rcx + 0x30], rax
.label_1980:
	mov	rbp, rbp
	jmp	.label_1909
.label_1909:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 0x2c], 0
.label_1930:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0xf0
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41da50

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, sil
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x64]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x88], rdx
	mov	qword ptr [rbp - 0xa0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], -1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdx
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x64], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x78], rdi
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + 0x68]
	shr	al, 7
	movzx	esi, al
	cmp	esi, 0
	je	.label_1999
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2003
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1988
.label_2003:
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2024
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1988
.label_2024:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	je	.label_2015
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 2
	cmp	eax, 0
	je	.label_2015
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_1988
.label_2015:
	mov	eax, dword ptr [rbp - 0x94]
	and	eax, 2
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2023
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1988
.label_2023:
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1991
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x50]
	nop	
	mov	ecx, dword ptr [rbp - 0x94]
	call	re_acquire_state_context
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1988
.label_1991:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1988
.label_1999:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_1988:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2011
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x64], 0xc
	mov	rbp, rbp
	jne	.label_2016
	jmp	.label_2018
.label_2016:
	movabs	rdi, OFFSET FLAT:.str.25_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2018:
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_1982
.label_2011:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1985
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1989
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	byte ptr [rbp - 0x31], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	add	rcx, 8
	mov	rsi, rcx
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x64], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2006
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_1982
.label_2006:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1993
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	je	.label_2020
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1982
.label_2020:
	nop	
	jmp	.label_1993
.label_1993:
	jmp	.label_1989
.label_1989:
	mov	rsp, rsp
	jmp	.label_1985
.label_1985:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	edx, edx
	mov	rsp, rsp
	mov	eax, edx
	cmp	rax, 0
	je	.label_1995
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2002
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x90]
	call	check_halt_state_context
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2013
.label_2002:
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jne	.label_2014
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1982
.label_2014:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0xa0], 1
	mov	rbp, rbp
	jmp	.label_2013
.label_2013:
	jmp	.label_1995
.label_1995:
	lea	rdi, [rdi]
	jmp	.label_1998
.label_1998:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	setle	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_2021
	lea	rdi, [rdi]
	jmp	.label_1996
.label_2021:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	setge	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1994
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2007
.label_1994:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	setge	dl
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2009
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2009
.label_2007:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	nop	
	setne	dl
	nop	
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1983
	cmp	dword ptr [rbp - 0x64], 0xc
	lea	rsi, [rsi]
	jne	.label_1992
	mov	rsp, rsp
	jmp	.label_2022
.label_1992:
	nop	
	movabs	rdi, OFFSET FLAT:.str.25_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	lea	rdi, [rdi]
	call	__assert_fail
.label_2022:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], -2
	mov	rbp, rbp
	jmp	.label_1982
.label_1983:
	nop	
	jmp	.label_2009
.label_2009:
	nop	
	lea	rdi, [rbp - 0x64]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x48]
	call	transit_state
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2012
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	merge_state_with_log
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_2012:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	jne	.label_2004
	cmp	dword ptr [rbp - 0x64], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2019
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_1982
.label_2019:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1987
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_1990
	nop	
	test	byte ptr [rbp - 9], 1
	je	.label_1987
.label_1990:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x64]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	find_recover_state
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2000
.label_1987:
	lea	rsi, [rsi]
	jmp	.label_1996
.label_2000:
	mov	rsp, rsp
	jmp	.label_2004
.label_2004:
	test	byte ptr [rbp - 0x31], 1
	je	.label_2005
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_2008
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2010
.label_2008:
	mov	byte ptr [rbp - 0x31], 0
.label_2010:
	lea	rsi, [rsi]
	jmp	.label_2005
.label_2005:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	shr	cl, 4
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	cmp	edx, 0
	je	.label_1997
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2017
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_1984
.label_2017:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0xa0], 1
	mov	qword ptr [rbp - 0x18], 0
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	jne	.label_1986
	jmp	.label_1996
.label_1986:
	jmp	.label_1984
.label_1984:
	nop	
	jmp	.label_1997
.label_1997:
	jmp	.label_1998
.label_1996:
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_2001
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_2001:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_1982:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e2a0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rdx + 0xa0]
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 8], 0
.label_2030:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2025
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1c]
	call	check_halt_node_context
	test	al, 1
	jne	.label_2029
	jmp	.label_2026
.label_2029:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_2028
.label_2026:
	mov	rsp, rsp
	jmp	.label_2027
.label_2027:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2030
.label_2025:
	mov	qword ptr [rbp - 0x30], 0
.label_2028:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e3a0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x70], rdi
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdi + 0x98]
	mov	qword ptr [rbp - 0x60], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdi + 0xb0]
	mov	qword ptr [rbp - 8], rdi
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	setbe	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_2037
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xc
	jmp	.label_2045
.label_2037:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2043
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 0xc
	mov	rbp, rbp
	jmp	.label_2033
.label_2043:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_2031
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2040
	mov	dword ptr [rbp - 0x7c], 0xc
	jmp	.label_2033
.label_2040:
	lea	rdi, [rdi]
	jmp	.label_2032
.label_2032:
	lea	rdi, [rbp - 0x58]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, 1
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	rdi, rax
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x78]
	call	sift_ctx_init
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	sift_states_backward
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x7c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_2046
	mov	rsp, rsp
	jmp	.label_2033
.label_2046:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_2034
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2036
.label_2034:
	jmp	.label_2038
.label_2036:
	jmp	.label_2039
.label_2039:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_2041
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_2033
.label_2041:
	lea	rdi, [rdi]
	jmp	.label_2047
.label_2047:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x15], al
	je	.label_2048
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	cmp	esi, 0
	setne	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x15], dl
.label_2048:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_2039
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_2032
.label_2038:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x7c], 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2042
	jmp	.label_2033
.label_2042:
	lea	rsi, [rsi]
	jmp	.label_2035
.label_2031:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x68]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x7c], 0
	setne	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	nop	
	movzx	eax, r9b
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2044
	jmp	.label_2033
.label_2044:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2049
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_2033
.label_2049:
	jmp	.label_2035
.label_2035:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rdi + 0xb0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 0
.label_2033:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x14], ecx
.label_2045:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e830

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
.label_2053:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2051
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xf8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_2050:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	jge	.label_2052
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_2050
.label_2052:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_2054
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_2054:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_2053
.label_2051:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0xe8], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0xc8], 0
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e9c0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x8d], al
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx,  qword ptr [word ptr [label_2070]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_2071]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_2072]]
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rbp - 0xd], 0
	test	byte ptr [rbp - 0x8d], 1
	lea	rdi, [rdi]
	je	.label_2073
	lea	rax, [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	imul	rdi, qword ptr [rax + 8], 0x30
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_2077
	nop	
	mov	dword ptr [rbp - 0xc], 0xc
	mov	rbp, rbp
	jmp	.label_2058
.label_2077:
	jmp	.label_2057
.label_2073:
	mov	qword ptr [rbp - 0x80], 0
.label_2057:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	shl	rcx, 4
	cmp	rcx, 0xfc0
	lea	rdi, [rdi]
	jae	.label_2083
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_2080
.label_2083:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	shl	rax, 4
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2064
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	call	free_fail_stack_return
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_2058
.label_2064:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], 1
.label_2080:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_2075:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_2062
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x20]
	call	update_regs
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jne	.label_2079
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_2079
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_2078
	mov	qword ptr [rbp - 0x70], 0
.label_2074:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_2063
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	qword ptr [rax], -1
	lea	rdi, [rdi]
	jle	.label_2068
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x88]
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jne	.label_2068
	lea	rsi, [rsi]
	jmp	.label_2063
.label_2068:
	jmp	.label_2081
.label_2081:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2074
.label_2063:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2061
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	byte ptr [rbp - 0xd], 1
	je	.label_2069
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	free
.label_2069:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2058
.label_2061:
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	pop_fail_stack
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2060
.label_2078:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xd], 1
	je	.label_2066
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2066:
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jmp	.label_2058
.label_2060:
	jmp	.label_2079
.label_2079:
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x50]
	lea	r9, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	r8, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	proceed_next_node
	add	rsp, 0x10
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	setl	r10b
	and	r10b, 1
	movzx	r11d, r10b
	lea	rsi, [rsi]
	movsxd	rax, r11d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2067
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], -2
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_2076
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0xd], 1
	je	.label_2056
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2056:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	free_fail_stack_return
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_2058
.label_2076:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2065
	lea	rsi, [rbp - 0x50]
	lea	r8, [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	call	pop_fail_stack
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2082
.label_2065:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0xd], 1
	je	.label_2059
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	free
.label_2059:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 1
	lea	rdi, [rdi]
	jmp	.label_2058
.label_2082:
	lea	rsi, [rsi]
	jmp	.label_2067
.label_2067:
	lea	rsi, [rsi]
	jmp	.label_2075
.label_2062:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	test	byte ptr [rbp - 0xd], 1
	je	.label_2055
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	free
.label_2055:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	call	free_fail_stack_return
	mov	dword ptr [rbp - 0xc], eax
.label_2058:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ef20

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	match_ctx_clean
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0xf8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	call	free
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ef80

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 4], edx
	cmp	qword ptr [rbp - 0x18], 0
	setl	al
	nop	
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rsi, [rsi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2084
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x70]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	jmp	.label_2085
.label_2084:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	esi, dl
	lea	rsi, [rsi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2091
	mov	rbp, rbp
	mov	eax, 0xa
	mov	ecx, 8
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 4]
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_2085
.label_2091:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	nop	
	jle	.label_2095
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_2087:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2086
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2093
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_2085
.label_2093:
	jmp	.label_2087
.label_2086:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x30], edx
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edx, byte ptr [rax + 0x8e]
	cmp	edx, 0
	mov	rbp, rbp
	setne	sil
	and	sil, 1
	movzx	edx, sil
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	nop	
	je	.label_2089
	nop	
	mov	edi, dword ptr [rbp - 0x30]
	call	iswalnum
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_2092
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x30], 0x5f
	jne	.label_2089
.label_2092:
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_2085
.label_2089:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2096
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8d]
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x31], dl
.label_2096:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, 2
	mov	rbp, rbp
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rbp, rbp
	jmp	.label_2085
.label_2095:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x2c], edx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x2c]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2090
	mov	rsp, rsp
	jmp	.label_2088
.label_2090:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 1
	mov	rbp, rbp
	jmp	.label_2085
.label_2088:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x2c], 0xa
	mov	byte ptr [rbp - 0x25], cl
	jne	.label_2094
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x25], dl
.label_2094:
	mov	al, byte ptr [rbp - 0x25]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x24], ecx
.label_2085:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f1f0

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	add	rdx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x48], rdx
.label_2098:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2100
	lea	rdi, [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	r8b, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -2
	mov	byte ptr [rbp - 0x39], r8b
	je	.label_2102
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], -1
	nop	
	mov	byte ptr [rbp - 0x39], al
	lea	rsi, [rsi]
	je	.label_2102
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	mov	byte ptr [rbp - 0x39], al
.label_2102:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2101
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2099
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2103
.label_2099:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 0
	nop	
	jmp	.label_2104
.label_2103:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], edx
.label_2104:
	nop	
	mov	qword ptr [rbp - 0x20], 1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2097
.label_2101:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x4c], eax
.label_2097:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2098
.label_2100:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f390

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x18]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, cl
	lea	rdi, [rdi]
	and	rdx, 1
	lea	rsi, [rsi]
	cmp	rdx, 0
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	r8d, cl
	mov	eax, r8d
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f410

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_2110:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2105
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	cmp	edx, 8
	jne	.label_2107
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	mov	rsp, rsp
	jge	.label_2107
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2107
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	call	match_ctx_add_subtop
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	setne	cl
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2109
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_2108
.label_2109:
	mov	rsp, rsp
	jmp	.label_2107
.label_2107:
	mov	rbp, rbp
	jmp	.label_2106
.label_2106:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2110
.label_2105:
	mov	dword ptr [rbp - 0xc], 0
.label_2108:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f5b0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], 0
.label_2137:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2116
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	je	.label_2126
	lea	rsi, [rsi]
	jmp	.label_2117
.label_2126:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2122
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rax + 0xa0]
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x74], eax
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	rsp, rsp
	and	eax, 4
	nop	
	cmp	eax, 0
	je	.label_2133
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 1
	cmp	eax, 0
	je	.label_2124
.label_2133:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	mov	rbp, rbp
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_2139
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2124
.label_2139:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2129
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	and	eax, 2
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2124
.label_2129:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2120
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2120
.label_2124:
	jmp	.label_2117
.label_2120:
	mov	rbp, rbp
	jmp	.label_2122
.label_2122:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	get_subexp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	mov	rsp, rsp
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2121
	nop	
	jmp	.label_2115
.label_2121:
	jmp	.label_2119
.label_2119:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xc8]
	mov	rbp, rbp
	jge	.label_2128
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x10], 0x28
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_2132
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb8]
	nop	
	je	.label_2141
.label_2132:
	mov	rsp, rsp
	jmp	.label_2114
.label_2141:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_2123
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx], 0x18
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2131
.label_2123:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
.label_2131:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rcx + 0xa0]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	rcx, qword ptr [rsi + rcx*8]
	nop	
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rcx*8], 0
	mov	rbp, rbp
	jne	.label_2113
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2134
.label_2113:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_2134:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_2140
	mov	rsp, rsp
	lea	rdi, [rbp - 0xac]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x74]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x49], r8b
	jne	.label_2130
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xac], 0
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2130:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x49]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2111
	lea	rsi, [rsi]
	jmp	.label_2115
.label_2111:
	jmp	.label_2127
.label_2140:
	lea	rdi, [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xac], 0
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2125
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_2115
.label_2125:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xac]
	lea	rdx, [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x74]
	nop	
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x81], r8b
	jne	.label_2136
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xac], 0
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], al
.label_2136:
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2138
	nop	
	jmp	.label_2115
.label_2138:
	jmp	.label_2127
.label_2127:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2112
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jle	.label_2112
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0xb8]
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2118
	jmp	.label_2115
.label_2118:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	transit_state_bkref
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	nop	
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2135
	jmp	.label_2115
.label_2135:
	jmp	.label_2112
.label_2112:
	mov	rbp, rbp
	jmp	.label_2114
.label_2114:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_2119
.label_2128:
	jmp	.label_2117
.label_2117:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	jmp	.label_2137
.label_2116:
	mov	dword ptr [rbp - 0xac], 0
.label_2115:
	mov	eax, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	add	rsp, 0xc0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fcf0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x60
	movabs	rax, 0xfffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	setbe	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2146
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 0xc
	jmp	.label_2153
.label_2146:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x40]
	shl	rdx, 1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jge	.label_2147
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2145
.label_2147:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2145:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, rax
	jge	.label_2154
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2144
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2158
.label_2144:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2158:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2149
.label_2154:
	movsxd	rax, dword ptr [rbp - 4]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_2149:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rdi, [rdi]
	je	.label_2152
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2153
.label_2152:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax + 0xb8], 0
	mov	rsp, rsp
	je	.label_2155
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x40]
	nop	
	add	rcx, 1
	mov	rbp, rbp
	shl	rcx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2160
	mov	dword ptr [rbp - 0x4c], 0xc
	mov	rbp, rbp
	jmp	.label_2153
.label_2160:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0xb8], rax
.label_2155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2143
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	lea	rdi, [rdi]
	jle	.label_2151
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdi, eax
	lea	rsi, [rsi]
	cmp	rdi, 0
	nop	
	je	.label_2159
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2153
.label_2159:
	jmp	.label_2157
.label_2151:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	build_upper_buffer
.label_2157:
	jmp	.label_2148
.label_2143:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2150
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_2142
.label_2150:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2156
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	re_string_translate_buffer
.label_2156:
	lea	rdi, [rdi]
	jmp	.label_2142
.label_2142:
	lea	rdi, [rdi]
	jmp	.label_2148
.label_2148:
	mov	dword ptr [rbp - 0x4c], 0
.label_2153:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
.label_3034:
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420010

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	al, byte ptr [rdx + 0x68]
	mov	rsp, rsp
	shr	al, 5
	and	al, 1
	nop	
	movzx	ecx, al
	mov	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2162
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	transit_state_mb
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rsi], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	cmp	dword ptr [rsi], 0
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2164
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jmp	.label_2161
.label_2164:
	jmp	.label_2162
.label_2162:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	sil, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], sil
.label_2165:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2163
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2161
.label_2163:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2168
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2167
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 9]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2161
.label_2167:
	nop	
	movzx	eax, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	jmp	.label_2161
.label_2168:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	build_trtable
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2166
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_2161
.label_2166:
	nop	
	jmp	.label_2165
.label_2161:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420260

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x68], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0xc0]
	mov	rsp, rsp
	jle	.label_2179
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0xc0], rax
	mov	rbp, rbp
	jmp	.label_2173
.label_2179:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2180
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_2170
.label_2180:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2181
	mov	rsp, rsp
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2178
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_2169
.label_2178:
	lea	rsi, [rsi]
	jmp	.label_2177
.label_2181:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_2177:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, rax
	call	re_string_context_at
	nop	
	lea	rdx, [rbp - 0x58]
	mov	dword ptr [rbp - 0xc], eax
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_2172
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_2172:
	jmp	.label_2170
.label_2170:
	jmp	.label_2173
.label_2173:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x98], 0
	nop	
	je	.label_2174
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2174
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 8
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	check_subexp_matching_top
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rdx], eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	dword ptr [rdx], 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2176
	mov	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jmp	.label_2169
.label_2176:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	je	.label_2175
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x68]
	cmp	dword ptr [rsi], 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rdi, [rdi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2171
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_2169
.label_2171:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_2175:
	jmp	.label_2174
.label_2174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_2169:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4205d0

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
.label_2182:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_2183:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jle	.label_2186
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2184
.label_2186:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2183
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	merge_state_with_log
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rdx], 0
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_2185
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
.label_2185:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_2182
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2184:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4206e0

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xe8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0xf0]
	nop	
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2187
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xf0]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xf8]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	sete	dl
	nop	
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2188
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2189
.label_2188:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xf8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0xf0], rax
.label_2187:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	mov	eax, 0x30
	mov	esi, eax
	nop	
	call	calloc
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xe8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0xf8]
	nop	
	mov	qword ptr [rdi + rsi*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0xe8]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xf8]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + rax*8], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2190
	nop	
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2189
.label_2190:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xe8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xf8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0xe8]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0xe8], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x2c], 0
.label_2189:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4208e0

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x80], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	lea	rsi, [rsi]
	je	.label_2195
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x28], 0x28
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
.label_2205:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	jne	.label_2223
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	jmp	.label_2193
.label_2223:
	jmp	.label_2203
.label_2203:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2205
	jmp	.label_2195
.label_2195:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x98], 0
.label_2208:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2227
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x70]
	je	.label_2199
	jmp	.label_2206
.label_2199:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x48], 0
.label_2204:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	jge	.label_2197
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jle	.label_2211
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	setg	dl
	lea	rdi, [rdi]
	and	dl, 1
	nop	
	movzx	esi, dl
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	je	.label_2225
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	jle	.label_2213
	mov	rsp, rsp
	jmp	.label_2197
.label_2213:
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	rsi, rax
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2220
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	jmp	.label_2193
.label_2220:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
.label_2225:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2218
	jmp	.label_2197
.label_2218:
	lea	rsi, [rsi]
	jmp	.label_2211
.label_2211:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x68], rcx
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_2214
	lea	rdi, [rdi]
	jmp	.label_2198
.label_2214:
	nop	
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	nop	
	je	.label_2219
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2193
.label_2219:
	mov	rbp, rbp
	jmp	.label_2198
.label_2198:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_2204
.label_2197:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2215
	jmp	.label_2206
.label_2215:
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jle	.label_2216
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2216:
	mov	rsp, rsp
	jmp	.label_2196
.label_2196:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jg	.label_2200
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jle	.label_2192
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2212
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2217
	lea	rsi, [rsi]
	jmp	.label_2200
.label_2217:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	eax, dl
	mov	rsp, rsp
	movsxd	rdi, eax
	mov	rbp, rbp
	cmp	rdi, 0
	lea	rsi, [rsi]
	je	.label_2226
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2193
.label_2226:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_2212:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx + rax]
	cmp	edx, esi
	je	.label_2224
	lea	rdi, [rdi]
	jmp	.label_2200
.label_2224:
	jmp	.label_2192
.label_2192:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	jne	.label_2207
	jmp	.label_2191
.label_2207:
	mov	ecx, 9
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rax, qword ptr [rdx + rax*8]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	find_subexp_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_2202
	nop	
	jmp	.label_2191
.label_2202:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2201
	mov	eax, 0x18
	mov	rsp, rsp
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	add	rcx, 1
	mov	rsi, rcx
	call	calloc
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_2222
	mov	dword ptr [rbp - 0x4c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2193
.label_2222:
	jmp	.label_2201
.label_2201:
	mov	eax, 9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x20]
	mov	dword ptr [rsp], 9
	mov	dword ptr [rbp - 0x8c], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x9c], eax
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_2221
	mov	rsp, rsp
	jmp	.label_2191
.label_2221:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2228
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2193
.label_2228:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	match_ctx_add_sublast
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2209
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 0xc
	jmp	.label_2193
.label_2209:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_2210
	jmp	.label_2191
.label_2210:
	cmp	dword ptr [rbp - 0x9c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2194
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_2193
.label_2194:
	lea	rsi, [rsi]
	jmp	.label_2191
.label_2191:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2196
.label_2200:
	jmp	.label_2206
.label_2206:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	jmp	.label_2208
.label_2227:
	mov	dword ptr [rbp - 0x4c], 0
.label_2193:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4210e0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_2233
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jle	.label_2233
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_2233
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jle	.label_2233
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2237
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0xc
	jmp	.label_2230
.label_2237:
	jmp	.label_2231
.label_2233:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2234
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2234
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_2230
.label_2234:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2229
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2229
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_2230
.label_2229:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	jmp	.label_2240
.label_2240:
	mov	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jmp	.label_2230
.label_2231:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], 0
.label_2236:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_2235
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x29], dl
.label_2235:
	mov	al, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_2232
	mov	rbp, rbp
	jmp	.label_2239
.label_2232:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2241
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	jmp	.label_2236
.label_2241:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2238
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_2238:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2236
.label_2239:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jge	.label_2244
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2242
.label_2244:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2243
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rdx, 3
	nop	
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2243:
	jmp	.label_2242
.label_2242:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0
.label_2230:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x421520

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_2249:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2248
	mov	rbp, rbp
	mov	eax, 2
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x18]
	mov	rax, rdx
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	imul	rax, rax, 0x28
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jge	.label_2250
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2247
.label_2250:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2247:
	jmp	.label_2249
.label_2248:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jge	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_2246
.label_2245:
	nop	
	mov	qword ptr [rbp - 0x30], -1
.label_2246:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421650

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xc0]
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 0x40]
	jl	.label_2254
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jl	.label_2255
.label_2254:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_2253
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2253
.label_2255:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	ecx, eax
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	call	extend_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	lea	rsi, [rsi]
	cmp	rdi, 0
	nop	
	je	.label_2251
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_2252
.label_2251:
	jmp	.label_2253
.label_2253:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jge	.label_2256
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 3
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xc0], rax
.label_2256:
	mov	dword ptr [rbp - 0x20], 0
.label_2252:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4217d0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	eax, 8
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x10
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rsp], 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	check_arrival
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_2259
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2258
.label_2259:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rax + 8]
	call	match_ctx_add_entry
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2257
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2258
.label_2257:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x28], eax
.label_2258:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421910

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
.label_2261:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2263
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	mov	rbp, rbp
	cmp	edx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	jne	.label_2260
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2260
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2262
.label_2260:
	mov	rsp, rsp
	jmp	.label_2264
.label_2264:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_2261
.label_2263:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], -1
.label_2262:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421a20

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	nop	
	mov	eax, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0x18], r8
	mov	qword ptr [rbp - 0x10], r9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0xe0]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rsi + 0xe0]
	add	rdx, rsi
	nop	
	add	rdx, 1
	cmp	rcx, rdx
	setl	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2271
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x78], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rdx + 0xe0]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, qword ptr [rbp - 0xc0]
	setl	sil
	lea	rdi, [rdi]
	and	sil, 1
	movzx	edi, sil
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2301
	mov	dword ptr [rbp - 0x6c], 0xc
	nop	
	jmp	.label_2267
.label_2301:
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	setb	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2281
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], 0xc
	jmp	.label_2267
.label_2281:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0xe8], rax
	cmp	qword ptr [rbp - 0xe8], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2299
	nop	
	mov	dword ptr [rbp - 0x6c], 0xc
	jmp	.label_2267
.label_2299:
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 3
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	memset
.label_2271:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_2286
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_2287
.label_2286:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
.label_2287:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0xa8]
	jne	.label_2279
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	nop	
	je	.label_2285
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	jmp	.label_2267
.label_2285:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_arrival_expand_ecl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2298
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rdi, [rdi]
	jmp	.label_2267
.label_2298:
	jmp	.label_2274
.label_2279:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2275
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2275
	nop	
	lea	rdi, [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 8
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	nop	
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	lea	rdi, [rdi]
	je	.label_2290
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	jmp	.label_2267
.label_2290:
	nop	
	jmp	.label_2297
.label_2275:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x48]
	mov	rdi, rcx
	call	memset
.label_2297:
	mov	rsp, rsp
	jmp	.label_2274
.label_2274:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_2302
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2269
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2269
.label_2302:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2277
	lea	rsi, [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x5c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	movzx	eax, r9b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2288
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	nop	
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2267
.label_2288:
	lea	rdi, [rdi]
	jmp	.label_2277
.label_2277:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x50]
	lea	rdx, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	ecx, dword ptr [rbp - 0xec]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	mov	byte ptr [rbp - 0x49], r8b
	mov	rsp, rsp
	jne	.label_2278
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2278:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2268
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2267
.label_2268:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2269:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_2266:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0xc9], cl
	jge	.label_2284
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	mov	rsp, rsp
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xc9], dl
.label_2284:
	mov	al, byte ptr [rbp - 0xc9]
	test	al, 1
	jne	.label_2292
	jmp	.label_2294
.label_2292:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	mov	rbp, rbp
	je	.label_2280
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x50], eax
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2270
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rdi, [rdi]
	jmp	.label_2267
.label_2270:
	nop	
	jmp	.label_2280
.label_2280:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	lea	rsi, [rsi]
	je	.label_2282
	lea	rcx, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rdx, rax
	mov	rbp, rbp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2291
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2267
.label_2291:
	mov	rbp, rbp
	jmp	.label_2282
.label_2282:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2300
	lea	rsi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x50], eax
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	mov	rsp, rsp
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2273
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x50]
	nop	
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rsp, rsp
	jmp	.label_2267
.label_2273:
	lea	rsi, [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x5c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	setne	r9b
	nop	
	and	r9b, 1
	mov	rsp, rsp
	movzx	eax, r9b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2289
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rsi, [rsi]
	jmp	.label_2267
.label_2289:
	mov	rbp, rbp
	jmp	.label_2300
.label_2300:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x48]
	mov	dword ptr [rbp - 0xec], eax
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xec]
	call	re_acquire_state_context
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x98], 0
	mov	byte ptr [rbp - 1], r8b
	nop	
	jne	.label_2276
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0
	setne	al
	mov	byte ptr [rbp - 1], al
.label_2276:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2283
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], ecx
	jmp	.label_2267
.label_2283:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2293
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2295
.label_2293:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_2295
.label_2295:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2266
.label_2294:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0xb8]
	nop	
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jne	.label_2265
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_2296
.label_2265:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_2296:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_2272
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	je	.label_2272
	mov	dword ptr [rbp - 0x6c], 0
	lea	rdi, [rdi]
	jmp	.label_2267
.label_2272:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], 1
.label_2267:
	mov	eax, dword ptr [rbp - 0x6c]
	add	rsp, 0xf0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422520

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rsi + 0x18]
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2303
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	shl	rax, 1
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2304
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_2305
.label_2304:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_2303:
	mov	rsp, rsp
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x28
	mov	esi, eax
	mov	rsp, rsp
	call	calloc
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2306
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_2306:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_2305:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4226c0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xc8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 0xd0]
	lea	rsi, [rsi]
	jl	.label_2307
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xd0]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rbp, rbp
	imul	rsi, rcx, 0x28
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	nop	
	je	.label_2311
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x1c], 0xc
	jmp	.label_2309
.label_2311:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx + 0xc8], 0x28
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	imul	rdx, qword ptr [rcx + 0xd0], 0x28
	mov	rdi, rax
	call	memset
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0xd0]
	shl	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
.label_2307:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_2308
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jne	.label_2308
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc8]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0xd8]
	mov	byte ptr [rax + 0x20], 1
.label_2308:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rsi, rsi, 0x28
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x10], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	r8w, ax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0xc8]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x28
	mov	rsp, rsp
	add	rdx, qword ptr [rsi + 0xd8]
	mov	word ptr [rdx + 0x22], r8w
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0xc8]
	nop	
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0xc8], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdx + 0xd8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x20], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_2310
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0xe0], ecx
.label_2310:
	mov	dword ptr [rbp - 0x1c], 0
.label_2309:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4229f0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	lea	rsi, [rsi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2317
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	jmp	.label_2313
.label_2317:
	mov	qword ptr [rbp - 0x10], 0
.label_2319:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2316
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], -1
	lea	rsi, [rsi]
	jne	.label_2314
	lea	rdi, [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2320
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2313
.label_2320:
	lea	rsi, [rsi]
	jmp	.label_2312
.label_2314:
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	r8d, dword ptr [rbp - 4]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x44], 0
	mov	rsp, rsp
	setne	r9b
	and	r9b, 1
	mov	rsp, rsp
	movzx	eax, r9b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2315
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2313
.label_2315:
	jmp	.label_2312
.label_2312:
	mov	rbp, rbp
	jmp	.label_2318
.label_2318:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2319
.label_2316:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rax + 8], rdi
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x10], rdi
	mov	dword ptr [rbp - 0x34], 0
.label_2313:
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x70
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x422c20

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x98]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], -1
	jne	.label_2345
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	jmp	.label_2322
.label_2345:
	nop	
	jmp	.label_2326
.label_2326:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0xb8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_2334:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2338
	lea	rsi, [rsi]
	jmp	.label_2331
.label_2338:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	jne	.label_2343
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x98]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2337
	jmp	.label_2331
.label_2337:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	call	re_node_set_init_1
	lea	rsi, [rbp - 0x68]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	ecx, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	lea	rsi, [rbp - 0x68]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x8c], eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rdx
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	r8b, 1
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], r8b
	lea	rsi, [rsi]
	jne	.label_2342
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	byte ptr [rbp - 0xd], al
	jne	.label_2342
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], al
.label_2342:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2340
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	je	.label_2333
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	jmp	.label_2339
.label_2333:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_2341
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_2325
.label_2341:
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], eax
.label_2325:
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
.label_2339:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_2322
.label_2340:
	mov	rbp, rbp
	jmp	.label_2326
.label_2343:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2329
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rax
	nop	
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2328
	jmp	.label_2331
.label_2328:
	lea	rdi, [rbp - 0x88]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	lea	rdi, [rbp - 0x88]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	dl, 1
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	cmp	dword ptr [rbp - 0xc], 0
	mov	byte ptr [rbp - 0x99], dl
	lea	rsi, [rsi]
	jne	.label_2324
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x99], al
.label_2324:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x99]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2330
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	je	.label_2344
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2323
.label_2344:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2323
.label_2323:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	jmp	.label_2322
.label_2330:
	jmp	.label_2321
.label_2329:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x98]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2335
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_2322
.label_2335:
	mov	rbp, rbp
	jmp	.label_2321
.label_2321:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	re_acquire_state
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x49], r8b
	jne	.label_2336
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	setne	al
	mov	byte ptr [rbp - 0x49], al
.label_2336:
	nop	
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2327
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_2322
.label_2327:
	mov	rbp, rbp
	jmp	.label_2332
.label_2332:
	jmp	.label_2331
.label_2331:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	jne	.label_2334
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], 0
.label_2322:
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x423190

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	rsp, rsp
	mov	r9d, r8d
	mov	rsp, rsp
	lea	r10, [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x84], 0
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	nop	
	mov	qword ptr [rbp - 0x68], 0
.label_2358:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2349
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	mov	rsp, rsp
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_2348
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 1
	jle	.label_2353
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	je	.label_2347
	lea	rdi, [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rdi, [rdi]
	cmp	rsi, 0
	nop	
	je	.label_2350
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2346
.label_2350:
	jmp	.label_2347
.label_2347:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	mov	al, byte ptr [rbp - 0x71]
	nop	
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_2355
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2346
.label_2355:
	lea	rdi, [rbp - 0x84]
	lea	rdx, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_acquire_state
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x72], r8b
	mov	rsp, rsp
	jne	.label_2359
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	setne	al
	mov	byte ptr [rbp - 0x72], al
.label_2359:
	mov	al, byte ptr [rbp - 0x72]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2356
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2346
.label_2356:
	mov	rbp, rbp
	jmp	.label_2353
.label_2353:
	jmp	.label_2348
.label_2348:
	nop	
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_2357
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	check_node_accept
	nop	
	test	al, 1
	jne	.label_2357
	jmp	.label_2352
.label_2357:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	mov	al, byte ptr [rbp - 0x71]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2351
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 0x2c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2346
.label_2351:
	mov	rbp, rbp
	jmp	.label_2352
.label_2352:
	mov	rbp, rbp
	jmp	.label_2354
.label_2354:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2358
.label_2349:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	nop	
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2346:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423570

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], r8d
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
.label_2362:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2369
	jmp	.label_2360
.label_2369:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	nop	
	cmp	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	jne	.label_2365
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2365
	cmp	dword ptr [rbp - 0x1c], 9
	lea	rsi, [rsi]
	jne	.label_2367
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], al
	mov	al, byte ptr [rbp - 0x29]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2364
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0xc
	nop	
	jmp	.label_2363
.label_2364:
	jmp	.label_2367
.label_2367:
	jmp	.label_2360
.label_2365:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], al
	mov	al, byte ptr [rbp - 0x29]
	mov	rbp, rbp
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_2370
	mov	dword ptr [rbp - 0xc], 0xc
	jmp	.label_2363
.label_2370:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_2366
	jmp	.label_2360
.label_2366:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2361
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x30], 0
	setne	r9b
	and	r9b, 1
	nop	
	movzx	eax, r9b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2368
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2363
.label_2368:
	lea	rsi, [rsi]
	jmp	.label_2361
.label_2361:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2362
.label_2360:
	mov	dword ptr [rbp - 0xc], 0
.label_2363:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4237e0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx + 8], 0
	sete	al
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2371
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2377
.label_2371:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2373:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx]
	nop	
	jge	.label_2379
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx]
	je	.label_2375
	mov	rbp, rbp
	jmp	.label_2372
.label_2375:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, 1
	jne	.label_2376
	lea	rdi, [rdi]
	jmp	.label_2374
.label_2376:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2377
.label_2374:
	jmp	.label_2372
.label_2372:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_2373
.label_2379:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	create_ci_newstate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2378
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
.label_2378:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2377:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423990

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	mov	eax, 0x70
	mov	ecx, eax
	mov	eax, 1
	mov	rbp, rbp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, rcx
	mov	rsi, r8
	nop	
	call	calloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	sete	r9b
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	r10d, r9b
	movsxd	rax, r10d
	cmp	rax, 0
	je	.label_2384
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2385
.label_2384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2387
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_2385
.label_2387:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2381:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2392
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0xc], esi
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_2386
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	jne	.label_2386
	mov	rbp, rbp
	jmp	.label_2380
.label_2386:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	ecx, 0x14
	lea	rsi, [rsi]
	and	ecx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	nop	
	mov	dl, sil
	mov	rsp, rsp
	mov	dil, byte ptr [rax + 0x68]
	mov	rbp, rbp
	and	dl, 1
	shl	dl, 5
	mov	rsp, rsp
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0xc], 2
	nop	
	jne	.label_2383
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	rbp, rbp
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2388
.label_2383:
	nop	
	cmp	dword ptr [rbp - 0xc], 4
	jne	.label_2393
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	mov	rsp, rsp
	and	cl, 0xbf
	mov	rbp, rbp
	or	cl, 0x40
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], cl
	mov	rbp, rbp
	jmp	.label_2382
.label_2393:
	nop	
	cmp	dword ptr [rbp - 0xc], 0xc
	je	.label_2389
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2391
.label_2389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	and	cl, 0x7f
	or	cl, 0x80
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], cl
.label_2391:
	jmp	.label_2382
.label_2382:
	jmp	.label_2388
.label_2388:
	jmp	.label_2380
.label_2380:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2381
.label_2392:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2390
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_state
	mov	qword ptr [rbp - 0x38], 0
.label_2390:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_2385:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423c90

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0x60], rdx
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	shl	rdx, 4
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rcx + 8]
	nop	
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 7
	lea	rsi, [rsi]
	sete	r8b
	and	r8b, 1
	mov	rbp, rbp
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2428
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	movzx	esi, byte ptr [rbp - 0x21]
	cmp	esi, 0xc2
	setl	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2397
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2395
.label_2397:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2411
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2395
.label_2411:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax + 1]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], dl
	movzx	esi, byte ptr [rbp - 0x21]
	cmp	esi, 0xe0
	nop	
	jge	.label_2422
	lea	rdi, [rdi]
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x31], al
	jl	.label_2433
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x31], cl
.label_2433:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	ecx, 2
	nop	
	xor	edx, edx
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x54], ecx
	jmp	.label_2395
.label_2422:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xf0
	nop	
	jge	.label_2430
	nop	
	mov	dword ptr [rbp - 0x28], 3
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xe0
	mov	rbp, rbp
	jne	.label_2402
	movzx	eax, byte ptr [rbp - 0x22]
	nop	
	cmp	eax, 0xa0
	jge	.label_2402
	mov	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	jmp	.label_2395
.label_2402:
	lea	rdi, [rdi]
	jmp	.label_2405
.label_2430:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, 0xf8
	nop	
	jge	.label_2407
	mov	dword ptr [rbp - 0x28], 4
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xf0
	lea	rdi, [rdi]
	jne	.label_2426
	nop	
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x90
	lea	rdi, [rdi]
	jge	.label_2426
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	jmp	.label_2395
.label_2426:
	jmp	.label_2413
.label_2407:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, 0xfc
	lea	rdi, [rdi]
	jge	.label_2429
	nop	
	mov	dword ptr [rbp - 0x28], 5
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	eax, 0xf8
	jne	.label_2434
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x88
	lea	rsi, [rsi]
	jge	.label_2434
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2395
.label_2434:
	jmp	.label_2412
.label_2429:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xfe
	mov	rbp, rbp
	jge	.label_2445
	mov	dword ptr [rbp - 0x28], 6
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	cmp	eax, 0xfc
	jne	.label_2394
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	eax, 0x84
	jge	.label_2394
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2395
.label_2394:
	jmp	.label_2442
.label_2445:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	jmp	.label_2395
.label_2442:
	jmp	.label_2412
.label_2412:
	jmp	.label_2413
.label_2413:
	mov	rbp, rbp
	jmp	.label_2405
.label_2405:
	jmp	.label_2419
.label_2419:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x28]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	jle	.label_2420
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2395
.label_2420:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 1
.label_2400:
	mov	rax, qword ptr [rbp - 0x78]
	movsxd	rcx, dword ptr [rbp - 0x28]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2432
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], dl
	movzx	esi, byte ptr [rbp - 0x22]
	cmp	esi, 0x80
	jl	.label_2436
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0xbf
	nop	
	jle	.label_2444
.label_2436:
	mov	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	jmp	.label_2395
.label_2444:
	jmp	.label_2398
.label_2398:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2400
.label_2432:
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2395
.label_2428:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	re_string_char_size_at
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rsi + 8]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 5
	nop	
	jne	.label_2408
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 1
	jg	.label_2418
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2395
.label_2418:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2446
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	lea	rdi, [rdi]
	je	.label_2431
.label_2446:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2425
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_2425
.label_2431:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2395
.label_2425:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2395
.label_2408:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_string_elem_size_at
	nop	
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 1
	jg	.label_2404
	nop	
	cmp	dword ptr [rbp - 0x28], 1
	jle	.label_2406
.label_2404:
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_2409
.label_2406:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2395
.label_2409:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 6
	mov	rbp, rbp
	jne	.label_2415
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_2423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_2423
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	je	.label_2438
.label_2423:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2443
.label_2438:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2443
.label_2443:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	qword ptr [rbp - 0x78], 0
.label_2416:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	jge	.label_2399
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	cmp	eax, dword ptr [rdx + rcx*4]
	mov	rsp, rsp
	jne	.label_2403
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_2410
.label_2403:
	jmp	.label_2414
.label_2414:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2416
.label_2399:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
.label_2396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_2424
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x68]
	call	iswctype
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2437
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_2410
.label_2437:
	nop	
	jmp	.label_2440
.label_2440:
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_2396
.label_2424:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
.label_2421:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_2447
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 4]
	nop	
	jg	.label_2401
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_2401
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	mov	rsp, rsp
	jmp	.label_2410
.label_2401:
	lea	rdi, [rdi]
	jmp	.label_2417
.label_2417:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_2421
.label_2447:
	lea	rdi, [rdi]
	jmp	.label_2410
.label_2410:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	nop	
	jne	.label_2427
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2395
.label_2427:
	cmp	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jle	.label_2435
	nop	
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2395
.label_2435:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x28]
	jle	.label_2439
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2441
.label_2439:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x14], eax
.label_2441:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_2395
.label_2415:
	mov	dword ptr [rbp - 0x54], 0
.label_2395:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424420

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rsi + rdx]
	mov	byte ptr [rbp - 5], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 8]
	dec	ecx
	mov	edx, ecx
	sub	ecx, 6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	ja	.label_2458
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2462]]
	mov	rsp, rsp
	jmp	rcx
.label_2931:
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rbp, rbp
	je	.label_2451
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2448
.label_2451:
	jmp	.label_2452
.label_2932:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	nop	
	movzx	ecx, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	jne	.label_2455
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2448
.label_2455:
	jmp	.label_2452
.label_2933:
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	cmp	eax, 0x80
	jl	.label_2460
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2448
.label_2460:
	lea	rsi, [rsi]
	jmp	.label_2453
.label_2453:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_2456
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x98]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2449
.label_2456:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0
	jne	.label_2459
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2459
.label_2449:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2448
.label_2459:
	nop	
	jmp	.label_2452
.label_2458:
	mov	byte ptr [rbp - 0x1d], 0
	mov	rsp, rsp
	jmp	.label_2448
.label_2452:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2450
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	mov	rsp, rsp
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2464
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2457
.label_2464:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	mov	rsp, rsp
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	and	ecx, 8
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2461
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2457
.label_2461:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	nop	
	and	ecx, 0x20
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2463
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2457
.label_2463:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	lea	rsi, [rsi]
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_2454
	mov	eax, dword ptr [rbp - 4]
	and	eax, 8
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2454
.label_2457:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_2448
.label_2454:
	mov	rbp, rbp
	jmp	.label_2450
.label_2450:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], 1
.label_2448:
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x424720

	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	eax, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424740

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x78], rsi
	mov	qword ptr [rbp - 0x50], 0
.label_2466:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2480
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	edx, 0x14
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	jne	.label_2468
	jmp	.label_2469
.label_2468:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_2472
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	shl	rsi, 4
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdi]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	je	.label_2479
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2475
.label_2479:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	edx, 8
	lea	rsi, [rsi]
	and	edx, 0x3ff
	and	edx, 8
	nop	
	cmp	edx, 0
	je	.label_2467
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2475
.label_2467:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x20
	cmp	edx, 0
	nop	
	je	.label_2483
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2475
.label_2483:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	lea	rdi, [rdi]
	and	edx, 0x3ff
	and	edx, 0x80
	cmp	edx, 0
	je	.label_2465
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	nop	
	jne	.label_2465
.label_2475:
	jmp	.label_2469
.label_2465:
	jmp	.label_2472
.label_2472:
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	call	check_node_accept_bytes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jne	.label_2481
	mov	rsp, rsp
	jmp	.label_2469
.label_2481:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x48]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 0xe0]
	mov	rsp, rsp
	cmp	edx, dword ptr [rbp - 0x1c]
	jge	.label_2474
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2477
.label_2474:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xe0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_2477:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx + 0xe0], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	clean_state_log_if_needed
	nop	
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	eax, dl
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2478
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_2473
.label_2478:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_2484
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2470
.label_2484:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	nop	
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2485
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2473
.label_2485:
	lea	rdi, [rdi]
	jmp	.label_2470
.label_2470:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	nop	
	lea	rdi, [rbp - 0x30]
	lea	rdx, [rbp - 0x68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x6c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_2476
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_2476:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	nop	
	mov	byte ptr [rbp - 0x79], cl
	nop	
	jne	.label_2482
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	mov	byte ptr [rbp - 0x79], al
.label_2482:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x79]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2471
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_2473
.label_2471:
	mov	rsp, rsp
	jmp	.label_2469
.label_2469:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2466
.label_2480:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2473:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424c40

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	rsp, rsp
	mov	eax, 0x3800
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	byte ptr [rbp - 0xd1], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d], 0
	mov	qword ptr [rbp - 0xd0], 0
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2529
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], 0
	lea	rdi, [rdi]
	jmp	.label_2543
.label_2529:
	nop	
	mov	byte ptr [rbp - 0x39], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 0x1800
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	group_nodes_into_DFAstates
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	setle	r8b
	mov	rsp, rsp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2500
	mov	rbp, rbp
	test	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	je	.label_2516
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2516:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2526
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	sete	cl
	nop	
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2535
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], 0
	mov	rsp, rsp
	jmp	.label_2543
.label_2535:
	mov	byte ptr [rbp - 0xd9], 1
	nop	
	jmp	.label_2543
.label_2526:
	mov	byte ptr [rbp - 0xd9], 0
	nop	
	jmp	.label_2543
.label_2500:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsi, rax
	call	re_node_set_alloc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	cmp	dword ptr [rbp - 0xd8], 0
	nop	
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2491
	jmp	.label_2503
.label_2491:
	movabs	rax, 0xaaaaaaaaaaaa855
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2514
	jmp	.label_2503
.label_2514:
	imul	rax, qword ptr [rbp - 8], 3
	lea	rdi, [rdi]
	shl	rax, 3
	add	rax, 0x3800
	mov	rsp, rsp
	cmp	rax, 0xfc0
	jae	.label_2532
	mov	rax, qword ptr [rbp - 8]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	lea	rax, [rax*8 + 0xf]
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	rsp, rcx
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rsp, rsp
	jmp	.label_2542
.label_2532:
	imul	rax, qword ptr [rbp - 8], 3
	mov	rsp, rsp
	shl	rax, 3
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0xd0], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2488
	jmp	.label_2503
.label_2503:
	test	byte ptr [rbp - 0x1d], 1
	mov	rbp, rbp
	je	.label_2505
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	mov	rdi, rax
	call	free
.label_2505:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x98], 0
.label_2538:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jge	.label_2540
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rcx, qword ptr [rbp - 0x98], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2538
.label_2540:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x39], 1
	mov	rsp, rsp
	je	.label_2544
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2544:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_2543
.label_2488:
	mov	byte ptr [rbp - 0x1d], 1
.label_2542:
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 8]
	shl	rcx, 3
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0xc0], rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x98], 0
.label_2545:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jge	.label_2509
	mov	qword ptr [rbp - 0x60], 0
	nop	
	mov	qword ptr [rbp - 0x50], 0
.label_2511:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2522
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], -1
	mov	rsp, rsp
	je	.label_2506
	lea	rdi, [rbp - 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0x48], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsi, rax
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	cmp	dword ptr [rbp - 0xd8], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2489
	jmp	.label_2503
.label_2489:
	jmp	.label_2506
.label_2506:
	nop	
	jmp	.label_2508
.label_2508:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2511
.label_2522:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xd8]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x68]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8b, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], r8b
	lea	rdi, [rdi]
	jne	.label_2528
	cmp	dword ptr [rbp - 0xd8], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0xb1], al
.label_2528:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2549
	nop	
	jmp	.label_2503
.label_2549:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 7
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0
	je	.label_2554
	lea	rdi, [rbp - 0xd8]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x68]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0xa0]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb0]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa2], r8b
	mov	rbp, rbp
	jne	.label_2512
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xd8], 0
	setne	al
	mov	byte ptr [rbp - 0xa2], al
.label_2512:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa2]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2537
	nop	
	jmp	.label_2503
.label_2537:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2486
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_2486
	mov	byte ptr [rbp - 0xd1], 1
.label_2486:
	lea	rdi, [rbp - 0xd8]
	lea	rdx, [rbp - 0x68]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0xa0]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa1], r8b
	jne	.label_2523
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xd8], 0
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], al
.label_2523:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa1]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2533
	nop	
	jmp	.label_2503
.label_2533:
	lea	rsi, [rsi]
	jmp	.label_2494
.label_2554:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2494:
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	rsp, rsp
	call	bitset_merge
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2545
.label_2509:
	nop	
	test	byte ptr [rbp - 0xd1], 1
	jne	.label_2518
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	lea	rdi, [rdi]
	call	calloc
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x58], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2504
	lea	rdi, [rdi]
	jmp	.label_2503
.label_2504:
	mov	qword ptr [rbp - 0x98], 0
.label_2519:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x98], 4
	mov	rsp, rsp
	jge	.label_2550
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shl	rax, 6
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 1
.label_2501:
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2495
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2493
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
.label_2531:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	and	rax, qword ptr [rbp - 0x10]
	cmp	rax, 0
	jne	.label_2513
	lea	rdi, [rdi]
	jmp	.label_2527
.label_2527:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_2531
.label_2513:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rbp, rbp
	and	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2487
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2548
.label_2487:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
.label_2548:
	mov	rsp, rsp
	jmp	.label_2493
.label_2493:
	lea	rsi, [rsi]
	jmp	.label_2496
.label_2496:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_2501
.label_2495:
	lea	rdi, [rdi]
	jmp	.label_2515
.label_2515:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2519
.label_2550:
	jmp	.label_2497
.label_2518:
	mov	rbp, rbp
	mov	eax, 8
	mov	edi, eax
	nop	
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x60], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_2536
	jmp	.label_2503
.label_2536:
	mov	qword ptr [rbp - 0x98], 0
.label_2502:
	cmp	qword ptr [rbp - 0x98], 4
	jge	.label_2552
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 6
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 1
.label_2539:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2492
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_2499
	nop	
	mov	qword ptr [rbp - 0x50], 0
.label_2551:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 5
	nop	
	add	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	and	rax, qword ptr [rbp - 0x10]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_2521
	lea	rsi, [rsi]
	jmp	.label_2553
.label_2553:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2551
.label_2521:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	esi, 0x100
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2499:
	lea	rsi, [rsi]
	jmp	.label_2524
.label_2524:
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	add	ecx, 1
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	jmp	.label_2539
.label_2492:
	nop	
	jmp	.label_2498
.label_2498:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2502
.label_2552:
	jmp	.label_2497
.label_2497:
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_contain
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_2520
	jmp	.label_2517
.label_2520:
	mov	qword ptr [rbp - 0x50], 0
.label_2555:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_2490
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	nop	
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2541
	nop	
	jmp	.label_2534
.label_2541:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x50], rax
	test	byte ptr [rbp - 0xd1], 1
	mov	rsp, rsp
	je	.label_2546
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x850], rax
.label_2546:
	jmp	.label_2490
.label_2534:
	mov	rbp, rbp
	jmp	.label_2530
.label_2530:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2555
.label_2490:
	lea	rsi, [rsi]
	jmp	.label_2517
.label_2517:
	test	byte ptr [rbp - 0x1d], 1
	mov	rbp, rbp
	je	.label_2507
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	free
.label_2507:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x98], 0
.label_2510:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	jge	.label_2525
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x98], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2510
.label_2525:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x39], 1
	lea	rdi, [rdi]
	je	.label_2547
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2547:
	mov	byte ptr [rbp - 0xd9], 1
.label_2543:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xd9]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	mov	rsp, rbp
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425a20

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x110
	mov	rsp, rsp
	lea	rax, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 8
	mov	qword ptr [rbp - 0xa0], rcx
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	bitset_empty
	mov	qword ptr [rbp - 0xc8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], 0
.label_2602:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2592
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0xfc], edx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff
	nop	
	mov	dword ptr [rbp - 0x2c], edx
	cmp	dword ptr [rbp - 0xfc], 1
	jne	.label_2599
	lea	rdi, [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	lea	rsi, [rsi]
	call	bitset_set
	mov	rbp, rbp
	jmp	.label_2572
.label_2599:
	cmp	dword ptr [rbp - 0xfc], 3
	mov	rbp, rbp
	jne	.label_2577
	nop	
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	bitset_merge
	mov	rbp, rbp
	jmp	.label_2584
.label_2577:
	cmp	dword ptr [rbp - 0xfc], 5
	jne	.label_2587
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jle	.label_2588
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	mov	rsp, rsp
	call	bitset_merge
	jmp	.label_2600
.label_2588:
	lea	rdi, [rbp - 0x90]
	mov	rbp, rbp
	call	bitset_set_all
.label_2600:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2591
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rdi, [rdi]
	call	bitset_clear
.label_2591:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2614
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_clear
.label_2614:
	mov	rsp, rsp
	jmp	.label_2567
.label_2587:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xfc], 7
	mov	rsp, rsp
	jne	.label_2569
	mov	esi, 0xff
	mov	rbp, rbp
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0xd8]
	and	rcx, 0x40
	cmp	rcx, 0
	mov	rbp, rbp
	jne	.label_2583
	nop	
	mov	eax, 0xa
	mov	esi, eax
	mov	rbp, rbp
	lea	rdi, [rbp - 0x90]
	mov	rsp, rsp
	call	bitset_clear
.label_2583:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2593
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	mov	rbp, rbp
	call	bitset_clear
.label_2593:
	jmp	.label_2607
.label_2569:
	jmp	.label_2559
.label_2607:
	jmp	.label_2567
.label_2567:
	jmp	.label_2584
.label_2584:
	jmp	.label_2572
.label_2572:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	je	.label_2604
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2585
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_contain
	lea	rdi, [rbp - 0x90]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	call	bitset_empty
	test	byte ptr [rbp - 0x39], 1
	lea	rsi, [rsi]
	je	.label_2574
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x90]
	call	bitset_set
	jmp	.label_2581
.label_2574:
	jmp	.label_2559
.label_2581:
	jmp	.label_2585
.label_2585:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	and	eax, 0x80
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2586
	mov	rbp, rbp
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2559
.label_2586:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2564
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], 0
	cmp	dword ptr [rbp - 0xfc], 1
	mov	rbp, rbp
	jne	.label_2603
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_2603
	lea	rdi, [rbp - 0x90]
	lea	rsi, [rsi]
	call	bitset_empty
	jmp	.label_2559
.label_2603:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_2557
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
.label_2570:
	cmp	qword ptr [rbp - 0x60], 4
	jge	.label_2613
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	or	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2570
.label_2613:
	lea	rdi, [rdi]
	jmp	.label_2556
.label_2557:
	mov	qword ptr [rbp - 0x60], 0
.label_2576:
	cmp	qword ptr [rbp - 0x60], 4
	jge	.label_2598
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	or	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_2576
.label_2598:
	nop	
	jmp	.label_2556
.label_2556:
	cmp	qword ptr [rbp - 0x108], 0
	lea	rdi, [rdi]
	jne	.label_2558
	jmp	.label_2559
.label_2558:
	lea	rdi, [rdi]
	jmp	.label_2564
.label_2564:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	je	.label_2568
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0xfc], 1
	jne	.label_2575
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	ecx, 0x16
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	je	.label_2575
	lea	rdi, [rbp - 0x90]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2559
.label_2575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	mov	rbp, rbp
	jle	.label_2590
	mov	qword ptr [rbp - 0x60], 0
.label_2565:
	cmp	qword ptr [rbp - 0x60], 4
	mov	rbp, rbp
	jge	.label_2597
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	and	rax, qword ptr [rdx + rcx*8]
	xor	rax, 0xffffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	or	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_2565
.label_2597:
	mov	rbp, rbp
	jmp	.label_2563
.label_2590:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
.label_2578:
	cmp	qword ptr [rbp - 0x60], 4
	mov	rbp, rbp
	jge	.label_2571
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	and	rax, qword ptr [rbp + rcx*8 - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_2578
.label_2571:
	lea	rsi, [rsi]
	jmp	.label_2563
.label_2563:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2595
	jmp	.label_2559
.label_2595:
	jmp	.label_2568
.label_2568:
	jmp	.label_2604
.label_2604:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
.label_2606:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_2605
	cmp	dword ptr [rbp - 0xfc], 1
	nop	
	jne	.label_2561
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movzx	edx, byte ptr [rcx]
	mov	esi, edx
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2561
	lea	rdi, [rdi]
	jmp	.label_2566
.label_2561:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_2580:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 4
	nop	
	jge	.label_2579
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8 - 0xc0], rax
	or	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2580
.label_2579:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_2594
	jmp	.label_2566
.label_2594:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x20], 0
.label_2610:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 4
	lea	rdi, [rdi]
	jge	.label_2608
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	nop	
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0xf0], rax
	or	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp + rax*8 - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x60]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	nop	
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	nop	
	or	rax, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2610
.label_2608:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_2562
	lea	rsi, [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	bitset_copy
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	shl	rax, 5
	nop	
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	bitset_copy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	imul	rsi, qword ptr [rbp - 0xc8], 0x18
	add	rax, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	imul	rsi, rsi, 0x18
	add	rsi, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2560
	jmp	.label_2573
.label_2560:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
.label_2562:
	mov	rax, qword ptr [rbp - 0x60]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_insert
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	nop	
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	r8d, al
	movsxd	rcx, r8d
	mov	rsp, rsp
	cmp	rcx, 0
	je	.label_2589
	jmp	.label_2573
.label_2589:
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jne	.label_2601
	jmp	.label_2605
.label_2601:
	lea	rsi, [rsi]
	jmp	.label_2566
.label_2566:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_2606
.label_2605:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	jne	.label_2611
	lea	rsi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	imul	rsi, qword ptr [rbp - 0xc8], 0x18
	lea	rdi, [rdi]
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_2582
	jmp	.label_2573
.label_2582:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	call	bitset_empty
.label_2611:
	jmp	.label_2559
.label_2559:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	jmp	.label_2602
.label_2592:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x110], rax
	nop	
	jmp	.label_2609
.label_2573:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
.label_2596:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_2612
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x60], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2596
.label_2612:
	mov	qword ptr [rbp - 0x110], -1
.label_2609:
	mov	rax, qword ptr [rbp - 0x110]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426560

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426590

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], 0
.label_2615:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 4
	lea	rdi, [rdi]
	jge	.label_2616
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	or	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2615
.label_2616:
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426600

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	esi, 0xff
	mov	rsp, rsp
	mov	eax, 0x20
	nop	
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426640

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rdx, cl
	mov	rsp, rsp
	xor	rdx, 0xffffffffffffffff
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	idiv	rsi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	and	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4266d0

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsi + 0x18], rax
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x426710

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x20], edx
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0xc], edx
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rsp, rsp
	mov	edx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 2
	je	.label_2623
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_2619
.label_2623:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2620
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_2619
.label_2620:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2617
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2618
.label_2617:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	and	eax, 8
	cmp	eax, 0
	je	.label_2622
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2618
.label_2622:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	and	eax, 0x20
	cmp	eax, 0
	je	.label_2624
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_2618
.label_2624:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	and	eax, 0x80
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_2621
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	eax, 8
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2621
.label_2618:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_2619
.label_2621:
	mov	byte ptr [rbp - 0x19], 1
.label_2619:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426870

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r9d, 0x18
	nop	
	mov	r10d, r9d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x20
	mov	rdi, rcx
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, r10
	call	memset
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426920

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0xc], 0
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	rdi, rax
	call	re_node_set_init_1
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rbp, rbp
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2631
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_2628
.label_2631:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	update_cur_sifted_state
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2634
	jmp	.label_2627
.label_2634:
	lea	rdi, [rdi]
	jmp	.label_2625
.label_2625:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_2633
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2636
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2630
.label_2636:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2630
.label_2630:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0xe0]
	jle	.label_2635
	nop	
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	dword ptr [rbp - 0x10], 0
	jmp	.label_2628
.label_2635:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2632
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	build_sifted_states
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2626
	mov	rsp, rsp
	jmp	.label_2627
.label_2626:
	nop	
	jmp	.label_2632
.label_2632:
	mov	rsp, rsp
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	call	update_cur_sifted_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2629
	jmp	.label_2627
.label_2629:
	mov	rbp, rbp
	jmp	.label_2625
.label_2633:
	mov	dword ptr [rbp - 4], 0
.label_2627:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], ecx
.label_2628:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x426bc0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_2639:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2640
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2645
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2643
.label_2645:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2642
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 8
	mov	rsi, rax
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	je	.label_2641
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2638
.label_2641:
	lea	rdi, [rbp - 0x44]
	lea	rdx, [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	cmp	dword ptr [rbp - 0x44], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2644
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2638
.label_2644:
	lea	rsi, [rsi]
	jmp	.label_2642
.label_2642:
	nop	
	jmp	.label_2643
.label_2643:
	mov	rbp, rbp
	jmp	.label_2637
.label_2637:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_2639
.label_2640:
	mov	dword ptr [rbp - 4], 0
.label_2638:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x426d80

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_2646
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_2652
.label_2646:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_2652:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2650
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	jmp	.label_2651
.label_2650:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	je	.label_2649
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	add_epsilon_src_nodes
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2655
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	jmp	.label_2647
.label_2655:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	je	.label_2653
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rcx + 0xd8]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	check_subexp_limits
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2656
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2647
.label_2656:
	jmp	.label_2653
.label_2653:
	jmp	.label_2649
.label_2649:
	nop	
	lea	rdi, [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	nop	
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2648
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_2647
.label_2648:
	lea	rdi, [rdi]
	jmp	.label_2651
.label_2651:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_2654
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 6
	and	dl, 1
	nop	
	movzx	esi, dl
	nop	
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_2654
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	sift_states_bkref
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	setne	r8b
	nop	
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2657
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2647
.label_2657:
	nop	
	jmp	.label_2654
.label_2654:
	mov	dword ptr [rbp - 0x2c], 0
.label_2647:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427060

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 0x20
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_2669:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2659
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 0x14
	mov	rsp, rsp
	and	edx, 1
	cmp	edx, 0
	je	.label_2664
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	sift_states_iter_mb
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
.label_2664:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 0
	nop	
	jne	.label_2661
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_node_accept
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2666
	jmp	.label_2661
.label_2666:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	nop	
	je	.label_2661
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2661
	nop	
	mov	dword ptr [rbp - 0x40], 1
.label_2661:
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_2663
	mov	rbp, rbp
	jmp	.label_2660
.label_2663:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2668
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x18]
	nop	
	mov	r9, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_dst_limits
	test	al, 1
	jne	.label_2662
	nop	
	jmp	.label_2665
.label_2662:
	jmp	.label_2660
.label_2665:
	jmp	.label_2668
.label_2668:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	nop	
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	nop	
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2658
	mov	dword ptr [rbp - 0x1c], 0xc
	jmp	.label_2667
.label_2658:
	lea	rdi, [rdi]
	jmp	.label_2660
.label_2660:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_2669
.label_2659:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0
.label_2667:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427340

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rax, [rbp - 0x2c]
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	re_acquire_state
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2670
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2672
.label_2670:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x38], 0
	mov	rbp, rbp
	jne	.label_2675
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2673
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], 0xc
	jmp	.label_2672
.label_2673:
	mov	qword ptr [rbp - 0x18], 0
.label_2677:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2674
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 0x38
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	imul	rdx, qword ptr [rsi + rdx*8], 0x18
	add	rcx, rdx
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2671
	mov	dword ptr [rbp - 0xc], 0xc
	lea	rdi, [rdi]
	jmp	.label_2672
.label_2671:
	jmp	.label_2676
.label_2676:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2677
.label_2674:
	mov	rsp, rsp
	jmp	.label_2675
.label_2675:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 0xc], eax
.label_2672:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x427520

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
.label_2699:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_2700
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jle	.label_2706
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x40]
	jge	.label_2693
.label_2706:
	jmp	.label_2687
.label_2693:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_2697
	mov	qword ptr [rbp - 0x58], -1
	mov	qword ptr [rbp - 0x10], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], 0
.label_2688:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2689
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	cmp	dword ptr [rbp - 0x1c], 8
	lea	rdi, [rdi]
	jne	.label_2686
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_2686
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	jmp	.label_2683
.label_2686:
	cmp	dword ptr [rbp - 0x1c], 9
	lea	rdi, [rdi]
	jne	.label_2684
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jne	.label_2684
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_2684:
	jmp	.label_2683
.label_2683:
	mov	rbp, rbp
	jmp	.label_2685
.label_2685:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2688
.label_2689:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jl	.label_2691
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x38]
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0
	setne	r8b
	nop	
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2705
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	jmp	.label_2681
.label_2705:
	lea	rdi, [rdi]
	jmp	.label_2691
.label_2691:
	cmp	qword ptr [rbp - 0x10], 0
	jl	.label_2679
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], 0
.label_2704:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2698
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x80], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2692
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x80], 0x18
	nop	
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2692
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2701
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	jmp	.label_2681
.label_2701:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
.label_2692:
	lea	rdi, [rdi]
	jmp	.label_2703
.label_2703:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	jmp	.label_2704
.label_2698:
	jmp	.label_2679
.label_2679:
	jmp	.label_2680
.label_2697:
	mov	qword ptr [rbp - 0x98], 0
.label_2694:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2695
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], edx
	cmp	dword ptr [rbp - 0x6c], 9
	lea	rsi, [rsi]
	je	.label_2696
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x6c], 8
	jne	.label_2678
.label_2696:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	je	.label_2682
	jmp	.label_2690
.label_2682:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], eax
	cmp	dword ptr [rbp - 0x8c], 0
	mov	rbp, rbp
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2702
	mov	eax, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_2681
.label_2702:
	lea	rdi, [rdi]
	jmp	.label_2678
.label_2678:
	mov	rbp, rbp
	jmp	.label_2690
.label_2690:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2694
.label_2695:
	jmp	.label_2680
.label_2680:
	jmp	.label_2687
.label_2687:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2699
.label_2700:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0
.label_2681:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427a90

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	search_cur_bkref_entry
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], -1
	lea	rdi, [rdi]
	jne	.label_2724
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2728
.label_2724:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 0
	mov	qword ptr [rbp - 0x10], 0
.label_2718:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2713
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edx
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_2711
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	jne	.label_2711
	jmp	.label_2714
.label_2711:
	cmp	dword ptr [rbp - 0x24], 4
	lea	rsi, [rsi]
	je	.label_2715
	jmp	.label_2714
.label_2715:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 8], 0x28
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xa8], rax
.label_2717:
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	je	.label_2727
	mov	rbp, rbp
	jmp	.label_2708
.label_2727:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xd8]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_2710
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2721
.label_2710:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_2721:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jg	.label_2709
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	je	.label_2709
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2709
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2709
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_dst_limits
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2709
	jmp	.label_2725
.label_2709:
	jmp	.label_2708
.label_2725:
	cmp	qword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	jne	.label_2723
	mov	rsp, rsp
	lea	rax, [rbp - 0x98]
	mov	rbp, rbp
	mov	ecx, 0x38
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xb4], 0
	mov	rsp, rsp
	setne	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2719
	lea	rdi, [rdi]
	jmp	.label_2707
.label_2719:
	jmp	.label_2723
.label_2723:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rdi, [rdi]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x99], al
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_2720
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 0xc
	jmp	.label_2707
.label_2720:
	lea	rsi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	call	sift_states_backward
	mov	dword ptr [rbp - 0xb4], eax
	cmp	dword ptr [rbp - 0xb4], 0
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	je	.label_2716
	jmp	.label_2707
.label_2716:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_2726
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, rax
	mov	rbp, rbp
	call	merge_state_array
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xb4], 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	nop	
	movzx	eax, r8b
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	je	.label_2712
	jmp	.label_2707
.label_2712:
	jmp	.label_2726
.label_2726:
	lea	rax, [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	qword ptr [rsi + rdx*8], rcx
	nop	
	mov	rcx, rax
	add	rcx, 0x20
	nop	
	add	rax, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb0], rcx
	call	re_node_set_contains
	nop	
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0xa8], 0x28
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xd8], rax
.label_2708:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	add	rcx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2717
	mov	rbp, rbp
	jmp	.label_2714
.label_2714:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2718
.label_2713:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], 0
.label_2707:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_2722
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
.label_2722:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
.label_2728:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rsp, 0xe0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4280a0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	je	.label_2738
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jne	.label_2750
.label_2738:
	mov	dword ptr [rbp - 0x30], 0
	nop	
	jmp	.label_2730
.label_2750:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	nop	
	jle	.label_2755
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2752
	mov	dword ptr [rbp - 0x30], 0xc
	nop	
	jmp	.label_2730
.label_2752:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
.label_2755:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
.label_2754:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2736
	jmp	.label_2740
.label_2740:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x29], cl
	lea	rsi, [rsi]
	jl	.label_2747
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	setg	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], sil
.label_2747:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	nop	
	jne	.label_2733
	mov	rbp, rbp
	jmp	.label_2737
.label_2733:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2740
.label_2737:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], 0
	jl	.label_2744
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2748
.label_2744:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 - 8], rax
.label_2748:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2743
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_2753
.label_2743:
	jmp	.label_2745
.label_2753:
	jmp	.label_2729
.label_2736:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_2756
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_2735
	jmp	.label_2745
.label_2735:
	mov	rsp, rsp
	jmp	.label_2749
.label_2756:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_2751
	nop	
	jmp	.label_2745
.label_2751:
	jmp	.label_2749
.label_2749:
	jmp	.label_2729
.label_2729:
	jmp	.label_2754
.label_2745:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	add	rax, qword ptr [rcx + 8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jle	.label_2732
	nop	
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	jl	.label_2732
	mov	rsp, rsp
	jmp	.label_2731
.label_2731:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2734
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x38], rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_2746
	jmp	.label_2739
.label_2746:
	lea	rsi, [rsi]
	jmp	.label_2741
.label_2734:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	cmp	rax, 0
	mov	rbp, rbp
	jge	.label_2742
	jmp	.label_2739
.label_2742:
	lea	rdi, [rdi]
	jmp	.label_2741
.label_2741:
	mov	rsp, rsp
	jmp	.label_2731
.label_2739:
	lea	rdi, [rdi]
	jmp	.label_2732
.label_2732:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	dword ptr [rbp - 0x30], 0
.label_2730:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4285f0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, 0x18
	lea	rdi, [rdi]
	mov	r9d, r8d
	mov	rbp, rbp
	lea	r10, [rbp - 0x78]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rcx + 0x38]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x50], 0x18
	nop	
	add	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, r10
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	call	memset
	nop	
	mov	qword ptr [rbp - 0x80], 0
.label_2760:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2766
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_2758
	jmp	.label_2759
.label_2758:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	rsp, rsp
	and	edx, 8
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_2763
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jle	.label_2764
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2762
.label_2764:
	lea	rsi, [rsi]
	mov	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2762
.label_2762:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	call	re_node_set_contains
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2761
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_2772
.label_2761:
	cmp	qword ptr [rbp - 0x38], 0
	jle	.label_2757
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2757
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2757
.label_2772:
	lea	rdi, [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x58], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	mov	rbp, rbp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2770
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rbp, rbp
	jmp	.label_2765
.label_2770:
	jmp	.label_2757
.label_2757:
	jmp	.label_2763
.label_2763:
	jmp	.label_2759
.label_2759:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_2760
.label_2766:
	nop	
	mov	qword ptr [rbp - 0x80], 0
.label_2771:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2767
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2768
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	re_node_set_contains
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
.label_2768:
	lea	rsi, [rsi]
	jmp	.label_2769
.label_2769:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	jmp	.label_2771
.label_2767:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], 0
.label_2765:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x428990

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x70], rdx
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], r8
	mov	qword ptr [rbp - 8], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	search_cur_bkref_entry
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x50], 0
.label_2775:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2773
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x78]
	nop	
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0x58]
	jne	.label_2776
	lea	rsi, [rsi]
	jmp	.label_2774
.label_2776:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 1
	mov	rsp, rsp
	jmp	.label_2777
.label_2774:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2775
.label_2773:
	mov	byte ptr [rbp - 0x41], 0
.label_2777:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x428b40

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0xd8]
	imul	rdx, qword ptr [rbp - 0x40], 0x28
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_2778
	mov	dword ptr [rbp - 0x34], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_2780
.label_2778:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2779
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_2780
.label_2779:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x10]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x14], esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 0x18]
	nop	
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	shl	esi, 1
	mov	rsp, rsp
	or	esi, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_2781
	mov	dword ptr [rbp - 0x34], 0
	mov	rbp, rbp
	jmp	.label_2780
.label_2781:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x30]
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
.label_2780:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x428c70

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], r8
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x50], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x70], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
.label_2784:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2799
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	esi, edx
	sub	esi, 4
	mov	dword ptr [rbp - 0x88], edx
	mov	dword ptr [rbp - 0x84], esi
	nop	
	je	.label_2802
	jmp	.label_2791
.label_2791:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_2789
	lea	rsi, [rsi]
	jmp	.label_2798
.label_2798:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	sub	eax, 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_2800
	jmp	.label_2804
.label_2802:
	cmp	qword ptr [rbp - 0x60], -1
	nop	
	je	.label_2792
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x60], 0x28
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2796:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_2788
	jmp	.label_2782
.label_2788:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0x40
	jge	.label_2795
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	movzx	eax, word ptr [rdx + 0x22]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	mov	rbp, rbp
	jne	.label_2795
	lea	rdi, [rdi]
	jmp	.label_2782
.label_2795:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jne	.label_2785
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2797
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_2787
.label_2797:
	mov	dword ptr [rbp - 0x54], 0
	nop	
	jmp	.label_2787
.label_2785:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_2786
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_2787
.label_2786:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_2794
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 2
	cmp	eax, 0
	nop	
	je	.label_2794
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_2787
.label_2794:
	nop	
	cmp	qword ptr [rbp - 0x48], 0x40
	jge	.label_2801
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rsi + 0x22]
	mov	edi, eax
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	mov	r8w, di
	mov	rsp, rsp
	mov	word ptr [rsi + 0x22], r8w
.label_2801:
	lea	rsi, [rsi]
	jmp	.label_2782
.label_2782:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 0x28
	nop	
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2796
	nop	
	jmp	.label_2792
.label_2792:
	lea	rdi, [rdi]
	jmp	.label_2790
.label_2789:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_2803
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2803
	mov	dword ptr [rbp - 0x54], 0xffffffff
	mov	rbp, rbp
	jmp	.label_2787
.label_2803:
	mov	rsp, rsp
	jmp	.label_2790
.label_2800:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 2
	nop	
	cmp	eax, 0
	je	.label_2793
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jne	.label_2793
	mov	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	jmp	.label_2787
.label_2793:
	jmp	.label_2790
.label_2804:
	mov	rsp, rsp
	jmp	.label_2790
.label_2790:
	jmp	.label_2783
.label_2783:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_2784
.label_2799:
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
.label_2787:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x429050

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], r8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jle	.label_2805
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	jg	.label_2805
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	nop	
	je	.label_2806
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	re_node_set_contains
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_2805
.label_2806:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_2805:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x429170

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2807
	nop	
	mov	qword ptr [rbp - 8], 0
.label_2809:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	jge	.label_2808
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_2809
.label_2808:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
.label_2807:
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x429230

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x18], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 8
	mov	rbp, rbp
	jne	.label_2815
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jge	.label_2813
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], -1
.label_2813:
	nop	
	jmp	.label_2810
.label_2815:
	cmp	dword ptr [rbp - 0xc], 9
	jne	.label_2818
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jge	.label_2812
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jge	.label_2817
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rdx, 4
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2816
.label_2817:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	nop	
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x13
	and	edx, 1
	cmp	edx, 0
	je	.label_2811
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], -1
	je	.label_2811
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	jmp	.label_2814
.label_2811:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
.label_2814:
	mov	rsp, rsp
	jmp	.label_2816
.label_2816:
	jmp	.label_2812
.label_2812:
	jmp	.label_2818
.label_2818:
	jmp	.label_2810
.label_2810:
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x429460

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x18], r8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	add	rdx, -1
	mov	qword ptr [rcx], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jl	.label_2819
	mov	rsp, rsp
	jmp	.label_2820
.label_2819:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.26_0
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	rsp, rsp
	mov	edx, 0x555
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
.label_2820:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x20]
	nop	
	mov	qword ptr [rax + 8], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4295f0

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xb0
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], r8
	nop	
	mov	qword ptr [rbp - 0x50], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	nop	
	mov	r10d, dword ptr [rax + 8]
	and	r10d, 0xff
	mov	rsp, rsp
	and	r10d, 8
	cmp	r10d, 0
	lea	rdi, [rdi]
	je	.label_2850
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x59]
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2843
	mov	qword ptr [rbp - 0x20], -2
	lea	rsi, [rsi]
	jmp	.label_2824
.label_2843:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x68], 0
.label_2837:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2828
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2847
	jmp	.label_2836
.label_2847:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_2851
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2821
.label_2851:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2833
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2824
.label_2833:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_2831
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0xa8]
	mov	r9, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	push_fail_stack
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2831
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_2824
.label_2831:
	jmp	.label_2830
.label_2830:
	jmp	.label_2828
.label_2821:
	jmp	.label_2836
.label_2836:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_2837
.label_2828:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_2824
.label_2850:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	lea	rdi, [rdi]
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_2852
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_2825
.label_2852:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 4
	jne	.label_2840
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0xa8]
	nop	
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2822
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0xa8]
	nop	
	cmp	qword ptr [rax], -1
	je	.label_2849
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], -1
	mov	rbp, rbp
	jne	.label_2823
.label_2849:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	jmp	.label_2824
.label_2823:
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_2841
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa0]
	jl	.label_2844
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0xa8]
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2846
.label_2844:
	mov	qword ptr [rbp - 0x20], -1
	jmp	.label_2824
.label_2846:
	mov	rsp, rsp
	jmp	.label_2841
.label_2841:
	jmp	.label_2848
.label_2848:
	mov	rsp, rsp
	jmp	.label_2822
.label_2822:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_2839
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	mov	al, byte ptr [rbp - 0x59]
	nop	
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2827
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_2824
.label_2827:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2832
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2824
.label_2832:
	jmp	.label_2839
.label_2839:
	jmp	.label_2840
.label_2840:
	jmp	.label_2825
.label_2825:
	cmp	qword ptr [rbp - 0xa0], 0
	nop	
	jne	.label_2838
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rcx]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_node_accept
	test	al, 1
	jne	.label_2838
	lea	rsi, [rsi]
	jmp	.label_2826
.label_2838:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0xa0], 0
	nop	
	jne	.label_2829
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	jmp	.label_2842
.label_2829:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
.label_2842:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_2834
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0xa8]
	lea	rdi, [rdi]
	jg	.label_2835
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2835
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2834
.label_2835:
	mov	qword ptr [rbp - 0x20], -1
	nop	
	jmp	.label_2824
.label_2834:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2824
.label_2826:
	jmp	.label_2845
.label_2845:
	mov	qword ptr [rbp - 0x20], -1
.label_2824:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0xb0
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x429d00

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x20], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jne	.label_2853
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	shl	rcx, 1
	imul	rsi, rcx, 0x30
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jne	.label_2856
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2854
.label_2856:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
.label_2853:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 4
	mov	rsp, rsp
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2855
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2854
.label_2855:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	shl	rdx, 4
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 0x18
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_2854:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x429f10

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
	jne	.label_2857
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2860
.label_2857:
	mov	rbp, rbp
	jmp	.label_2858
.label_2858:
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
	jne	.label_2859
	jmp	.label_2861
.label_2859:
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
	je	.label_2858
.label_2861:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2860:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a000

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
	jne	.label_2864
	test	byte ptr [rbp - 0x15], 1
	je	.label_2863
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_2864
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2863
.label_2864:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_2862
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2862:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_2865
.label_2863:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_2865:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a0e0

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
	je	.label_2867
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2868
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2866
.label_2868:
	mov	byte ptr [rbp - 0xd], 0
.label_2866:
	jmp	.label_2867
.label_2867:
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
	.section	.text
	.align	16
	#Procedure 0x42a180

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
	jne	.label_2870
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2870:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2869
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2869:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a200

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
	ja	.label_2871
	jmp	.label_2873
.label_2873:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2872
.label_2871:
	lea	rsi, [rsi]
	jmp	.label_2872
.label_2872:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a260
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
	jb	.label_2874
	jmp	.label_2877
.label_2877:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2874
	jmp	.label_2875
.label_2875:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2876
	jmp	.label_2874
.label_2874:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2878
.label_2876:
	mov	byte ptr [rbp - 1], 0
.label_2878:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a2d0
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
	jb	.label_2879
	jmp	.label_2882
.label_2882:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2880
	jmp	.label_2879
.label_2879:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2881
.label_2880:
	mov	byte ptr [rbp - 1], 0
.label_2881:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a320
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2883
	jmp	.label_2884
.label_2884:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2885
.label_2883:
	mov	byte ptr [rbp - 1], 0
.label_2885:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a350
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2886
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2886:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a380
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
	jb	.label_2887
	jmp	.label_2889
.label_2889:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2890
	jmp	.label_2887
.label_2887:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2888
.label_2890:
	mov	byte ptr [rbp - 1], 0
.label_2888:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a3d0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2891
	jmp	.label_2893
.label_2893:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2892
.label_2891:
	mov	byte ptr [rbp - 1], 0
.label_2892:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a410
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2894
	jmp	.label_2896
.label_2896:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2895
.label_2894:
	mov	byte ptr [rbp - 1], 0
.label_2895:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a450
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2897
	jmp	.label_2899
.label_2899:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2898
.label_2897:
	mov	byte ptr [rbp - 1], 0
.label_2898:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a490
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2900
	jmp	.label_2902
.label_2902:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2901
.label_2900:
	mov	byte ptr [rbp - 1], 0
.label_2901:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a4d0
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
	jb	.label_2903
	jmp	.label_2906
.label_2906:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2903
	jmp	.label_2907
.label_2907:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2903
	jmp	.label_2905
.label_2905:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_2908
	jmp	.label_2903
.label_2903:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2904
.label_2908:
	mov	byte ptr [rbp - 1], 0
.label_2904:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a550
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
	jb	.label_2909
	jmp	.label_2911
.label_2911:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2912
	jmp	.label_2909
.label_2909:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2910
.label_2912:
	mov	byte ptr [rbp - 1], 0
.label_2910:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a5a0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2913
	jmp	.label_2915
.label_2915:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2914
.label_2913:
	mov	byte ptr [rbp - 1], 0
.label_2914:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a5e0
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
	jb	.label_2916
	jmp	.label_2918
.label_2918:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2916
	jmp	.label_2917
.label_2917:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2919
	jmp	.label_2916
.label_2916:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2920
.label_2919:
	mov	byte ptr [rbp - 1], 0
.label_2920:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a650

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2921
	jmp	.label_2923
.label_2923:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2922
.label_2921:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2922:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42a690
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2924
	jmp	.label_2926
.label_2926:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2925
.label_2924:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2925:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
