	.section	.text
	.align	16
	#Procedure 0x4015f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x2c], edi
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	je	.label_9
	jmp	.label_7
.label_7:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	jmp	.label_8
.label_9:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x28], eax
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	esi, 0xa
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	call	emit_stdin_note
	mov	rbp, rbp
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 0x2c]
	nop	
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4017d0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.21
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401810

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401860

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_10:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_12
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_12:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_11
	lea	rsi, [rsi]
	jmp	.label_14
.label_11:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_10
.label_14:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.17
	nop	
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	nop	
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.33
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.36
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x40], rdi
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a80

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	dword ptr [rbp - 0xd8], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x108], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x114], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb1], 1
	mov	qword ptr [rbp - 0xe0], 0xa
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x55], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x65], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.12
	nop	
	movabs	rsi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:close_stdout
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	call	atexit
	mov	rsp, rsp
	mov	ecx, 1
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	byte ptr [byte ptr [print_headers]],  0
	mov	byte ptr [byte ptr [line_end]],  0xa
	cmp	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jge	.label_34
	mov	rax, qword ptr [rbp - 0x108]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_34
	mov	rax, qword ptr [rbp - 0x108]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	nop	
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_34
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	mov	byte ptr [rbp - 0x29], 0
.label_66:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	jbe	.label_66
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xa0], rax
.label_59:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_28
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], ecx
	mov	dword ptr [rbp - 0xd4], edx
	nop	
	je	.label_42
	jmp	.label_38
.label_38:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x64], eax
	nop	
	je	.label_39
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x78], eax
	mov	rbp, rbp
	je	.label_42
	lea	rdi, [rdi]
	jmp	.label_44
.label_44:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x118], eax
	je	.label_46
	jmp	.label_51
.label_51:
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	je	.label_42
	jmp	.label_56
.label_56:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x70], eax
	lea	rdi, [rdi]
	je	.label_26
	jmp	.label_61
.label_61:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	sub	eax, 0x76
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	je	.label_63
	jmp	.label_24
.label_24:
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x94], eax
	je	.label_21
	jmp	.label_23
.label_39:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x55], 0
	mov	byte ptr [rbp - 0x29], 0
	nop	
	jmp	.label_29
.label_42:
	nop	
	mov	byte ptr [rbp - 0x55], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_29
.label_46:
	nop	
	mov	byte ptr [rbp - 0x55], 1
	jmp	.label_29
.label_26:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x114], 2
	nop	
	jmp	.label_29
.label_63:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x114], 1
	jmp	.label_29
.label_21:
	mov	byte ptr [byte ptr [line_end]],  0
	mov	rsp, rsp
	jmp	.label_29
.label_23:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.14
	call	gettext
	nop	
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	movsx	edx, byte ptr [rdi]
	mov	rbp, rbp
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	usage
.label_29:
	jmp	.label_20
.label_20:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_59
.label_28:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx], al
	mov	rsp, rsp
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_65
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0xa0], rcx
	nop	
	mov	byte ptr [rax + 1], 0
.label_65:
	mov	al, byte ptr [rbp - 0x55]
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax, qword ptr [rbp - 0x108]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 8
	mov	qword ptr [rbp - 0x108], rax
	mov	edi, dword ptr [rbp - 0x1c]
	add	edi, -1
	mov	dword ptr [rbp - 0x1c], edi
.label_34:
	nop	
	jmp	.label_43
.label_43:
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	call	getopt_long
	mov	dword ptr [rbp - 0x6c], eax
	cmp	eax, -1
	je	.label_54
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	ecx, eax
	nop	
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x7c], eax
	mov	dword ptr [rbp - 4], ecx
	nop	
	je	.label_58
	nop	
	jmp	.label_62
.label_62:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x60], eax
	je	.label_64
	nop	
	jmp	.label_18
.label_18:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xc8], eax
	mov	rbp, rbp
	je	.label_22
	mov	rsp, rsp
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xe4], eax
	lea	rsi, [rsi]
	je	.label_27
	mov	rbp, rbp
	jmp	.label_32
.label_32:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x71
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_33
	lea	rsi, [rsi]
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x76
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	je	.label_40
	jmp	.label_60
.label_60:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	sub	eax, 0x7a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_16
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jne	.label_48
	jmp	.label_52
.label_52:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	jmp	.label_30
.label_22:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x55], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	mov	byte ptr [rbp - 0x65], dl
	mov	rbp, rbp
	test	byte ptr [rbp - 0x65], 1
	mov	rbp, rbp
	je	.label_57
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [optarg]],  rax
.label_57:
	mov	al, byte ptr [rbp - 0x55]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_30
.label_27:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x55], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	nop	
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x65], dl
	test	byte ptr [rbp - 0x65], 1
	nop	
	je	.label_31
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [optarg]],  rax
.label_31:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x55]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	jmp	.label_30
.label_33:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x114], 2
	mov	rsp, rsp
	jmp	.label_30
.label_40:
	mov	dword ptr [rbp - 0x114], 1
	jmp	.label_30
.label_16:
	mov	byte ptr [byte ptr [line_end]],  0
	lea	rdi, [rdi]
	jmp	.label_30
.label_64:
	mov	rbp, rbp
	xor	edi, edi
	call	usage
.label_58:
	movabs	rsi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.17_0
	movabs	r9, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	r10,  qword ptr [word ptr [Version]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	lea	rsi, [rsi]
	call	version_etc
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_48:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_36
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x6c]
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x80], edx
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x80]
	nop	
	mov	al, 0
	call	error
.label_36:
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_30:
	jmp	.label_43
.label_54:
	nop	
	cmp	dword ptr [rbp - 0x114], 1
	je	.label_53
	cmp	dword ptr [rbp - 0x114], 0
	lea	rsi, [rsi]
	jne	.label_55
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	jge	.label_55
.label_53:
	nop	
	mov	byte ptr [byte ptr [print_headers]],  1
.label_55:
	test	byte ptr [rbp - 0x55], 1
	jne	.label_19
	test	byte ptr [rbp - 0x65], 1
	je	.label_19
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_19
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	lea	rsi, [rbp - 0x100]
	nop	
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	call	umaxtostr
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	esi, 0x4b
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x110]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_19:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x1c]
	jge	.label_45
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_50
.label_45:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:main.default_file_list
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_50
.label_50:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	call	xset_binary_mode
	mov	qword ptr [rbp - 0x90], 0
