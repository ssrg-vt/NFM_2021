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
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	mov	rsp, rsp
	jmp	.label_7
.label_7:
	movabs	rdi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
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
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
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
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_8:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
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
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_10:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_15
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_10
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_13
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
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
	mov	dword ptr [rbp - 0x28], eax
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
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	nop	
	movabs	rdi, OFFSET FLAT:.str.45
	nop	
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.47
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
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
	mov	dword ptr [rbp - 0x3c], eax
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
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	byte ptr [rbp - 0x21], 1
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0x38], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x40], rax
	call	atexit
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	dword ptr [rbp - 0x44], eax
.label_42:
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:longopts
	mov	rsp, rsp
	xor	eax, eax
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	getopt_long
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_57
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	mov	dword ptr [rbp - 0x4c], ecx
	nop	
	je	.label_59
	nop	
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x50], eax
	je	.label_22
	mov	rsp, rsp
	jmp	.label_25
.label_25:
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	je	.label_27
	mov	rsp, rsp
	jmp	.label_23
.label_23:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x58], eax
	je	.label_30
	jmp	.label_34
.label_34:
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_36
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x60], eax
	je	.label_40
	lea	rsi, [rsi]
	jmp	.label_43
.label_43:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x69
	nop	
	mov	dword ptr [rbp - 0x64], eax
	je	.label_46
	mov	rsp, rsp
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	je	.label_51
	jmp	.label_52
.label_52:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	eax, 0x6e
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_53
	nop	
	jmp	.label_56
.label_56:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x70], eax
	je	.label_58
	mov	rbp, rbp
	jmp	.label_16
.label_16:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x74], eax
	je	.label_18
	lea	rdi, [rdi]
	jmp	.label_50
.label_50:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x76
	nop	
	mov	dword ptr [rbp - 0x78], eax
	lea	rdi, [rdi]
	je	.label_37
	jmp	.label_28
.label_28:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	je	.label_29
	mov	rsp, rsp
	jmp	.label_31
.label_40:
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
	jne	.label_41
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
.label_41:
	nop	
	jmp	.label_17
.label_27:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:body_type
	movabs	rsi, OFFSET FLAT:body_regex
	nop	
	movabs	rdx, OFFSET FLAT:body_fastmap
	lea	rsi, [rsi]
	call	build_type_arg
	test	al, 1
	mov	rsp, rsp
	jne	.label_20
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x21], 0
.label_20:
	jmp	.label_17
.label_36:
	movabs	rdi, OFFSET FLAT:footer_type
	movabs	rsi, OFFSET FLAT:footer_regex
	movabs	rdx, OFFSET FLAT:footer_fastmap
	call	build_type_arg
	nop	
	test	al, 1
	jne	.label_47
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	nop	
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0
.label_47:
	jmp	.label_17
.label_37:
	movabs	rdi, OFFSET FLAT:.str.19
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	nop	
	movabs	rsi, 0x8000000000000000
	nop	
	movabs	rdx, 0x7fffffffffffffff
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [starting_line_number]],  rax
	jmp	.label_17
.label_46:
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
	jmp	.label_17
.label_58:
	nop	
	mov	byte ptr [byte ptr [reset_numbers]],  0
	lea	rdi, [rdi]
	jmp	.label_17
.label_51:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	ecx, 1
	mov	rsp, rsp
	mov	esi, ecx
	movabs	rdx, 0x7fffffffffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str_0
	nop	
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [blank_join]],  rax
	jmp	.label_17
.label_18:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [separator_str]],  rax
	nop	
	jmp	.label_17
.label_29:
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
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
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoimax
	mov	rbp, rbp
	mov	r9d, eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [lineno_width]],  r9d
	jmp	.label_17
.label_53:
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_33
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:FORMAT_LEFT
	mov	qword ptr [word ptr [lineno_format]],  rax
	mov	rbp, rbp
	jmp	.label_55
.label_33:
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.24
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_38
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:FORMAT_RIGHT_NOLZ
	mov	rsp, rsp
	mov	qword ptr [word ptr [lineno_format]],  rax
	lea	rsi, [rsi]
	jmp	.label_26
.label_38:
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jne	.label_35
	nop	
	movabs	rax, OFFSET FLAT:FORMAT_RIGHT_LZ
	mov	qword ptr [word ptr [lineno_format]],  rax
	jmp	.label_54
.label_35:
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0
.label_54:
	jmp	.label_26
.label_26:
	mov	rsp, rsp
	jmp	.label_55
.label_55:
	jmp	.label_17
.label_30:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [section_del]],  rax
	jmp	.label_17
.label_22:
	xor	edi, edi
	nop	
	call	usage
.label_59:
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
	mov	qword ptr [rbp - 0xc8], rcx
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
.label_31:
	nop	
	mov	byte ptr [rbp - 0x21], 0
.label_17:
	lea	rsi, [rsi]
	jmp	.label_42
.label_57:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_44
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_44:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [section_del]]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20], 3
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
	mov	rsi, qword ptr [rbp - 0x20]
	shl	rsi, 1
	nop	
	mov	qword ptr [word ptr [body_del_len]],  rsi
	mov	rsi,  qword ptr [word ptr [body_del_len]]
	add	rsi, 1
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
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
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [footer_del_len]],  rsi
	mov	rsi,  qword ptr [word ptr [footer_del_len]]
	lea	rdi, [rdi]
	add	rsi, 1
	mov	rdi, rsi
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	call	xmalloc
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:line_buf
	mov	rsp, rsp
	mov	qword ptr [word ptr [footer_del]],  rax
	nop	
	mov	rax,  qword ptr [word ptr [footer_del]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [section_del]]
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rdi, rax
	call	stpcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe8], rax
	call	initbuffer
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [separator_str]]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	movsxd	rax,  dword ptr [dword ptr [lineno_width]]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
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
	add	rax, qword ptr [rbp - 0x20]
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
	add	rax, qword ptr [rbp - 0x20]
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
	cmp	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_45
	movabs	rdi, OFFSET FLAT:.str.30
	call	nl_file
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
	jmp	.label_19
.label_45:
	mov	rsp, rsp
	jmp	.label_32
.label_32:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	jge	.label_24
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	call	nl_file
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
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
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [optind]],  eax
	nop	
	jmp	.label_32
.label_24:
	jmp	.label_19
.label_19:
	mov	rbp, rbp
	test	byte ptr [byte ptr [have_read_stdin]],  1
	nop	
	je	.label_48
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_48
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
.label_48:
	mov	eax, 1
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x21]
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
	#Procedure 0x402930

	.globl build_type_arg
	.type build_type_arg, @function
build_type_arg:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x21], 1
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	eax, byte ptr [rdx]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	sub	ecx, 0x61
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], ecx
	je	.label_65
	jmp	.label_67
.label_67:
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	je	.label_65
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	eax, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	je	.label_66
	mov	rbp, rbp
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x38], eax
	jne	.label_64
	mov	rsp, rsp
	jmp	.label_65
.label_65:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	nop	
	jmp	.label_61
.label_66:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [word ptr [optarg]],  rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  0x2c6
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	call	strlen
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_60
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_60:
	jmp	.label_61
.label_64:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], 0
.label_61:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl nl_file
	.type nl_file, @function
nl_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
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
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_72
.label_71:
	movabs	rsi, OFFSET FLAT:.str.65
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
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
	mov	byte ptr [rbp - 1], 0
	jmp	.label_69
.label_68:
	jmp	.label_72
.label_72:
	mov	esi, 2
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	fadvise
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	process_file
	mov	rdi, qword ptr [rbp - 0x18]
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
	mov	byte ptr [rbp - 1], 0
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
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	clearerr_unlocked
	jmp	.label_74
.label_70:
	mov	rdi, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x24], ecx
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_69
.label_75:
	jmp	.label_74
.label_74:
	mov	byte ptr [rbp - 1], 1
.label_69:
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl process_file
	.type process_file, @function
process_file:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
.label_78:
	movabs	rdi, OFFSET FLAT:line_buf
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	ja	.label_76
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_77]]
	mov	rsp, rsp
	jmp	rcx
.label_2984:
	mov	rbp, rbp
	call	proc_header
	nop	
	jmp	.label_76
.label_2985:
	call	proc_body
	jmp	.label_76
.label_2986:
	mov	rsp, rsp
	call	proc_footer
	jmp	.label_76
.label_2987:
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
	#Procedure 0x402da0

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
	#Procedure 0x402f30

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
	#Procedure 0x402fb0

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
	#Procedure 0x403030

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
	#Procedure 0x4030b0

	.globl proc_text
	.type proc_text, @function
proc_text:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + current_type]]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x61
	mov	dword ptr [rbp - 4], ecx
	mov	dword ptr [rbp - 8], edx
	lea	rdi, [rdi]
	je	.label_107
	jmp	.label_103
.label_103:
	nop	
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x6e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	je	.label_105
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x70
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	je	.label_92
	jmp	.label_100
.label_100:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	je	.label_102
	jmp	.label_96
.label_107:
	cmp	qword ptr [word ptr [blank_join]],  1
	lea	rdi, [rdi]
	jle	.label_109
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [label_80]]
	lea	rdi, [rdi]
	jb	.label_95
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [proc_text.blank_lines]]
	add	rax, 1
	mov	qword ptr [word ptr [proc_text.blank_lines]],  rax
	cmp	rax,  qword ptr [word ptr [blank_join]]
	nop	
	jne	.label_104
.label_95:
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
	mov	dword ptr [rbp - 0x18], eax
.label_98:
	jmp	.label_91
.label_109:
	call	print_lineno
.label_91:
	mov	rsp, rsp
	jmp	.label_96
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
	mov	dword ptr [rbp - 0x1c], eax
.label_108:
	mov	rbp, rbp
	jmp	.label_96
.label_105:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [print_no_line_fmt]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_96
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
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x28]
	call	rpl_re_search
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rax, -2
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x38], rax
	je	.label_106
	jmp	.label_93
.label_93:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, -1
	mov	qword ptr [rbp - 0x40], rax
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
	mov	dword ptr [rbp - 0x44], esi
	nop	
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x44]
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
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_94
.label_97:
	call	print_lineno
.label_94:
	jmp	.label_96
.label_96:
	mov	eax, 1
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [label_83]]
	mov	rdx,  qword ptr [word ptr [label_80]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x50], rax
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403360

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
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rcx,  qword ptr [word ptr [line_no]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
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
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [line_no]],  rax
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403410
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
	#Procedure 0x403440
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
	#Procedure 0x403470

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
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_115
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
	jmp	.label_114
.label_115:
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
.label_114:
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
	#Procedure 0x4035a0

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
	#Procedure 0x4035e0

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
	je	.label_117
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
.label_117:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403640

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
	#Procedure 0x403680

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
	#Procedure 0x4036c0

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_124
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_118
.label_124:
	jmp	.label_121
.label_121:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	nop	
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x20], -1
	jne	.label_119
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	je	.label_126
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_123
.label_126:
	nop	
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_118
.label_123:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	cmp	ecx, edx
	jne	.label_122
	mov	rsp, rsp
	jmp	.label_120
.label_122:
	movsx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 0x20], eax
.label_119:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_125
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2realloc
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_125:
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_121
.label_120:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_118:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403890
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
	#Procedure 0x4038c0

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
	jne	.label_127
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_127:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_130
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_131
.label_130:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_131:
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
	jl	.label_128
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
	jne	.label_128
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
	jne	.label_129
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_129:
	jmp	.label_128
.label_128:
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
	#Procedure 0x403a40
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
	je	.label_132
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_133
.label_132:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_133
.label_133:
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
	#Procedure 0x403af0
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
	je	.label_134
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_135
.label_134:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_135
.label_135:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b50
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
	je	.label_136
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_137
.label_136:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_137
.label_137:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bb0

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
	je	.label_138
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_139
.label_138:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_139
.label_139:
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
	#Procedure 0x403cb0
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
	jne	.label_140
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_140:
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
	#Procedure 0x403d10

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
	jne	.label_141
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_141:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
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
	#Procedure 0x403db0
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
	je	.label_144
	mov	rax, qword ptr [rbp - 0x28]
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
	#Procedure 0x403eb0

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
.label_264:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_322
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_327]]
	jmp	rcx
.label_2994:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2993:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_336
	jmp	.label_339
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_290
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_290:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_336
.label_336:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_147
.label_2995:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_147
.label_2996:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_159
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_159:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_173
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_194:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_180
	jmp	.label_181
.label_181:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_183
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_183:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_194
.label_180:
	mov	rbp, rbp
	jmp	.label_173
.label_173:
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
	jmp	.label_147
.label_2991:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_2990:
	mov	byte ptr [rbp - 0x7b], 1
.label_2992:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_205
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_205:
	jmp	.label_150
.label_150:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_209
	jmp	.label_214
.label_214:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_232
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_209
.label_209:
	movabs	rax, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_147
.label_2989:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_147
.label_322:
	call	abort
.label_147:
	mov	qword ptr [rbp - 0x58], 0
.label_207:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_239
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
	jmp	.label_326
.label_239:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_326:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_259
	mov	rbp, rbp
	jmp	.label_267
.label_259:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_246
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_246
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_246
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_281
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_281
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_295
.label_281:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_295:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_246
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
	jne	.label_246
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_312
	jmp	.label_198
.label_312:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_246:
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
	ja	.label_317
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_329]]
	nop	
	jmp	rcx
.label_2965:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_334
	mov	rsp, rsp
	jmp	.label_338
.label_338:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_342
	jmp	.label_198
.label_342:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_302
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_302
	nop	
	jmp	.label_151
.label_151:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_149
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_149:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_158
.label_158:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_162
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_162:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_170
.label_170:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_178
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_178:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_302:
	lea	rsi, [rsi]
	jmp	.label_184
.label_184:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_186
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_186:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_190
.label_190:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_197
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_197
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_197
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_197
	nop	
	jmp	.label_242
.label_242:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_208:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_215
.label_215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_220
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_220:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_197
.label_197:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_231
.label_334:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_234
	mov	rbp, rbp
	jmp	.label_240
.label_234:
	jmp	.label_231
.label_231:
	jmp	.label_177
.label_2976:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_244
	mov	rbp, rbp
	jmp	.label_250
.label_250:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_253
	jmp	.label_261
.label_244:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_263
	jmp	.label_198
.label_263:
	jmp	.label_175
.label_253:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_171
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_171
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_171
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
	je	.label_283
	nop	
	jmp	.label_187
.label_187:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_283
	jmp	.label_296
.label_296:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_283
	jmp	.label_300
.label_300:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_283
	jmp	.label_260
.label_260:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_307
	jmp	.label_283
.label_283:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_314
	jmp	.label_198
.label_314:
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
	jae	.label_320
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_320:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_335
.label_335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_341
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_341:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_346
.label_346:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_146
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_146:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_157
.label_157:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_202
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_202:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_167
.label_307:
	jmp	.label_167
.label_167:
	jmp	.label_171
.label_171:
	jmp	.label_175
.label_261:
	jmp	.label_175
.label_175:
	jmp	.label_177
.label_2966:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_179
.label_2967:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_179
.label_2971:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_179
.label_2969:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_163
.label_2972:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_163
.label_2968:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_163
.label_2970:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_179
.label_2977:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_328
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_193
	nop	
	jmp	.label_198
.label_193:
	lea	rsi, [rsi]
	jmp	.label_165
.label_328:
	test	byte ptr [rbp - 0x79], 1
	je	.label_200
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_200
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_200
	jmp	.label_165
.label_200:
	jmp	.label_163
.label_163:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_204
	test	byte ptr [rbp - 0x7b], 1
	je	.label_204
	jmp	.label_198
.label_204:
	mov	rsp, rsp
	jmp	.label_179
.label_179:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_211
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_213
.label_211:
	jmp	.label_177
.label_2978:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_217
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_221
	jmp	.label_225
.label_217:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_221
.label_225:
	nop	
	jmp	.label_177
.label_221:
	jmp	.label_230
.label_230:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_284
	lea	rsi, [rsi]
	jmp	.label_177
.label_284:
	nop	
	jmp	.label_238
.label_238:
	mov	byte ptr [rbp - 0x83], 1
.label_2973:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_243
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_243
	jmp	.label_198
.label_243:
	lea	rsi, [rsi]
	jmp	.label_177
.label_2975:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_249
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_258
	jmp	.label_198
.label_258:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_216
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_216
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_216:
	jmp	.label_270
.label_270:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_272
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_280
.label_280:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_286
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_286:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_292
.label_292:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_218
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_218:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_249:
	lea	rsi, [rsi]
	jmp	.label_177
.label_2974:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_177
.label_317:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_308
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
	jmp	.label_172
.label_308:
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
	jne	.label_337
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_337:
	jmp	.label_313
.label_313:
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
	jne	.label_160
	jmp	.label_166
.label_160:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_168
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_166
.label_168:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_174
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_228:
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
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_330:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_191
	jmp	.label_195
.label_191:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_228
.label_195:
	jmp	.label_166
.label_174:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_201
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_201
	mov	qword ptr [rbp - 0xb8], 1
.label_247:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_309
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
	jb	.label_206
	jmp	.label_222
.label_222:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_206
	jmp	.label_227
.label_227:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_206
	jmp	.label_235
.label_235:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_236
	mov	rsp, rsp
	jmp	.label_206
.label_206:
	mov	rsp, rsp
	jmp	.label_198
.label_236:
	jmp	.label_148
.label_148:
	mov	rsp, rsp
	jmp	.label_156
.label_156:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_247
.label_309:
	mov	rbp, rbp
	jmp	.label_201
.label_201:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_262
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_262:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_265
.label_265:
	lea	rsi, [rsi]
	jmp	.label_271
.label_271:
	jmp	.label_274
.label_274:
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
	jne	.label_313
.label_166:
	jmp	.label_172
.label_172:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_287
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_293
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_293
.label_287:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_266:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_301
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_301
	jmp	.label_304
.label_304:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_306
	jmp	.label_198
.label_306:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_311
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_311
	lea	rdi, [rdi]
	jmp	.label_318
.label_318:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_321
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_325
.label_325:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_343
.label_343:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_310
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_311:
	jmp	.label_152
.label_152:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_154
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_154:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_241
.label_241:
	jmp	.label_164
.label_164:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_248
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
.label_248:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_345
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
.label_345:
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
	jmp	.label_189
.label_301:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_199
	lea	rdi, [rdi]
	jmp	.label_275
.label_275:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_203
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_203:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_199:
	nop	
	jmp	.label_189
.label_189:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_210
	jmp	.label_192
.label_210:
	lea	rsi, [rsi]
	jmp	.label_324
.label_324:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_219
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_219
	lea	rsi, [rsi]
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_226
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_233
.label_233:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_316:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_219:
	nop	
	jmp	.label_252
.label_252:
	mov	rsp, rsp
	jmp	.label_254
.label_254:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_257
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_257:
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
	jmp	.label_266
.label_192:
	mov	rsp, rsp
	jmp	.label_165
.label_293:
	lea	rsi, [rsi]
	jmp	.label_177
.label_177:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_333
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_285
.label_333:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_288
.label_285:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_288
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
	jne	.label_289
.label_288:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_289
	mov	rsp, rsp
	jmp	.label_165
.label_289:
	nop	
	jmp	.label_213
.label_213:
	jmp	.label_299
.label_299:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_303
	jmp	.label_198
.label_303:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_273
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_273
	lea	rdi, [rdi]
	jmp	.label_315
.label_315:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_319
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_319:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_331:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_340
.label_340:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_344
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_344:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_273:
	jmp	.label_153
.label_153:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_155
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_155:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_161
.label_161:
	nop	
	jmp	.label_165
.label_165:
	jmp	.label_256
.label_256:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_169
	test	byte ptr [rbp - 0x82], 1
	jne	.label_169
	lea	rdi, [rdi]
	jmp	.label_294
.label_294:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_176
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_176:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_185
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_185:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_169:
	jmp	.label_196
.label_196:
	nop	
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_245
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_245:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_297
	mov	byte ptr [rbp - 0x7e], 0
.label_297:
	mov	rbp, rbp
	jmp	.label_240
.label_240:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_207
.label_267:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_212
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_212
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_212
	nop	
	jmp	.label_198
.label_212:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_223
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_223
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_223
	test	byte ptr [rbp - 0x7e], 1
	je	.label_229
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
	jmp	.label_251
.label_229:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_255
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_255
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_264
.label_255:
	jmp	.label_268
.label_268:
	mov	rbp, rbp
	jmp	.label_223
.label_223:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_269
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_269
	mov	rbp, rbp
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_277
	lea	rdi, [rdi]
	jmp	.label_279
.label_279:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_282
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_276
.label_277:
	jmp	.label_269
.label_269:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_298
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_298:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_251
.label_198:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_305
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_305
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_305:
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
.label_251:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057d0
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
	#Procedure 0x405840

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
	je	.label_347
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_348
.label_347:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_348
.label_348:
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
	je	.label_349
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_349:
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
	#Procedure 0x405a10
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
	#Procedure 0x405b20

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
	#Procedure 0x405b70

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
	jge	.label_359
	call	abort
.label_359:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_362
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
	jge	.label_355
	call	xalloc_die
.label_355:
	test	byte ptr [rbp - 0x31], 1
	je	.label_356
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_360
.label_356:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_360:
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
	je	.label_358
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_350]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_358:
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
.label_362:
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
	ja	.label_357
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
	je	.label_361
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_361:
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
.label_357:
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
	#Procedure 0x405ea0

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
	#Procedure 0x405ee0
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
	#Procedure 0x405f10
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
	#Procedure 0x405f50

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
	#Procedure 0x405fb0

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
	jne	.label_363
	call	abort
.label_363:
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
	#Procedure 0x406050

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
	#Procedure 0x4060c0
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
	#Procedure 0x406100
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
	#Procedure 0x406140

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
	#Procedure 0x4061f0

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
	#Procedure 0x406230

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
	#Procedure 0x406260
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
	#Procedure 0x4062a0

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
	#Procedure 0x406390

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
	#Procedure 0x4063e0

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
	#Procedure 0x406480
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
	#Procedure 0x4064d0
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
	#Procedure 0x406530

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
	#Procedure 0x406570
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
	#Procedure 0x4065b0

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
	#Procedure 0x4065f0

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
	#Procedure 0x406630

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
	je	.label_367
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_364
.label_367:
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
	jne	.label_365
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
	jmp	.label_364
.label_365:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_366
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
	jmp	.label_364
.label_366:
	nop	
	movabs	rax, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_364:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406770

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
	je	.label_370
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
	jmp	.label_369
.label_370:
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
.label_369:
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
	ja	.label_372
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_371]]
	jmp	rcx
.label_3006:
	jmp	.label_368
.label_3007:
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
	jmp	.label_368
.label_3008:
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
	jmp	.label_368
.label_3009:
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
	jmp	.label_368
.label_3010:
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
	jmp	.label_368
.label_3011:
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
	jmp	.label_368
.label_3012:
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
	jmp	.label_368
.label_3013:
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
	jmp	.label_368
.label_3014:
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
	jmp	.label_368
.label_3015:
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_368
.label_372:
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
.label_368:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ee0
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
.label_375:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_373
	mov	rbp, rbp
	jmp	.label_374
.label_374:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_375
.label_373:
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
	#Procedure 0x406f90

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
.label_378:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_377
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_380
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
	jmp	.label_381
.label_380:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_381:
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
.label_377:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_376
	mov	rsp, rsp
	jmp	.label_379
.label_376:
	jmp	.label_382
.label_382:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_378
.label_379:
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
	#Procedure 0x4070f0

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
	je	.label_383
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
.label_383:
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
	#Procedure 0x4072a0
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
	#Procedure 0x407350
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
	#Procedure 0x4073b0

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
	jne	.label_385
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_385
	lea	rdi, [rdi]
	call	xalloc_die
.label_385:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407410
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
	jae	.label_386
	mov	rsp, rsp
	call	xalloc_die
.label_386:
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
	#Procedure 0x407490

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
	jne	.label_387
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_387
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_389
.label_387:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_388
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_388
	lea	rsi, [rsi]
	call	xalloc_die
.label_388:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407540

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
	jne	.label_390
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_392
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
.label_392:
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
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_391
	call	xalloc_die
.label_391:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_393:
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
	#Procedure 0x407670

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
	#Procedure 0x4076a0

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
	#Procedure 0x4076e0
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
	#Procedure 0x407730
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
	jb	.label_395
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_396
.label_395:
	lea	rsi, [rsi]
	call	xalloc_die
.label_396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077a0

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
	#Procedure 0x4077f0
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
	#Procedure 0x407850

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
	#Procedure 0x4078b0

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11d, r10d
	nop	
	lea	rbx, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, r11
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoimax
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_405
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_409
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_412
.label_409:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jle	.label_401
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	jmp	.label_410
.label_401:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], -0x40000000
	nop	
	jge	.label_397
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	jmp	.label_404
.label_397:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x22
.label_404:
	mov	rbp, rbp
	jmp	.label_410
.label_410:
	mov	rbp, rbp
	jmp	.label_412
.label_412:
	jmp	.label_398
.label_405:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 1
	mov	rbp, rbp
	jne	.label_400
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_399
.label_400:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_411
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
.label_411:
	nop	
	jmp	.label_399
.label_399:
	jmp	.label_398
.label_398:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_402
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	je	.label_406
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_408
.label_406:
	mov	rsp, rsp
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jmp	.label_408
.label_408:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_403
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_407
.label_403:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_407:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_402:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsp, 0x58
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ae0

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
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
	#Procedure 0x407b50

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	nop	
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_438
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0x24
	mov	rsp, rsp
	jg	.label_438
	lea	rdi, [rdi]
	jmp	.label_456
.label_438:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
.label_456:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_465
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_468
.label_465:
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_468
.label_468:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoimax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jne	.label_430
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_441
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_441
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	je	.label_441
	nop	
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_459
.label_441:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_422
.label_459:
	jmp	.label_415
.label_430:
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_421
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x22
	je	.label_470
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 4
	mov	rsp, rsp
	jmp	.label_422
.label_470:
	nop	
	mov	dword ptr [rbp - 0x4c], 1
.label_421:
	lea	rdi, [rdi]
	jmp	.label_415
.label_415:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jne	.label_418
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_422
.label_418:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_434
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	call	strchr
	nop	
	cmp	rax, 0
	jne	.label_452
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_422
.label_452:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rsp, rsp
	je	.label_425
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_425
	jmp	.label_474
.label_474:
	mov	eax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x70], eax
	je	.label_425
	jmp	.label_414
.label_414:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	je	.label_425
	jmp	.label_423
.label_423:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x78], eax
	lea	rdi, [rdi]
	je	.label_425
	jmp	.label_433
.label_433:
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_425
	lea	rsi, [rsi]
	jmp	.label_440
.label_440:
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_425
	mov	rsp, rsp
	jmp	.label_448
.label_448:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	je	.label_425
	mov	rsp, rsp
	jmp	.label_454
.label_454:
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_425
	mov	rsp, rsp
	jmp	.label_460
.label_460:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x6d
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	je	.label_425
	lea	rdi, [rdi]
	jmp	.label_466
.label_466:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x74
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jne	.label_428
	jmp	.label_425
.label_425:
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	strchr
	nop	
	cmp	rax, 0
	je	.label_417
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	lea	rsi, [rsi]
	je	.label_439
	mov	rsp, rsp
	jmp	.label_436