.label_35:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], 0
	nop	
	je	.label_17
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	dl, byte ptr [rbp - 0x55]
	mov	r8b, byte ptr [rbp - 0x65]
	and	dl, 1
	and	r8b, 1
	movzx	edx, dl
	movzx	ecx, r8b
	nop	
	call	head_file
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xb1]
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	and	edx, ecx
	cmp	edx, 0
	mov	rbp, rbp
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xb1], al
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_35
.label_17:
	mov	rsp, rsp
	test	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rdi, [rdi]
	je	.label_49
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	close
	cmp	eax, 0
	jge	.label_49
	nop	
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_49:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0xb1]
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	add	rsp, 0x120
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x402420

	.globl string_to_integer
	.type string_to_integer, @function
string_to_integer:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	test	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	je	.label_67
	nop	
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_68
.label_67:
	movabs	rdi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_68:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, -1
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl head_file
	.type head_file, @function
head_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, cl
	mov	r8b, dl
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	and	r8b, 1
	mov	byte ptr [rbp - 0xd], r8b
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.10
	mov	esi, ecx
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe], r8b
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe], 1
	je	.label_71
	movabs	rdi, OFFSET FLAT:.str.49
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	dword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edi, ecx
	mov	esi, ecx
	call	xset_binary_mode
	jmp	.label_73
.label_71:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	nop	
	jge	.label_69
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.50
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	mov	byte ptr [rbp - 0x22], 0
	mov	rsp, rsp
	jmp	.label_72
.label_69:
	jmp	.label_73
.label_73:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0xd]
	mov	cl, byte ptr [rbp - 0x21]
	and	al, 1
	and	cl, 1
	mov	rsp, rsp
	movzx	r8d, al
	mov	byte ptr [rbp - 0x29], cl
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	r8d, al
	call	head
	mov	rbp, rbp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	nop	
	test	byte ptr [rbp - 0xe], 1
	lea	rsi, [rsi]
	jne	.label_70
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_70
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.51
	nop	
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	nop	
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x22], 0
	jmp	.label_72
.label_70:
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
.label_72:
	mov	al, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026e0

	.globl head
	.type head, @function
head:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xd0
	nop	
	mov	al, r8b
	mov	rbp, rbp
	mov	r9b, cl
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rdx
	and	r9b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], r9b
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	test	byte ptr [byte ptr [print_headers]],  1
	nop	
	je	.label_78
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	call	write_header
.label_78:
	test	byte ptr [rbp - 1], 1
	je	.label_74
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], -1
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_82
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0xc1], 0
	mov	rsp, rsp
	jmp	.label_76
.label_82:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_80
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x98]
	lea	rdi, [rdi]
	call	usable_st_size
	test	al, 1
	jne	.label_77
	mov	rsp, rsp
	jmp	.label_80
.label_77:
	nop	
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xb4]
	mov	rcx, qword ptr [rbp - 0xc0]
	call	elseek
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], 0
	jge	.label_79
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], 0
	nop	
	jmp	.label_76
.label_79:
	jmp	.label_80
.label_80:
	mov	rbp, rbp
	test	byte ptr [rbp - 2], 1
	mov	rsp, rsp
	je	.label_81
	lea	rcx, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	r8, qword ptr [rbp - 0xb0]
	call	elide_tail_lines_file
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc1], al
	mov	rsp, rsp
	jmp	.label_76
.label_81:
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	r8, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	elide_tail_bytes_file
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], al
	mov	rbp, rbp
	jmp	.label_76
.label_74:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 2], 1
	je	.label_75
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	head_lines
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc1], al
	lea	rdi, [rdi]
	jmp	.label_76
.label_75:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	call	head_bytes
	nop	
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xc1], al
.label_76:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0xd0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl write_header
	.type write_header, @function
write_header:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:.str.53
	movabs	rcx, OFFSET FLAT:.str.54
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	sil,  byte ptr [byte ptr [write_header.first_file]]
	mov	rbp, rbp
	test	sil, 1
	mov	rsp, rsp
	cmovne	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	mov	byte ptr [byte ptr [write_header.first_file]],  0
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a00

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 1], al
	je	.label_83
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	mov	rbp, rbp
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	je	.label_83
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	nop	
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jne	.label_83
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jmp	.label_83
.label_83:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ab0

	.globl elseek
	.type elseek, @function
elseek:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	lseek
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jge	.label_84
	call	__errno_location
	movabs	rcx, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.55
	mov	esi, dword ptr [rax]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	cmove	rcx, rdx
	mov	rdi, rcx
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	lea	rsi, [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	call	offtostr
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	r8, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_84:
	mov	rax, qword ptr [rbp - 0x58]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl elide_tail_lines_file
	.type elide_tail_lines_file, @function
elide_tail_lines_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x38], r8
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	lea	rsi, [rsi]
	jne	.label_88
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	jl	.label_88
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	jge	.label_85
	movabs	rax, 0x2000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_85
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_87
.label_85:
	lea	rdi, [rdi]
	mov	eax, 0x200
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_87
.label_87:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jg	.label_90
.label_88:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	call	elide_tail_lines_pipe
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	nop	
	jmp	.label_89
.label_90:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	byte ptr [rbp - 1], al
	jle	.label_86
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	elide_tail_lines_seekable
	mov	byte ptr [rbp - 1], al
.label_86:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
.label_89:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl elide_tail_bytes_file
	.type elide_tail_bytes_file, @function
elide_tail_bytes_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x50], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	lea	rdi, [rdi]
	jne	.label_94
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	jl	.label_94
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x58], rdx
	mov	rbp, rbp
	jge	.label_93
	nop	
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_93
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_92
.label_93:
	mov	eax, 0x200
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_92
.label_92:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jg	.label_95
.label_94:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	call	elide_tail_bytes_pipe
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	rbp, rbp
	jmp	.label_91
.label_95:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	jge	.label_99
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_98
.label_99:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_98:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x60]
	ja	.label_96
	mov	byte ptr [rbp - 0x49], 1
	lea	rsi, [rsi]
	jmp	.label_91
.label_96:
	mov	edi, dword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, rax
	call	copy_fd
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	jne	.label_97
	mov	byte ptr [rbp - 0x49], 1
	mov	rbp, rbp
	jmp	.label_91
.label_97:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	diagnose_copy_fd_failure
	mov	byte ptr [rbp - 0x49], 0
.label_91:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ed0

	.globl head_lines
	.type head_lines, @function
head_lines:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20f0
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0xb8], esi
	mov	qword ptr [rbp - 0x20d8], rdx
.label_103:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20d8], 0
	lea	rdi, [rdi]
	je	.label_107
	mov	rsp, rsp
	mov	eax, 0x2000
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x20c0]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	call	safe_read
	nop	
	mov	qword ptr [rbp - 0x20e8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20c8], 0
	cmp	qword ptr [rbp - 0x20e8], -1
	jne	.label_106
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.57
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0xb1], 0
	lea	rsi, [rsi]
	jmp	.label_101
.label_106:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20e8], 0
	jne	.label_105
	jmp	.label_107
.label_105:
	jmp	.label_110
.label_110:
	mov	rax, qword ptr [rbp - 0x20c8]
	cmp	rax, qword ptr [rbp - 0x20e8]
	mov	rbp, rbp
	jae	.label_109
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20c8]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20c8], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp + rax - 0x20c0]
	mov	rsp, rsp
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	jne	.label_100
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20d8]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x20d8], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_100
	mov	rsp, rsp
	mov	edx, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x20e8]
	nop	
	sub	rsi, qword ptr [rbp - 0x20c8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20e0], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xb8]
	sub	rcx, qword ptr [rbp - 0x20e0]
	mov	rsi, rcx
	call	lseek
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_102
	lea	rsi, [rbp - 0xb0]
	mov	edi, dword ptr [rbp - 0xb8]
	call	__fstat
	nop	
	cmp	eax, 0
	jne	.label_108
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_104
.label_108:
	lea	rdi, [rdi]
	mov	edx, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0xb8]
	sub	rcx, qword ptr [rbp - 0x20e0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 8]
	call	elseek
	mov	qword ptr [rbp - 0x20d0], rax
.label_104:
	mov	rsp, rsp
	jmp	.label_102
.label_102:
	lea	rsi, [rsi]
	jmp	.label_109
.label_100:
	jmp	.label_110
.label_109:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x20c0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20c8]
	call	xwrite_stdout
	jmp	.label_103
.label_107:
	nop	
	mov	byte ptr [rbp - 0xb1], 1
.label_101:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl head_bytes
	.type head_bytes, @function
head_bytes:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x2040
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2020], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2034], esi
	mov	qword ptr [rbp - 0x2030], rdx
	mov	qword ptr [rbp - 0x2010], 0x2000
.label_112:
	cmp	qword ptr [rbp - 0x2030], 0
	je	.label_111
	mov	rax, qword ptr [rbp - 0x2030]
	cmp	rax, qword ptr [rbp - 0x2010]
	jae	.label_113
	nop	
	mov	rax, qword ptr [rbp - 0x2030]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2010], rax
.label_113:
	nop	
	lea	rsi, [rbp - 0x2000]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x2034]
	mov	rdx, qword ptr [rbp - 0x2010]
	call	safe_read
	nop	
	mov	qword ptr [rbp - 0x2040], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2040], -1
	jne	.label_114
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.57
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2024], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2020]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2008], rax
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x2024]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2008]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x2011], 0
	jmp	.label_115
.label_114:
	cmp	qword ptr [rbp - 0x2040], 0
	jne	.label_116
	mov	rbp, rbp
	jmp	.label_111
.label_116:
	lea	rdi, [rbp - 0x2000]
	mov	rsi, qword ptr [rbp - 0x2040]
	call	xwrite_stdout
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x2030]
	sub	rdi, rsi
	mov	qword ptr [rbp - 0x2030], rdi
	lea	rdi, [rdi]
	jmp	.label_112
.label_111:
	mov	byte ptr [rbp - 0x2011], 1
.label_115:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x2011]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2040
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl elide_tail_lines_pipe
	.type elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xa0
	mov	eax, 0x2018
	mov	r8d, eax
	mov	qword ptr [rbp - 0x90], rdi
	nop	
	mov	dword ptr [rbp - 0x54], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x91], 1
	mov	rdi, r8
	call	xmalloc
	mov	rbp, rbp
	mov	esi, 0x2018
	mov	rbp, rbp
	mov	edi, esi
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x2008], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x2010], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
.label_132:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0x54]
	mov	rsi, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_119
	cmp	qword ptr [rbp - 0x50], -1
	nop	
	jne	.label_121
.label_119:
	mov	rbp, rbp
	jmp	.label_125
.label_121:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_127
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	call	xwrite_stdout
	mov	rbp, rbp
	jmp	.label_132
.label_127:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x2000], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax + 0x2008], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x2010], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_140:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	call	memchr
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	nop	
	je	.label_139
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x2008]
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x2008], rcx
	jmp	.label_140
.label_139:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_128
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rcx, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2000]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	add	rax, qword ptr [rcx + 0x2000]
	nop	
	mov	qword ptr [rcx + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x2008]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x2008]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x2008], rax
	jmp	.label_118
.label_128:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rax, rcx
	nop	
	jae	.label_136
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x2008]
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x2010]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_137
.label_136:
	mov	rsp, rsp
	mov	eax, 0x2018
	lea	rsi, [rsi]
	mov	edi, eax
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_137:
	mov	rbp, rbp
	jmp	.label_118
.label_118:
	jmp	.label_132
.label_125:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_131
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x84], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], 0
	mov	rbp, rbp
	jmp	.label_122
.label_131:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x2000], 0
	je	.label_134
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x2000]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x78]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	movsx	esi,  byte ptr [byte ptr [line_end]]
	nop	
	cmp	edx, esi
	lea	rsi, [rsi]
	je	.label_134
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x2008]
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_134:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_130:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx + 0x2008]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_135
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x2000]
	lea	rsi, [rsi]
	call	xwrite_stdout
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x2008]
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	sub	rsi, rax
	mov	qword ptr [rbp - 0x60], rsi
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_130
.label_135:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_138
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x2000]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_133:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	mov	byte ptr [rbp - 9], cl
	je	.label_129
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	mov	rdx, rax
	nop	
	call	memchr
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	nop	
	setne	r8b
	mov	byte ptr [rbp - 9], r8b
.label_129:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	test	al, 1
	jne	.label_117
	mov	rbp, rbp
	jmp	.label_120
.label_117:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rax + 0x2008]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_133
.label_120:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	rsi, rax
	mov	rsp, rsp
	call	xwrite_stdout
.label_138:
	mov	rsp, rsp
	jmp	.label_122
.label_122:
	lea	rsi, [rsi]
	jmp	.label_124
.label_124:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_126
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_124
.label_126:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	jg	.label_123
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	elseek
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_123
	mov	byte ptr [rbp - 0x91], 0
.label_123:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0xa0
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl elide_tail_lines_seekable
	.type elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2080
	mov	eax, 0x2000
	mov	rbp, rbp
	mov	r9d, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2078], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2068], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rax, rcx
	cqo	
	lea	rdi, [rdi]
	idiv	r9
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_152
	mov	qword ptr [rbp - 0x38], 0x2000