.label_436:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_439
	lea	rsi, [rsi]
	jmp	.label_447
.label_447:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	jne	.label_449
	jmp	.label_455
.label_455:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 2]
	mov	rsp, rsp
	cmp	ecx, 0x42
	jne	.label_457
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_457:
	nop	
	jmp	.label_449
.label_439:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
.label_449:
	mov	rsp, rsp
	jmp	.label_417
.label_417:
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], edx
	nop	
	je	.label_472
	jmp	.label_450
.label_450:
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	je	.label_419
	nop	
	jmp	.label_426
.label_426:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_429
	jmp	.label_435
.label_435:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_437
	lea	rdi, [rdi]
	jmp	.label_444
.label_444:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_446
	jmp	.label_451
.label_451:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_453
	lea	rdi, [rdi]
	jmp	.label_416
.label_416:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	lea	rsi, [rsi]
	je	.label_432
	nop	
	jmp	.label_464
.label_464:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc4], eax
	lea	rsi, [rsi]
	je	.label_462
	jmp	.label_473
.label_473:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	nop	
	je	.label_475
	jmp	.label_442
.label_442:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	je	.label_443
	jmp	.label_424
.label_424:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_427
	jmp	.label_461
.label_461:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_429
	jmp	.label_469
.label_469:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	mov	rsp, rsp
	je	.label_437
	jmp	.label_431
.label_431:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_446
	jmp	.label_458
.label_458:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	mov	rsp, rsp
	je	.label_432
	lea	rsi, [rsi]
	jmp	.label_420
.label_420:
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0xe4], eax
	mov	rbp, rbp
	je	.label_463
	jmp	.label_471
.label_443:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x200
	nop	
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_413
.label_472:
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_413
.label_427:
	mov	dword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jmp	.label_413
.label_419:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_413
.label_429:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_413
.label_437:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	jmp	.label_413
.label_446:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_413
.label_453:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	nop	
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_413
.label_432:
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	nop	
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_413
.label_463:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_413
.label_462:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	jmp	.label_413
.label_475:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, 7
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_413
.label_471:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	nop	
	jmp	.label_422
.label_413:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	mov	rbp, rbp
	je	.label_445
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	or	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_445:
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_422:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083f0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	nop	
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_476
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_477
.label_476:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
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
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_477
.label_478:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_477:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084d0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_479:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_480
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_479
.label_480:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408540

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
	jge	.label_484
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_482
.label_484:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_481
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
	je	.label_483
.label_481:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_483
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_483:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_485
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
.label_485:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_482:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408660

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
	je	.label_486
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_487
.label_486:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_488
.label_487:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_488:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086d0

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
	je	.label_489
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
.label_489:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408730

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
	jne	.label_490
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_490
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_490
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
	jne	.label_492
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_491
.label_492:
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
	jmp	.label_491
.label_490:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_491:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408840

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
	jne	.label_493
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_493:
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
	ja	.label_494
	nop	
	cmp	qword ptr [rbp - 0x20], 0
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
	jmp	.label_495
.label_494:
	mov	rax, qword ptr [rbp - 0x30]
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
	#Procedure 0x408930

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
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
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	r8b, byte ptr [rdx + 0x38]
	and	al, 1
	shl	al, 4
	and	r8b, 0xef
	lea	rsi, [rsi]
	or	r8b, al
	mov	byte ptr [rdx + 0x38], r8b
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, byte ptr [rdx + 0x38]
	mov	rbp, rbp
	and	al, 0x7f
	lea	rdi, [rdi]
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rsi, [rsi]
	call	re_compile_internal
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	jne	.label_497
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_496
.label_497:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_496:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a20

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	dword ptr [rbp - 0x2c], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf7
	nop	
	mov	byte ptr [rcx + 0x38], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 0x38], rcx
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
	je	.label_507
	mov	eax, 0xe8
	mov	rsp, rsp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_499
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_504
.label_499:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0xe8
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_507:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0xe8
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	init_dfa
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	byte ptr [rbp - 0xd1], dl
	mov	rbp, rbp
	jne	.label_500
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd1], cl
	jmp	.label_500
.label_500:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_509
	mov	dword ptr [rbp - 0x2c], 0xc
.label_509:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_508
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free_dfa_content
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_504
.label_508:
	lea	rax, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	and	rdi, 0x400000
	cmp	rdi, 0
	setne	r8b
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x38]
	and	r8b, 1
	nop	
	movzx	r8d, r8b
	lea	rdi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rax
	call	re_string_construct
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	je	.label_505
	nop	
	jmp	.label_501
.label_501:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	mov	rsp, rsp
	call	re_string_destruct
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_504
.label_505:
	lea	rdi, [rbp - 0xd0]
	lea	rcx, [rbp - 0x2c]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	parse
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
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
	je	.label_502
	jmp	.label_501
.label_502:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	analyze
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	mov	rsp, rsp
	movsxd	rdi, eax
	cmp	rdi, 0
	mov	rbp, rbp
	je	.label_506
	lea	rdi, [rdi]
	jmp	.label_501
.label_506:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	nop	
	je	.label_498
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_498
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_498
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	optimize_utf8
.label_498:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	create_initial_state
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	lea	rdi, [rdi]
	call	re_string_destruct
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_503
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], 0
.label_503:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_504:
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
	#Procedure 0x408ec0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ef0

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	memset
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x50]
	je	.label_512
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_512:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	je	.label_510
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_510:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x60]
	nop	
	je	.label_511
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
.label_511:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
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
	#Procedure 0x409020

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x270
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rdi
	nop	
	mov	qword ptr [rbp - 0x70], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	dword ptr [rdx + 0xb4], 1
	nop	
	mov	byte ptr [rbp - 0x209], cl
	jne	.label_520
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	rax, 0x400000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x209], cl
.label_520:
	mov	al, byte ptr [rbp - 0x209]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x89], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], 0
.label_539:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_535
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], edx
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_549
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x89]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	movzx	edi, byte ptr [rdx]
	mov	qword ptr [rbp - 0x58], rax
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x59], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], edi
	nop	
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x59], 1
	je	.label_524
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x60]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], 1
.label_524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_530
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_530
	mov	rbp, rbp
	lea	rax, [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
.label_552:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, 1
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x20a], cl
	mov	rsp, rsp
	jae	.label_518
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x20a], cl
	nop	
	jne	.label_518
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
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
	mov	byte ptr [rbp - 0x20a], sil
.label_518:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x20a]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_525
	jmp	.label_550
.label_525:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_552
.label_550:
	lea	rdi, [rbp - 0xbc]
	lea	rax, [rbp - 0xc8]
	mov	rbp, rbp
	lea	rcx, [rbp - 0xb0]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 8
	mov	rbp, rbp
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x218], rdi
	lea	rdi, [rdi]
	mov	rdi, r8
	nop	
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0x228], rax
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x220]
	nop	
	sub	rax, rcx
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	mov	rsi, rcx
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x228]
	call	rpl_mbrtowc
	lea	rcx, [rbp - 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rbp, rbp
	cmp	rax, rdx
	jne	.label_528
	mov	rsp, rsp
	lea	rdi, [rbp - 0xb0]
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	mov	qword ptr [rbp - 0x230], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	towlower
	lea	rdx, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	esi, eax
	call	wcrtomb
	nop	
	cmp	rax, -1
	je	.label_528
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x49], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], ecx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_515
	mov	edi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	tolower
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rcx], 1
.label_515:
	mov	rsp, rsp
	jmp	.label_528
.label_528:
	jmp	.label_530
.label_530:
	lea	rsi, [rsi]
	jmp	.label_522
.label_549:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 3
	lea	rdi, [rdi]
	jne	.label_533
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], 0
	mov	dword ptr [rbp - 0xd0], 0
.label_554:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xcc], 4
	jge	.label_540
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xcc]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], 0
.label_543:
	cmp	dword ptr [rbp - 0xd4], 0x40
	nop	
	jge	.label_555
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_541
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	cl, byte ptr [rbp - 0x89]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], edx
	nop	
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 1
	nop	
	test	byte ptr [rbp - 0x39], 1
	lea	rsi, [rsi]
	je	.label_526
	nop	
	mov	edi, dword ptr [rbp - 0x40]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx + rcx], 1
.label_526:
	jmp	.label_541
.label_541:
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	mov	rsp, rsp
	jmp	.label_543
.label_555:
	jmp	.label_553
.label_553:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_554
.label_540:
	jmp	.label_513
.label_533:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 6
	mov	rbp, rbp
	jne	.label_514
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_517
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x48], 0
	mov	rsp, rsp
	jne	.label_527
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_527
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_517
.label_527:
	mov	byte ptr [rbp - 0xf1], 0
.label_547:
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xf1]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x100]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8d, 8
	mov	rsp, rsp
	mov	r9d, r8d
	nop	
	mov	r10, rcx
	mov	qword ptr [rbp - 0x240], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x248], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x250], rdx
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x258], rcx
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, qword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	jne	.label_523
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xf1]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x30], ecx
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	je	.label_536
	mov	edi, dword ptr [rbp - 0x30]
	call	tolower
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], 1
.label_536:
	lea	rdi, [rdi]
	jmp	.label_523
.label_523:
	mov	rsp, rsp
	jmp	.label_542
.label_542:
	mov	al, byte ptr [rbp - 0xf1]
	add	al, 1
	mov	byte ptr [rbp - 0xf1], al
	lea	rdi, [rdi]
	movzx	ecx, al
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_547
	jmp	.label_546
.label_517:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], 0
.label_551:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jge	.label_556
	mov	rsp, rsp
	lea	rax, [rbp - 0x208]
	lea	rdi, [rbp - 0x200]
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x260], rdi
	mov	rbp, rbp
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x268], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	esi, dword ptr [rdx + rax*4]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x260]
	mov	rdx, qword ptr [rbp - 0x268]
	mov	rsp, rsp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_531
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x89]
	movzx	edx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], edx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_534
	mov	edi, dword ptr [rbp - 0x20]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], 1
.label_534:
	mov	rsp, rsp
	jmp	.label_531
.label_531:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_544
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_544
	lea	rdi, [rbp - 0x200]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	mov	qword ptr [rbp - 0x270], rdi
	mov	rsp, rsp
	mov	edi, edx
	lea	rdi, [rdi]
	call	towlower
	lea	rdx, [rbp - 0x208]
	mov	rdi, qword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_529
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	je	.label_532
	mov	edi, dword ptr [rbp - 0x10]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rdx + rcx], 1
.label_532:
	lea	rsi, [rsi]
	jmp	.label_529
.label_529:
	nop	
	jmp	.label_544
.label_544:
	mov	rbp, rbp
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	jmp	.label_551
.label_556:
	jmp	.label_546
.label_546:
	jmp	.label_537
.label_514:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c], 5
	mov	rbp, rbp
	je	.label_516
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 7
	je	.label_516
	cmp	dword ptr [rbp - 0x9c], 2
	mov	rsp, rsp
	jne	.label_519
.label_516:
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	eax, 0x100
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	call	memset
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_545
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	lea	rdi, [rdi]
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_545:
	mov	rbp, rbp
	jmp	.label_535
.label_519:
	jmp	.label_537
.label_537:
	jmp	.label_513
.label_513:
	mov	rsp, rsp
	jmp	.label_522
.label_522:
	jmp	.label_538
.label_538:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_539
.label_535:
	add	rsp, 0x270
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ac0
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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	r8, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], 0
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_560
.label_559:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	eax, 0x400000
	lea	rdi, [rdi]
	mov	edx, eax
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 2
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	cmovne	rcx, rdx
	or	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_562
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	and	rax, 0xffffffffffffffbf
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x100
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x38], cl
	jmp	.label_563
.label_562:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	mov	rsp, rsp
	mov	byte ptr [rax + 0x38], cl
.label_563:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
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
	mov	rdx, qword ptr [rbp - 0x10]
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
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	call	strlen
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	call	re_compile_internal
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0x10
	jne	.label_557
	mov	dword ptr [rbp - 0x20], 8
.label_557:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	nop	
	je	.label_561
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_558
.label_561:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax + 0x20], 0
.label_558:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_560:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d30
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x34], 0x11
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 0x41], al
	jl	.label_564
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	setge	cl
	mov	byte ptr [rbp - 0x41], cl
.label_564:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_567
	lea	rdi, [rdi]
	call	abort
.label_567:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
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
	je	.label_566
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
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
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_565:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	memcpy
.label_566:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e80
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
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
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dfa_content
.label_568:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], 0
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f50

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rdi], 0
	je	.label_574
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
.label_583:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_582
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	call	free_token
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_583
.label_582:
	nop	
	jmp	.label_574
.label_574:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_578:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_579
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_572
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_572:
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x38], 0
	je	.label_569
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_569:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	je	.label_577
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
.label_577:
	mov	rbp, rbp
	jmp	.label_576
.label_576:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_578
.label_579:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_575
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_570:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_581
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x18], 0
.label_580:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_573
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	free_state
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_580
.label_573:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_570
.label_581:
	lea	rsi, [rsi]
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x78], rax
	je	.label_571
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rdi, rax
	call	free
.label_571:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
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
	#Procedure 0x40a270
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	and	r8d, 0xfffffff8
	nop	
	cmp	r8d, 0
	je	.label_586
	nop	
	mov	dword ptr [rbp - 4], 2
	mov	rbp, rbp
	jmp	.label_587
.label_586:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_585
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_589
.label_585:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_589:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 4
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_588
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	mov	qword ptr [rbp - 0x50], rcx
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
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	jmp	.label_584
.label_588:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	nop	
	mov	dword ptr [rbp - 0x30], eax
.label_584:
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
.label_587:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a420

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
	sub	rsp, 0x270
	mov	eax, dword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	r14d, 0x100
	mov	r15d, r14d
	lea	r12, [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x50], r8
	mov	qword ptr [rbp - 0x58], r9
	mov	qword ptr [rbp - 0x60], r11
	nop	
	mov	qword ptr [rbp - 0x68], r10
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], -1
	mov	rdi, r12
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r15
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 0x20], 0
	lea	rdi, [rdi]
	je	.label_593
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
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
	je	.label_593
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	je	.label_593
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_593
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_663
.label_593:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e8], rcx
	jmp	.label_663
.label_663:
	nop	
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1c0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	jbe	.label_670
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	add	rcx, 1
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rbp, rbp
	jmp	.label_679
.label_670:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f0], rcx
	mov	rbp, rbp
	jmp	.label_679
.label_679:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1f1], cl
	lea	rdi, [rdi]
	je	.label_601
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_601
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_601
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_601
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f1], cl
.label_601:
	mov	al, byte ptr [rbp - 0x1f1]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_684
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 1
	nop	
	jmp	.label_635
.label_684:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_640
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_640
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_652
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 7
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_640
.label_652:
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	je	.label_667
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_667
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	jmp	.label_635
.label_667:
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x48], 0
.label_640:
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x1f2], al
	lea	rsi, [rsi]
	jne	.label_673
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f2], cl
.label_673:
	mov	al, byte ptr [rbp - 0x1f2]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x1b8]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8d], al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	add	rcx, 1
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [r8 + 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [r9 + 0x18]
	and	r9, 0x400000
	cmp	r9, 0
	setne	al
	mov	r9, qword ptr [rbp - 0x78]
	mov	r10, rsp
	mov	qword ptr [r10], r9
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	r9d, al
	mov	rbp, rbp
	call	re_string_allocate
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r11b
	mov	rsp, rsp
	and	r11b, 1
	mov	rbp, rbp
	movzx	eax, r11b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_598
	jmp	.label_590
.label_598:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12b], cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, rax
	call	match_ctx_init
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_633
	lea	rsi, [rsi]
	jmp	.label_590
.label_633:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 1
	nop	
	ja	.label_644
	mov	rax, qword ptr [rbp - 0x78]
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
	je	.label_650
.label_644:
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	cmp	rax, qword ptr [rbp - 0x178]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_660
	mov	dword ptr [rbp - 0x70], 0xc
	lea	rdi, [rdi]
	jmp	.label_590
.label_660:
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x100], 0
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
	je	.label_672
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_590
.label_672:
	jmp	.label_683
.label_650:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], 0
.label_683:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	r8d, dword ptr [rbp - 0x6c]
	and	r8d, 1
	lea	rdi, [rdi]
	cmp	r8d, 0
	mov	rbp, rbp
	cmovne	edx, esi
	mov	dword ptr [rbp - 0x148], edx
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	nop	
	cmovl	eax, ecx
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	jge	.label_686
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x200], rax
	jmp	.label_657
.label_686:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x200], rax
.label_657:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jge	.label_611
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x208], rax
	jmp	.label_619
.label_611:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x208], rax
.label_619:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax + 0xb4], 1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xb1], cl
	nop	
	cmp	qword ptr [rbp - 0x1c0], 0
	je	.label_625
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb1], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x209], al
	jne	.label_639
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x20a], al
	jne	.label_647
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1c8], 0
	setne	al
	mov	byte ptr [rbp - 0x20a], al
.label_647:
	mov	al, byte ptr [rbp - 0x20a]
	lea	rsi, [rsi]
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x209], al
.label_639:
	nop	
	mov	al, byte ptr [rbp - 0x209]
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
	mov	r9, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	r9, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	edi, ecx
	cmovle	edi, esi
	mov	rbp, rbp
	or	r8d, edi
	cmp	qword ptr [rbp - 0x1c8], 0
	cmovne	ecx, edx
	mov	rbp, rbp
	or	r8d, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x210], r8d
	jmp	.label_666
.label_625:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x210], eax
	mov	rsp, rsp
	jmp	.label_666
.label_666:
	mov	eax, dword ptr [rbp - 0x210]
	mov	dword ptr [rbp - 0x94], eax
.label_614:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jl	.label_623
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xa0]
	jge	.label_692
.label_623:
	mov	rsp, rsp
	jmp	.label_590
.label_692:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	add	eax, -4
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	sub	eax, 4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x218], rcx
	nop	
	mov	dword ptr [rbp - 0x21c], eax
	mov	rsp, rsp
	ja	.label_594
	nop	
	mov	rax, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_604]]
	jmp	rcx
.label_3057:
	jmp	.label_610
.label_3056:
	mov	rbp, rbp
	jmp	.label_612
.label_612:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	setl	sil
	and	sil, 1
	movzx	eax, sil
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21d], cl
	je	.label_613
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	nop	
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21d], sil
.label_613:
	mov	al, byte ptr [rbp - 0x21d]
	test	al, 1
	jne	.label_643
	jmp	.label_649
.label_643:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_612
.label_649:
	mov	rbp, rbp
	jmp	.label_658
.label_3055:
	mov	rbp, rbp
	jmp	.label_627
.label_627:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
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
	mov	byte ptr [rbp - 0x21e], cl
	lea	rdi, [rdi]
	je	.label_661
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21e], sil
.label_661:
	mov	al, byte ptr [rbp - 0x21e]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_680
	mov	rbp, rbp
	jmp	.label_682
.label_680:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_627
.label_682:
	mov	rbp, rbp
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_637
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_595
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x224], eax
	jmp	.label_636
.label_595:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x224], edx
.label_636:
	mov	eax, dword ptr [rbp - 0x224]
	mov	dword ptr [rbp - 0xb8], eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_609
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x228], edx
	lea	rsi, [rsi]
	jmp	.label_617
.label_609:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x228], eax
.label_617:
	mov	eax, dword ptr [rbp - 0x228]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	mov	rbp, rbp
	jne	.label_628
	mov	rbp, rbp
	jmp	.label_590
.label_628:
	jmp	.label_637
.label_637:
	lea	rsi, [rsi]
	jmp	.label_610
.label_3054:
	jmp	.label_645
.label_645:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_653
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jl	.label_648
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_654
.label_648:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x22c], edx
.label_654:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	lea	rdi, [rdi]
	je	.label_662
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x230], edx
	jmp	.label_681
.label_662:
	mov	eax, dword ptr [rbp - 0xb8]
	nop	
	mov	dword ptr [rbp - 0x230], eax
.label_681:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x230]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_676
	lea	rdi, [rdi]
	jmp	.label_653
.label_676:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_645
.label_653:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jge	.label_685
	jmp	.label_590
.label_685:
	nop	
	jmp	.label_610
.label_594:
	lea	rsi, [rsi]
	jmp	.label_669
.label_669:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x180]
	setae	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_694
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	nop	
	cmp	dword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_608
	jmp	.label_590
.label_608:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
.label_694:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_624
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x234], eax
	jmp	.label_632
.label_624:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b0]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], edx
.label_632:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x234]
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_641
	mov	rsp, rsp
	jmp	.label_651
.label_641:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	jl	.label_655
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	jle	.label_665
.label_655:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], 1
	nop	
	jmp	.label_590
.label_665:
	jmp	.label_669
.label_651:
	nop	
	jmp	.label_610
.label_610:
	nop	
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rsp, rsp
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_677
	lea	rdi, [rdi]
	jmp	.label_590
.label_677:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_615
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x188]
	nop	
	je	.label_615
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	dword ptr [rax], -1
	jne	.label_615
	jmp	.label_690
.label_615:
	mov	dword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0xf8], 0
	mov	al, byte ptr [rbp - 0x8d]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	byte ptr [rbp - 0x235], al
	nop	
	jg	.label_691
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x240], rax
	lea	rdi, [rdi]
	jmp	.label_600
.label_691:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x240]
	lea	rcx, [rbp - 0x1b8]
	nop	
	mov	dl, byte ptr [rbp - 0x235]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x1b8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x248], rcx
	call	check_matching
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa8], -1
	lea	rdi, [rdi]
	je	.label_621
	cmp	qword ptr [rbp - 0xa8], -2
	sete	al
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_630
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_590
.label_630:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x110], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	shr	cl, 4
	nop	
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_642
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_656
.label_642:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	je	.label_659
.label_656:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsi, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
.label_659:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
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
	jne	.label_671
	nop	
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_671
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_689
.label_671:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_687
.label_689:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1b8]
	mov	rsp, rsp
	call	prune_impossible_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	nop	
	jne	.label_695
	jmp	.label_591
.label_695:
	nop	
	cmp	dword ptr [rbp - 0x70], 1
	mov	rbp, rbp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_592
	mov	rbp, rbp
	jmp	.label_590
.label_592:
	mov	qword ptr [rbp - 0xa8], -1
	jmp	.label_603
.label_687:
	jmp	.label_591
.label_603:
	lea	rdi, [rdi]
	jmp	.label_607
.label_607:
	nop	
	jmp	.label_621
.label_621:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1b8]
	mov	rbp, rbp
	call	match_ctx_clean
.label_690:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_614
.label_591:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	jbe	.label_622
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e0], 1
.label_634:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_629
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rsp, rsp
	jmp	.label_634
.label_629:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
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
	jne	.label_605
	cmp	qword ptr [rbp - 0x60], 1
	lea	rdi, [rdi]
	jbe	.label_605
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9b, byte ptr [r8 + 0xb0]
	lea	rdi, [rdi]
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	eax, r9b
	cmp	eax, 0
	mov	qword ptr [rbp - 0x250], rsi
	mov	qword ptr [rbp - 0x258], rdi
	mov	qword ptr [rbp - 0x260], rdx
	mov	byte ptr [rbp - 0x261], cl
	je	.label_606
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x261], cl
.label_606:
	mov	al, byte ptr [rbp - 0x261]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x1b8]
	and	al, 1
	nop	
	movzx	r8d, al
	nop	
	lea	rsi, [rbp - 0x1b8]
	nop	
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rbp - 0x260]
	mov	r9, qword ptr [rbp - 0x250]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x270], rcx
	mov	rcx, r9
	call	set_regs
	nop	
	mov	dword ptr [rbp - 0x70], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x70], 0
	setne	r10b
	mov	rbp, rbp
	and	r10b, 1
	nop	
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_597
	lea	rsi, [rsi]
	jmp	.label_590
.label_597:
	jmp	.label_605
.label_605:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], 0
.label_602:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_616
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], -1
	je	.label_620
	movzx	eax, byte ptr [rbp - 0x12c]
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
	je	.label_668
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_638
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x278], rax
	lea	rdi, [rdi]
	jmp	.label_678
.label_638:
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x278], rax
.label_678:
	mov	rax, qword ptr [rbp - 0x278]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_664
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x280], rax
	nop	
	jmp	.label_674
.label_664:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x280], rax
.label_674:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_668:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rcx, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_620:
	lea	rsi, [rsi]
	jmp	.label_599
.label_599:
	nop	
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_602
.label_616:
	mov	qword ptr [rbp - 0x1e0], 0
.label_618:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	jge	.label_693
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rsi, [rsi]
	jmp	.label_618
.label_693:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0xe0], 0
	lea	rsi, [rsi]
	je	.label_646
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e0], 0
.label_688:
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_675
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1e0]
	nop	
	je	.label_631
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_631:
	mov	rsp, rsp
	jmp	.label_626
.label_626:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_688
.label_675:
	jmp	.label_646
.label_646:
	jmp	.label_622
.label_622:
	jmp	.label_590
.label_590:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_596
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_free
.label_596:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1b8]
	call	re_string_destruct
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], eax
.label_635:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x270
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
	#Procedure 0x40ba70
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], r8
	mov	r8, r9
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	mov	dword ptr [rbp - 0x34], eax
	nop	
	call	re_search_stub
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40baf0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	nop	
	mov	r11b, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], r10
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	dword ptr [rbp - 0x64], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], r11b
	lea	rdi, [rdi]
	jl	.label_723
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	setg	cl
	mov	byte ptr [rbp - 0x79], cl
.label_723:
	mov	al, byte ptr [rbp - 0x79]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_696
	mov	qword ptr [rbp - 8], -1
	mov	rsp, rsp
	jmp	.label_700
.label_696:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rbp - 0x7a], al
	lea	rdi, [rdi]
	jl	.label_708
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x7b], cl
	nop	
	jg	.label_715
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x28]
	setl	cl
	mov	byte ptr [rbp - 0x7b], cl
.label_715:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7b]
	mov	byte ptr [rbp - 0x7a], al
.label_708:
	mov	al, byte ptr [rbp - 0x7a]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_724
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_698
.label_724:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7c], al
	lea	rdi, [rdi]
	jl	.label_705
	nop	
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], cl
	lea	rdi, [rdi]
	jge	.label_722
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x78]
	setle	cl
	mov	byte ptr [rbp - 0x7d], cl
.label_722:
	mov	al, byte ptr [rbp - 0x7d]
	nop	
	mov	byte ptr [rbp - 0x7c], al
.label_705:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x7c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_721
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
.label_721:
	jmp	.label_698
.label_698:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 2
	mov	rbp, rbp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
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
	or	r8d, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], r8d
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 6
	and	dil, 1
	movzx	edx, dil
	cmp	edx, 0
	mov	rsp, rsp
	cmovne	eax, ecx
	or	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rbp - 0x78]
	jge	.label_699
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_699
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_699
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x84], eax
.label_699:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_720
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
.label_720:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_702
	mov	qword ptr [rbp - 0x58], 1
	jmp	.label_709
.label_702:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + 0x38]
	shr	sil, 1
	and	sil, 3
	mov	rsp, rsp
	movzx	eax, sil
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	mov	byte ptr [rbp - 0x85], cl
	jne	.label_714
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	setbe	dl
	mov	byte ptr [rbp - 0x85], dl
.label_714:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_697
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_703
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x58], 1
.label_703:
	lea	rsi, [rsi]
	jmp	.label_719
.label_697:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
.label_719:
	jmp	.label_709
.label_709:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_701
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_716
.label_701:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], r10
	nop	
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_704
	lea	rdi, [rdi]
	mov	eax, 0xfffffffe
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	cmp	dword ptr [rbp - 0x48], 1
	mov	rbp, rbp
	cmove	eax, ecx
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	jmp	.label_711
.label_704:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_712
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 1
	mov	rbp, rbp
	and	cl, 3
	movzx	ecx, cl
	mov	rsp, rsp
	call	re_copy_regs
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
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
	mov	rdx, qword ptr [rbp - 0x10]
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
	je	.label_706
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], -2
.label_706:
	jmp	.label_712
.label_712:
	jmp	.label_711
.label_711:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	sete	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_707
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x41], 1
	mov	rbp, rbp
	je	.label_718
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jne	.label_717
	jmp	.label_713
.label_717:
	nop	
	movabs	rdi, OFFSET FLAT:.str.21_0
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
.label_713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_710
.label_718:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
.label_710:
	jmp	.label_707
.label_707:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_716:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_700:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c110

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c180
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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rbp - 0x50], rbx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], r11d
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
	#Procedure 0x40c240

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
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	qword ptr [rbp - 0x50], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], r10
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	qword ptr [rbp - 0x88], 0
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], r14b
	lea	rdi, [rdi]
	jl	.label_725
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_725
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x89], al
	lea	rdi, [rdi]
	jl	.label_725
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_738
	jmp	.label_727
.label_738:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jge	.label_730
	nop	
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_729
	lea	rsi, [rsi]
	jmp	.label_726
.label_730:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jl	.label_729
	nop	
	jmp	.label_726
.label_727:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_728
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, rcx
	jle	.label_729
	jmp	.label_726
.label_728:
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_733
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_729
	mov	rbp, rbp
	jmp	.label_726
.label_733:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jl	.label_729
.label_726:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_729
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_732
.label_729:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_736
.label_732:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	nop	
	mov	dword ptr [rbp - 0x90], eax
.label_736:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], cl
.label_725:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_735
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], -2
	lea	rdi, [rdi]
	jmp	.label_734
.label_735:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	jle	.label_741
	cmp	qword ptr [rbp - 0x30], 0
	jle	.label_739
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	shl	rax, 0
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_737
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], -2
	lea	rdi, [rdi]
	jmp	.label_734
.label_737:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rsp, rsp
	jmp	.label_740
.label_739:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
.label_740:
	lea	rdi, [rdi]
	jmp	.label_731
.label_741:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x70], rax
.label_731:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	r10b, byte ptr [rbp - 0x61]
	nop	
	and	r10b, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	movzx	r11d, r10b
	mov	dword ptr [rsp + 8], r11d
	mov	rbp, rbp
	call	re_search_stub
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_734:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xa0
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c630
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	nop	
	mov	r9, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
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
	mov	dword ptr [rbp - 0x54], ebx
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6f0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_742
	mov	rax, qword ptr [rbp - 8]
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
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_743
.label_742:
	nop	
	mov	rax, qword ptr [rbp - 8]
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
	#Procedure 0x40c7b0

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
	#Procedure 0x40c880

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
	#Procedure 0x40c960

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
	#Procedure 0x40c9c0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xf0
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], 8
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jae	.label_777
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_749
.label_777:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_749
.label_749:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_755
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	nop	
	jae	.label_759
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_763
.label_759:
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_763
.label_763:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_771
.label_755:
	nop	
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	jmp	.label_771
.label_771:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_784
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_789
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_796
.label_789:
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	lea	rsi, [rsi]
	jmp	.label_796
.label_796:
	mov	rax, qword ptr [rbp - 0x68]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	nop	
	jae	.label_803
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_753
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_757
.label_753:
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	nop	
	jmp	.label_757
.label_757:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_765
.label_803:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_765
.label_765:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_776
.label_784:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	jmp	.label_776
.label_776:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, 0x18
	mov	edx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	nop	
	jae	.label_782
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_787
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_793
.label_787:
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_793
.label_793:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_800
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jae	.label_752
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	nop	
	jmp	.label_758
.label_752:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_767
.label_800:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	mov	rsp, rsp
	jmp	.label_767
.label_767:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jae	.label_775
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_785
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_788
.label_785:
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x18
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	jae	.label_797
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_802
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	jmp	.label_751
.label_802:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_751
.label_751:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_760
.label_797:
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	nop	
	jmp	.label_760
.label_760:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	jmp	.label_770
.label_775:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_770
.label_770:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	jmp	.label_783
.label_782:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rdi, [rdi]
	jmp	.label_783
.label_783:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rdx, -1
	xor	esi, esi
	mov	edi, 0xe8
	mov	r8d, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0xc8]
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rcx, rax
	jae	.label_754
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_766
.label_754:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
.label_766:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	setbe	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_780
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_769
.label_780:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], 1
.label_801:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jbe	.label_750
	jmp	.label_791
.label_750:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_801
.label_791:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rax
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	edi, 0xe
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xb4], ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x55
	lea	rdi, [rdi]
	je	.label_781
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	lea	rsi, [rsi]
	jne	.label_748
.label_781:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	mov	rbp, rbp
	je	.label_794
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	lea	rsi, [rsi]
	jne	.label_748
.label_794:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x46
	lea	rdi, [rdi]
	je	.label_799
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	lea	rsi, [rsi]
	jne	.label_748
.label_799:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 3
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
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
	jne	.label_748
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfb
	mov	rsp, rsp
	or	cl, 4
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_748:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 0xf7
	mov	byte ptr [rax + 0xb0], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_778
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	je	.label_792
	movabs	rax, OFFSET FLAT:utf8_sb_map
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_774
.label_792:
	mov	eax, 0x20
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_795
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_769
.label_795:
	mov	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], 0
.label_798:
	cmp	dword ptr [rbp - 0x3c], 4
	lea	rdi, [rdi]
	jge	.label_773
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], 0
.label_762:
	cmp	dword ptr [rbp - 0x40], 0x40
	jge	.label_772
	mov	edi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	lea	rsi, [rsi]
	je	.label_786
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	shl	rdx, cl
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x78]
	or	rdx, qword ptr [rdi + rsi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rsi*8], rdx
.label_786:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xffffff80
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_768
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_768
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	lea	rdi, [rdi]
	or	cl, 8
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_768:
	nop	
	jmp	.label_761
.label_761:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_762
.label_772:
	lea	rdi, [rdi]
	jmp	.label_764
.label_764:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_798
.label_773:
	jmp	.label_774
.label_774:
	jmp	.label_778
.label_778:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], al
	je	.label_779
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], cl
.label_779:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_790
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_769
.label_790:
	mov	dword ptr [rbp - 4], 0
.label_769:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d310

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	al, r8b
	mov	rbp, rbp
	xor	r8d, r8d
	mov	r10d, 0x98
	mov	r11d, r10d
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	r8d, al
	call	re_string_construct_common
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_811
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_807
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_805
.label_807:
	nop	
	jmp	.label_811
.label_811:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_822
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_813
.label_822:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_813:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	je	.label_818
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_808
	mov	rsp, rsp
	jmp	.label_812
.label_812:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_817
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_805
.label_817:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_819
	jmp	.label_804
.label_819:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	lea	rsi, [rsi]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_806
	nop	
	jmp	.label_804
.label_806:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_815
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_805
.label_815:
	jmp	.label_812
.label_804:
	lea	rsi, [rsi]
	jmp	.label_814
.label_808:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	build_upper_buffer
.label_814:
	jmp	.label_809
.label_818:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rsp, rsp
	jle	.label_820
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_810
.label_820:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_816
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_821
.label_816:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_821:
	jmp	.label_810
.label_810:
	mov	rbp, rbp
	jmp	.label_809
.label_809:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_805:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d620

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
.label_823:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_824
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_823
.label_824:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax + 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x68], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d700

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
	#Procedure 0x40d760

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0xd8], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	or	rcx, 0x800000
	mov	rdi, rax
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	fetch_token
	lea	rdx, [rbp - 0x58]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	mov	rsp, rsp
	je	.label_827
	cmp	qword ptr [rbp - 0x38], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_827:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x59]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_829
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_830
.label_829:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 2
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_828
	nop	
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	create_tree
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_826
.label_828:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_826:
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x5a], al
	lea	rsi, [rsi]
	je	.label_832
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	al
	nop	
	mov	byte ptr [rbp - 0x5a], al
.label_832:
	mov	al, byte ptr [rbp - 0x5a]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_831
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_830
.label_831:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_830:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d940

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rbp, rbp
	mov	cl, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	nop	
	je	.label_833
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	je	.label_833
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	je	.label_833
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_833:
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
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_838
.label_846:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	shl	rax, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0xe0], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xe0], 0
	nop	
	je	.label_839
	mov	qword ptr [rbp - 0x28], 0
.label_849:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	jae	.label_844
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_849
.label_844:
	movabs	rsi, OFFSET FLAT:optimize_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rax
	call	preorder
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	dword ptr [rbp - 0x30], eax
.label_842:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jae	.label_843
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_848
	lea	rdi, [rdi]
	jmp	.label_843
.label_848:
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_842
.label_843:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_840
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0xe0], 0
.label_840:
	jmp	.label_839
.label_839:
	movabs	rsi, OFFSET FLAT:lower_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_837
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_838
.label_837:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:calc_first
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	rbp, rbp
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
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
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_838
.label_850:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:calc_next
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	rbp, rbp
	call	preorder
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	preorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_851
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_838
.label_851:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_eclosure
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_835
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_838
.label_835:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_841
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_841
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	jne	.label_836
.label_841:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_845
.label_836:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rdi, qword ptr [rax + 0x10], 0x18
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
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
	je	.label_847
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_838
.label_847:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x1c], eax
.label_845:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_838:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de60

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 0x15], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x10], 0
.label_875:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_855
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], edx
	nop	
	ja	.label_861
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_866]]
	lea	rsi, [rsi]
	jmp	rcx
.label_3028:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0x80
	nop	
	jl	.label_871
	mov	byte ptr [rbp - 0x15], 1
.label_871:
	jmp	.label_852
.label_3033:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	edx, dword ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	sub	esi, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], edx
	mov	dword ptr [rbp - 0x34], esi
	je	.label_859
	jmp	.label_864
.label_864:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	je	.label_859
	jmp	.label_870
.label_870:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	eax, 0x40
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_859
	nop	
	jmp	.label_877
.label_877:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	jne	.label_867
	jmp	.label_859
.label_859:
	mov	rsp, rsp
	jmp	.label_860
.label_867:
	jmp	.label_863
.label_860:
	jmp	.label_852
.label_3031:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jmp	.label_852
.label_3029:
	jmp	.label_852
.label_3032:
	nop	
	jmp	.label_863
.label_3030:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x14], 2
.label_862:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_868
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x1c]
	nop	
	mov	ecx, esi
	lea	rsi, [rsi]
	shr	rax, cl
	cmp	rax, 0
	je	.label_874
	jmp	.label_863
.label_874:
	mov	dword ptr [rbp - 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_862
.label_868:
	lea	rsi, [rsi]
	jmp	.label_852
.label_861:
	call	abort
.label_852:
	jmp	.label_865
.label_865:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_875
.label_855:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_873
	test	byte ptr [rbp - 0x16], 1
	nop	
	je	.label_853
.label_873:
	mov	qword ptr [rbp - 0x10], 0
.label_876:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jae	.label_854
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	lea	rsi, [rsi]
	cmp	edx, 1
	jne	.label_858
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_858
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xffdfffff
	mov	dword ptr [rax + 8], edx
	jmp	.label_869
.label_858:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 5
	nop	
	jne	.label_857
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
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
.label_857:
	lea	rdi, [rdi]
	jmp	.label_869
.label_869:
	nop	
	jmp	.label_872
.label_872:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_876
.label_854:
	mov	rsp, rsp
	jmp	.label_853
.label_853:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0xb4], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0xb0]
	lea	rsi, [rsi]
	and	dl, 0xfb
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0xb0], dl
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x98], 0
	mov	byte ptr [rbp - 0x41], al
	jg	.label_856
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x16]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], al
.label_856:
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0xb0]
	and	al, 1
	shl	al, 1
	lea	rsi, [rsi]
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0xb0], sil
.label_863:
	nop	
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e220

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x68]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x90], rdi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	imul	rdi, qword ptr [rbp - 0x18], 0x18
	nop	
	add	rcx, rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
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
	je	.label_878
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_881
.label_878:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_887
	mov	qword ptr [rbp - 0x20], 0
.label_885:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_892
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0x4c], edx
	cmp	dword ptr [rbp - 0x4c], 4
	je	.label_895
	mov	rsp, rsp
	jmp	.label_879
.label_895:
	nop	
	mov	qword ptr [rbp - 0x58], 0
.label_891:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_888
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	esi, dword ptr [rax + 8]
	mov	rbp, rbp
	and	esi, 0xff
	cmp	esi, 9
	mov	rsp, rsp
	jne	.label_882
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_882
	lea	rsi, [rsi]
	jmp	.label_888
.label_882:
	mov	rsp, rsp
	jmp	.label_889
.label_889:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	jmp	.label_891
.label_888:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_896
	mov	rsp, rsp
	jmp	.label_879
.label_896:
	cmp	dword ptr [rbp - 0x4c], 4
	lea	rdi, [rdi]
	jne	.label_880
	mov	rbp, rbp
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_890
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x68], 0x18
	nop	
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [rbp - 0x6c], 0
	je	.label_897
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_881
.label_897:
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_890:
	mov	rbp, rbp
	jmp	.label_880
.label_880:
	jmp	.label_879
.label_879:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_885
.label_892:
	mov	rsp, rsp
	jmp	.label_887
.label_887:
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_893
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_881
.label_893:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_884
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x50], rax
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rbp, rbp
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x58], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	r8b, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x50], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6d], r8b
	nop	
	je	.label_886
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x6d], al
	je	.label_886
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6d], cl
.label_886:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x6d]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_894
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_881
.label_894:
	lea	rsi, [rsi]
	jmp	.label_883
.label_884:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x60], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x58], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x50], rax
.label_883:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_881:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e6b0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, r8b
	mov	r10b, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x58], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x88], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], r10b
	mov	rbp, rbp
	jne	.label_898
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], al
.label_898:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	al, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rdx + 0xb4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + 0x90], ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
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
	mov	rdx, qword ptr [rbp - 0x30]
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
	#Procedure 0x40e820

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_899
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x28], 8
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
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
	je	.label_903
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_900
.label_903:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
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
	je	.label_906
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_900
.label_906:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_904
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	shl	rcx, 3
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_902
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_900
.label_902:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_904:
	lea	rdi, [rdi]
	jmp	.label_899
.label_899:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_901
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	shl	rax, 0
	mov	rsi, rax
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_905
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_900
.label_905:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
.label_901:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_900:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea30

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_922
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_939
.label_922:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
.label_939:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_945
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_945
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_945
	lea	rdi, [rdi]
	jmp	.label_914
.label_914:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jge	.label_908
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	and	edx, 0xffffff80
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_925
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_925
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	byte ptr [rsi + rcx], dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rsi + rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	dword ptr [rsi + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_914
.label_925:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x84]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd9], r9b
	nop	
	jae	.label_915
	cmp	qword ptr [rbp - 0x40], -2
	nop	
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], al
.label_915:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd9]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_936
	mov	edi, dword ptr [rbp - 0x84]
	call	towupper
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	je	.label_944
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x88]
	nop	
	call	wcrtomb
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x90]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_954
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	memcpy
	mov	rbp, rbp
	jmp	.label_916
.label_954:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_919
.label_916:
	mov	rbp, rbp
	jmp	.label_926
.label_944:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x28]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	memcpy
.label_926:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + rcx*4], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x40]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
.label_961:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jge	.label_956
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_961
.label_956:
	jmp	.label_907
.label_936:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], -1
	nop	
	je	.label_909
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_909
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_918
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_918
.label_909:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x94], edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	edx, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + rax*4], edx
	cmp	qword ptr [rbp - 0x40], -1
	lea	rsi, [rsi]
	sete	sil
	lea	rsi, [rsi]
	and	sil, 1
	movzx	edx, sil
	lea	rdi, [rdi]
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_953
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
.label_953:
	jmp	.label_967
.label_918:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_908
.label_967:
	jmp	.label_907
.label_907:
	lea	rdi, [rdi]
	jmp	.label_914
.label_908:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_917
.label_945:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_930:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_923
	jmp	.label_919
.label_919:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	nop	
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_966
	mov	dword ptr [rbp - 0xa4], 0
.label_924:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rdx + 0x90]
	nop	
	mov	byte ptr [rbp - 0xda], cl
	lea	rdi, [rdi]
	jge	.label_960
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xa4]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	setl	cl
	nop	
	mov	byte ptr [rbp - 0xda], cl
.label_960:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xda]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_943
	mov	rbp, rbp
	jmp	.label_921
.label_943:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0xa4]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0xa8], edx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	sil, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x80], sil
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_924
.label_921:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	jmp	.label_947
.label_966:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
.label_947:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xdb], r9b
	nop	
	jae	.label_912
	nop	
	cmp	qword ptr [rbp - 0x40], -2
	mov	rsp, rsp
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xdb], al
.label_912:
	nop	
	mov	al, byte ptr [rbp - 0xdb]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_927
	mov	edi, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	towupper
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	cmp	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	je	.label_938
	lea	rdx, [rbp - 0x18]
	nop	
	lea	rdi, [rbp - 0x80]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xac]
	call	wcrtomb
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xb8]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	nop	
	je	.label_950
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_928
.label_950:
	cmp	qword ptr [rbp - 0xb8], -1
	mov	rbp, rbp
	je	.label_968
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_911
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_923
.label_911:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jne	.label_929
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	nop	
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_941
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_917
.label_941:
	lea	rdi, [rdi]
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_951
	mov	qword ptr [rbp - 0xc0], 0
.label_962:
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_959
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_962
.label_959:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 1
.label_951:
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0xc0], 1
.label_940:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_946
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc0]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	jae	.label_948
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	jmp	.label_942
.label_948:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0xf0], rax
.label_942:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rax*8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_940
.label_946:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jle	.label_934
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_934:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	jle	.label_963
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_965
.label_963:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xf8], rax
.label_965:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_930
.label_968:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_928
.label_928:
	jmp	.label_931
.label_938:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	memcpy
.label_931:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_910
	mov	qword ptr [rbp - 0xc8], 0
.label_958:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_952
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	jmp	.label_958
.label_952:
	jmp	.label_910
.label_910:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_937:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_933
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	nop	
	jmp	.label_937
.label_933:
	jmp	.label_913
.label_927:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_949
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_949
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_955
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_955
.label_949:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], edx
	nop	
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_964
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
.label_964:
	mov	eax, dword ptr [rbp - 0xcc]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
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
	je	.label_935
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_935:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_957
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_957:
	mov	rsp, rsp
	jmp	.label_920
.label_955:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	nop	
	jmp	.label_923
.label_920:
	jmp	.label_913
.label_913:
	mov	rbp, rbp
	jmp	.label_930
.label_923:
	jmp	.label_932
.label_932:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_917:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8a0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rax + 0x58]
	mov	rbp, rbp
	jle	.label_969
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_973
.label_969:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_973:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_972:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_970
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_971:
	mov	edi, dword ptr [rbp - 0x1c]
	call	toupper
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_972
.label_970:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9f0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	jle	.label_989
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_982
.label_989:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x98], rax
.label_982:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_984:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jge	.label_976
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_990
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], 0
.label_981:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0x99], cl
	mov	rbp, rbp
	jge	.label_974
	movsxd	rax, dword ptr [rbp - 0x8c]
	cmp	rax, qword ptr [rbp - 0x70]
	nop	
	setl	cl
	mov	byte ptr [rbp - 0x99], cl
.label_974:
	mov	al, byte ptr [rbp - 0x99]
	mov	rbp, rbp
	test	al, 1
	jne	.label_991
	lea	rdi, [rdi]
	jmp	.label_980
.label_991:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x90], edx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	byte ptr [rcx + rax], sil
	nop	
	movsxd	rax, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rax - 0x50], sil
	nop	
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	jmp	.label_981
.label_980:
	nop	
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	jmp	.label_979
.label_990:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
.label_979:
	lea	rdi, [rbp - 0x7c]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], -1
	mov	byte ptr [rbp - 0x9a], r8b
	mov	rsp, rsp
	je	.label_978
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9a], al
	je	.label_978
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x78], -2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9b], cl
	jne	.label_985
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	setge	dl
	nop	
	mov	byte ptr [rbp - 0x9b], dl
.label_985:
	mov	al, byte ptr [rbp - 0x9b]
	nop	
	mov	byte ptr [rbp - 0x9a], al
.label_978:
	mov	al, byte ptr [rbp - 0x9a]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_975
	mov	qword ptr [rbp - 0x78], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	mov	rax, qword ptr [rbp - 8]
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
	je	.label_986
	movsxd	rax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_986:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_977
.label_975:
	cmp	qword ptr [rbp - 0x78], -2
	lea	rdi, [rdi]
	sete	al
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_987
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	lea	rdi, [rdi]
	jmp	.label_976
.label_987:
	jmp	.label_977
.label_977:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x60]
	add	rcx, qword ptr [rbp - 0x78]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
.label_988:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jge	.label_983
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_988
.label_983:
	jmp	.label_984
.label_976:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe10

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_992
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_993
.label_992:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_993:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_995:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_994
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_995
.label_994:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ff20

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
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
	#Procedure 0x40ff70

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x50], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x38]
	nop	
	call	parse_branch
	mov	rbp, rbp
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
.label_3035:
	cmp	dword ptr [rax], 0
	nop	
	mov	byte ptr [rbp - 0x61], r11b
	je	.label_1006
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], al
.label_1006:
	nop	
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1004
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1003
.label_1004:
	jmp	.label_998
.label_998:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	nop	
	jne	.label_1001
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	or	rax, 0x800000
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	call	fetch_token
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0xa
	mov	rsp, rsp
	je	.label_1002
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	mov	rbp, rbp
	je	.label_1002
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_999
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	je	.label_1002
.label_999:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xa8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x30]
	nop	
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x62], r11b
	je	.label_1007
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x62], al
.label_1007:
	mov	al, byte ptr [rbp - 0x62]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1005
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_996
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_996:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1003
.label_1005:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	or	rax, qword ptr [rcx + 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_997
.label_1002:
	mov	qword ptr [rbp - 0x50], 0
.label_997:
	mov	rbp, rbp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_1003
.label_1000:
	jmp	.label_998
.label_1001:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1003:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410270

	.globl create_tree
	.type create_tree, @function
create_tree:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x28]
	and	ecx, 0xff
	and	r8d, 0xffffff00
	or	r8d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	create_token_tree
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4102e0

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_1057
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1026
.label_1057:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0x21], dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffbfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	and	esi, 0xffdfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1079
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	je	.label_1079
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1079
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffdfffff
	or	ecx, 0x200000
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1026
.label_1079:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	eax, 0x5c
	jne	.label_1017
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1021
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x24
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1026
.label_1021:
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rsi + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rsi + 8], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rsi + 0x90], 1
	mov	rbp, rbp
	jle	.label_1040
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x28], eax
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	iswalnum
	mov	rbp, rbp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	nop	
	jne	.label_1065
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0x5f
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
.label_1065:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x41]
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
	mov	rdx, qword ptr [rbp - 0x10]
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
	jmp	.label_1073
.label_1040:
	movzx	eax, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 8
	lea	rdi, [rdi]
	cmp	esi, 0
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1096
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x5f
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], cl
.label_1096:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1073:
	movzx	eax, byte ptr [rbp - 0x22]
	mov	rsp, rsp
	mov	ecx, eax
	sub	ecx, 0x27
	mov	dword ptr [rbp - 0x58], eax
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_1115
	jmp	.label_1014
.label_1014:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	je	.label_1015
	nop	
	jmp	.label_1018
.label_1018:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	je	.label_1020
	nop	
	jmp	.label_1024
.label_1024:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	nop	
	je	.label_1025
	jmp	.label_1028
.label_1028:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	eax, -0x31
	mov	rsp, rsp
	sub	eax, 9
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jb	.label_1030
	jmp	.label_1036
.label_1036:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	sub	eax, 0x3c
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1037
	jmp	.label_1042
.label_1042:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	eax, 0x3e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1043
	lea	rdi, [rdi]
	jmp	.label_1047
.label_1047:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1048
	mov	rbp, rbp
	jmp	.label_1054
.label_1054:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1055
	jmp	.label_1060
.label_1060:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x80], eax
	je	.label_1100
	jmp	.label_1062
.label_1062:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_1019
	jmp	.label_1067
.label_1067:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1056
	jmp	.label_1076
.label_1076:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	je	.label_1078
	lea	rdi, [rdi]
	jmp	.label_1084
.label_1084:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	je	.label_1086
	jmp	.label_1091
.label_1091:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	sub	eax, 0x77
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	je	.label_1093
	lea	rsi, [rsi]
	jmp	.label_1089
.label_1089:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	eax, 0x7b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1099
	jmp	.label_1105
.label_1105:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x9c], eax
	nop	
	je	.label_1107
	jmp	.label_1092
.label_1092:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, 0x7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1033
	jmp	.label_1112
.label_1107:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	nop	
	jne	.label_1010
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_1010
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1010:
	jmp	.label_1009
.label_1030:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x4000
	nop	
	cmp	rax, 0
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 4
	mov	dword ptr [rax + 8], ecx
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx], rax
.label_1023:
	mov	rbp, rbp
	jmp	.label_1009
.label_1037:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1083
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 6
.label_1083:
	nop	
	jmp	.label_1009
.label_1043:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	nop	
	jne	.label_1068
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 9
.label_1068:
	lea	rsi, [rsi]
	jmp	.label_1009
.label_1078:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1069
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0x100
.label_1069:
	lea	rsi, [rsi]
	jmp	.label_1009
.label_1055:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1087
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x200
.label_1087:
	jmp	.label_1009
.label_1093:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_1102
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x20
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1102:
	nop	
	jmp	.label_1009
.label_1019:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1111
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1111:
	jmp	.label_1009
.label_1086:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1034
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_1034:
	jmp	.label_1009
.label_1100:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1101
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_1101:
	jmp	.label_1009
.label_1056:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1032
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x40
.label_1032:
	jmp	.label_1009
.label_1115:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1049
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x80
.label_1049:
	jmp	.label_1009
.label_1015:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1063
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 8
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1063:
	jmp	.label_1009
.label_1020:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1074
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1074:
	jmp	.label_1009
.label_1025:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1090
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1090
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1090:
	jmp	.label_1009
.label_1048:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1058
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1058
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x13
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1058:
	lea	rsi, [rsi]
	jmp	.label_1009
.label_1099:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	rax, 0x200
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1013
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1013
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1013:
	jmp	.label_1009
.label_1033:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1027
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x1000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	jne	.label_1027
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x18
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1027:
	nop	
	jmp	.label_1009
.label_1112:
	jmp	.label_1009