.label_152:
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2078]
	call	elseek
	cmp	rax, 0
	jge	.label_158
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_143
.label_158:
	lea	rsi, [rbp - 0x2050]
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	safe_read
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], -1
	jne	.label_146
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.57
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2070], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2078]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2070]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_143
.label_146:
	cmp	qword ptr [rbp - 0x2068], 0
	lea	rdi, [rdi]
	setne	al
	xor	al, 0xff
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2059], al
	cmp	qword ptr [rbp - 0x2068], 0
	je	.label_145
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_145
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rax, 1
	movsx	ecx, byte ptr [rbp + rax - 0x2050]
	mov	rbp, rbp
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	lea	rsi, [rsi]
	je	.label_145
	mov	rax, qword ptr [rbp - 0x2068]
	add	rax, -1
	mov	qword ptr [rbp - 0x2068], rax
.label_145:
	nop	
	jmp	.label_142
.label_142:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_153:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_141
	nop	
	test	byte ptr [rbp - 0x2059], 1
	mov	rbp, rbp
	je	.label_148
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_150
.label_148:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x2050]
	lea	rdi, [rdi]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_157
	mov	rbp, rbp
	jmp	.label_141
.label_157:
	nop	
	lea	rax, [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_150:
	mov	rax, qword ptr [rbp - 0x2068]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2068], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_147
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jge	.label_151
	xor	edx, edx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x2078]
	mov	rsp, rsp
	call	elseek
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_159
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_143
.label_159:
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	copy_fd
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x206c], eax
	cmp	dword ptr [rbp - 0x206c], 0
	je	.label_144
	mov	edi, dword ptr [rbp - 0x206c]
	mov	rsi, qword ptr [rbp - 0x2078]
	call	diagnose_copy_fd_failure
	mov	byte ptr [rbp - 0x41], 0
	mov	rbp, rbp
	jmp	.label_143
.label_144:
	lea	rdi, [rdi]
	jmp	.label_151
.label_151:
	lea	rdi, [rbp - 0x2050]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	call	xwrite_stdout
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2078]
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	call	elseek
	xor	edx, edx
	mov	ecx, edx
	cmp	rcx, rax
	mov	rbp, rbp
	setle	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x41], r8b
	jmp	.label_143
.label_147:
	nop	
	jmp	.label_153
.label_141:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jne	.label_155
	mov	byte ptr [rbp - 0x41], 1
	mov	rsp, rsp
	jmp	.label_143
.label_155:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rax, 0x2000
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x2078]
	call	elseek
	cmp	rax, 0
	jge	.label_149
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_143
.label_149:
	mov	rbp, rbp
	mov	eax, 0x2000
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x2050]
	mov	edi, dword ptr [rbp - 4]
	call	safe_read
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], -1
	lea	rsi, [rsi]
	jne	.label_156
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x207c], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2078]
	mov	qword ptr [rbp - 0x2058], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x207c]
	mov	rdx, qword ptr [rbp - 0x2058]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x41], 0
	mov	rsp, rsp
	jmp	.label_143
.label_156:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_154
	mov	byte ptr [rbp - 0x41], 1
	jmp	.label_143
.label_154:
	mov	rsp, rsp
	jmp	.label_142
.label_143:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x2080
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e90

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jbe	.label_160
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jae	.label_160
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.58
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_160:
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f60

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x2040
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], 0x2000
.label_165:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_162
	lea	rsi, [rsi]
	mov	eax, 0x2000
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_167
	mov	rsp, rsp
	mov	eax, 0x2000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2038], rcx
	mov	rsp, rsp
	jmp	.label_166
.label_167:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2038], rax
.label_166:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2038]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x2030]
	mov	qword ptr [rbp - 0x10], rax
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	safe_read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_163
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_164
.label_163:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_161
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_161
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_164
.label_161:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x2030]
	mov	rsi, qword ptr [rbp - 0x20]
	call	xwrite_stdout
	nop	
	jmp	.label_165
.label_162:
	mov	dword ptr [rbp - 0x14], 0
.label_164:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	rsp, 0x2040
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	eax, edi
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_171
	jmp	.label_168
.label_168:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	je	.label_170
	jmp	.label_172
.label_171:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.57
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	jmp	.label_169
.label_170:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.60
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	jmp	.label_169
.label_172:
	call	abort
.label_169:
	nop	
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404190

	.globl elide_tail_bytes_pipe
	.type elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x140
	mov	rax, -1
	mov	qword ptr [rbp - 0xa0], rdi
	mov	dword ptr [rbp - 0x44], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	mov	qword ptr [rbp - 0x138], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0xd0], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 0x2000
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jae	.label_195
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x128], rax
	mov	rsp, rsp
	call	umaxtostr
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_195:
	cmp	qword ptr [rbp - 0x68], 0x100000
	lea	rdi, [rdi]
	ja	.label_189
	mov	rsp, rsp
	mov	eax, 2
	lea	rdi, [rdi]
	mov	edi, eax
	mov	byte ptr [rbp - 0x101], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x129], 0
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, 0x2000
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	xnmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 0
.label_184:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x129]
	xor	al, 0xff
	test	al, 1
	mov	rbp, rbp
	jne	.label_205
	mov	rsp, rsp
	jmp	.label_198
.label_205:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x44]
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp + rdx*8 - 0xc0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	full_read
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x10], 0
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_178
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_187
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	lea	rsi, [rsi]
	jmp	.label_198
.label_187:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x68]
	ja	.label_200
	test	byte ptr [rbp - 0x101], 1
	mov	rsp, rsp
	je	.label_204
	mov	rbp, rbp
	jmp	.label_174
.label_204:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_174:
	nop	
	jmp	.label_200
.label_200:
	nop	
	mov	byte ptr [rbp - 0x129], 1
.label_178:
	test	byte ptr [rbp - 0x101], 1
	lea	rsi, [rsi]
	jne	.label_173
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	mov	cl, byte ptr [rbp - 0x89]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	add	rax, 0x2000
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	sub	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	xwrite_stdout
.label_173:
	mov	byte ptr [rbp - 0x101], 0
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_194
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x89]
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	eax, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + rax*8 - 0xc0]
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	sub	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, rax
	call	xwrite_stdout
.label_194:
	lea	rsi, [rsi]
	jmp	.label_209
.label_209:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x89]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
	mov	rbp, rbp
	jmp	.label_184
.label_198:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	free
	jmp	.label_175
.label_189:
	mov	eax, 0x2000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx, qword ptr [rbp - 0x68]
	and	rdx, 0x1fff
	nop	
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	add	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	shr	rcx, 0xd
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rcx
	nop	
	mov	qword ptr [rbp - 0xc8], 0
	mov	qword ptr [rbp - 0xd8], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x119], 0
	mov	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], 1