.label_1009:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 2
	nop	
	jmp	.label_1026
.label_1017:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	nop	
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1053
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	iswalnum
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1070
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0x5f
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa1], al
.label_1070:
	nop	
	mov	al, byte ptr [rbp - 0xa1]
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
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	mov	rbp, rbp
	and	ecx, 1
	shl	ecx, 0x16
	mov	rsp, rsp
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1082
.label_1053:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + rsi*2]
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0xb1], dl
	jne	.label_1104
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb1], dl
.label_1104:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	lea	rdi, [rdi]
	and	esi, 0xffbfffff
	nop	
	or	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rdx + 8], esi
.label_1082:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xa
	mov	dword ptr [rbp - 0xb8], eax
	mov	dword ptr [rbp - 0xbc], ecx
	je	.label_1016
	mov	rbp, rbp
	jmp	.label_1022
.label_1022:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x24
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], eax
	lea	rsi, [rsi]
	je	.label_1052
	mov	rsp, rsp
	jmp	.label_1029
.label_1029:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0xc4], eax
	nop	
	je	.label_1031
	nop	
	jmp	.label_1066
.label_1066:
	nop	
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	sub	eax, 0x29
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	mov	rsp, rsp
	je	.label_1038
	jmp	.label_1113
.label_1113:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1046
	jmp	.label_1050
.label_1050:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1051
	jmp	.label_1075
.label_1075:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	sub	eax, 0x2e
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	je	.label_1085
	lea	rdi, [rdi]
	jmp	.label_1114
.label_1114:
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	sub	eax, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	lea	rdi, [rdi]
	je	.label_1064
	jmp	.label_1044
.label_1044:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	sub	eax, 0x5b
	nop	
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1071
	mov	rbp, rbp
	jmp	.label_1080
.label_1080:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1081
	jmp	.label_1088
.label_1088:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	sub	eax, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	nop	
	je	.label_1041
	lea	rdi, [rdi]
	jmp	.label_1095
.label_1095:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	sub	eax, 0x7c
	nop	
	mov	dword ptr [rbp - 0xe8], eax
	nop	
	je	.label_1098
	lea	rsi, [rsi]
	jmp	.label_1103
.label_1103:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x7d
	nop	
	mov	dword ptr [rbp - 0xec], eax
	je	.label_1106
	jmp	.label_1108
.label_1016:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1110
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1110:
	mov	rsp, rsp
	jmp	.label_1008
.label_1098:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 0x400
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1011
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 0x8000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1011
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1011:
	mov	rsp, rsp
	jmp	.label_1008
.label_1046:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1008
.label_1051:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1039
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	jne	.label_1039
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1039:
	mov	rbp, rbp
	jmp	.label_1008
.label_1064:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1061
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1061
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1061:
	mov	rsp, rsp
	jmp	.label_1008
.label_1041:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1077
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1077
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1077:
	jmp	.label_1008
.label_1106:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1094
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 0x1000
	cmp	rax, 0
	nop	
	je	.label_1094
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x18
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1094:
	lea	rsi, [rsi]
	jmp	.label_1008
.label_1031:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1109
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1109:
	jmp	.label_1008
.label_1038:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1012
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1012:
	jmp	.label_1008
.label_1071:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1008
.label_1085:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	jmp	.label_1008
.label_1081:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x800008
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jne	.label_1035
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x48], 0
	nop	
	je	.label_1035
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax - 1]
	mov	byte ptr [rbp - 0x2d], dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x800
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1045
	movsx	eax, byte ptr [rbp - 0x2d]
	cmp	eax, 0xa
	je	.label_1059
.label_1045:
	jmp	.label_1008
.label_1059:
	mov	rsp, rsp
	jmp	.label_1035
.label_1035:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax], 0x10
	nop	
	jmp	.label_1008
.label_1052:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 8
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1072
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	je	.label_1072
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	peek_token
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x48]
	add	rdx, -1
	nop	
	mov	qword ptr [rcx + 0x48], rdx
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 0xff
	lea	rsi, [rsi]
	cmp	r8d, 0xa
	nop	
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1097
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xff
	lea	rsi, [rsi]
	cmp	eax, 9
	je	.label_1097
	jmp	.label_1008
.label_1097:
	mov	rsp, rsp
	jmp	.label_1072
.label_1072:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x20
	nop	
	jmp	.label_1008
.label_1108:
	jmp	.label_1008
.label_1008:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
.label_1026:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411440

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1118
.label_1116:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1117
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1121
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	add	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	je	.label_1117
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_1117
.label_1121:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1118
.label_1117:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1120
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1120:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_1119
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_1119
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], dl
	lea	rsi, [rsi]
	jmp	.label_1118
.label_1119:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 1], cl
.label_1118:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411640

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
	#Procedure 0x4116c0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	lea	rdi, [rdi]
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_1136
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1136:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1130
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_1126
.label_1130:
	mov	rbp, rbp
	jmp	.label_1138
.label_1138:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	lea	rdi, [rdi]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	byte ptr [rbp - 0x5a], cl
	lea	rdi, [rdi]
	je	.label_1127
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_1127
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	mov	byte ptr [rbp - 0x5b], al
	je	.label_1133
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x5b], dl
.label_1133:
	mov	al, byte ptr [rbp - 0x5b]
	mov	byte ptr [rbp - 0x5a], al
.label_1127:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_1129
	jmp	.label_1135
.label_1129:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	nop	
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5c], r11b
	mov	rbp, rbp
	je	.label_1128
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5c], al
.label_1128:
	mov	al, byte ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1124
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1134
	movabs	rsi, OFFSET FLAT:free_tree
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	postorder
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_1134:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1126
.label_1124:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1131
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	je	.label_1131
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1137
	nop	
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	movabs	rsi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	call	postorder
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rdx], 0xc
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_1126
.label_1137:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_1125
.label_1131:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1132
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
.label_1132:
	jmp	.label_1125
.label_1125:
	jmp	.label_1138
.label_1135:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1126:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4119e0

	.globl postorder
	.type postorder, @function
postorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1146:
	jmp	.label_1139
.label_1139:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x35], al
	nop	
	jne	.label_1141
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x35], cl
.label_1141:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1148
	jmp	.label_1142
.label_1148:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1144
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1140
.label_1144:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1140:
	mov	rsp, rsp
	jmp	.label_1139
.label_1142:
	jmp	.label_1150
.label_1150:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	rax
	nop	
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1147
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1149
.label_1147:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1143
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_1149
.label_1143:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x36], al
	mov	rbp, rbp
	je	.label_1145
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0x36], cl
.label_1145:
	nop	
	mov	al, byte ptr [rbp - 0x36]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1150
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1146
.label_1149:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ba0

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
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
	#Procedure 0x411be0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x118
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rcx + 8]
	mov	rbp, rbp
	dec	eax
	mov	ecx, eax
	sub	eax, 0x23
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_1197
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1169]]
	mov	rsp, rsp
	jmp	rcx
.label_2936:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0x88], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
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
	je	.label_1182
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1182:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1171
	lea	rdi, [rdi]
	jmp	.label_1172
.label_1172:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	cmp	rdx, qword ptr [rsi + 0x48]
	nop	
	mov	byte ptr [rbp - 0x89], cl
	mov	rsp, rsp
	jle	.label_1203
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x8a], al
	mov	rsp, rsp
	je	.label_1159
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8a], dl
.label_1159:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8a]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0x89], al
.label_1203:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1178
	jmp	.label_1183
.label_1178:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	fetch_token
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	call	create_token_tree
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	mov	rbp, rbp
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x8b], r8b
	mov	rbp, rbp
	je	.label_1200
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8b], al
.label_1200:
	mov	al, byte ptr [rbp - 0x8b]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1158
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1151
.label_1158:
	jmp	.label_1172
.label_1183:
	jmp	.label_1171
.label_1171:
	mov	rsp, rsp
	jmp	.label_1154
.label_2940:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	r9, qword ptr [rbp - 0x40]
	mov	r8, rax
	call	parse_sub_exp
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8c], r11b
	je	.label_1196
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8c], al
.label_1196:
	mov	al, byte ptr [rbp - 0x8c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1194
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_1151
.label_1194:
	mov	rbp, rbp
	jmp	.label_1154
.label_2942:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	parse_bracket_exp
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	r10b, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8d], r10b
	je	.label_1162
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	sete	al
	nop	
	mov	byte ptr [rbp - 0x8d], al
.label_1162:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x8d]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1175
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1175:
	jmp	.label_1154
.label_2938:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rcx
	lea	rsi, [rsi]
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	cmp	rdi, 0
	lea	rsi, [rsi]
	jne	.label_1187
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1187:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rdx]
	nop	
	mov	esi, edx
	nop	
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rdi, [rdi]
	mov	ecx, esi
	shl	eax, cl
	lea	rsi, [rsi]
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	or	rdx, qword ptr [rdi + 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0xa0], rdx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xa0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1180
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1180:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x98]
	nop	
	add	rcx, 1
	mov	qword ptr [rax + 0x98], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0xb0]
	and	dl, 0xfd
	lea	rsi, [rsi]
	or	dl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xb0], dl
	lea	rsi, [rsi]
	jmp	.label_1154
.label_2943:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	and	rax, 0x1000000
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1165
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1151
.label_1165:
	jmp	.label_1167
.label_1167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	and	rax, 0x20
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1170
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1151
.label_1170:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1156
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	fetch_token
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	parse_expression
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1151
.label_1156:
	jmp	.label_1195
.label_1195:
	mov	rbp, rbp
	jmp	.label_1198
.label_1198:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	lea	rdi, [rdi]
	jne	.label_1192
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	and	rax, 0x20000
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1192
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1192:
	jmp	.label_1161
.label_1161:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	nop	
	mov	dword ptr [rdx + 8], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xa8], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	mov	rbp, rbp
	movzx	r9d, r8b
	movsxd	rax, r9d
	nop	
	cmp	rax, 0
	je	.label_1176
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1176:
	nop	
	jmp	.label_1154
.label_2941:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0x30f
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1191
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1191
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	init_word_char
.label_1191:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	je	.label_1157
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x200
	jne	.label_1202
.label_1157:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x100
	jne	.label_1173
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rdx], 6
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	jmp	.label_1181
.label_1173:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rdx], 5
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rax], 0xa
.label_1181:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	call	create_token_tree
	mov	ecx, 0xa
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0xc1], r8b
	je	.label_1166
	mov	al, 1
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0xc1], al
	lea	rdi, [rdi]
	je	.label_1166
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc1], al
.label_1166:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1160
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1160:
	mov	rsp, rsp
	jmp	.label_1164
.label_1202:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	call	create_token_tree
	nop	
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
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
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jmp	.label_1151
.label_1193:
	mov	rbp, rbp
	jmp	.label_1164
.label_1164:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	fetch_token
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	jmp	.label_1151
.label_2939:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	nop	
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1188
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jmp	.label_1151
.label_1188:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1189
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_1189:
	mov	rsp, rsp
	jmp	.label_1154
.label_2944:
	movabs	rax, OFFSET FLAT:.str.1_4
	movabs	rcx, OFFSET FLAT:.str.2_2
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rdx + 8]
	lea	rsi, [rsi]
	and	r8d, 0xff
	nop	
	cmp	r8d, 0x21
	mov	rbp, rbp
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.1_4
	mov	r10d, r8d
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.2_2
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0xe0], rdx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	call	build_charclass_op
	mov	rbp, rbp
	xor	r8d, r8d
	mov	bl, r8b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0xf1], bl
	je	.label_1190
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0xf1], al
.label_1190:
	mov	al, byte ptr [rbp - 0xf1]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_1201
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1151
.label_1201:
	lea	rdi, [rdi]
	jmp	.label_1154
.label_2945:
	movabs	rax, OFFSET FLAT:.str.3_1
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	lea	rdi, [rdi]
	cmp	r8d, 0x23
	lea	rsi, [rsi]
	sete	r9b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.3_1
	mov	r10d, r8d
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str_0
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, r10
	nop	
	mov	qword ptr [rbp - 0x108], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x110], rax
	call	build_charclass_op
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x111], bl
	je	.label_1184
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x111], al
.label_1184:
	mov	al, byte ptr [rbp - 0x111]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1199
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1199:
	mov	rbp, rbp
	jmp	.label_1154
.label_2937:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_2946:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1197:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1154:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	fetch_token
.label_1179:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	mov	rsp, rsp
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x112], al
	je	.label_1174
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	cmp	edx, 0x12
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x112], al
	je	.label_1174
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	edx, 0xff
	cmp	edx, 0x13
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x112], al
	je	.label_1174
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x112], dl
.label_1174:
	mov	al, byte ptr [rbp - 0x112]
	test	al, 1
	jne	.label_1152
	nop	
	jmp	.label_1155
.label_1152:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	parse_dup_op
	mov	rbp, rbp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x113], r11b
	je	.label_1168
	cmp	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x113], al
.label_1168:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x113]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1177
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	je	.label_1185
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x118], eax
.label_1185:
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1151
.label_1177:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1186
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_1153
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	mov	rbp, rbp
	jne	.label_1186
.label_1153:
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1163
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x11c], eax
.label_1163:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1151
.label_1186:
	mov	rsp, rsp
	jmp	.label_1179
.label_1155:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rax
.label_1151:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x118
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ac0

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
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
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_1206
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1207
.label_1206:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
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
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rsi + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rax + 0x28], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfffbffff
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x30], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xfff7ffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x38], -1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1208
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
.label_1208:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1205
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1205:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1207:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412cb0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	or	rcx, 0x800000
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	fetch_token
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 9
	mov	rsp, rsp
	jne	.label_1214
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1214:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], r11b
	jne	.label_1215
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 9
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], dl
.label_1215:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1213
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1211
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	postorder
	mov	dword ptr [rbp - 0x58], eax
.label_1211:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rax], 8
.label_1213:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1216
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1212
.label_1216:
	jmp	.label_1209
.label_1209:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 8
	ja	.label_1210
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, edx
	shl	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	or	rsi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rdi + 0xa8], rsi
.label_1210:
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	ecx, 0x11
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
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
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1212
.label_1217:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1212:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412f30

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x81], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x95], 1
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
	mov	qword ptr [rbp - 0x50], rax
	call	calloc
	lea	rdi, [rdi]
	mov	bl, 1
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x135], bl
	nop	
	je	.label_1261
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x135], al
.label_1261:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x135]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1220
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1229
.label_1220:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdx, qword ptr [rbp - 0x28]
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
	je	.label_1245
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 2
	jmp	.label_1227
.label_1245:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x19
	jne	.label_1252
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 0xfe
	or	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], cl
	mov	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x100
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1262
	nop	
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_set
.label_1262:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	mov	rcx, qword ptr [rbp - 0x28]
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
	je	.label_1237
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1227
.label_1237:
	jmp	.label_1252
.label_1252:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1253
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1253:
	jmp	.label_1222
.label_1222:
	lea	rdi, [rbp - 0xa8]
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x109], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	dword ptr [rbp - 0xa8], 3
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x94]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10b, byte ptr [rbp - 0x95]
	and	r10b, 1
	movzx	r11d, r10b
	mov	rbp, rbp
	mov	dword ptr [rsp], r11d
	mov	rsp, rsp
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rsp, rsp
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1235
	mov	eax, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1227
.label_1235:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x95], 0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	peek_token_bracket
	nop	
	mov	dword ptr [rbp - 0x94], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xa8], 4
	je	.label_1241
	nop	
	cmp	dword ptr [rbp - 0xa8], 2
	mov	rsp, rsp
	je	.label_1241
	mov	rax, qword ptr [rbp - 0x28]
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
	je	.label_1265
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1227
.label_1265:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1230
	lea	rdi, [rbp - 0x120]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x108], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x118]
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
	je	.label_1247
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1227
.label_1247:
	nop	
	mov	eax, dword ptr [rbp - 0x118]
	mov	rsp, rsp
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 0x15
	jne	.label_1260
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 1
	mov	dword ptr [rcx + 8], eax
	jmp	.label_1266
.label_1260:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x109], 1
.label_1266:
	mov	rsp, rsp
	jmp	.label_1230
.label_1230:
	jmp	.label_1241
.label_1241:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x109]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_1233
	lea	rdi, [rbp - 0xb8]
	lea	rdx, [rbp - 0x120]
	mov	eax, 1
	lea	rcx, [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x108]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	dword ptr [rsp], 1
	mov	dword ptr [rbp - 0x13c], eax
	lea	rdi, [rdi]
	call	parse_bracket_element
	nop	
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1258
	mov	eax, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1227
.label_1258:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	peek_token_bracket
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0xb4], 1
	mov	qword ptr [rbp - 0x148], rdi
	nop	
	mov	qword ptr [rbp - 0x150], rsi
	mov	rbp, rbp
	jle	.label_1225
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	nop	
	jmp	.label_1234
.label_1225:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rcx
	mov	rbp, rbp
	jmp	.label_1234
.label_1234:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x68]
	nop	
	lea	r8, [rbp - 0xa8]
	mov	rsp, rsp
	lea	r9, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	build_range_exp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
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
	je	.label_1256
	jmp	.label_1227
.label_1256:
	jmp	.label_1249
.label_1233:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x160], rcx
	mov	qword ptr [rbp - 0x168], rdx
	ja	.label_1267
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1226]]
	mov	rbp, rbp
	jmp	rcx
.label_3045:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	esi, eax
	call	bitset_set
	lea	rdi, [rdi]
	jmp	.label_1219
.label_3046:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
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
	je	.label_1236
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 2
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x128], rax
	cmp	qword ptr [rbp - 0x128], 0
	nop	
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1259
	mov	rbp, rbp
	jmp	.label_1246
.label_1259:
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
.label_1236:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x28], rsi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx + rdx*4], eax
	nop	
	jmp	.label_1219
.label_3047:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x78]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	build_equiv_class
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
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
	je	.label_1240
	jmp	.label_1227
.label_1240:
	jmp	.label_1219
.label_3048:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_collating_symbol
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1263
	jmp	.label_1227
.label_1263:
	jmp	.label_1219
.label_3049:
	mov	rbp, rbp
	lea	rcx, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	r8, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	call	build_charclass
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1228
	jmp	.label_1227
.label_1228:
	jmp	.label_1219
.label_1267:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
.label_1219:
	jmp	.label_1249
.label_1249:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
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
	je	.label_1250
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1227
.label_1250:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x15
	jne	.label_1264
	jmp	.label_1221
.label_1264:
	jmp	.label_1222
.label_1221:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x81], 1
	je	.label_1223
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_not
.label_1223:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1232
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1232:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	jne	.label_1242
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1242
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	jne	.label_1242
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1242
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1257
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1242
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x20]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1257
.label_1242:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dil, byte ptr [rsi + 0xb0]
	nop	
	and	dil, 0xfd
	or	dil, 2
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x130], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1239
	jmp	.label_1246
.label_1239:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x134], 0
.label_1244:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1255
	movsxd	rax, dword ptr [rbp - 0x134]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1251
	jmp	.label_1255
.label_1251:
	nop	
	jmp	.label_1254
.label_1254:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x134]
	add	eax, 1
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_1244
.label_1255:
	nop	
	cmp	dword ptr [rbp - 0x134], 4
	mov	rsp, rsp
	jge	.label_1218
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x178]
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
	je	.label_1238
	nop	
	jmp	.label_1246
.label_1238:
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x130]
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
	je	.label_1243
	mov	rsp, rsp
	jmp	.label_1246
.label_1243:
	mov	rsp, rsp
	jmp	.label_1248
.label_1218:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x90], rax
.label_1248:
	mov	rbp, rbp
	jmp	.label_1224
.label_1257:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x180], rdi
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x180]
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
	je	.label_1231
	lea	rdi, [rdi]
	jmp	.label_1246
.label_1231:
	jmp	.label_1224
.label_1224:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1229
.label_1246:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 0xc
.label_1227:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	mov	qword ptr [rbp - 0x10], 0
.label_1229:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x188
	nop	
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413d30

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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	mov	rbp, rbp
	and	al, 0xef
	mov	rbp, rbp
	or	al, 0x10
	mov	byte ptr [rdi + 0xb0], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
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
	je	.label_1275
	mov	eax, 0x87fffffe
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0x3ff0000
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0x7fffffe
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 0x1f
	mov	rbp, rbp
	shl	rcx, 1
	lea	rdi, [rdi]
	or	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0xc0], rcx
	mov	dword ptr [rbp - 0xc], 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0x80
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
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
	je	.label_1273
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	mov	ecx, 0x100
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdi, 0xb8
	shl	rdx, 3
	lea	rsi, [rsi]
	add	rdi, rdx
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x3c]
	nop	
	idiv	ecx
	movsxd	r8, eax
	mov	rdx, r8
	call	memset
	mov	rsp, rsp
	jmp	.label_1271
.label_1273:
	mov	rsp, rsp
	jmp	.label_1275
.label_1275:
	lea	rsi, [rsi]
	jmp	.label_1278
.label_1278:
	mov	rbp, rbp
	jmp	.label_1269
.label_1269:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_1271
	mov	dword ptr [rbp - 0x10], 0
.label_1270:
	cmp	dword ptr [rbp - 0x10], 0x40
	jge	.label_1268
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x14]
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
	jne	.label_1274
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0x5f
	jne	.label_1277
.label_1274:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, cl
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	or	rdx, qword ptr [rdi + rsi*8 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rsi*8 + 0xb8], rdx
.label_1277:
	lea	rdi, [rdi]
	jmp	.label_1276
.label_1276:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1270
.label_1268:
	mov	rbp, rbp
	jmp	.label_1272
.label_1272:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
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
	#Procedure 0x413fd0

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 0
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
	je	.label_1291
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1280
.label_1291:
	nop	
	mov	eax, 0x50
	mov	edi, eax
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1282
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1280
.label_1282:
	lea	rcx, [rbp - 0x58]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r9d, eax
	mov	dl, byte ptr [rbp - 0x31]
	mov	rbp, rbp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rsi, qword ptr [rbp - 0x50]
	mov	dl, al
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x20]
	and	dl, 1
	and	dil, 0xfe
	lea	rdi, [rdi]
	or	dil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0x20], dil
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	r8, qword ptr [rbp - 0x28]
	call	build_charclass
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rsi, [rsi]
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1292
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	free_charset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jmp	.label_1280
.label_1292:
	mov	rsp, rsp
	jmp	.label_1284
.label_1284:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_1287
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	rsi, byte ptr [rax]
	call	bitset_set
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1284
.label_1287:
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	je	.label_1290
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	bitset_not
.label_1290:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1283
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1283:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1279
	jmp	.label_1285
.label_1279:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1289
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dil, byte ptr [rsi + 0xb0]
	lea	rsi, [rsi]
	and	dil, 0xfd
	lea	rsi, [rsi]
	or	dil, 2
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1288
	mov	rbp, rbp
	jmp	.label_1285
.label_1288:
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	call	create_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	movzx	ecx, r8b
	mov	rsp, rsp
	movsxd	rax, ecx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1286
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1280
.label_1286:
	mov	rbp, rbp
	jmp	.label_1281
.label_1289:
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rdi
	jmp	.label_1280
.label_1281:
	jmp	.label_1285
.label_1285:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
.label_1280:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x88
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414450

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xc0
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	and	eax, 0xff
	lea	rdi, [rdi]
	cmp	eax, 0x17
	jne	.label_1310
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	fetch_number
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1312
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1293
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2c
	lea	rsi, [rsi]
	jne	.label_1293
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], 0
	jmp	.label_1303
.label_1293:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1299
.label_1303:
	mov	rsp, rsp
	jmp	.label_1312
.label_1312:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], -2
	mov	rsp, rsp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1313
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1320
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1326
.label_1320:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_1330
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	jne	.label_1330
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1297
.label_1330:
	lea	rsi, [rsi]
	mov	rax, -2
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1297
.label_1297:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
.label_1326:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rax
.label_1313:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], -2
	mov	byte ptr [rbp - 0x91], al
	mov	rsp, rsp
	je	.label_1305
	cmp	qword ptr [rbp - 0x60], -2
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 0x91], al
.label_1305:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1314
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x200000
	cmp	rax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1318
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	nop	
	jne	.label_1329
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 9
	jmp	.label_1295
.label_1329:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 0xa
.label_1295:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1299
.label_1318:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xffffff00
	or	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rax + 8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1299
.label_1314:
	cmp	qword ptr [rbp - 0x60], -1
	mov	rbp, rbp
	je	.label_1308
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x92], al
	jg	.label_1311
.label_1308:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x92], dl
.label_1311:
	nop	
	mov	al, byte ptr [rbp - 0x92]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1322
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1299
.label_1322:
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1331
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	jmp	.label_1334
.label_1331:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa0], rax
.label_1334:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
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
	je	.label_1323
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1299
.label_1323:
	jmp	.label_1304
.label_1310:
	nop	
	mov	eax, 0xffffffff
	mov	ecx, 1
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	lea	rdi, [rdi]
	cmp	edx, 0x13
	cmove	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x60], rsi
.label_1304:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	fetch_token
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
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
	je	.label_1328
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1299
.label_1328:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1336
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], al
.label_1336:
	nop	
	mov	al, byte ptr [rbp - 0xa1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1298
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	postorder
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_1299
.label_1298:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1315
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 2
.label_1302:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jg	.label_1324
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	nop	
	mov	ecx, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xa9], r8b
	nop	
	je	.label_1335
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0xa9], al
.label_1335:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1294
	nop	
	jmp	.label_1300
.label_1294:
	lea	rsi, [rsi]
	jmp	.label_1301
.label_1301:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1302
.label_1324:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jne	.label_1309
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1299
.label_1309:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1317
	jmp	.label_1300
.label_1317:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1327
.label_1315:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
.label_1327:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1333
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:mark_opt_subexp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	postorder
	mov	dword ptr [rbp - 0xb0], eax
.label_1333:
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	eax, 0xa
	mov	ecx, 0xb
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x60], -1
	cmove	eax, ecx
	mov	ecx, eax
	mov	rsp, rsp
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1307
	lea	rsi, [rsi]
	jmp	.label_1300
.label_1307:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 2
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_1316:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_1319
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	lea	rsi, [rsi]
	mov	r8b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xb1], r8b
	je	.label_1332
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb1], al
.label_1332:
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_1296
	jmp	.label_1300
.label_1296:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	ecx, r8b
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1306
	nop	
	jmp	.label_1300
.label_1306:
	jmp	.label_1325
.label_1325:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1316
.label_1319:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1321
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
.label_1321:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1299
.label_1300:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_1299:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414d00

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_1337
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_1343
.label_1337:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1348
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	je	.label_1348
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1348
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1343
.label_1348:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, 0x5c
	jne	.label_1338
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 1
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1338
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	jge	.label_1338
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0x22], dl
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x22]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffffff00
	or	esi, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1343
.label_1338:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5b
	nop	
	jne	.label_1358
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jge	.label_1355
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x23], dl
	lea	rdi, [rdi]
	jmp	.label_1354
.label_1355:
	mov	byte ptr [rbp - 0x23], 0
.label_1354:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x23]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], 2
	movzx	edx, byte ptr [rbp - 0x23]
	mov	esi, edx
	nop	
	sub	esi, 0x2e
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_1345
	jmp	.label_1352
.label_1352:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x34], eax
	nop	
	je	.label_1340
	lea	rdi, [rdi]
	jmp	.label_1347
.label_1347:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x38], eax
	nop	
	je	.label_1349
	lea	rdi, [rdi]
	jmp	.label_1357
.label_1345:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1351
.label_1349:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1351
.label_1340:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 4
	nop	
	cmp	rax, 0
	je	.label_1350
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1351
.label_1350:
	lea	rsi, [rsi]
	jmp	.label_1357
.label_1357:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax], dl
	nop	
	mov	dword ptr [rbp - 0x28], 1
.label_1351:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1343
.label_1358:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	mov	rbp, rbp
	je	.label_1356
	mov	rsp, rsp
	jmp	.label_1344
.label_1344:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	sub	eax, 0x5d
	nop	
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1346
	jmp	.label_1353
.label_1353:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x48], eax
	je	.label_1341
	lea	rdi, [rdi]
	jmp	.label_1339
.label_1356:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1342
.label_1346:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1342
.label_1341:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1342
.label_1339:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1342:
	mov	dword ptr [rbp - 4], 1
.label_1343:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415110

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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	or	r8, qword ptr [rdi + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], r8
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4151a0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rdx + 0x48]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 1
	jle	.label_1364
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	call	re_string_wchar_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rsi + 8], eax
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1362
.label_1364:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	cmp	edx, 0x1a
	je	.label_1360
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1360
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x1c
	jne	.label_1361
.label_1360:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	parse_bracket_symbol
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1362
.label_1361:
	mov	rax, qword ptr [rbp - 0x20]
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
	test	byte ptr [rbp - 0x39], 1
	jne	.label_1359
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x15
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1363
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xb
	lea	rdi, [rdi]
	jmp	.label_1362
.label_1363:
	nop	
	jmp	.label_1359
.label_1359:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], cl
	mov	dword ptr [rbp - 4], 0
.label_1362:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415380

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x69], al
	je	.label_1365
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x69], al
	je	.label_1365
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 2
	nop	
	mov	byte ptr [rbp - 0x69], al
	je	.label_1365
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x69], cl
.label_1365:
	mov	al, byte ptr [rbp - 0x69]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1369
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xb
	mov	rbp, rbp
	jmp	.label_1368
.label_1369:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_1380
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + 8]
	mov	byte ptr [rbp - 0x6a], al
	lea	rdi, [rdi]
	call	strlen
	cmp	rax, 1
	mov	dl, byte ptr [rbp - 0x6a]
	mov	byte ptr [rbp - 0x6b], dl
	ja	.label_1389
.label_1380:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x6c], cl
	mov	rbp, rbp
	jne	.label_1394
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	strlen
	mov	rsp, rsp
	cmp	rax, 1
	mov	rbp, rbp
	seta	cl
	mov	byte ptr [rbp - 0x6c], cl
.label_1394:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x6c]
	mov	byte ptr [rbp - 0x6b], al
.label_1389:
	mov	al, byte ptr [rbp - 0x6b]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1382
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1368
.label_1382:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	jne	.label_1388
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], ecx
	jmp	.label_1393
.label_1388:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1366
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], ecx
	jmp	.label_1372
.label_1366:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1372
.label_1372:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], eax
.label_1393:
	mov	eax, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_1378
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x78], ecx
	mov	rbp, rbp
	jmp	.label_1390
.label_1378:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	nop	
	jne	.label_1397
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rsp, rsp
	jmp	.label_1370
.label_1397:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_1370
.label_1370:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x78], eax
.label_1390:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_1381
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1386
.label_1381:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	movzx	edi, cl
	mov	rsp, rsp
	call	parse_byte
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	nop	
	jmp	.label_1367
.label_1386:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x80], ecx
.label_1367:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	je	.label_1374
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_1379
.label_1374:
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	jmp	.label_1398
.label_1379:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x84], ecx
.label_1398:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x48], -1
	nop	
	je	.label_1395
	cmp	dword ptr [rbp - 0x4c], -1
	lea	rsi, [rsi]
	jne	.label_1387
.label_1395:
	nop	
	mov	dword ptr [rbp - 4], 3
	mov	rbp, rbp
	jmp	.label_1368
.label_1387:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	and	rdx, 0x10000
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x85], cl
	nop	
	je	.label_1377
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	seta	cl
	mov	byte ptr [rbp - 0x85], cl
.label_1377:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1391
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1368
.label_1391:
	jmp	.label_1371
.label_1371:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1373
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x40]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1375
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	shl	rcx, 2
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	dl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x86], dl
	je	.label_1383
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x86], al
.label_1383:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x86]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1392
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1368
.label_1392:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
.label_1375:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x40]
	mov	rsp, rsp
	mov	rsi, rdx
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x40], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rcx + rdx*4], eax
.label_1373:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], 0
.label_1396:
	cmp	dword ptr [rbp - 0x44], 0x100
	mov	rsp, rsp
	jge	.label_1385
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	ja	.label_1384
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	cmp	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	ja	.label_1384
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x44]
	call	bitset_set
.label_1384:
	nop	
	jmp	.label_1376
.label_1376:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1396
.label_1385:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_1368:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415920

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
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
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1400
.label_1399:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_1400:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4159b0

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	dword ptr [rbp - 4], 3
	nop	
	jmp	.label_1402
.label_1401:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_set
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_1402:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a50

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	nop	
	je	.label_1435
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_1
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1472
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_1
	mov	esi, eax
	nop	
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	jne	.label_1435
.label_1472:
	movabs	rax, OFFSET FLAT:.str.9_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1435:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
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
	je	.label_1492
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1532
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1460
.label_1532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_1492:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	wctype
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rdi + 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
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
	jne	.label_1403
	jmp	.label_1406
.label_1406:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1407
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_1466:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1429
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 8
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1431
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1431:
	jmp	.label_1464
.label_1464:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1466
.label_1429:
	jmp	.label_1423
.label_1407:
	mov	dword ptr [rbp - 0x3c], 0
.label_1507:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1477
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 8
	cmp	edx, 0
	je	.label_1530
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	call	bitset_set
.label_1530:
	nop	
	jmp	.label_1505
.label_1505:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1507
.label_1477:
	lea	rsi, [rsi]
	jmp	.label_1423
.label_1423:
	jmp	.label_1512
.label_1512:
	mov	rbp, rbp
	jmp	.label_1489
.label_1403:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.10_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1522
	lea	rsi, [rsi]
	jmp	.label_1529
.label_1529:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1533
	mov	dword ptr [rbp - 0x3c], 0
.label_1574:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1513
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 2
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1556
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	esi, edx
	nop	
	call	bitset_set
.label_1556:
	lea	rdi, [rdi]
	jmp	.label_1571
.label_1571:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1574
.label_1513:
	lea	rsi, [rsi]
	jmp	.label_1404
.label_1533:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_1445:
	cmp	dword ptr [rbp - 0x3c], 0x100
	nop	
	jge	.label_1408
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 2
	nop	
	cmp	edx, 0
	nop	
	je	.label_1421
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	call	bitset_set
.label_1421:
	jmp	.label_1442
.label_1442:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1445
.label_1408:
	jmp	.label_1404
.label_1404:
	lea	rsi, [rsi]
	jmp	.label_1452
.label_1452:
	nop	
	jmp	.label_1454
.label_1522:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1468
	lea	rsi, [rsi]
	jmp	.label_1471
.label_1471:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1474
	mov	dword ptr [rbp - 0x3c], 0
.label_1528:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1490
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 0x200
	cmp	edx, 0
	je	.label_1504
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1504:
	jmp	.label_1525
.label_1525:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1528
.label_1490:
	jmp	.label_1535
.label_1474:
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1566:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1539
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	nop	
	cmp	edx, 0
	je	.label_1553
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	call	bitset_set
.label_1553:
	mov	rsp, rsp
	jmp	.label_1563
.label_1563:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1566
.label_1539:
	lea	rdi, [rdi]
	jmp	.label_1535
.label_1535:
	jmp	.label_1547
.label_1547:
	jmp	.label_1485
.label_1468:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.3_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1434
	mov	rsp, rsp
	jmp	.label_1409
.label_1409:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1412
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1438:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rbp, rbp
	jge	.label_1432
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x2000
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1450
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1450:
	mov	rbp, rbp
	jmp	.label_1470
.label_1470:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_1438
.label_1432:
	jmp	.label_1478
.label_1412:
	mov	dword ptr [rbp - 0x3c], 0
.label_1515:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1484
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1497
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1497:
	jmp	.label_1517
.label_1517:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1515
.label_1484:
	jmp	.label_1478
.label_1478:
	nop	
	jmp	.label_1573
.label_1573:
	jmp	.label_1481
.label_1434:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.9_1
	nop	
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_1538
	nop	
	jmp	.label_1540
.label_1540:
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1542
	mov	dword ptr [rbp - 0x3c], 0
.label_1414:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1557
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_1567
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1567:
	lea	rdi, [rdi]
	jmp	.label_1410
.label_1410:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1414
.label_1557:
	mov	rsp, rsp
	jmp	.label_1420
.label_1542:
	mov	dword ptr [rbp - 0x3c], 0
.label_1463:
	cmp	dword ptr [rbp - 0x3c], 0x100
	lea	rsi, [rsi]
	jge	.label_1428
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x400
	nop	
	cmp	edx, 0
	je	.label_1441
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	call	bitset_set
.label_1441:
	nop	
	jmp	.label_1462
.label_1462:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1463
.label_1428:
	mov	rbp, rbp
	jmp	.label_1420
.label_1420:
	lea	rsi, [rsi]
	jmp	.label_1473
.label_1473:
	jmp	.label_1476
.label_1538:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	eax, OFFSET FLAT:.str.11_2
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1483
	nop	
	jmp	.label_1487
.label_1487:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1575
	mov	dword ptr [rbp - 0x3c], 0
.label_1458:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1501
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_1496
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1496:
	lea	rsi, [rsi]
	jmp	.label_1536
.label_1536:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1458
.label_1501:
	mov	rsp, rsp
	jmp	.label_1544
.label_1575:
	mov	dword ptr [rbp - 0x3c], 0
.label_1491:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1550
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1558
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1558:
	jmp	.label_1572
.label_1572:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1491
.label_1550:
	nop	
	jmp	.label_1544
.label_1544:
	lea	rsi, [rsi]
	jmp	.label_1405
.label_1405:
	mov	rbp, rbp
	jmp	.label_1461
.label_1483:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.12_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1416
	lea	rsi, [rsi]
	jmp	.label_1422
.label_1422:
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1426
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1570:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rbp, rbp
	jge	.label_1444
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x4000
	cmp	edx, 0
	nop	
	je	.label_1455
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rbp, rbp
	call	bitset_set
.label_1455:
	nop	
	jmp	.label_1480
.label_1480:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1570
.label_1444:
	jmp	.label_1433
.label_1426:
	mov	dword ptr [rbp - 0x3c], 0
.label_1524:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1495
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x4000
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1506
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1506:
	jmp	.label_1521
.label_1521:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_1524
.label_1495:
	jmp	.label_1433
.label_1433:
	jmp	.label_1534
.label_1534:
	mov	rbp, rbp
	jmp	.label_1456
.label_1416:
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
	jne	.label_1546
	jmp	.label_1552
.label_1552:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1554
	mov	dword ptr [rbp - 0x3c], 0
.label_1424:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1560
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 0x100
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1436
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1436:
	mov	rsp, rsp
	jmp	.label_1419
.label_1419:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_1424
.label_1560:
	mov	rbp, rbp
	jmp	.label_1479
.label_1554:
	mov	dword ptr [rbp - 0x3c], 0
.label_1449:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1439
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	nop	
	je	.label_1543
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	call	bitset_set
.label_1543:
	jmp	.label_1469
.label_1469:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_1449
.label_1439:
	lea	rsi, [rsi]
	jmp	.label_1479
.label_1479:
	jmp	.label_1482
.label_1482:
	jmp	.label_1437
.label_1546:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.13_2
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_1494
	nop	
	jmp	.label_1498
.label_1498:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
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
	je	.label_1499
	mov	dword ptr [rbp - 0x3c], 0
.label_1549:
	cmp	dword ptr [rbp - 0x3c], 0x100
	nop	
	jge	.label_1510
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1526
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1526:
	mov	rsp, rsp
	jmp	.label_1548
.label_1548:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1549
.label_1510:
	jmp	.label_1418
.label_1499:
	mov	dword ptr [rbp - 0x3c], 0
.label_1411:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1559
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1569
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	call	bitset_set
.label_1569:
	lea	rsi, [rsi]
	jmp	.label_1447
.label_1447:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1411
.label_1559:
	mov	rbp, rbp
	jmp	.label_1418
.label_1418:
	jmp	.label_1425
.label_1425:
	jmp	.label_1457
.label_1494:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.14_2
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_1440
	mov	rsp, rsp
	jmp	.label_1443
.label_1443:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1448
	mov	dword ptr [rbp - 0x3c], 0
.label_1503:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1486
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1475
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	mov	rsp, rsp
	call	bitset_set
.label_1475:
	jmp	.label_1500
.label_1500:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_1503
.label_1486:
	jmp	.label_1509
.label_1448:
	mov	dword ptr [rbp - 0x3c], 0
.label_1531:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1511
	movsxd	rax, dword ptr [rbp - 0x3c]
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
	je	.label_1565
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1565:
	mov	rbp, rbp
	jmp	.label_1541
.label_1541:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_1531
.label_1511:
	lea	rdi, [rdi]
	jmp	.label_1509
.label_1509:
	jmp	.label_1555
.label_1555:
	lea	rsi, [rsi]
	jmp	.label_1451
.label_1440:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.15_2
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1561
	mov	rbp, rbp
	jmp	.label_1564
.label_1564:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1568
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1467:
	cmp	dword ptr [rbp - 0x3c], 0x100
	lea	rsi, [rsi]
	jge	.label_1527
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x100]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 4
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1417
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1417:
	jmp	.label_1446
.label_1446:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1467
.label_1527:
	mov	rsp, rsp
	jmp	.label_1520
.label_1568:
	mov	dword ptr [rbp - 0x3c], 0
.label_1562:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1502
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x108], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 4
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1459
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	call	bitset_set
.label_1459:
	lea	rsi, [rsi]
	jmp	.label_1493
.label_1493:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1562
.label_1502:
	jmp	.label_1520
.label_1520:
	lea	rdi, [rdi]
	jmp	.label_1488
.label_1488:
	lea	rsi, [rsi]
	jmp	.label_1465
.label_1561:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_1514
	mov	rsp, rsp
	jmp	.label_1545
.label_1545:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1518
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_1427:
	cmp	dword ptr [rbp - 0x3c], 0x100
	lea	rdi, [rdi]
	jge	.label_1537
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x110], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1551
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1551:
	jmp	.label_1516
.label_1516:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1427
.label_1537:
	jmp	.label_1453
.label_1518:
	mov	dword ptr [rbp - 0x3c], 0
.label_1519:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rbp, rbp
	jge	.label_1413
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_1415
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x3c]
	nop	
	call	bitset_set
.label_1415:
	jmp	.label_1430
.label_1430:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1519
.label_1413:
	nop	
	jmp	.label_1453
.label_1453:
	jmp	.label_1508
.label_1508:
	jmp	.label_1523
.label_1514:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1460
.label_1523:
	mov	rsp, rsp
	jmp	.label_1465
.label_1465:
	jmp	.label_1451
.label_1451:
	jmp	.label_1457
.label_1457:
	lea	rdi, [rdi]
	jmp	.label_1437
.label_1437:
	lea	rsi, [rsi]
	jmp	.label_1456
.label_1456:
	lea	rdi, [rdi]
	jmp	.label_1461
.label_1461:
	jmp	.label_1476
.label_1476:
	lea	rsi, [rsi]
	jmp	.label_1481
.label_1481:
	jmp	.label_1485
.label_1485:
	mov	rbp, rbp
	jmp	.label_1454
.label_1454:
	jmp	.label_1489
.label_1489:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_1460:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416d10

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], 0
.label_1577:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_1576
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	xor	rax, 0xffffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_1577
.label_1576:
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x416d80

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_1578:
	cmp	dword ptr [rbp - 0x14], 4
	mov	rbp, rbp
	jge	.label_1579
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1578
.label_1579:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416df0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rdi, [rdi]
	jne	.label_1580
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1583
.label_1580:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 1
.label_1585:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	jge	.label_1581
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1582
	mov	rsp, rsp
	jmp	.label_1581
.label_1582:
	jmp	.label_1584
.label_1584:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1585
.label_1581:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1583:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416ea0

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x22], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1597
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 7
	mov	rsp, rsp
	jmp	.label_1592
.label_1597:
	nop	
	jmp	.label_1599
.label_1599:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0x20
	lea	rdi, [rdi]
	jl	.label_1586
	mov	dword ptr [rbp - 4], 7
	jmp	.label_1592
.label_1586:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x1e
	jne	.label_1594
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	jmp	.label_1589
.label_1594:
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
.label_1589:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_1601
	mov	dword ptr [rbp - 4], 7
	jmp	.label_1592
.label_1601:
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	movzx	ecx, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	eax, ecx
	jne	.label_1596
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
	jne	.label_1596
	jmp	.label_1588
.label_1596:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1599
.label_1588:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + 0x48], rcx
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 0x2c], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], esi
	je	.label_1591
	jmp	.label_1595
.label_1595:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	sub	eax, 0x1c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	je	.label_1598
	nop	
	jmp	.label_1600
.label_1600:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x1e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	je	.label_1587
	mov	rbp, rbp
	jmp	.label_1593
.label_1591:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 3
	mov	rsp, rsp
	jmp	.label_1590
.label_1598:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 2
	jmp	.label_1590
.label_1587:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 4
	jmp	.label_1590
.label_1593:
	nop	
	jmp	.label_1590
.label_1590:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_1592:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417100

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
	mov	byte ptr [rbp - 1], sil
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
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1604
.label_1603:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	edx, dword ptr [rbp - 0x1c]
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
	mov	byte ptr [rbp - 1], sil
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
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
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
	mov	byte ptr [rbp - 1], dil
.label_1604:
	movzx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4172f0

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1607
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 1]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1608
.label_1607:
	movzx	edi, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
.label_1608:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x417350

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], -1
.label_1621:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
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
	je	.label_1612
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1611
.label_1612:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 0x18
	je	.label_1614
	nop	
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1618
.label_1614:
	lea	rsi, [rsi]
	jmp	.label_1609
.label_1618:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1613
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x30
	jl	.label_1613
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x29]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_1613
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], -2
	nop	
	jne	.label_1610
.label_1613:
	mov	rax, -2
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1615
.label_1610:
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1617
	movzx	eax, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	jmp	.label_1616
.label_1617:
	mov	rsp, rsp
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x28], 0xa
	movzx	eax, byte ptr [rbp - 0x29]
	mov	esi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	sub	rdx, 0x30
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1619
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1620
.label_1619:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	edx, ecx
	add	rax, rdx
	lea	rsi, [rsi]
	sub	rax, 0x30
	mov	qword ptr [rbp - 0x48], rax
.label_1620:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1616:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1615:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1621
.label_1609:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1611:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417530

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_1630:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
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
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_1629
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1624
.label_1629:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x30]
	and	edx, 0xfffbffff
	lea	rsi, [rsi]
	or	edx, 0x40000
	mov	dword ptr [rax + 0x30], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1622
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1626
.label_1622:
	mov	qword ptr [rbp - 0x40], 0
.label_1628:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x49], al
	mov	rbp, rbp
	je	.label_1625
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], cl
.label_1625:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1631
	mov	rbp, rbp
	jmp	.label_1623
.label_1631:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1627
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1624
.label_1627:
	mov	rbp, rbp
	jmp	.label_1628
.label_1623:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1626:
	jmp	.label_1630
.label_1624:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417720

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
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
	cmp	rax, qword ptr [rbp - 0x18]
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
	#Procedure 0x4177a0

	.globl preorder
	.type preorder, @function
preorder:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1642:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1641
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
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
	mov	qword ptr [rbp - 0x38], 0
.label_1637:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	lea	rsi, [rsi]
	je	.label_1635
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], cl
.label_1635:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_1636
	jmp	.label_1638
.label_1636:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
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
	jmp	.label_1642
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
	#Procedure 0x417900

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1643
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
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
	mov	rdi, qword ptr [rbp - 0x18]
	or	rsi, qword ptr [rdi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa0], rsi
	mov	rbp, rbp
	jmp	.label_1644
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
	je	.label_1647
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1647:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1645
	mov	eax, 1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, cl
	lea	rdi, [rdi]
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	and	rdx, qword ptr [rsi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa0], rdx
.label_1645:
	jmp	.label_1646
.label_1646:
	lea	rsi, [rsi]
	jmp	.label_1644
.label_1644:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417b10

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	je	.label_1650
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1650
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_1648
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_1648:
	nop	
	jmp	.label_1650
.label_1650:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	je	.label_1651
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1651
	lea	rdi, [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	je	.label_1649
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1649:
	mov	rsp, rsp
	jmp	.label_1651
.label_1651:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417c60

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
	#Procedure 0x417de0

	.globl calc_next
	.type calc_next, @function
calc_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	mov	ecx, eax
	sub	ecx, 0xb
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], ecx
	je	.label_1657
	nop	
	jmp	.label_1660
.label_1660:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	sub	eax, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_1661
	jmp	.label_1659
.label_1657:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1658
.label_1661:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	jmp	.label_1658
.label_1659:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1662
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x20], rax
.label_1662:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_1663
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
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
	#Procedure 0x417f00

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	add	eax, -2
	mov	esi, eax
	lea	rsi, [rsi]
	sub	eax, 0xe
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	ja	.label_1664
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1666]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x418270

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1680:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jne	.label_1686
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jne	.label_1683
	jmp	.label_1687
.label_1683:
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1686:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1682
	mov	rsp, rsp
	jmp	.label_1684
.label_1682:
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1685
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1681
.label_1685:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jne	.label_1688
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_1688:
	lea	rsi, [rsi]
	jmp	.label_1684
.label_1684:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1680
.label_1687:
	mov	dword ptr [rbp - 4], 0
.label_1681:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4183b0

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
.label_1697:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
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
	imul	rdi, qword ptr [rbp - 0x20], 0x18
	lea	rsi, [rsi]
	add	rcx, rdi
	mov	rdi, rcx
	nop	
	call	memset
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1697
.label_1691:
	mov	qword ptr [rbp - 0x18], 0
.label_1692:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	jae	.label_1696
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1690:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1698
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
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
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
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
	jmp	.label_1695
.label_1695:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1690
.label_1698:
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
.label_1696:
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
	#Procedure 0x418560

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_1699
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1703
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x58]
	shl	rsi, cl
	mov	rbp, rbp
	and	rdx, rsi
	lea	rdi, [rdi]
	cmp	rdx, 0
	jne	.label_1699
.label_1703:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1701
.label_1699:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 8
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	call	create_tree
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1702
	nop	
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_1705
.label_1702:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
.label_1705:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x61], r8b
	lea	rdi, [rdi]
	je	.label_1700
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x61], al
	je	.label_1700
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	mov	byte ptr [rbp - 0x61], al
	je	.label_1700
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1700:
	nop	
	mov	al, byte ptr [rbp - 0x61]
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
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1701
.label_1704:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	shr	edx, 0x13
	lea	rsi, [rsi]
	and	edx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	rax, qword ptr [rbp - 0x38]
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
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1701:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x418830

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
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
	je	.label_1711
	nop	
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], 0x18
	cmp	rax, qword ptr [rbp - 0x28]
	setb	dl
	mov	rsp, rsp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1707
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], -1
	nop	
	jmp	.label_1708
.label_1707:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1706
	mov	qword ptr [rbp - 8], -1
	lea	rsi, [rsi]
	jmp	.label_1708
.label_1706:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rcx, 3
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	nop	
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	dl, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], dl
	je	.label_1709
	mov	rsp, rsp
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], al
	mov	rsp, rsp
	je	.label_1709
	nop	
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], al
	nop	
	je	.label_1709
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x59], al
.label_1709:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x59]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1712
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], -1
	mov	rsp, rsp
	jmp	.label_1708
.label_1712:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_1711:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xfffc00ff
	nop	
	mov	dword ptr [rax + 8], edx
	mov	edx, dword ptr [rbp - 0x10]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_1713
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5a], al
	mov	rbp, rbp
	jg	.label_1710
.label_1713:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	nop	
	mov	byte ptr [rbp - 0x5a], cl
.label_1710:
	mov	al, byte ptr [rbp - 0x5a]
	xor	ecx, ecx
	mov	edx, 0x18
	mov	esi, edx
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
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
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r8 + 0x18]
	nop	
	mov	qword ptr [r8 + rdi*8], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	r8, qword ptr [r8 + 0x10], 0x18
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x6c], ecx
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	imul	rdi, qword ptr [rdi + 0x10], 0x18
	mov	rbp, rbp
	add	rdx, rdi
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	r8, rdi
	mov	rbp, rbp
	add	r8, 1
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x10], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
.label_1708:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ca0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 2
	mov	rsp, rsp
	mov	rdi, rcx
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_1718
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1719
.label_1718:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1715
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	jmp	.label_1716
.label_1715:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jge	.label_1714
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	jmp	.label_1717
.label_1714:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1717:
	nop	
	jmp	.label_1716
.label_1716:
	mov	dword ptr [rbp - 4], 0
.label_1719:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418e10

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 8], 1
	mov	rdi, rcx
	mov	rbp, rbp
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1720
.label_1721:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1720:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ee0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	lea	r8, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4a], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x28], eax
	nop	
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	nop	
	je	.label_1738
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1724
.label_1738:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
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
	je	.label_1723
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1723
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
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
	jne	.label_1723
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1737
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1724
.label_1737:
	mov	rsp, rsp
	jmp	.label_1723
.label_1723:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
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
	je	.label_1728
	mov	qword ptr [rbp - 0x30], 0
.label_1726:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_1732
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], -1
	mov	rsp, rsp
	jne	.label_1725
	mov	byte ptr [rbp - 0x4a], 1
	lea	rsi, [rsi]
	jmp	.label_1730
.label_1725:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1733
	nop	
	lea	rdi, [rbp - 0x68]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1722
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1724
.label_1722:
	jmp	.label_1735
.label_1733:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
.label_1735:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rbp - 0x68]
	mov	rsp, rsp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_1736
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1724
.label_1736:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1734
	nop	
	mov	byte ptr [rbp - 0x4a], 1
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_1734:
	jmp	.label_1730
.label_1730:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1726
.label_1732:
	jmp	.label_1728
.label_1728:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	nop	
	je	.label_1729
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1724
.label_1729:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_1727
	test	byte ptr [rbp - 0x21], 1
	jne	.label_1727
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1731
.label_1727:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
.label_1731:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
	mov	dword ptr [rbp - 4], 0
.label_1724:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4193c0

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rsi, 3
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	call	malloc
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1740
.label_1739:
	mov	dword ptr [rbp - 4], 0
.label_1740:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419470

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], r8d
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x48], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
.label_1747:
	mov	rax, qword ptr [rbp - 0x38]
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
	jne	.label_1752
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	nop	
	and	r8b, 1
	mov	rbp, rbp
	movzx	edx, r8b
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1751
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1745
.label_1751:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1754
	nop	
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1745
.label_1754:
	jmp	.label_1749