.label_177:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	nop	
	test	al, 1
	jne	.label_197
	lea	rsi, [rsi]
	jmp	.label_201
.label_197:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_203
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_207
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x98], 0x10
	jae	.label_211
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	jmp	.label_176
.label_211:
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rcx
	nop	
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_182
.label_207:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shr	rcx, 1
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_186
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	shl	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_192
.label_186:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xd8], rax
.label_192:
	jmp	.label_182
.label_182:
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdi, rcx
	mov	rsp, rsp
	call	xnrealloc
	mov	qword ptr [rbp - 0x18], rax
.label_203:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x119], 1
	nop	
	jne	.label_202
	mov	eax, 0x2000
	mov	edi, eax
	mov	rsp, rsp
	call	xmalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdi*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
.label_202:
	mov	eax, 0x2000
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + rcx*8]
	nop	
	call	full_read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0x2000
	jae	.label_179
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0
	je	.label_185
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.57
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_196
.label_185:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 1
.label_179:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_199
	nop	
	mov	byte ptr [rbp - 0x119], 1
.label_199:
	test	byte ptr [rbp - 0x119], 1
	je	.label_206
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xwrite_stdout
.label_206:
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	add	rax, 1
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xe0], rdx
	nop	
	jmp	.label_177
.label_201:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_188
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x119], 1
	je	.label_190
	mov	eax, 0x2000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	jae	.label_193
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xwrite_stdout
	lea	rsi, [rsi]
	jmp	.label_210
.label_193:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rdi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x110]
	mov	rsi, rax
	call	xwrite_stdout
.label_210:
	mov	rsp, rsp
	jmp	.label_181
.label_190:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	jne	.label_183
	mov	rsp, rsp
	mov	eax, 0x2000
	mov	rbp, rbp
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa8]
	add	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	qword ptr [rbp - 0xd0], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	call	xwrite_stdout
.label_183:
	mov	rbp, rbp
	jmp	.label_181
.label_181:
	lea	rdi, [rdi]
	jmp	.label_188
.label_188:
	mov	rsp, rsp
	jmp	.label_196
.label_196:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 0
.label_212:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	jmp	.label_212
.label_208:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
.label_175:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x138]
	jg	.label_180
	nop	
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x44]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	elseek
	cmp	rax, 0
	jge	.label_180
	nop	
	mov	byte ptr [rbp - 0x19], 0
.label_180:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x140
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a90
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
	#Procedure 0x404ac0
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
	#Procedure 0x404af0

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
	je	.label_215
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_217
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_215
.label_217:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_214
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
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_216
.label_214:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_216:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_215:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_213
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_213:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl full_read
	.type full_read, @function
full_read:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
.label_219:
	cmp	qword ptr [rbp - 0x20], 0
	jbe	.label_218
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	safe_read
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_220
	jmp	.label_218
.label_220:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_221
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_218
.label_221:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	jmp	.label_219
.label_218:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d00

	.globl offtostr
	.type offtostr, @function
offtostr:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_222
	lea	rsi, [rsi]
	jmp	.label_224
.label_224:
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	qword ptr [rbp - 0x10], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_224
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0x2d
	lea	rdi, [rdi]
	jmp	.label_225
.label_222:
	jmp	.label_223
.label_223:
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cqo	
	mov	rsp, rsp
	idiv	rcx
	mov	rbp, rbp
	add	rdx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], sil
	lea	rdi, [rdi]
	mov	eax, 0xa
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	rax, 0
	jne	.label_223
	lea	rdi, [rdi]
	jmp	.label_225
.label_225:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e50

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 0x20], 0
	jae	.label_226
	jmp	.label_229
.label_229:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_229
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_228
.label_226:
	jmp	.label_227
.label_227:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	nop	
	jne	.label_227
	jmp	.label_228
.label_228:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f90

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
	jne	.label_232
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_232:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_230
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_234
.label_230:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_234:
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
	jl	.label_233
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
	jne	.label_233
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
	jne	.label_231
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_231:
	jmp	.label_233
.label_233:
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
	#Procedure 0x405110
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
	je	.label_236
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_235
.label_236:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_235
.label_235:
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
	#Procedure 0x4051c0
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
	je	.label_237
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_238
.label_237:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405220
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
	je	.label_239
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_240
.label_239:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_240
.label_240:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405280

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
	je	.label_241
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_242
.label_241:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_242
.label_242:
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
	#Procedure 0x405380
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
	jne	.label_243
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_243:
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
	#Procedure 0x4053e0

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
	jne	.label_244
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_244:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_246
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_245
.label_246:
	call	abort
.label_245:
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
	#Procedure 0x405480
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
	je	.label_247
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_248
.label_247:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_248
.label_248:
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
	#Procedure 0x405580

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
.label_366:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_382
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_424]]
	jmp	rcx
.label_762:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_761:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_390
	jmp	.label_394
.label_394:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_395:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_390
.label_390:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_271
.label_763:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_271
.label_764:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_417
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
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
.label_417:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_259
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_250:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_435
	jmp	.label_438
.label_438:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_440:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_250
.label_435:
	mov	rbp, rbp
	jmp	.label_259
.label_259:
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
	jmp	.label_271
.label_759:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_758:
	mov	byte ptr [rbp - 0x3e], 1
.label_760:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_277
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_277:
	jmp	.label_279
.label_279:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_281
	jmp	.label_285
.label_285:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_286
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_286:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_281
.label_281:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_271
.label_757:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_271
.label_382:
	call	abort
.label_271:
	mov	qword ptr [rbp - 0xd8], 0
.label_311:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_307
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
	jmp	.label_309
.label_307:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_309:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_324
	mov	rbp, rbp
	jmp	.label_334
.label_324:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_336
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_336
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_336
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_355
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_355
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_362
.label_355:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_362:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_336
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
	jne	.label_336
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_387
	jmp	.label_262
.label_387:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_336:
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
	ja	.label_393
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_403]]
	nop	
	jmp	rcx
.label_731:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_405
	mov	rsp, rsp
	jmp	.label_409
.label_409:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_412
	jmp	.label_262
.label_412:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_415
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_415
	nop	
	jmp	.label_419
.label_419:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_421
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_429
.label_429:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_433
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_433:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_442
.label_442:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_445
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_445:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_415:
	lea	rsi, [rsi]
	jmp	.label_254
.label_254:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_256
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_256:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_328
.label_328:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_274
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_274
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_274
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_274
	nop	
	jmp	.label_291