.label_1752:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1763
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	jmp	.label_1746
.label_1763:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_1757
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jne	.label_1755
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	je	.label_1755
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	al, byte ptr [rbp - 0x41]
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
	je	.label_1762
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1745
.label_1762:
	lea	rdi, [rdi]
	jmp	.label_1746
.label_1755:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	edx, 8
	and	edx, 0x3ff
	or	edx, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	duplicate_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1743
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1745
.label_1743:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1758
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_1745
.label_1758:
	lea	rdi, [rdi]
	jmp	.label_1756
.label_1757:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	search_duplicated_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], -1
	mov	rsp, rsp
	jne	.label_1760
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1742
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1745
.label_1742:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1761
	nop	
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_1745
.label_1761:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x48]
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	setne	r9b
	mov	rbp, rbp
	and	r9b, 1
	movzx	eax, r9b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1753
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_1745
.label_1753:
	jmp	.label_1741
.label_1760:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_1750
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1745
.label_1750:
	jmp	.label_1741
.label_1741:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	nop	
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x58], rax
	nop	
	cmp	qword ptr [rbp - 0x58], -1
	lea	rdi, [rdi]
	sete	r8b
	nop	
	and	r8b, 1
	movzx	edx, r8b
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_1748
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1745
.label_1748:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1744
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1745
.label_1744:
	mov	rbp, rbp
	jmp	.label_1756
.label_1756:
	jmp	.label_1759
.label_1759:
	lea	rdi, [rdi]
	jmp	.label_1749
.label_1749:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1747
.label_1746:
	mov	dword ptr [rbp - 4], 0
.label_1745:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419b10

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1771
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1784
.label_1771:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1767
.label_1784:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1774
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 3
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1770
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_1767
.label_1770:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1774:
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_1780
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1767
.label_1780:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1782:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x49], cl
	jl	.label_1785
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	setge	al
	nop	
	mov	byte ptr [rbp - 0x49], al
.label_1785:
	mov	al, byte ptr [rbp - 0x49]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1777
	jmp	.label_1775
.label_1777:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1783
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1764
.label_1783:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_1769
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	qword ptr [rdx + rcx*8 - 8], rax
	nop	
	jmp	.label_1766
.label_1769:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1766:
	mov	rbp, rbp
	jmp	.label_1764
.label_1764:
	mov	rsp, rsp
	jmp	.label_1782
.label_1775:
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jl	.label_1778
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	nop	
	shl	rdx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1778:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	shl	rcx, 1
	lea	rsi, [rsi]
	add	rax, rcx
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1773
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1767
.label_1773:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1772:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_1768
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	add	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1776
	jmp	.label_1779
.label_1776:
	lea	rdi, [rdi]
	jmp	.label_1765
.label_1768:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_1781
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1779
.label_1781:
	lea	rsi, [rsi]
	jmp	.label_1765
.label_1765:
	mov	rsp, rsp
	jmp	.label_1772
.label_1779:
	nop	
	mov	dword ptr [rbp - 4], 0
.label_1767:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a070

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi], 0
	jne	.label_1791
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
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
	mov	byte ptr [rbp - 1], cl
	jmp	.label_1786
.label_1791:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jne	.label_1790
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1786
.label_1790:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1792
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1796
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1786
.label_1796:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
.label_1792:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	jge	.label_1787
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_1794:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jle	.label_1793
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1794
.label_1793:
	jmp	.label_1789
.label_1787:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1788:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jle	.label_1795
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1788
.label_1795:
	jmp	.label_1789
.label_1789:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	nop	
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
.label_1786:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a320

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
	mov	dword ptr [rbp - 0x14], edx
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
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
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
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rdx*8], rcx
.label_1797:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a4a0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	shr	eax, 0x12
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	mov	rbp, rbp
	je	.label_1799
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 0x29], al
.label_1799:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	nop	
	jne	.label_1801
	jmp	.label_1804
.label_1801:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1798
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
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
	#Procedure 0x41a5c0

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1805
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
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
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1807
.label_1806:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_1805:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_1807:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x41a6d0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1808
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1810
.label_1809:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
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
	mov	rcx, qword ptr [rbp - 0x10]
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
	#Procedure 0x41a800

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	mov	rbp, rbp
	jg	.label_1812
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1816
.label_1812:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1818:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1817
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1814
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1819
.label_1814:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1819:
	lea	rdi, [rdi]
	jmp	.label_1818
.label_1817:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jne	.label_1813
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1815
.label_1813:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	jmp	.label_1815
.label_1815:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1816:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a930

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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	mov	rsp, rsp
	jne	.label_1824
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1821
.label_1824:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x24]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	and	rdi, qword ptr [rcx + 0x88]
	nop	
	imul	rcx, rdi, 0x18
	nop	
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1822:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_1823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
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
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_1820
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	re_node_set_compare
	test	al, 1
	mov	rsp, rsp
	jne	.label_1826
	jmp	.label_1820
.label_1826:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1821
.label_1820:
	mov	rsp, rsp
	jmp	.label_1827
.label_1827:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1822
.label_1823:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x30]
	call	create_cd_newstate
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1825
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_1825:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1821:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41aaf0

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	eax, esi
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_1829:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1828
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1829
.label_1828:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ab80

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1830
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_1830
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	je	.label_1834
.label_1830:
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1835
.label_1834:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1833:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_1831
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_1832
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1835
.label_1832:
	lea	rsi, [rsi]
	jmp	.label_1833
.label_1831:
	mov	byte ptr [rbp - 1], 1
.label_1835:
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
	#Procedure 0x41ac60

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	mov	rdi, r8
	mov	rsi, r9
	lea	rdi, [rdi]
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	sete	r10b
	and	r10b, 1
	nop	
	movzx	edx, r10b
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1848
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1837
.label_1848:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1836
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_1837
.label_1836:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dl, al
	mov	sil, byte ptr [rcx + 0x68]
	nop	
	and	dl, 0xf
	mov	rbp, rbp
	and	sil, 0xf0
	or	sil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x68], sil
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, 8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x50], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1844:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1839
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x54], esi
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	esi, 8
	mov	rsp, rsp
	and	esi, 0x3ff
	mov	dword ptr [rbp - 0x58], esi
	cmp	dword ptr [rbp - 0x54], 1
	mov	rbp, rbp
	jne	.label_1842
	cmp	dword ptr [rbp - 0x58], 0
	jne	.label_1842
	jmp	.label_1840
.label_1842:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	mov	rsp, rsp
	and	ecx, 1
	nop	
	mov	rax, qword ptr [rbp - 0x48]
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
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_1841
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	nop	
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_1847
.label_1841:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 4
	jne	.label_1855
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xbf
	mov	rsp, rsp
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_1855:
	lea	rdi, [rdi]
	jmp	.label_1847
.label_1847:
	cmp	dword ptr [rbp - 0x58], 0
	nop	
	je	.label_1849
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	cmp	rax, rcx
	jne	.label_1851
	mov	eax, 0x18
	nop	
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
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
	je	.label_1854
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	free_state
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1837
.label_1854:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1852
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1837
.label_1852:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	and	cl, 0x7f
	mov	rbp, rbp
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_1851:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1838
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_1843
.label_1838:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1850
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1843
.label_1850:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1853
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1843
.label_1853:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	and	eax, 0x40
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1846
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1846
.label_1843:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	call	re_node_set_remove_at
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1846:
	jmp	.label_1849
.label_1849:
	jmp	.label_1840
.label_1840:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_1844
.label_1839:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1845
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	call	free_state
	mov	qword ptr [rbp - 0x48], 0
.label_1845:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1837:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b100

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
	jmp	.label_1858
.label_1859:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
.label_1857:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_1858
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
	jmp	.label_1857
.label_1858:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b1b0

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rdx, 0x20
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rdx
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
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
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_1862
.label_1867:
	mov	qword ptr [rbp - 0x38], 0
.label_1868:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_1860
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_1863
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1862
.label_1863:
	lea	rsi, [rsi]
	jmp	.label_1864
.label_1864:
	jmp	.label_1861
.label_1861:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_1868
.label_1860:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rdx + 0x88]
	nop	
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
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
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
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
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1862
.label_1866:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
.label_1865:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	mov	dword ptr [rbp - 4], 0
.label_1862:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b430

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1883
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_1871
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_1869
.label_1871:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1882
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_1869
.label_1882:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	jmp	.label_1877
.label_1883:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_1874
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
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
	je	.label_1879
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	lea	rdi, [rdi]
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1884
	nop	
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_1869
.label_1884:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1878
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1869
.label_1878:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1879:
	mov	rsp, rsp
	jmp	.label_1886
.label_1874:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 2
	mov	rsp, rsp
	jne	.label_1870
	mov	rbp, rbp
	jmp	.label_1875
.label_1870:
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	mov	rbp, rbp
	call	__assert_fail
.label_1875:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jb	.label_1872
	jmp	.label_1880
.label_1872:
	movabs	rdi, OFFSET FLAT:.str.24_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1880:
	mov	dword ptr [rbp - 0x28], 2
.label_1886:
	nop	
	jmp	.label_1877
.label_1877:
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_1885:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_1881
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1885
.label_1881:
	lea	rsi, [rsi]
	jmp	.label_1876
.label_1876:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	mov	rbp, rbp
	jae	.label_1873
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], -1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1876
.label_1873:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_1869:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b820

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	al, r9b
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r10
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1887
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_1887:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_1893
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	jmp	.label_1896
.label_1893:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
.label_1896:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	r8d, r8b
	call	re_string_construct_common
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
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
	je	.label_1892
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1895
.label_1892:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0xb8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	mov	dl, sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8e], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movzx	esi, byte ptr [rax + 0x8b]
	cmp	esi, 0
	nop	
	je	.label_1889
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1888
.label_1889:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x60], rax
.label_1888:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 0x8b]
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jne	.label_1890
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1894
.label_1890:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_1891
.label_1894:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_1891:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_1895:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba50

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0xa0], esi
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0xa8], -1
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1900
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0x28
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jae	.label_1901
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1899
.label_1901:
	nop	
	mov	rax, -1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1899:
	mov	rax, qword ptr [rbp - 0x38]
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
	mov	dword ptr [rbp - 4], 0xc
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
	mov	byte ptr [rbp - 0x39], cl
	je	.label_1903
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], cl
.label_1903:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1897
	mov	dword ptr [rbp - 4], 0xc
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
	mov	dword ptr [rbp - 4], 0
.label_1898:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bc20

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	cmp	rsi, qword ptr [rbp - 0x18]
	setle	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_1918
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1942
.label_1918:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_1924
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_1924:
	mov	eax, 6
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 0x58], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x30], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x28], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8c], 0
	mov	edi, dword ptr [rbp - 0x1c]
	and	edi, 1
	mov	rsp, rsp
	cmp	edi, 0
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0x70], eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 0x8b], 0
	jne	.label_1966
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1966:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1942:
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
	je	.label_1950
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	setl	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1959
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1973
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1911:
	nop	
	mov	eax, 2
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jle	.label_1909
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_1934
.label_1909:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_1940
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1951
.label_1940:
	jmp	.label_1956
.label_1951:
	jmp	.label_1934
.label_1934:
	mov	rsp, rsp
	jmp	.label_1957
.label_1957:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jl	.label_1911
.label_1956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_1968
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_1968:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jle	.label_1907
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1907
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1907
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rsp, rsp
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_1922:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1975
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1922
.label_1975:
	lea	rsi, [rsi]
	jmp	.label_1952
.label_1907:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_1915:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0xad], cl
	jle	.label_1969
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	sete	dl
	mov	byte ptr [rbp - 0xad], dl
.label_1969:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xad]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1904
	mov	rsp, rsp
	jmp	.label_1949
.label_1904:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_1915
.label_1949:
	jmp	.label_1931
.label_1931:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1927
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_1981
	jmp	.label_1927
.label_1981:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1931
.label_1927:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jne	.label_1953
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1905
.label_1953:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	mov	rbp, rbp
	je	.label_1965
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
.label_1917:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	jge	.label_1906
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1917
.label_1906:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_1965:
	lea	rsi, [rsi]
	jmp	.label_1905
.label_1905:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_1952:
	jmp	.label_1933
.label_1973:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1960
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rdx, 2
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memmove
.label_1960:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1947
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
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
.label_1947:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rdx
.label_1933:
	lea	rdi, [rdi]
	jmp	.label_1935
.label_1959:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1977
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x8c], 0
.label_1977:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_1919
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0xffffffff
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x89], 0
	mov	rbp, rbp
	je	.label_1923
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rdx + 0x90]
	lea	rdi, [rdi]
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_1938
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
.label_1938:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
.label_1914:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	jb	.label_1967
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	nop	
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_1955
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	nop	
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1946
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 6
	lea	rsi, [rsi]
	jge	.label_1925
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	jmp	.label_1945
.label_1925:
	nop	
	mov	eax, 6
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_1945
.label_1945:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa4], ecx
.label_1971:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	cmp	eax, 0
	mov	rbp, rbp
	jl	.label_1913
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x8e], sil
	nop	
	jmp	.label_1971
.label_1913:
	lea	rax, [rbp - 0x8e]
	mov	qword ptr [rbp - 0xa0], rax
.label_1946:
	lea	rdi, [rbp - 0x7c]
	mov	rbp, rbp
	lea	rax, [rbp - 0x78]
	mov	rsp, rsp
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rdi
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	call	memset
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	ja	.label_1948
	cmp	qword ptr [rbp - 0x98], -2
	jae	.label_1948
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, 0x20
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	call	memset
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	sub	rdx, rdi
	mov	rsp, rsp
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x30], rcx
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x54], eax
.label_1948:
	mov	rsp, rsp
	jmp	.label_1967
.label_1955:
	jmp	.label_1912
.label_1912:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	nop	
	jmp	.label_1914
.label_1967:
	mov	rbp, rbp
	jmp	.label_1923
.label_1923:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_1926
	mov	rbp, rbp
	lea	rdx, [rbp - 0x54]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_string_skip_chars
	sub	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rax
.label_1926:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], -1
	nop	
	jne	.label_1943
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, 1
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rsi + 0x70], eax
	lea	rdi, [rdi]
	jmp	.label_1954
.label_1943:
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_1958
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	jne	.label_1976
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x54], 0x5f
	jne	.label_1958
.label_1976:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_1980
.label_1958:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x54], 0xa
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], cl
	mov	rbp, rbp
	jne	.label_1928
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], dl
.label_1928:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xcd]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, 2
	mov	rsp, rsp
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], ecx
.label_1980:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x70], eax
.label_1954:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_1941
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
.label_1964:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jge	.label_1963
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1964
.label_1963:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_1936
	nop	
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	memset
.label_1936:
	jmp	.label_1941
.label_1941:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1921
.label_1919:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x78], 0
	je	.label_1929
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
.label_1929:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	bitset_contain
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1970
	mov	rbp, rbp
	jmp	.label_1972
.label_1970:
	mov	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	jmp	.label_1974
.label_1972:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0xa8], 0xa
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd5], cl
	lea	rdi, [rdi]
	jne	.label_1978
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd5], dl
.label_1978:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd5]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	nop	
	mov	dword ptr [rbp - 0xd4], ecx
.label_1974:
	mov	eax, dword ptr [rbp - 0xd4]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rcx + 0x70], eax
.label_1921:
	jmp	.label_1935
.label_1935:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1937
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
.label_1937:
	jmp	.label_1950
.label_1950:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x58], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x68]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x68], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rax + 0x90], 1
	mov	rbp, rbp
	jle	.label_1961
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	je	.label_1979
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	lea	rsi, [rsi]
	je	.label_1910
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1930
.label_1910:
	nop	
	jmp	.label_1908
.label_1979:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
.label_1908:
	mov	rsp, rsp
	jmp	.label_1939
.label_1961:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1944
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	mov	rbp, rbp
	je	.label_1932
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	build_upper_buffer
	mov	rsp, rsp
	jmp	.label_1916
.label_1932:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	mov	rbp, rbp
	je	.label_1962
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	re_string_translate_buffer
.label_1962:
	mov	rbp, rbp
	jmp	.label_1916
.label_1916:
	jmp	.label_1920
.label_1944:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x30], rax
.label_1920:
	mov	rbp, rbp
	jmp	.label_1939
.label_1939:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 4], 0
.label_1930:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cc20

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, sil
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x5c]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], -1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdx
	cmp	qword ptr [rbp - 0x50], 0
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], al
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x90], rdx
	mov	dword ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + 0x68]
	shr	al, 7
	movzx	esi, al
	cmp	esi, 0
	je	.label_1991
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1993
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1986
.label_1993:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_2000
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1986
.label_2000:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	je	.label_2004
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2004
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1986
.label_2004:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2014
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1986
.label_2014:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1989
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x50]
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	call	re_acquire_state_context
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1986
.label_1989:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1986
.label_1991:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1986:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1996
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0xc
	mov	rbp, rbp
	jne	.label_2003
	jmp	.label_2007
.label_2003:
	movabs	rdi, OFFSET FLAT:.str.25_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2007:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_1988
.label_1996:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2015
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2012
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	add	rcx, 8
	mov	rsi, rcx
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1992
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_1988
.label_1992:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2001
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	je	.label_2010
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1988
.label_2010:
	nop	
	jmp	.label_2001
.label_2001:
	jmp	.label_2012
.label_2012:
	mov	rsp, rsp
	jmp	.label_2015
.label_2015:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
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
	je	.label_2009
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1985
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	call	check_halt_state_context
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1997
.label_1985:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x41], 1
	mov	rsp, rsp
	jne	.label_2023
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1988
.label_2023:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	mov	rbp, rbp
	jmp	.label_1997
.label_1997:
	jmp	.label_2009
.label_2009:
	lea	rdi, [rdi]
	jmp	.label_1982
.label_1982:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	setle	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_2011
	lea	rdi, [rdi]
	jmp	.label_1984
.label_2011:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	setge	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2020
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2018
.label_2020:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	setge	dl
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1995
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_1995
.label_2018:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	setne	dl
	nop	
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2013
	cmp	dword ptr [rbp - 0x5c], 0xc
	lea	rsi, [rsi]
	jne	.label_2021
	mov	rsp, rsp
	jmp	.label_2022
.label_2021:
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
	mov	qword ptr [rbp - 0x38], -2
	mov	rbp, rbp
	jmp	.label_1988
.label_2013:
	nop	
	jmp	.label_1995
.label_1995:
	nop	
	lea	rdi, [rbp - 0x5c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	transit_state
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1999
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	merge_state_with_log
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_1999:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	jne	.label_1987
	cmp	dword ptr [rbp - 0x5c], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2005
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_1988
.label_2005:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2002
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2019
	nop	
	test	byte ptr [rbp - 0x41], 1
	je	.label_2002
.label_2019:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	find_recover_state
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2024
.label_2002:
	lea	rsi, [rsi]
	jmp	.label_1984
.label_2024:
	mov	rsp, rsp
	jmp	.label_1987
.label_1987:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1990
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_1994
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2006
.label_1994:
	mov	byte ptr [rbp - 0x81], 0
.label_2006:
	lea	rsi, [rsi]
	jmp	.label_1990
.label_1990:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	shr	cl, 4
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	cmp	edx, 0
	je	.label_1998
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2008
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_2016
.label_2008:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	mov	qword ptr [rbp - 0x50], 0
	test	byte ptr [rbp - 0x41], 1
	lea	rsi, [rsi]
	jne	.label_2017
	jmp	.label_1984
.label_2017:
	jmp	.label_2016
.label_2016:
	nop	
	jmp	.label_1998
.label_1998:
	jmp	.label_1982
.label_1984:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	je	.label_1983
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_1983:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1988:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d460

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rdx + 0xa0]
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_2030:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2025
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x2c]
	call	check_halt_node_context
	test	al, 1
	jne	.label_2029
	jmp	.label_2026
.label_2029:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2028
.label_2026:
	mov	rsp, rsp
	jmp	.label_2027
.label_2027:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_2030
.label_2025:
	mov	qword ptr [rbp - 8], 0
.label_2028:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d560

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x98]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb0]
	mov	qword ptr [rbp - 0x20], rdi
	cmp	rax, qword ptr [rbp - 0x28]
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
	je	.label_2044
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2045
.label_2044:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2031
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2034
.label_2031:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_2040
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2048
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2034
.label_2048:
	lea	rdi, [rdi]
	jmp	.label_2036
.label_2036:
	lea	rdi, [rbp - 0x78]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, rax
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x80]
	call	sift_ctx_init
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	sift_states_backward
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_2042
	mov	rsp, rsp
	jmp	.label_2034
.label_2042:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_2043
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax], 0
	je	.label_2038
.label_2043:
	jmp	.label_2046
.label_2038:
	jmp	.label_2032
.label_2032:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2049
	mov	dword ptr [rbp - 0x2c], 1
	mov	rsp, rsp
	jmp	.label_2034
.label_2049:
	lea	rdi, [rdi]
	jmp	.label_2035
.label_2035:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x81], al
	je	.label_2037
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x81], dl
.label_2037:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2032
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_2036
.label_2046:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2033
	jmp	.label_2034
.label_2033:
	lea	rsi, [rsi]
	jmp	.label_2041
.label_2040:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	nop	
	movzx	eax, r9b
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2047
	jmp	.label_2034
.label_2047:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2039
	mov	dword ptr [rbp - 0x2c], 1
	lea	rdi, [rdi]
	jmp	.label_2034
.label_2039:
	jmp	.label_2041
.label_2041:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0xb0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_2034:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], ecx
.label_2045:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41da00

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_2053:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2054
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xf8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x18], 0
.label_2050:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	jge	.label_2051
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2050
.label_2051:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_2052
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_2052:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_2053
.label_2054:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xe8], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xc8], 0
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41db90

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x29], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx,  qword ptr [word ptr [label_2059]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_2060]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_2061]]
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rbp - 0x89], 0
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	je	.label_2062
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	imul	rdi, qword ptr [rax + 8], 0x30
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_2068
	nop	
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2055
.label_2068:
	jmp	.label_2078
.label_2062:
	mov	qword ptr [rbp - 0x68], 0
.label_2078:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	shl	rcx, 4
	cmp	rcx, 0xfc0
	lea	rdi, [rdi]
	jae	.label_2066
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_2071
.label_2066:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	shl	rax, 4
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_2082
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2055
.label_2082:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_2071:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2065:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_2081
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	call	update_regs
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jne	.label_2067
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_2067
	nop	
	cmp	qword ptr [rbp - 0x68], 0
	nop	
	je	.label_2075
	mov	qword ptr [rbp - 0x98], 0
.label_2074:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_2073
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax], -1
	lea	rdi, [rdi]
	jle	.label_2057
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jne	.label_2057
	lea	rsi, [rsi]
	jmp	.label_2073
.label_2057:
	jmp	.label_2072
.label_2072:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2074
.label_2073:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2080
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	je	.label_2058
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2058:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2055
.label_2080:
	lea	rsi, [rbp - 0x40]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x60]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	pop_fail_stack
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2056
.label_2075:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x89], 1
	je	.label_2083
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2083:
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_2055
.label_2056:
	jmp	.label_2067
.label_2067:
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	lea	r9, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	proceed_next_node
	add	rsp, 0x10
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	setl	r10b
	and	r10b, 1
	movzx	r11d, r10b
	lea	rsi, [rsi]
	movsxd	rax, r11d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2063
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], -2
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_2070
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2077
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2077:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	free_fail_stack_return
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	jmp	.label_2055
.label_2070:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2064
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	pop_fail_stack
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2076
.label_2064:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2079
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2079:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_2055
.label_2076:
	lea	rsi, [rsi]
	jmp	.label_2063
.label_2063:
	lea	rsi, [rsi]
	jmp	.label_2065
.label_2081:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	test	byte ptr [rbp - 0x89], 1
	je	.label_2069
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	free
.label_2069:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
.label_2055:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e0f0

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
	#Procedure 0x41e150

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
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
	je	.label_2094
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	nop	
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jmp	.label_2084
.label_2094:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2084
.label_2091:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	nop	
	jle	.label_2095
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_2088:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2087
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2093
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2084
.label_2093:
	jmp	.label_2088
.label_2087:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x24], edx
	mov	rax, qword ptr [rbp - 0x10]
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
	je	.label_2090
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	call	iswalnum
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_2092
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0x5f
	jne	.label_2090
.label_2092:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2084
.label_2090:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2085
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8d]
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x31], dl
.label_2085:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, 2
	mov	rbp, rbp
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jmp	.label_2084
.label_2095:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x20]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2086
	mov	rsp, rsp
	jmp	.label_2089
.label_2086:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_2084
.label_2089:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 0xa
	mov	byte ptr [rbp - 0x32], cl
	jne	.label_2096
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_2096:
	mov	al, byte ptr [rbp - 0x32]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_2084:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e3c0

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rdx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x28], rdx
.label_2102:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2104
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	r8b, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -2
	mov	byte ptr [rbp - 0x41], r8b
	je	.label_2098
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], -1
	nop	
	mov	byte ptr [rbp - 0x41], al
	lea	rsi, [rsi]
	je	.label_2098
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_2098:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2097
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2103
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2099
.label_2103:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 0
	nop	
	jmp	.label_2100
.label_2099:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edx
.label_2100:
	nop	
	mov	qword ptr [rbp - 0x30], 1
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2101
.label_2097:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x34], eax
.label_2101:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2102
.label_2104:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e560

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
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
	#Procedure 0x41e5e0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_2107:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2109
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	cmp	edx, 8
	jne	.label_2108
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	mov	rsp, rsp
	jge	.label_2108
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2108
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	call	match_ctx_add_subtop
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	setne	cl
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2106
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2110
.label_2106:
	mov	rsp, rsp
	jmp	.label_2108
.label_2108:
	mov	rbp, rbp
	jmp	.label_2105
.label_2105:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2107
.label_2109:
	mov	dword ptr [rbp - 4], 0
.label_2110:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e780

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xb0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_2124:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2131
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	je	.label_2137
	lea	rsi, [rsi]
	jmp	.label_2127
.label_2137:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2128
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa0]
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0x60]
	nop	
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	rsp, rsp
	and	eax, 4
	nop	
	cmp	eax, 0
	je	.label_2141
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	je	.label_2111
.label_2141:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	mov	rbp, rbp
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_2122
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2111
.label_2122:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2135
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 2
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2111
.label_2135:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2120
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2120
.label_2111:
	jmp	.label_2127
.label_2120:
	mov	rbp, rbp
	jmp	.label_2128
.label_2128:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	get_subexp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
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
	je	.label_2114
	nop	
	jmp	.label_2112
.label_2114:
	jmp	.label_2118
.label_2118:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xc8]
	mov	rbp, rbp
	jge	.label_2132
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_2139
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	je	.label_2119
.label_2139:
	mov	rsp, rsp
	jmp	.label_2125
.label_2119:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	jne	.label_2126
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx], 0x18
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2134
.label_2126:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
.label_2134:
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xa0]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	rcx, qword ptr [rsi + rcx*8]
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rcx*8], 0
	mov	rbp, rbp
	jne	.label_2121
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_2136
.label_2121:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
.label_2136:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2116
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa9], r8b
	jne	.label_2130
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xa9], al
.label_2130:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xa9]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2117
	lea	rsi, [rsi]
	jmp	.label_2112