.label_291:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_292
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_292:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_299
.label_299:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_356:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_274
.label_274:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_312
.label_405:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_437
	mov	rbp, rbp
	jmp	.label_267
.label_437:
	jmp	.label_312
.label_312:
	jmp	.label_255
.label_742:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_322
	mov	rbp, rbp
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_331
	jmp	.label_339
.label_322:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_341
	jmp	.label_262
.label_341:
	jmp	.label_252
.label_331:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_273
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_273
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_273
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
	je	.label_367
	nop	
	jmp	.label_352
.label_352:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_367
	jmp	.label_375
.label_375:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_367
	jmp	.label_383
.label_383:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_367
	jmp	.label_389
.label_389:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_323
	jmp	.label_367
.label_367:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_396
	jmp	.label_262
.label_396:
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
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_400:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_418
.label_418:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_436
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_436:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_425:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_432
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_432:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_398:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_303
.label_323:
	jmp	.label_303
.label_303:
	jmp	.label_273
.label_273:
	jmp	.label_252
.label_339:
	jmp	.label_252
.label_252:
	jmp	.label_255
.label_732:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_258
.label_733:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_258
.label_737:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_258
.label_735:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_269
.label_738:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_269
.label_734:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_269
.label_736:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_258
.label_743:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_410
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_283
	nop	
	jmp	.label_262
.label_283:
	lea	rsi, [rsi]
	jmp	.label_260
.label_410:
	test	byte ptr [rbp - 0x89], 1
	je	.label_270
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_270
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_270
	jmp	.label_260
.label_270:
	jmp	.label_269
.label_269:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_300
	test	byte ptr [rbp - 0x3e], 1
	je	.label_300
	jmp	.label_262
.label_300:
	mov	rsp, rsp
	jmp	.label_258
.label_258:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_304
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_308
.label_304:
	jmp	.label_255
.label_744:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_313
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_316
	jmp	.label_321
.label_313:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_316
.label_321:
	nop	
	jmp	.label_255
.label_316:
	jmp	.label_325
.label_325:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_326
	lea	rsi, [rsi]
	jmp	.label_255
.label_326:
	nop	
	jmp	.label_335
.label_335:
	mov	byte ptr [rbp - 0x91], 1
.label_739:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_338
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_338
	jmp	.label_262
.label_338:
	lea	rsi, [rsi]
	jmp	.label_255
.label_741:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_344
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_439
	jmp	.label_262
.label_439:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_354
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_354
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_354:
	jmp	.label_364
.label_364:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_365
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_365:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_372
.label_372:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_378
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_378:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_388
.label_388:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_392:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_344:
	lea	rsi, [rsi]
	jmp	.label_255
.label_740:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_255
.label_393:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_406
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
	jmp	.label_368
.label_406:
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
	jne	.label_431
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_431:
	jmp	.label_349
.label_349:
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
	jne	.label_253
	jmp	.label_264
.label_253:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_261
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_264
.label_261:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_268
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_289:
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
	jae	.label_348
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_348:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_430
	jmp	.label_288
.label_430:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_289
.label_288:
	jmp	.label_264
.label_268:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_287
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_287
	mov	qword ptr [rbp - 0xe8], 1
.label_343:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_302
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
	jb	.label_301
	jmp	.label_318
.label_318:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_301
	jmp	.label_296
.label_296:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_301
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_332
	mov	rsp, rsp
	jmp	.label_301
.label_301:
	mov	rsp, rsp
	jmp	.label_262
.label_332:
	jmp	.label_342
.label_342:
	mov	rsp, rsp
	jmp	.label_379
.label_379:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_343
.label_302:
	mov	rbp, rbp
	jmp	.label_287
.label_287:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_350
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_350:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_447
.label_447:
	lea	rsi, [rsi]
	jmp	.label_358
.label_358:
	jmp	.label_360
.label_360:
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
	jne	.label_349
.label_264:
	jmp	.label_368
.label_368:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_370
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_381
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_381
.label_370:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_357:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_351
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_351
	jmp	.label_397
.label_397:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_399
	jmp	.label_262
.label_399:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_402
	test	byte ptr [rbp - 0x42], 1
	jne	.label_402
	lea	rdi, [rdi]
	jmp	.label_407
.label_407:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_408
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_408:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_428
.label_428:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_446
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_446:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_426
.label_426:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_369
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_369:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_402:
	jmp	.label_443
.label_443:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_444
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_444:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_448
.label_448:
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_251
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
.label_251:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_275
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
.label_275:
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
	jmp	.label_282
.label_351:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_290
	lea	rdi, [rdi]
	jmp	.label_293
.label_293:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_295
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_295:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_290:
	nop	
	jmp	.label_282
.label_282:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_305
	jmp	.label_310
.label_305:
	lea	rsi, [rsi]
	jmp	.label_314
.label_314:
	test	byte ptr [rbp - 0x42], 1
	je	.label_315
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_315
	lea	rsi, [rsi]
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_320
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_327
.label_327:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_337
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_337:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_315:
	nop	
	jmp	.label_345
.label_345:
	mov	rsp, rsp
	jmp	.label_346
.label_346:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_347
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_347:
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
	jmp	.label_357
.label_310:
	mov	rsp, rsp
	jmp	.label_260
.label_381:
	lea	rsi, [rsi]
	jmp	.label_255
.label_255:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_373
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_376
.label_373:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_380
.label_376:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_380
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
	jne	.label_385
.label_380:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_385
	mov	rsp, rsp
	jmp	.label_260
.label_385:
	nop	
	jmp	.label_308
.label_308:
	jmp	.label_404
.label_404:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_363
	jmp	.label_262
.label_363:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_278
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_278
	lea	rdi, [rdi]
	jmp	.label_416
.label_416:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_353:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_427
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_427:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_434
.label_434:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_423
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_423:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_278:
	jmp	.label_441
.label_441:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_449
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_449:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_257
.label_257:
	nop	
	jmp	.label_260
.label_260:
	jmp	.label_263
.label_263:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_265
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_265
	lea	rdi, [rdi]
	jmp	.label_272
.label_272:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_276
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_284
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_265:
	jmp	.label_294
.label_294:
	nop	
	jmp	.label_297
.label_297:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_298
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_414
	mov	byte ptr [rbp - 0xb7], 0
.label_414:
	mov	rbp, rbp
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_311
.label_334:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_317
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_317
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_317
	nop	
	jmp	.label_262
.label_317:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_306
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_306
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_306
	test	byte ptr [rbp - 0xb7], 1
	je	.label_340
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
	jmp	.label_359
.label_340:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_361
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_361
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_366
.label_361:
	jmp	.label_374
.label_374:
	mov	rbp, rbp
	jmp	.label_306