.label_2117:
	jmp	.label_2129
.label_2116:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2138
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	jmp	.label_2112
.label_2138:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xaa], r8b
	jne	.label_2140
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaa], al
.label_2140:
	mov	al, byte ptr [rbp - 0xaa]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2123
	nop	
	jmp	.label_2112
.label_2123:
	jmp	.label_2129
.label_2129:
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2113
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jle	.label_2113
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2115
	jmp	.label_2112
.label_2115:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2133
	jmp	.label_2112
.label_2133:
	jmp	.label_2113
.label_2113:
	mov	rbp, rbp
	jmp	.label_2125
.label_2125:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2118
.label_2132:
	jmp	.label_2127
.label_2127:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_2124
.label_2131:
	mov	dword ptr [rbp - 0x1c], 0
.label_2112:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rsp, 0xb0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ee70

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0xfffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	setbe	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2150
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2152
.label_2150:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x40]
	shl	rdx, 1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jge	.label_2146
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2144
.label_2146:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2144:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	jge	.label_2154
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2143
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2158
.label_2143:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_2158:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2147
.label_2154:
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_2147:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rdi, [rdi]
	je	.label_2153
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2152
.label_2153:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0xb8], 0
	mov	rsp, rsp
	je	.label_2155
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2160
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2152
.label_2160:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
.label_2155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2142
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	lea	rdi, [rdi]
	jle	.label_2151
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x18], 0
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
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2152
.label_2159:
	jmp	.label_2157
.label_2151:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	build_upper_buffer
.label_2157:
	jmp	.label_2145
.label_2142:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2148
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_2149
.label_2148:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2156
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	re_string_translate_buffer
.label_2156:
	lea	rdi, [rdi]
	jmp	.label_2149
.label_2149:
	lea	rdi, [rdi]
	jmp	.label_2145
.label_2145:
	mov	dword ptr [rbp - 4], 0
.label_2152:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f190

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
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
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	transit_state_mb
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rsi], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
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
	je	.label_2165
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_2161
.label_2165:
	jmp	.label_2162
.label_2162:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	sil, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], sil
.label_2166:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2164
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2161
.label_2164:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2167
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2161
.label_2167:
	nop	
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_2161
.label_2168:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	build_trtable
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2163
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_2161
.label_2163:
	nop	
	jmp	.label_2166
.label_2161:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f3e0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
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
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0xc0]
	mov	rsp, rsp
	jle	.label_2179
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0xc0], rax
	mov	rbp, rbp
	jmp	.label_2173
.label_2179:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2180
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_2170
.label_2180:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2181
	mov	rsp, rsp
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2178
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_2169
.label_2178:
	lea	rsi, [rsi]
	jmp	.label_2177
.label_2181:
	mov	rax, qword ptr [rbp - 0x60]
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
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x68], 0
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
	je	.label_2175
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2175
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 8
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	check_subexp_matching_top
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 8], 0
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
	je	.label_2174
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2169
.label_2171:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_2174:
	jmp	.label_2175
.label_2175:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2169:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f750

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
.label_2182:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_2183:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jle	.label_2186
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2184
.label_2186:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2183
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	merge_state_with_log
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rdx], 0
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2185
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
.label_2185:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_2182
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2184:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f860

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xe8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xf0]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	sete	dl
	nop	
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2188
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2189
.label_2188:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xf8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xe8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xf8]
	nop	
	mov	qword ptr [rdi + rsi*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2189
.label_2190:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xe8]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xf8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0xe8]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0xe8], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2189:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fa60

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	lea	rsi, [rsi]
	je	.label_2209
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
.label_2199:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jne	.label_2220
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2193
.label_2220:
	jmp	.label_2219
.label_2219:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2199
	jmp	.label_2209
.label_2209:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_2223:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2221
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_2228
	jmp	.label_2206
.label_2228:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	qword ptr [rbp - 0x70], 0
.label_2226:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	jge	.label_2207
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	jle	.label_2196
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
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
	je	.label_2218
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	add	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	jle	.label_2194
	mov	rsp, rsp
	jmp	.label_2207
.label_2194:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	add	rax, qword ptr [rbp - 0x88]
	mov	rsi, rax
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2216
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2193
.label_2216:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_2218:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2205
	jmp	.label_2207
.label_2205:
	lea	rsi, [rsi]
	jmp	.label_2196
.label_2196:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2201
	lea	rdi, [rdi]
	jmp	.label_2210
.label_2201:
	nop	
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	nop	
	je	.label_2213
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2193
.label_2213:
	mov	rbp, rbp
	jmp	.label_2210
.label_2210:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_2226
.label_2207:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2192
	jmp	.label_2206
.label_2192:
	cmp	qword ptr [rbp - 0x70], 0
	lea	rsi, [rsi]
	jle	.label_2208
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
.label_2208:
	mov	rsp, rsp
	jmp	.label_2215
.label_2215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jg	.label_2198
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jle	.label_2195
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2197
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2211
	lea	rsi, [rsi]
	jmp	.label_2198
.label_2211:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x54], 0
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
	je	.label_2222
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2193
.label_2222:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_2197:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx + rax]
	cmp	edx, esi
	je	.label_2214
	lea	rdi, [rdi]
	jmp	.label_2198
.label_2214:
	jmp	.label_2195
.label_2195:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	jne	.label_2200
	jmp	.label_2202
.label_2200:
	mov	ecx, 9
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rax, qword ptr [rdx + rax*8]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	find_subexp_node
	lea	rsi, [rsi]
.label_3038:
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_2227
	nop	
	jmp	.label_2202
.label_2227:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2191
	mov	eax, 0x18
	mov	rsp, rsp
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	add	rcx, 1
	mov	rsi, rcx
	call	calloc
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_2217
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_2193
.label_2217:
	jmp	.label_2191
.label_2191:
	mov	eax, 9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x78]
	mov	dword ptr [rsp], 9
	mov	dword ptr [rbp - 0xa4], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2225
	mov	rsp, rsp
	jmp	.label_2202
.label_2225:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2224
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2193
.label_2224:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	call	match_ctx_add_sublast
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2212
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2193
.label_2212:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2203
	jmp	.label_2202
.label_2203:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2204
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2193
.label_2204:
	lea	rsi, [rsi]
	jmp	.label_2202
.label_2202:
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2215
.label_2198:
	jmp	.label_2206
.label_2206:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_2223
.label_2221:
	mov	dword ptr [rbp - 4], 0
.label_2193:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420230

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_2230
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jle	.label_2230
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_2230
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jle	.label_2230
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2244
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2229
.label_2244:
	jmp	.label_2234
.label_2230:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2236
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2236
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2229
.label_2236:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2233
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2233
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2229
.label_2233:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	jmp	.label_2243
.label_2243:
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2229
.label_2234:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
.label_2238:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x39], cl
	jge	.label_2237
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x39], dl
.label_2237:
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_2235
	mov	rbp, rbp
	jmp	.label_2242
.label_2235:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2241
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	jmp	.label_2238
.label_2241:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2239
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_2239:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2238
.label_2242:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jge	.label_2240
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2232
.label_2240:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2231
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rdx, 3
	nop	
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2231:
	jmp	.label_2232
.label_2232:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_2229:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x420670

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_2249:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2248
	mov	rbp, rbp
	mov	eax, 2
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x28
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jge	.label_2250
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2247
.label_2250:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2247:
	jmp	.label_2249
.label_2248:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jge	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_2246
.label_2245:
	nop	
	mov	qword ptr [rbp - 8], -1
.label_2246:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4207a0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xc0]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x40]
	jl	.label_2251
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jl	.label_2253
.label_2251:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_2252
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2252
.label_2253:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	ecx, eax
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	call	extend_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	lea	rsi, [rsi]
	cmp	rdi, 0
	nop	
	je	.label_2255
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2256
.label_2255:
	jmp	.label_2252
.label_2252:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jge	.label_2254
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	shl	rcx, 3
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xc0], rax
.label_2254:
	mov	dword ptr [rbp - 4], 0
.label_2256:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x420920

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rsi, [rsi]
	mov	eax, 8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x10
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rsp], 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	call	check_arrival
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_2259
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2258
.label_2259:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rax + 8]
	call	match_ctx_add_entry
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2257
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2258
.label_2257:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 4], eax
.label_2258:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420a60

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_2262:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2263
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	mov	rbp, rbp
	cmp	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	jne	.label_2260
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2260
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2261
.label_2260:
	mov	rsp, rsp
	jmp	.label_2264
.label_2264:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_2262
.label_2263:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -1
.label_2261:
	nop	
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420b70

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	nop	
	mov	eax, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
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
	je	.label_2284
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xb8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rdx + 0xe0]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0xb8]
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
	je	.label_2272
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_2268
.label_2272:
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	setb	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2267
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2268
.label_2267:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2273
	nop	
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2268
.label_2273:
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	memset
.label_2284:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_2297
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2286
.label_2297:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0xd0], rax
.label_2286:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_2290
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	nop	
	je	.label_2296
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2268
.label_2296:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2271
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	jmp	.label_2268
.label_2271:
	jmp	.label_2275
.label_2290:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2287
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2287
	nop	
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
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
	je	.label_2298
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2268
.label_2298:
	nop	
	jmp	.label_2270
.label_2287:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x98]
	mov	rdi, rcx
	call	memset
.label_2270:
	mov	rsp, rsp
	jmp	.label_2275
.label_2275:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_2278
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2282
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2282
.label_2278:
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_2300
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
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
	je	.label_2292
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2268
.label_2292:
	lea	rdi, [rdi]
	jmp	.label_2300
.label_2300:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd1], r8b
	mov	rsp, rsp
	jne	.label_2295
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xd1], al
.label_2295:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2281
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2268
.label_2281:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2282:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], 0
.label_2279:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0xd2], cl
	jge	.label_2293
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	mov	rsp, rsp
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xd2], dl
.label_2293:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_2302
	jmp	.label_2265
.label_2302:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	mov	rbp, rbp
	je	.label_2266
	mov	rbp, rbp
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2283
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	jmp	.label_2268
.label_2283:
	nop	
	jmp	.label_2266
.label_2266:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	je	.label_2274
	lea	rcx, [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rdx, rax
	mov	rbp, rbp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2301
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2268
.label_2301:
	mov	rbp, rbp
	jmp	.label_2274
.label_2274:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x90], 0
	nop	
	je	.label_2276
	lea	rsi, [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	mov	rsp, rsp
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2285
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	jmp	.label_2268
.label_2285:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
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
	je	.label_2299
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	jmp	.label_2268
.label_2299:
	mov	rbp, rbp
	jmp	.label_2276
.label_2276:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x4c]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x98]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd3], r8b
	nop	
	jne	.label_2289
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd3], al
.label_2289:
	nop	
	mov	al, byte ptr [rbp - 0xd3]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2294
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2268
.label_2294:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2269
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_2280
.label_2269:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2280
.label_2280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_2279
.label_2265:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0xb8]
	nop	
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jne	.label_2288
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_2291
.label_2288:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
.label_2291:
	nop	
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2277
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	je	.label_2277
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2268
.label_2277:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
.label_2268:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421680

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	shl	rax, 1
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
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
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_2305
.label_2304:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_2303:
	mov	rsp, rsp
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x28
	mov	esi, eax
	mov	rsp, rsp
	call	calloc
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_2306:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_2305:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421820

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 0xd0]
	lea	rsi, [rsi]
	jl	.label_2307
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd0]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rbp, rbp
	imul	rsi, rcx, 0x28
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	nop	
	je	.label_2311
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2310
.label_2311:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx + 0xc8], 0x28
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rdx, qword ptr [rcx + 0xd0], 0x28
	mov	rdi, rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0xd0]
	shl	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
.label_2307:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_2308
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jne	.label_2308
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc8]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0xd8]
	mov	byte ptr [rax + 0x20], 1
.label_2308:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rsi, rsi, 0x28
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x10], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	r8w, ax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xc8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x28
	mov	rsp, rsp
	add	rdx, qword ptr [rsi + 0xd8]
	mov	word ptr [rdx + 0x22], r8w
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0xc8]
	nop	
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0xc8], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdx + 0xd8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x20], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_2309
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], ecx
.label_2309:
	mov	dword ptr [rbp - 4], 0
.label_2310:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421b50

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2314
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2318
.label_2314:
	mov	qword ptr [rbp - 0x30], 0
.label_2316:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2313
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0x58], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x24]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], -1
	lea	rsi, [rsi]
	jne	.label_2319
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2315
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2318
.label_2315:
	lea	rsi, [rsi]
	jmp	.label_2317
.label_2319:
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	r8d, dword ptr [rbp - 0x24]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	r9b
	and	r9b, 1
	mov	rsp, rsp
	movzx	eax, r9b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2312
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2318
.label_2312:
	jmp	.label_2317
.label_2317:
	mov	rbp, rbp
	jmp	.label_2320
.label_2320:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2316
.label_2313:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 8], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x10], rdi
	mov	dword ptr [rbp - 4], 0
.label_2318:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x421d80

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_2339
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2328
.label_2339:
	nop	
	jmp	.label_2343
.label_2343:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_2325:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2330
	lea	rsi, [rsi]
	jmp	.label_2322
.label_2330:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jne	.label_2334
	mov	rax, qword ptr [rbp - 0x50]
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
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2331
	jmp	.label_2322
.label_2331:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	lea	rsi, [rbp - 0x78]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, rdx
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	r8b, 1
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9a], r8b
	lea	rsi, [rsi]
	jne	.label_2329
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x7c], 0
	nop	
	mov	byte ptr [rbp - 0x9a], al
	jne	.label_2329
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x80], 0
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9a], al
.label_2329:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2341
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	je	.label_2321
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	jmp	.label_2327
.label_2321:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_2332
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2335
.label_2332:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
.label_2335:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
.label_2327:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2328
.label_2341:
	mov	rbp, rbp
	jmp	.label_2343
.label_2334:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2345
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	nop	
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2342
	jmp	.label_2322
.label_2342:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	lea	rdi, [rbp - 0x98]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	dl, 1
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0xa5], dl
	lea	rsi, [rsi]
	jne	.label_2337
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xa5], al
.label_2337:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa5]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2344
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	je	.label_2333
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2336
.label_2333:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2336
.label_2336:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2328
.label_2344:
	jmp	.label_2338
.label_2345:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2323
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2328
.label_2323:
	mov	rbp, rbp
	jmp	.label_2338
.label_2338:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x3c]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	re_acquire_state
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xad], r8b
	jne	.label_2326
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	setne	al
	mov	byte ptr [rbp - 0xad], al
.label_2326:
	nop	
	mov	al, byte ptr [rbp - 0xad]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2340
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2328
.label_2340:
	mov	rbp, rbp
	jmp	.label_2324
.label_2324:
	jmp	.label_2322
.label_2322:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	jne	.label_2325
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_2328:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4222d0

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
	lea	r10, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x44], 0
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_2346:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2358
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], 0
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	mov	rsp, rsp
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_2349
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_2352
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	je	.label_2348
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rdi, [rdi]
	cmp	rsi, 0
	nop	
	je	.label_2351
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2350
.label_2351:
	jmp	.label_2348
.label_2348:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	nop	
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_2359
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2350
.label_2359:
	lea	rdi, [rbp - 0x44]
	lea	rdx, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_acquire_state
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], r8b
	mov	rsp, rsp
	jne	.label_2347
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	setne	al
	mov	byte ptr [rbp - 0x89], al
.label_2347:
	mov	al, byte ptr [rbp - 0x89]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2356
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2350
.label_2356:
	mov	rbp, rbp
	jmp	.label_2352
.label_2352:
	jmp	.label_2349
.label_2349:
	nop	
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_2357
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	check_node_accept
	nop	
	test	al, 1
	jne	.label_2357
	jmp	.label_2354
.label_2357:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2353
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_2350
.label_2353:
	mov	rbp, rbp
	jmp	.label_2354
.label_2354:
	mov	rbp, rbp
	jmp	.label_2355
.label_2355:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2346
.label_2358:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, rax
	nop	
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_2350:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4226b0

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
.label_2362:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2370
	jmp	.label_2360
.label_2370:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	nop	
	cmp	edx, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	jne	.label_2365
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2365
	cmp	dword ptr [rbp - 0x2c], 9
	lea	rsi, [rsi]
	jne	.label_2367
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2364
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_2363
.label_2364:
	jmp	.label_2367
.label_2367:
	jmp	.label_2360
.label_2365:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
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
	je	.label_2369
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2363
.label_2369:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_2366
	jmp	.label_2360
.label_2366:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2361
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	setne	r9b
	and	r9b, 1
	nop	
	movzx	eax, r9b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2368
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2363
.label_2368:
	lea	rsi, [rsi]
	jmp	.label_2361
.label_2361:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_2362
.label_2360:
	mov	dword ptr [rbp - 4], 0
.label_2363:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422920

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2377
.label_2371:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_2374:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rcx]
	nop	
	jge	.label_2379
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rcx]
	je	.label_2376
	mov	rbp, rbp
	jmp	.label_2372
.label_2376:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, 1
	jne	.label_2373
	lea	rdi, [rdi]
	jmp	.label_2375
.label_2373:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2377
.label_2375:
	jmp	.label_2372
.label_2372:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_2374
.label_2379:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	call	create_ci_newstate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_2378:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2377:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422ad0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
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
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2385
.label_2384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
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
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_2385
.label_2387:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], 0
.label_2381:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2392
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 1
	jne	.label_2386
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	rax, qword ptr [rbp - 0x40]
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
	cmp	dword ptr [rbp - 0x44], 2
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
	cmp	dword ptr [rbp - 0x44], 4
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
	cmp	dword ptr [rbp - 0x44], 0xc
	je	.label_2389
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_2381
.label_2392:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
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
	mov	qword ptr [rbp - 8], rax
.label_2385:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422dd0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rdx, 4
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
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
	je	.label_2436
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x41], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xc2
	setl	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2408
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2399
.label_2408:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2423
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2399
.label_2423:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax + 1]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xe0
	nop	
	jge	.label_2432
	lea	rdi, [rdi]
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x42]
	mov	rbp, rbp
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x61], al
	jl	.label_2441
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x61], cl
.label_2441:
	mov	al, byte ptr [rbp - 0x61]
	lea	rsi, [rsi]
	mov	ecx, 2
	nop	
	xor	edx, edx
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2399
.label_2432:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	nop	
	jge	.label_2397
	nop	
	mov	dword ptr [rbp - 0x34], 3
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xe0
	mov	rbp, rbp
	jne	.label_2394
	movzx	eax, byte ptr [rbp - 0x42]
	nop	
	cmp	eax, 0xa0
	jge	.label_2394
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_2399
.label_2394:
	lea	rdi, [rdi]
	jmp	.label_2417
.label_2397:
	movzx	eax, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	cmp	eax, 0xf8
	nop	
	jge	.label_2419
	mov	dword ptr [rbp - 0x34], 4
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	lea	rdi, [rdi]
	jne	.label_2422
	nop	
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x90
	lea	rdi, [rdi]
	jge	.label_2422
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2399
.label_2422:
	jmp	.label_2425
.label_2419:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	cmp	eax, 0xfc
	lea	rdi, [rdi]
	jge	.label_2437
	nop	
	mov	dword ptr [rbp - 0x34], 5
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	cmp	eax, 0xf8
	jne	.label_2396
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x88
	lea	rsi, [rsi]
	jge	.label_2396
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2399
.label_2396:
	jmp	.label_2404
.label_2437:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfe
	mov	rbp, rbp
	jge	.label_2406
	mov	dword ptr [rbp - 0x34], 6
	movzx	eax, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	cmp	eax, 0xfc
	jne	.label_2407
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x42]
	mov	rbp, rbp
	cmp	eax, 0x84
	jge	.label_2407
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2399
.label_2407:
	jmp	.label_2418
.label_2406:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2399
.label_2418:
	jmp	.label_2404
.label_2404:
	jmp	.label_2425
.label_2425:
	mov	rbp, rbp
	jmp	.label_2417
.label_2417:
	jmp	.label_2430
.label_2430:
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	jle	.label_2445
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2399
.label_2445:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 1
.label_2411:
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x34]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2439
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x42]
	cmp	esi, 0x80
	jl	.label_2444
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	nop	
	jle	.label_2405
.label_2444:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2399
.label_2405:
	jmp	.label_2409
.label_2409:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2411
.label_2439:
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2399
.label_2436:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_string_char_size_at
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rsi + 8]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 5
	nop	
	jne	.label_2420
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 1
	jg	.label_2429
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2399
.label_2429:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2414
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	lea	rdi, [rdi]
	je	.label_2438
.label_2414:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2402
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_2402
.label_2438:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2399
.label_2402:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2399
.label_2420:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_elem_size_at
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x38], 1
	jg	.label_2415
	nop	
	cmp	dword ptr [rbp - 0x34], 1
	jle	.label_2440
.label_2415:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_2421
.label_2440:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2399
.label_2421:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 6
	mov	rbp, rbp
	jne	.label_2426
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_2433
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_2433
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	je	.label_2447
.label_2433:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2403
.label_2447:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2403
.label_2403:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x40], 0
.label_2427:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	jge	.label_2410
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	cmp	eax, dword ptr [rdx + rcx*4]
	mov	rsp, rsp
	jne	.label_2413
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_2395
.label_2413:
	jmp	.label_2442
.label_2442:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2427
.label_2410:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_2424:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_2434
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	iswctype
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2446
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2395
.label_2446:
	nop	
	jmp	.label_2400
.label_2400:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_2424
.label_2434:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_2431:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_2416
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x58]
	nop	
	jg	.label_2412
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_2412
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_2395
.label_2412:
	lea	rdi, [rdi]
	jmp	.label_2428
.label_2428:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_2431
.label_2416:
	lea	rdi, [rdi]
	jmp	.label_2395
.label_2395:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	nop	
	jne	.label_2435
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2399
.label_2435:
	cmp	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	jle	.label_2443
	nop	
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2399
.label_2443:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	cmp	eax, dword ptr [rbp - 0x34]
	jle	.label_2398
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2401
.label_2398:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x6c], eax
.label_2401:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2399
.label_2426:
	mov	dword ptr [rbp - 4], 0
.label_2399:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423550

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rsi + rdx]
	mov	byte ptr [rbp - 0x21], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 8]
	dec	ecx
	mov	edx, ecx
	sub	ecx, 6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_2453
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2458]]
	mov	rsp, rsp
	jmp	rcx
.label_3059:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	movzx	edx, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rbp, rbp
	je	.label_2463
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2454
.label_2463:
	jmp	.label_2456
.label_3060:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	nop	
	movzx	ecx, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	jne	.label_2449
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2454
.label_2449:
	jmp	.label_2456
.label_3061:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, 0x80
	jl	.label_2450
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2454
.label_2450:
	lea	rsi, [rsi]
	jmp	.label_2464
.label_2464:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_2461
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x98]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2462
.label_2461:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0
	jne	.label_2452
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2452
.label_2462:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2454
.label_2452:
	nop	
	jmp	.label_2456
.label_2453:
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_2454
.label_2456:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2455
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	mov	rsp, rsp
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2460
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2451
.label_2460:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
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
	je	.label_2457
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2451
.label_2457:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	nop	
	and	ecx, 0x20
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2459
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2451
.label_2459:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	lea	rsi, [rsi]
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_2448
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2448
.label_2451:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2454
.label_2448:
	mov	rbp, rbp
	jmp	.label_2455
.label_2455:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
.label_2454:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x423850

	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423870

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x30], 0
.label_2485:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2477
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	edx, 0x14
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	jne	.label_2483
	jmp	.label_2465
.label_2483:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
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
	je	.label_2467
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x20]
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
	je	.label_2474
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2470
.label_2474:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
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
	je	.label_2469
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2470
.label_2469:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
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
	je	.label_2480
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2470
.label_2480:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	lea	rdi, [rdi]
	and	edx, 0x3ff
	and	edx, 0x80
	cmp	edx, 0
	je	.label_2478
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	nop	
	jne	.label_2478
.label_2470:
	jmp	.label_2465
.label_2478:
	jmp	.label_2467
.label_2467:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	call	check_node_accept_bytes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	jne	.label_2479
	mov	rsp, rsp
	jmp	.label_2465
.label_2479:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 0xe0]
	mov	rsp, rsp
	cmp	edx, dword ptr [rbp - 0x5c]
	jge	.label_2466
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_2482
.label_2466:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xe0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], ecx
.label_2482:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0xe0], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	call	clean_state_log_if_needed
	nop	
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	eax, dl
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2472
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2476
.label_2472:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2481
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2468
.label_2481:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	nop	
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2471
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2476
.label_2471:
	lea	rdi, [rdi]
	jmp	.label_2468
.label_2468:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	nop	
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x6c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2475
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_2475:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	nop	
	mov	byte ptr [rbp - 0x7d], cl
	nop	
	jne	.label_2473
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	setne	al
	mov	byte ptr [rbp - 0x7d], al
.label_2473:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x7d]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2484
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2476
.label_2484:
	mov	rsp, rsp
	jmp	.label_2465
.label_2465:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2485
.label_2477:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_2476:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423d70

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	rsp, rsp
	mov	eax, 0x3800
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x35], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4a], 0
	mov	qword ptr [rbp - 0x68], 0
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
	je	.label_2541
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_2487
.label_2541:
	nop	
	mov	byte ptr [rbp - 0x49], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 0x1800
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	group_nodes_into_DFAstates
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	setle	r8b
	mov	rsp, rsp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2514
	mov	rbp, rbp
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_2532
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2532:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_2540
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x18]
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
	je	.label_2548
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_2487
.label_2548:
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_2487
.label_2540:
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_2487
.label_2514:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsi, rax
	call	re_node_set_alloc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2506
	jmp	.label_2499
.label_2506:
	movabs	rax, 0xaaaaaaaaaaaa855
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2523
	jmp	.label_2499
.label_2523:
	imul	rax, qword ptr [rbp - 0x58], 3
	lea	rdi, [rdi]
	shl	rax, 3
	add	rax, 0x3800
	mov	rsp, rsp
	cmp	rax, 0xfc0
	jae	.label_2542
	mov	rax, qword ptr [rbp - 0x58]
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
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	jmp	.label_2494
.label_2542:
	imul	rax, qword ptr [rbp - 0x58], 3
	mov	rsp, rsp
	shl	rax, 3
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2497
	jmp	.label_2499
.label_2499:
	test	byte ptr [rbp - 0x4a], 1
	mov	rbp, rbp
	je	.label_2488
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, rax
	call	free
.label_2488:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2509:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x58]
	nop	
	jge	.label_2527
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2509
.label_2527:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	je	.label_2545
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2545:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2487
.label_2497:
	mov	byte ptr [rbp - 0x4a], 1
.label_2494:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x28], 0
.label_2552:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	jge	.label_2502
	mov	qword ptr [rbp - 0x88], 0
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2503:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2516
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd8], -1
	mov	rsp, rsp
	je	.label_2500
	lea	rdi, [rbp - 0x90]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0xd8], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsi, rax
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2515
	jmp	.label_2499
.label_2515:
	jmp	.label_2500
.label_2500:
	nop	
	jmp	.label_2501
.label_2501:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2503
.label_2516:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1c]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x90]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8b, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd9], r8b
	lea	rdi, [rdi]
	jne	.label_2524
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0xd9], al
.label_2524:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2544
	nop	
	jmp	.label_2499
.label_2544:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 7
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0
	je	.label_2554
	lea	rdi, [rbp - 0x1c]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x90]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xda], r8b
	mov	rbp, rbp
	jne	.label_2498
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xda], al
.label_2498:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xda]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2521
	nop	
	jmp	.label_2499
.label_2521:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2535
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_2535
	mov	byte ptr [rbp - 0x35], 1
.label_2535:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xdb], r8b
	jne	.label_2511
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xdb], al
.label_2511:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdb]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2505
	nop	
	jmp	.label_2499
.label_2505:
	lea	rsi, [rsi]
	jmp	.label_2517
.label_2554:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2517:
	lea	rdi, [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	rsp, rsp
	call	bitset_merge
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2552
.label_2502:
	nop	
	test	byte ptr [rbp - 0x35], 1
	jne	.label_2539
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	lea	rdi, [rdi]
	call	calloc
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
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
	je	.label_2491
	lea	rdi, [rdi]
	jmp	.label_2499
.label_2491:
	mov	qword ptr [rbp - 0x28], 0
.label_2551:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 4
	mov	rsp, rsp
	jge	.label_2513
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 6
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 1
.label_2537:
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2519
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2533
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_2526:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_2549
	lea	rdi, [rdi]
	jmp	.label_2486
.label_2486:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_2526
.label_2549:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rbp, rbp
	and	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2496
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2510
.label_2496:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
.label_2510:
	mov	rsp, rsp
	jmp	.label_2533
.label_2533:
	lea	rsi, [rsi]
	jmp	.label_2534
.label_2534:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2537
.label_2519:
	lea	rdi, [rdi]
	jmp	.label_2547
.label_2547:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2551
.label_2513:
	jmp	.label_2536
.label_2539:
	mov	rbp, rbp
	mov	eax, 8
	mov	edi, eax
	nop	
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rax
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_2490
	jmp	.label_2499
.label_2490:
	mov	qword ptr [rbp - 0x28], 0
.label_2530:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_2508
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 1
.label_2507:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2525
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_2531
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2553:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	nop	
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_2538
	lea	rsi, [rsi]
	jmp	.label_2522
.label_2522:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2553
.label_2538:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	esi, 0x100
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2531:
	lea	rsi, [rsi]
	jmp	.label_2504
.label_2504:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	mov	rsp, rsp
	jmp	.label_2507
.label_2525:
	nop	
	jmp	.label_2528
.label_2528:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2530
.label_2508:
	jmp	.label_2536
.label_2536:
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0xc0]
	nop	
	call	bitset_contain
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_2543
	jmp	.label_2529
.label_2543:
	mov	qword ptr [rbp - 0x30], 0
.label_2495:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2550
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rdi, rcx
	nop	
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2489
	nop	
	jmp	.label_2492
.label_2489:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x50], rax
	test	byte ptr [rbp - 0x35], 1
	mov	rsp, rsp
	je	.label_2493
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x850], rax
.label_2493:
	jmp	.label_2550
.label_2492:
	mov	rbp, rbp
	jmp	.label_2520
.label_2520:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2495
.label_2550:
	lea	rsi, [rsi]
	jmp	.label_2529
.label_2529:
	test	byte ptr [rbp - 0x4a], 1
	mov	rbp, rbp
	je	.label_2512
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_2512:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2555:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2518
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2555
.label_2518:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_2546
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2546:
	mov	byte ptr [rbp - 1], 1
.label_2487:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x424a60

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x100
	mov	rsp, rsp
	lea	rax, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rcx, 8
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	bitset_empty
	mov	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
.label_2594:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2605
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff
	nop	
	mov	dword ptr [rbp - 0x88], edx
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2607
	lea	rdi, [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	lea	rsi, [rsi]
	call	bitset_set
	mov	rbp, rbp
	jmp	.label_2585
.label_2607:
	cmp	dword ptr [rbp - 0x84], 3
	mov	rbp, rbp
	jne	.label_2587
	nop	
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	bitset_merge
	mov	rbp, rbp
	jmp	.label_2569
.label_2587:
	cmp	dword ptr [rbp - 0x84], 5
	jne	.label_2597
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jle	.label_2599
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	mov	rsp, rsp
	call	bitset_merge
	jmp	.label_2606
.label_2599:
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	call	bitset_set_all
.label_2606:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2610
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	call	bitset_clear
.label_2610:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2563
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	call	bitset_clear
.label_2563:
	mov	rsp, rsp
	jmp	.label_2577
.label_2597:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], 7
	mov	rsp, rsp
	jne	.label_2581
	mov	esi, 0xff
	mov	rbp, rbp
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	and	rcx, 0x40
	cmp	rcx, 0
	mov	rbp, rbp
	jne	.label_2591
	nop	
	mov	eax, 0xa
	mov	esi, eax
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	mov	rsp, rsp
	call	bitset_clear
.label_2591:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2602
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	call	bitset_clear
.label_2602:
	jmp	.label_2609
.label_2581:
	jmp	.label_2556
.label_2609:
	jmp	.label_2577
.label_2577:
	jmp	.label_2569
.label_2569:
	jmp	.label_2585
.label_2585:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x88], 0
	nop	
	je	.label_2573
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2557
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	call	bitset_contain
	lea	rdi, [rbp - 0x70]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x89], al
	mov	rbp, rbp
	call	bitset_empty
	test	byte ptr [rbp - 0x89], 1
	lea	rsi, [rsi]
	je	.label_2582
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_set
	jmp	.label_2589
.label_2582:
	jmp	.label_2556
.label_2589:
	jmp	.label_2557
.label_2557:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	and	eax, 0x80
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2593
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2556
.label_2593:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2570
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0x84], 1
	mov	rbp, rbp
	jne	.label_2586
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_2586
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	call	bitset_empty
	jmp	.label_2556
.label_2586:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_2564
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
.label_2580:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2572
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2580
.label_2572:
	lea	rdi, [rdi]
	jmp	.label_2558
.label_2564:
	mov	qword ptr [rbp - 0x40], 0
.label_2604:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2592
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_2604
.label_2592:
	nop	
	jmp	.label_2558
.label_2558:
	cmp	qword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	jne	.label_2583
	jmp	.label_2556
.label_2583:
	lea	rdi, [rdi]
	jmp	.label_2570
.label_2570:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	je	.label_2565
	mov	qword ptr [rbp - 0xa0], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2561
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	ecx, 0x16
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	je	.label_2561
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2556
.label_2561:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	mov	rbp, rbp
	jle	.label_2595
	mov	qword ptr [rbp - 0x40], 0
.label_2584:
	cmp	qword ptr [rbp - 0x40], 4
	mov	rbp, rbp
	jge	.label_2603
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	and	rax, qword ptr [rdx + rcx*8]
	xor	rax, 0xffffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_2584
.label_2603:
	mov	rbp, rbp
	jmp	.label_2568
.label_2595:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
.label_2579:
	cmp	qword ptr [rbp - 0x40], 4
	mov	rbp, rbp
	jge	.label_2571
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	mov	rbp, rbp
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_2579
.label_2571:
	lea	rsi, [rsi]
	jmp	.label_2568
.label_2568:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_2598
	jmp	.label_2556
.label_2598:
	jmp	.label_2565
.label_2565:
	jmp	.label_2573
.label_2573:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], 0
.label_2588:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_2559
	cmp	dword ptr [rbp - 0x84], 1
	nop	
	jne	.label_2562
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	movzx	edx, byte ptr [rcx]
	mov	esi, edx
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2562
	lea	rdi, [rdi]
	jmp	.label_2567
.label_2562:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 0
.label_2614:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 4
	nop	
	jge	.label_2575
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8 - 0xc0], rax
	or	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2614
.label_2575:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe8], 0
	mov	rsp, rsp
	jne	.label_2600
	jmp	.label_2567
.label_2600:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x48], 0
.label_2590:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 4
	lea	rdi, [rdi]
	jge	.label_2613
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	nop	
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	or	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	nop	
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	nop	
	or	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2590
.label_2613:
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_2596
	lea	rsi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, rax
	call	bitset_copy
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	nop	
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	bitset_copy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	imul	rsi, rsi, 0x18
	add	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2566
	jmp	.label_2574
.label_2566:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_2596:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_insert
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	nop	
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	r8d, al
	movsxd	rcx, r8d
	mov	rsp, rsp
	cmp	rcx, 0
	je	.label_2611
	jmp	.label_2574
.label_2611:
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jne	.label_2560
	jmp	.label_2559
.label_2560:
	lea	rsi, [rsi]
	jmp	.label_2567
.label_2567:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_2588
.label_2559:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	jne	.label_2608
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	lea	rdi, [rdi]
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_2576
	jmp	.label_2574
.label_2576:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	call	bitset_empty
.label_2608:
	jmp	.label_2556
.label_2556:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_2594
.label_2605:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2601
.label_2574:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_2612:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_2578
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2612
.label_2578:
	mov	qword ptr [rbp - 8], -1
.label_2601:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425520

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
	#Procedure 0x425550

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_2615:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 4
	lea	rdi, [rdi]
	jge	.label_2616
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	or	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2615
.label_2616:
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4255c0

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
	#Procedure 0x425600

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rdx, cl
	mov	rsp, rsp
	xor	rdx, 0xffffffffffffffff
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x28]
	and	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x425690

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
	#Procedure 0x4256d0

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0x20], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
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
	cmp	dword ptr [rbp - 0x20], 2
	je	.label_2622
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2619
.label_2622:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2620
	mov	byte ptr [rbp - 1], 1
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
	mov	eax, dword ptr [rbp - 0x1c]
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
	je	.label_2621
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2618
.label_2621:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	and	eax, 0x20
	cmp	eax, 0
	je	.label_2624
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
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
	je	.label_2623
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	and	eax, 8
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2623
.label_2618:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2619
.label_2623:
	mov	byte ptr [rbp - 1], 1
.label_2619:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425830

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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
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
	#Procedure 0x4258e0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], 0
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	rdi, rax
	call	re_node_set_init_1
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
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
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2628
.label_2631:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	update_cur_sifted_state
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
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
	jmp	.label_2626
.label_2626:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_2633
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2636
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2630
.label_2636:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2630
.label_2630:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0xe0]
	jle	.label_2635
	nop	
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
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
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2628
.label_2635:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2632
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	build_sifted_states
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2625
	mov	rsp, rsp
	jmp	.label_2627
.label_2625:
	nop	
	jmp	.label_2632
.label_2632:
	mov	rsp, rsp
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
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
	jmp	.label_2626
.label_2633:
	mov	dword ptr [rbp - 0x1c], 0
.label_2627:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_2628:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x425b80

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2639:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2640
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2645
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2643
.label_2645:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2642
	lea	rdi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 8
	mov	rsi, rax
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
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
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2638
.label_2641:
	lea	rdi, [rbp - 0x34]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	cmp	dword ptr [rbp - 0x34], 0
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
	mov	eax, dword ptr [rbp - 0x34]
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
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
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
	#Procedure 0x425d40

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_2646
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2652
.label_2646:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_2652:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2650
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	jmp	.label_2651
.label_2650:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_2649
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	add_epsilon_src_nodes
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2655
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2647
.label_2655:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	je	.label_2654
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rcx + 0xd8]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	check_subexp_limits
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2656
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2647
.label_2656:
	jmp	.label_2654
.label_2654:
	jmp	.label_2649
.label_2649:
	nop	
	lea	rdi, [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	nop	
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2648
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2647
.label_2648:
	lea	rdi, [rdi]
	jmp	.label_2651
.label_2651:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2653
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
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
	je	.label_2653
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	call	sift_states_bkref
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	nop	
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2657
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2647
.label_2657:
	nop	
	jmp	.label_2653
.label_2653:
	mov	dword ptr [rbp - 4], 0
.label_2647:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426020

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 0x20
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_2669:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2659
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
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
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	sift_states_iter_mb
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_2664:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	nop	
	jne	.label_2660
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_node_accept
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2666
	jmp	.label_2660
.label_2666:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	nop	
	je	.label_2660
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2660
	nop	
	mov	dword ptr [rbp - 0x4c], 1
.label_2660:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_2663
	mov	rbp, rbp
	jmp	.label_2665
.label_2663:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2668
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x48]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_dst_limits
	test	al, 1
	jne	.label_2662
	nop	
	jmp	.label_2661
.label_2662:
	jmp	.label_2665
.label_2661:
	jmp	.label_2668
.label_2668:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	al, byte ptr [rbp - 0x4d]
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
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2667
.label_2658:
	lea	rdi, [rdi]
	jmp	.label_2665
.label_2665:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_2669
.label_2659:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_2667:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426300

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rax, [rbp - 0x24]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	re_acquire_state
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2670
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2672
.label_2670:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x38], 0
	mov	rbp, rbp
	jne	.label_2675
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2673
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2672
.label_2673:
	mov	qword ptr [rbp - 0x30], 0
.label_2677:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2674
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 0x38
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2671
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_2672
.label_2671:
	jmp	.label_2676
.label_2676:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2677
.label_2674:
	mov	rsp, rsp
	jmp	.label_2675
.label_2675:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 4], eax
.label_2672:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4264e0

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
.label_2697:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_2687
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jle	.label_2693
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2705
.label_2693:
	jmp	.label_2681
.label_2705:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_2701
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
.label_2700:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2702
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], edx
	cmp	dword ptr [rbp - 0x7c], 8
	lea	rdi, [rdi]
	jne	.label_2678
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_2678
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_2695
.label_2678:
	cmp	dword ptr [rbp - 0x7c], 9
	lea	rdi, [rdi]
	jne	.label_2679
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jne	.label_2679
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
.label_2679:
	jmp	.label_2695
.label_2695:
	mov	rbp, rbp
	jmp	.label_2698
.label_2698:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2700
.label_2702:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jl	.label_2691
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	nop	
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2686
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2685
.label_2686:
	lea	rdi, [rdi]
	jmp	.label_2691
.label_2691:
	cmp	qword ptr [rbp - 0x70], 0
	jl	.label_2683
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
.label_2706:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2704
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2690
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	nop	
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2690
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2699
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2685
.label_2699:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
.label_2690:
	lea	rdi, [rdi]
	jmp	.label_2680
.label_2680:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_2706
.label_2704:
	jmp	.label_2683
.label_2683:
	jmp	.label_2684
.label_2701:
	mov	qword ptr [rbp - 0x48], 0
.label_2696:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2689
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], edx
	cmp	dword ptr [rbp - 0x94], 9
	lea	rsi, [rsi]
	je	.label_2694
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x94], 8
	jne	.label_2682
.label_2694:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	je	.label_2688
	jmp	.label_2692
.label_2688:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2703
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2685
.label_2703:
	lea	rdi, [rdi]
	jmp	.label_2682
.label_2682:
	mov	rbp, rbp
	jmp	.label_2692
.label_2692:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2696
.label_2689:
	jmp	.label_2684
.label_2684:
	jmp	.label_2681
.label_2681:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2697
.label_2687:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_2685:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426a10

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], -1
	lea	rdi, [rdi]
	jne	.label_2724
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2725
.label_2724:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x40], 0
.label_2713:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2716
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], edx
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_2709
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	jne	.label_2709
	jmp	.label_2712
.label_2709:
	cmp	dword ptr [rbp - 0x94], 4
	lea	rsi, [rsi]
	je	.label_2715
	jmp	.label_2712
.label_2715:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x88], 0x28
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_2726:
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	je	.label_2728
	mov	rbp, rbp
	jmp	.label_2708
.label_2728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_2710
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2723
.label_2710:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
.label_2723:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jg	.label_2711
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	je	.label_2711
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2711
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2711
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_dst_limits
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2711
	jmp	.label_2707
.label_2711:
	jmp	.label_2708
.label_2707:
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	jne	.label_2722
	mov	rsp, rsp
	lea	rax, [rbp - 0x80]
	mov	rbp, rbp
	mov	ecx, 0x38
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], 0
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
	je	.label_2727
	lea	rdi, [rdi]
	jmp	.label_2717
.label_2727:
	jmp	.label_2722
.label_2722:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_2718
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 0xc
	jmp	.label_2717
.label_2718:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	je	.label_2719
	jmp	.label_2717
.label_2719:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_2721
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, rax
	mov	rbp, rbp
	call	merge_state_array
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
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
	je	.label_2714
	jmp	.label_2717
.label_2714:
	jmp	.label_2721
.label_2721:
	lea	rax, [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsi + rdx*8], rcx
	nop	
	mov	rcx, rax
	add	rcx, 0x20
	nop	
	add	rax, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xe0], rcx
	call	re_node_set_contains
	nop	
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x90], 0x28
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_2708:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2726
	mov	rbp, rbp
	jmp	.label_2712
.label_2712:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2713
.label_2716:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 0
.label_2717:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2720
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
.label_2720:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_2725:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0xe0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427000

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 8], 0
	je	.label_2729
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jne	.label_2743
.label_2729:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2746
.label_2743:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	nop	
	jle	.label_2748
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2745
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_2746
.label_2745:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx], rax
.label_2748:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_2751:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2756
	jmp	.label_2731
.label_2731:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x61], cl
	lea	rsi, [rsi]
	jl	.label_2739
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	setg	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x61], sil
.label_2739:
	mov	al, byte ptr [rbp - 0x61]
	test	al, 1
	nop	
	jne	.label_2754
	mov	rbp, rbp
	jmp	.label_2753
.label_2754:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2731
.label_2753:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_2737
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2741
.label_2737:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 - 8], rax
.label_2741:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2734
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_2735
.label_2734:
	jmp	.label_2747
.label_2735:
	jmp	.label_2750
.label_2756:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_2740
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_2733
	jmp	.label_2747
.label_2733:
	mov	rsp, rsp
	jmp	.label_2742
.label_2740:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_2744
	nop	
	jmp	.label_2747
.label_2744:
	jmp	.label_2742
.label_2742:
	jmp	.label_2750
.label_2750:
	jmp	.label_2751
.label_2747:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jle	.label_2736
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jl	.label_2736
	mov	rsp, rsp
	jmp	.label_2752
.label_2752:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2755
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x48], rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_2738
	jmp	.label_2730
.label_2738:
	lea	rsi, [rsi]
	jmp	.label_2732
.label_2755:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	mov	rbp, rbp
	jge	.label_2749
	jmp	.label_2730
.label_2749:
	lea	rdi, [rdi]
	jmp	.label_2732
.label_2732:
	mov	rsp, rsp
	jmp	.label_2752
.label_2730:
	lea	rdi, [rdi]
	jmp	.label_2736
.label_2736:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	dword ptr [rbp - 4], 0
.label_2746:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427550

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
	lea	r10, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x38]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x18], 0x18
	nop	
	add	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, r10
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	call	memset
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2771:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2759
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2769
	jmp	.label_2761
.label_2769:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jle	.label_2760
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2758
.label_2760:
	lea	rsi, [rsi]
	mov	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2758
.label_2758:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2772
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_2770
.label_2772:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_2768
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2768
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2768
.label_2770:
	lea	rdi, [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x60], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	mov	rbp, rbp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2767
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jmp	.label_2762
.label_2767:
	jmp	.label_2768
.label_2768:
	jmp	.label_2763
.label_2763:
	jmp	.label_2761
.label_2761:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2771
.label_2759:
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2757:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2764
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2765
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	re_node_set_contains
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
.label_2765:
	lea	rsi, [rsi]
	jmp	.label_2766
.label_2766:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2757
.label_2764:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_2762:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4278f0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	search_cur_bkref_entry
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2774:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2773
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x68]
	nop	
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rbp - 0x58]
	jne	.label_2776
	lea	rsi, [rsi]
	jmp	.label_2775
.label_2776:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2777
.label_2775:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2774
.label_2773:
	mov	byte ptr [rbp - 1], 0
.label_2777:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x427aa0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	imul	rdx, qword ptr [rbp - 0x18], 0x28
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_2778
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_2780
.label_2778:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_2779
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2780
.label_2779:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x44], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x18]
	nop	
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	shl	esi, 1
	mov	rsp, rsp
	or	esi, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_2781
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_2780
.label_2781:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x38]
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2780:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x427bd0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x28], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
.label_2801:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2791
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	esi, edx
	sub	esi, 4
	mov	dword ptr [rbp - 0x68], edx
	mov	dword ptr [rbp - 0x6c], esi
	nop	
	je	.label_2797
	jmp	.label_2783
.label_2783:
	nop	
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], eax
	je	.label_2785
	lea	rsi, [rsi]
	jmp	.label_2789
.label_2789:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x68]
	mov	rsp, rsp
	sub	eax, 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	je	.label_2790
	jmp	.label_2796
.label_2797:
	cmp	qword ptr [rbp - 0x30], -1
	nop	
	je	.label_2795
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30], 0x28
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_2787:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_2804
	jmp	.label_2786
.label_2804:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_2788
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rdx + 0x22]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	mov	rbp, rbp
	jne	.label_2788
	lea	rdi, [rdi]
	jmp	.label_2786
.label_2788:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jne	.label_2800
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2803
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2793
.label_2803:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2793
.label_2800:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_2802
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2793
.label_2802:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_2784
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 2
	cmp	eax, 0
	nop	
	je	.label_2784
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2793
.label_2784:
	nop	
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_2794
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rsi + 0x22]
	mov	edi, eax
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	mov	r8w, di
	mov	rsp, rsp
	mov	word ptr [rsi + 0x22], r8w
.label_2794:
	lea	rsi, [rsi]
	jmp	.label_2786
.label_2786:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 0x28
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2787
	nop	
	jmp	.label_2795
.label_2795:
	lea	rdi, [rdi]
	jmp	.label_2782
.label_2785:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_2798
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2798
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_2793
.label_2798:
	mov	rsp, rsp
	jmp	.label_2782
.label_2790:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 2
	nop	
	cmp	eax, 0
	je	.label_2792
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jne	.label_2792
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_2793
.label_2792:
	jmp	.label_2782
.label_2796:
	mov	rsp, rsp
	jmp	.label_2782
.label_2782:
	jmp	.label_2799
.label_2799:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_2801
.label_2791:
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2793:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427fa0

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	jle	.label_2805
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_2805
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	nop	
	je	.label_2806
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
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
	mov	dword ptr [rbp - 0x34], 0
.label_2805:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4280c0

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2807
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_2809:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	jge	.label_2808
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_2809
.label_2808:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
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
	#Procedure 0x428180

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 8
	mov	rbp, rbp
	jne	.label_2810
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jge	.label_2818
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax + 8], -1
.label_2818:
	nop	
	jmp	.label_2811
.label_2810:
	cmp	dword ptr [rbp - 0x34], 9
	jne	.label_2815
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jge	.label_2813
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jge	.label_2814
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rdx, 4
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2817
.label_2814:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	nop	
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x13
	and	edx, 1
	cmp	edx, 0
	je	.label_2816
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_2816
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	jmp	.label_2812
.label_2816:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2812:
	mov	rsp, rsp
	jmp	.label_2817
.label_2817:
	jmp	.label_2813
.label_2813:
	jmp	.label_2815
.label_2815:
	jmp	.label_2811
.label_2811:
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4283b0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	add	rdx, -1
	mov	qword ptr [rcx], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
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
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 8]
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
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
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
	#Procedure 0x428540

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xb0
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	nop	
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	nop	
	mov	r10d, dword ptr [rax + 8]
	and	r10d, 0xff
	mov	rsp, rsp
	and	r10d, 8
	cmp	r10d, 0
	lea	rdi, [rdi]
	je	.label_2842
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x51]
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2828
	mov	qword ptr [rbp - 8], -2
	lea	rsi, [rsi]
	jmp	.label_2823
.label_2828:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x50], 0
.label_2848:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2837
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2833
	jmp	.label_2834
.label_2833:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_2836
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2843
.label_2836:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2840
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2823
.label_2840:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_2838
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	push_fail_stack
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2838
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2823
.label_2838:
	jmp	.label_2847
.label_2847:
	jmp	.label_2837
.label_2843:
	jmp	.label_2834
.label_2834:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_2848
.label_2837:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_2823
.label_2842:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
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
	je	.label_2824
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_2825
.label_2824:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x84], 4
	jne	.label_2830
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2829
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], -1
	je	.label_2827
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], -1
	mov	rbp, rbp
	jne	.label_2835
.label_2827:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], -1
	lea	rsi, [rsi]
	jmp	.label_2823
.label_2835:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2845
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_2852
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2850
.label_2852:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2823
.label_2850:
	mov	rsp, rsp
	jmp	.label_2845
.label_2845:
	jmp	.label_2826
.label_2826:
	mov	rsp, rsp
	jmp	.label_2829
.label_2829:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2832
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	nop	
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2841
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2823
.label_2841:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2844
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2823
.label_2844:
	jmp	.label_2832
.label_2832:
	jmp	.label_2830
.label_2830:
	jmp	.label_2825
.label_2825:
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_2851
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rcx]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_node_accept
	test	al, 1
	jne	.label_2851
	lea	rsi, [rsi]
	jmp	.label_2839
.label_2851:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_2821
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	jmp	.label_2849
.label_2821:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_2849:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_2831
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xa8]
	lea	rdi, [rdi]
	jg	.label_2822
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2822
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2831
.label_2822:
	mov	qword ptr [rbp - 8], -1
	nop	
	jmp	.label_2823
.label_2831:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2823
.label_2839:
	jmp	.label_2846
.label_2846:
	mov	qword ptr [rbp - 8], -1
.label_2823:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x428c20

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jne	.label_2853
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_2855
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2854
.label_2855:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
.label_2853:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	rsp, rsp
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2856
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2854
.label_2856:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	shl	rdx, 4
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 0x18
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_2854:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x428e30

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
	jne	.label_2857
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2861
.label_2857:
	mov	rbp, rbp
	jmp	.label_2858
.label_2858:
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
	jne	.label_2859
	jmp	.label_2860
.label_2859:
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
	je	.label_2858
.label_2860:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2861:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x428f20

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
	jne	.label_2864
	test	byte ptr [rbp - 0x13], 1
	je	.label_2863
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_2864
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2863
.label_2864:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_2862
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2862:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2865
.label_2863:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_2865:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x429000

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
	je	.label_2867
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2868
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2866
.label_2868:
	mov	byte ptr [rbp - 5], 0
.label_2866:
	jmp	.label_2867
.label_2867:
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
	#Procedure 0x4290a0

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
	#Procedure 0x429120

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
	jmp	.label_2872
.label_2872:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2873
.label_2871:
	lea	rsi, [rsi]
	jmp	.label_2873
.label_2873:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x429180
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
	#Procedure 0x4291f0
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
	#Procedure 0x429240
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
	#Procedure 0x429270
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
	#Procedure 0x4292a0
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
	#Procedure 0x4292f0
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
	#Procedure 0x429330
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
	#Procedure 0x429370
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
	#Procedure 0x4293b0
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
	#Procedure 0x4293f0
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
	#Procedure 0x429470
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
	jmp	.label_2912
.label_2912:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2911
	jmp	.label_2909
.label_2909:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2910
.label_2911:
	mov	byte ptr [rbp - 1], 0
.label_2910:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4294c0
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
	#Procedure 0x429500
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
	#Procedure 0x429570

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
	#Procedure 0x4295b0
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