.label_306:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_377
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_377
	mov	rbp, rbp
	jmp	.label_384
.label_384:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_386
	lea	rdi, [rdi]
	jmp	.label_280
.label_280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_391
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_391:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_401
.label_401:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_384
.label_386:
	jmp	.label_377
.label_377:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_411
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_411:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_359
.label_262:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_420
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_420
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_420:
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
.label_359:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407020
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
	#Procedure 0x407090

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
	je	.label_450
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_451
.label_450:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_451
.label_451:
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
	je	.label_452
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_452:
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
	#Procedure 0x407260
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
.label_457:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_456
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
	jmp	.label_457
.label_456:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_455
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_453]],  rax
.label_455:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_454
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_454:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407370

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
	#Procedure 0x4073c0

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
	jge	.label_463
	call	abort
.label_463:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_458
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
	jge	.label_459
	call	xalloc_die
.label_459:
	test	byte ptr [rbp - 0x51], 1
	je	.label_460
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_464
.label_460:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_464:
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
	je	.label_462
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_453]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_462:
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
.label_458:
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
	ja	.label_461
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
	je	.label_465
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_465:
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
.label_461:
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
	#Procedure 0x4076f0

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
	#Procedure 0x407730
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
	#Procedure 0x407760
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
	#Procedure 0x4077a0

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
	#Procedure 0x407800

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
	jne	.label_466
	call	abort
.label_466:
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
	#Procedure 0x4078a0

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
	#Procedure 0x407910

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
	#Procedure 0x407950
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
	#Procedure 0x407990

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
	#Procedure 0x407a40

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
	#Procedure 0x407a80

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
	#Procedure 0x407ab0
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
	#Procedure 0x407af0

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
	#Procedure 0x407bd0

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
	#Procedure 0x407c20

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
	#Procedure 0x407cc0
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
	#Procedure 0x407d10
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
	#Procedure 0x407d70

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
	#Procedure 0x407db0
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
	#Procedure 0x407df0

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
	#Procedure 0x407e30

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
	#Procedure 0x407e70

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
	je	.label_470
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_467
.label_470:
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
	jne	.label_468
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
	jmp	.label_467
.label_468:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_469
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
	jmp	.label_467
.label_469:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_467:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fb0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
.label_476:
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	call	read
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_471
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_478
.label_471:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_472
	lea	rdi, [rdi]
	jmp	.label_476
.label_472:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_475
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jae	.label_475
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_477
.label_475:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_478
.label_477:
	jmp	.label_474
.label_474:
	jmp	.label_473
.label_473:
	mov	rsp, rsp
	jmp	.label_476
.label_478:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080a0

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
	je	.label_483
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
	jmp	.label_481
.label_483:
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
.label_481:
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
	ja	.label_482
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_479]]
	jmp	rcx
.label_703:
	jmp	.label_480
.label_704:
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
	jmp	.label_480
.label_705:
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
	jmp	.label_480
.label_706:
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
	jmp	.label_480
.label_707:
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
	jmp	.label_480
.label_708:
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
	jmp	.label_480
.label_709:
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
	jmp	.label_480
.label_710:
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
	jmp	.label_480
.label_711:
	movabs	rdi, OFFSET FLAT:.str.11_0
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
	jmp	.label_480
.label_712:
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
	jmp	.label_480
.label_482:
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
.label_480:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088e0
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
.label_486:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_484
	mov	rbp, rbp
	jmp	.label_485
.label_485:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_486
.label_484:
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
	#Procedure 0x408990

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
.label_491:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_493
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
	jmp	.label_492
.label_493:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_492:
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
.label_487:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_490
	mov	rsp, rsp
	jmp	.label_488
.label_490:
	jmp	.label_489
.label_489:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_491
.label_488:
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
	#Procedure 0x408af0

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
	je	.label_494
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
.label_494:
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
	#Procedure 0x408cb0
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
	movabs	rdi, OFFSET FLAT:.str.19
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
	#Procedure 0x408d60

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
	jae	.label_495
	mov	rbp, rbp
	call	xalloc_die
.label_495:
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
	#Procedure 0x408dc0

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
	jne	.label_496
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_496
	lea	rdi, [rdi]
	call	xalloc_die
.label_496:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e20

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
	jae	.label_497
	mov	rsp, rsp
	call	xalloc_die
.label_497:
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
	#Procedure 0x408ea0

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
	jne	.label_498
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_498
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_500
.label_498:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_499
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_499
	lea	rsi, [rsi]
	call	xalloc_die
.label_499:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_500:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f50

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
	jne	.label_501
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_503
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
.label_503:
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
	jae	.label_505
	call	xalloc_die
.label_505:
	lea	rsi, [rsi]
	jmp	.label_504
.label_501:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_502
	call	xalloc_die
.label_502:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_504:
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
	#Procedure 0x409080

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
	#Procedure 0x4090b0
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
	#Procedure 0x4090f0
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
	#Procedure 0x409140
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
	jb	.label_506
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_507
.label_506:
	lea	rsi, [rsi]
	call	xalloc_die
.label_507:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091b0

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
	#Procedure 0x409200
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
	#Procedure 0x409260

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
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4092c0

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092d0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	dword ptr [rbp - 4], esi
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	set_binary_mode
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_508
	call	xset_binary_mode_error
.label_508:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409310

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
	jne	.label_519
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_522
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_513
.label_522:
	mov	dword ptr [rbp - 0x50], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0x3fffffff
	jbe	.label_517
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_510
.label_517:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_510:
	jmp	.label_513
.label_513:
	nop	
	jmp	.label_516
.label_519:
	cmp	dword ptr [rbp - 0x50], 1
	jne	.label_518
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_515
.label_518:
	cmp	dword ptr [rbp - 0x50], 3
	jne	.label_511
	call	__errno_location
	mov	dword ptr [rax], 0
.label_511:
	jmp	.label_515
.label_515:
	jmp	.label_516
.label_516:
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_509
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_520
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_514
.label_520:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_514
.label_514:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_521
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_512
.label_521:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], ecx
.label_512:
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
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_509:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409500

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
	#Procedure 0x409570

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
	jg	.label_566
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_566
	jmp	.label_559
.label_566:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_559:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_573
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_526
.label_573:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_526
.label_526:
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
.label_560:
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
	je	.label_546
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_560
.label_546:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_575
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_536
.label_575:
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
	jne	.label_587
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_528
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_528
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_528
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_580
.label_528:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_536
.label_580:
	lea	rdi, [rdi]
	jmp	.label_563
.label_587:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_570
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_554
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_536
.label_554:
	mov	dword ptr [rbp - 0x60], 1
.label_570:
	jmp	.label_563
.label_563:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_583
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_536
.label_583:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_529
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
	jne	.label_544
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
	jmp	.label_536
.label_544:
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
	je	.label_525
	jmp	.label_576
.label_576:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_525
	nop	
	jmp	.label_561
.label_561:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_525
	nop	
	jmp	.label_524
.label_524:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_525
	lea	rsi, [rsi]
	jmp	.label_532
.label_532:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_525
	jmp	.label_538
.label_538:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_525
	jmp	.label_543
.label_543:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_525
	mov	rsp, rsp
	jmp	.label_556
.label_556:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_525
	jmp	.label_534
.label_534:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_525
	mov	rsp, rsp
	jmp	.label_578
.label_578:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_525
	jmp	.label_540
.label_540:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_574
	jmp	.label_525
.label_525:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_530
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
	je	.label_533
	lea	rsi, [rsi]
	jmp	.label_541
.label_541:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_533
	jmp	.label_549
.label_549:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_552
	lea	rsi, [rsi]
	jmp	.label_562
.label_562:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_579
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_579:
	jmp	.label_552
.label_533:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_552:
	jmp	.label_530
.label_530:
	nop	
	jmp	.label_574
.label_574:
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
	je	.label_585
	jmp	.label_553
.label_553:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_531
	jmp	.label_535
.label_535:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_550
	jmp	.label_539
.label_539:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_537
	nop	
	jmp	.label_545
.label_545:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_542
	nop	
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_555
	mov	rsp, rsp
	jmp	.label_569
.label_569:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_548
	jmp	.label_571
.label_571:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_584
	mov	rbp, rbp
	jmp	.label_581
.label_581:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_582
	jmp	.label_588
.label_588:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_523
	jmp	.label_564
.label_564:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_577
	jmp	.label_565
.label_565:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_550
	jmp	.label_572
.label_572:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_537
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_542
	jmp	.label_586
.label_586:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_548
	jmp	.label_551
.label_551:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_567
	jmp	.label_568
.label_523:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_585:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_577:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_527
.label_531:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_550:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_537:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_542:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_555:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_527
.label_548:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_527
.label_567:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_584:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_582:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_527
.label_568:
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
	jmp	.label_536
.label_527:
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
	je	.label_557
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_557:
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_536:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f00

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
	jae	.label_589
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_590
.label_589:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_590:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f80

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
.label_591:
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
	je	.label_592
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
	jmp	.label_591
.label_592:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a000

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
	jne	.label_593
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_593:
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
	ja	.label_594
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_594
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_594
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
	jmp	.label_595
.label_594:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_595:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a110

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a130

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], esi
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	__gl_setmode_check
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	je	.label_596
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_597
.label_596:
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_597:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a190

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
	jne	.label_598
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_601
.label_598:
	mov	rbp, rbp
	jmp	.label_599
.label_599:
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
	jne	.label_600
	jmp	.label_602
.label_600:
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
	je	.label_599
.label_602:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_601:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a280

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
	jne	.label_605
	test	byte ptr [rbp - 0x15], 1
	je	.label_604
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_605
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_604
.label_605:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_603
	call	__errno_location
	mov	dword ptr [rax], 0
.label_603:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_606
.label_604:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_606:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a360

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
	je	.label_608
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_609
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_607
.label_609:
	mov	byte ptr [rbp - 0xd], 0
.label_607:
	jmp	.label_608
.label_608:
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
	#Procedure 0x40a400

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
	jne	.label_611
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_611:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_610
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_610:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a480

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
	jge	.label_615
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_613
.label_615:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_612
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
	je	.label_614
.label_612:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_614
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_614:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_616
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
.label_616:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_613:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5a0

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
	je	.label_617
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_618
.label_617:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_619
.label_618:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_619:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a610

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
	je	.label_620
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
.label_620:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a670

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
	jne	.label_621
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_621
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_621
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
	jne	.label_623
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_622
.label_623:
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
	jmp	.label_622
.label_621:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_622:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a780

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
	ja	.label_624
	jmp	.label_626
.label_626:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_625
.label_624:
	lea	rsi, [rsi]
	jmp	.label_625
.label_625:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7e0
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
	jb	.label_627
	jmp	.label_629
.label_629:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_627
	jmp	.label_628
.label_628:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_630
	jmp	.label_627
.label_627:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_631
.label_630:
	mov	byte ptr [rbp - 1], 0
.label_631:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a850
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
	jb	.label_632
	jmp	.label_635
.label_635:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_633
	jmp	.label_632
.label_632:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_634
.label_633:
	mov	byte ptr [rbp - 1], 0
.label_634:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_636
	jmp	.label_638
.label_638:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_637
.label_636:
	mov	byte ptr [rbp - 1], 0
.label_637:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8d0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_639
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_639:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a900
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
	jb	.label_640
	jmp	.label_642
.label_642:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_643
	jmp	.label_640
.label_640:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_641
.label_643:
	mov	byte ptr [rbp - 1], 0
.label_641:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a950
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_644
	jmp	.label_646
.label_646:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_645
.label_644:
	mov	byte ptr [rbp - 1], 0
.label_645:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a990
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_647
	jmp	.label_649
.label_649:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_648
.label_647:
	mov	byte ptr [rbp - 1], 0
.label_648:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9d0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_650
	jmp	.label_652
.label_652:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_651
.label_650:
	mov	byte ptr [rbp - 1], 0
.label_651:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa10
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_653
	jmp	.label_655
.label_655:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_654
.label_653:
	mov	byte ptr [rbp - 1], 0
.label_654:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa50
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
	jb	.label_656
	jmp	.label_659
.label_659:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_656
	jmp	.label_660
.label_660:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_656
	jmp	.label_658
.label_658:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_661
	jmp	.label_656
.label_656:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_657
.label_661:
	mov	byte ptr [rbp - 1], 0
.label_657:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aad0
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
	jb	.label_662
	jmp	.label_664
.label_664:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_665
	jmp	.label_662
.label_662:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_663
.label_665:
	mov	byte ptr [rbp - 1], 0
.label_663:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab20
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_666
	jmp	.label_668
.label_668:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_667
.label_666:
	mov	byte ptr [rbp - 1], 0
.label_667:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab60
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
	jb	.label_669
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_669
	jmp	.label_670
.label_670:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_671
	jmp	.label_669
.label_669:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_673
.label_671:
	mov	byte ptr [rbp - 1], 0
.label_673:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40abd0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_674
	jmp	.label_676
.label_676:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_675
.label_674:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_675:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac10
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_677
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_678
.label_677:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_678:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad00

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat