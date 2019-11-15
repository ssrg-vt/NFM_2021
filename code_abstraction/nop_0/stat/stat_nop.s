	.section	.text
	.align	16
	#Procedure 0x402170

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	lea	rdi, [rdi]
	jmp	.label_7
.label_7:
	nop	
	movabs	rdi, OFFSET FLAT:.str
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_8
.label_9:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:fmt_terse_regular
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:fmt_terse_fs
	nop	
	mov	rdi, rax
	mov	al, 0
	nop	
	call	printf
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_10:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	je	.label_11
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	nop	
	jne	.label_12
	lea	rdi, [rdi]
	jmp	.label_13
.label_12:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_10
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	nop	
	movabs	rdi, OFFSET FLAT:.str.36
	nop	
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	edi, 5
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_14
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.38
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_14
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_14:
	movabs	rdi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.41
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	nop	
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.19
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	nop	
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	localeconv
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_21
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_29
.label_21:
	nop	
	movabs	rax, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_29
.label_29:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [word ptr [decimal_point]],  rax
	mov	rax,  qword ptr [word ptr [decimal_point]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	strlen
	mov	qword ptr [word ptr [decimal_point_len]],  rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	atexit
	mov	dword ptr [rbp - 0x6c], eax
.label_23:
	movabs	rdx, OFFSET FLAT:.str.21
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_33
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x70], eax
	mov	dword ptr [rbp - 0x74], ecx
	lea	rdi, [rdi]
	je	.label_37
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x78], eax
	mov	rsp, rsp
	je	.label_41
	lea	rdi, [rdi]
	jmp	.label_22
.label_22:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x4c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	je	.label_25
	jmp	.label_30
.label_30:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	je	.label_31
	mov	rsp, rsp
	jmp	.label_32
.label_32:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x84], eax
	je	.label_35
	nop	
	jmp	.label_39
.label_39:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x88], eax
	je	.label_19
	nop	
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	jne	.label_28
	jmp	.label_27
.label_27:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	rcx,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	mov	qword ptr [word ptr [trailing_delim]],  rax
	mov	rsp, rsp
	jmp	.label_20
.label_31:
	movabs	rax, OFFSET FLAT:.str.22
	mov	rcx,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  0
	mov	rsp, rsp
	mov	qword ptr [word ptr [trailing_delim]],  rax
	jmp	.label_20
.label_25:
	nop	
	mov	byte ptr [byte ptr [follow_links]],  1
	jmp	.label_20
.label_35:
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_20
.label_19:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_20
.label_41:
	xor	edi, edi
	nop	
	call	usage
.label_37:
	movabs	rsi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.24
	mov	rbp, rbp
	xor	eax, eax
	mov	r9d, eax
	nop	
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	mov	rbp, rbp
	call	version_etc
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_28:
	mov	edi, 1
	nop	
	call	usage
.label_20:
	nop	
	jmp	.label_23
.label_33:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jne	.label_26
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_26:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_36
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	strstr
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_17
	call	getenv_quoting_style
.label_17:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_24
.label_36:
	xor	edx, edx
	mov	al, byte ptr [rbp - 0x15]
	nop	
	mov	cl, byte ptr [rbp - 0x16]
	nop	
	and	al, 1
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edi, al
	movzx	esi, cl
	lea	rdi, [rdi]
	call	default_format
	mov	edx, 1
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x15]
	mov	r8b, byte ptr [rbp - 0x16]
	and	cl, 1
	mov	rsp, rsp
	and	r8b, 1
	movzx	edi, cl
	movzx	esi, r8b
	call	default_format
	mov	qword ptr [rbp - 0x28], rax
.label_24:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
.label_16:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_42
	mov	rbp, rbp
	test	byte ptr [rbp - 0x15], 1
	mov	rbp, rbp
	je	.label_38
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	do_statfs
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], edx
	nop	
	jmp	.label_34
.label_38:
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	do_stat
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], r8d
.label_34:
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	nop	
	and	edx, eax
	lea	rdi, [rdi]
	cmp	edx, 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	jmp	.label_16
.label_42:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x29]
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x402be0

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.50
	mov	rsp, rsp
	call	getenv
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_44
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	call	argmatch
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	r9d, eax
	nop	
	mov	dword ptr [rbp - 0xc], r9d
	cmp	r8d, dword ptr [rbp - 0xc]
	jg	.label_43
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	mov	rsp, rsp
	call	set_quoting_style
	jmp	.label_45
.label_43:
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, eax
	nop	
	mov	esi, 4
	lea	rdi, [rdi]
	call	set_quoting_style
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.51
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_45:
	lea	rsi, [rsi]
	jmp	.label_46
.label_44:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rsi, [rsi]
	call	set_quoting_style
.label_46:
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d00

	.globl default_format
	.type default_format, @function
default_format:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	al, dl
	nop	
	mov	cl, sil
	nop	
	mov	r8b, dil
	and	r8b, 1
	nop	
	mov	byte ptr [rbp - 1], r8b
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rbp - 2], cl
	and	al, 1
	mov	byte ptr [rbp - 3], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_47
	test	byte ptr [rbp - 2], 1
	je	.label_54
	movabs	rdi, OFFSET FLAT:fmt_terse_fs
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_50
.label_54:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	call	xstrdup
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_50:
	lea	rdi, [rdi]
	jmp	.label_53
.label_47:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 2], 1
	lea	rsi, [rsi]
	je	.label_52
	movabs	rdi, OFFSET FLAT:fmt_terse_regular
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_48
.label_52:
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rbp, rbp
	call	gettext
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 3], 1
	je	.label_49
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_51
.label_49:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.56
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	xasprintf
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_51:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	nop	
	movabs	rdi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.58
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
.label_48:
	jmp	.label_53
.label_53:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f40

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, OFFSET FLAT:.str.59
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jne	.label_56
	movabs	rdi, OFFSET FLAT:.str.60
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], edi
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_57
.label_56:
	lea	rsi, [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	statfs
	cmp	eax, 0
	nop	
	je	.label_55
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.61
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xa8]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_57
.label_55:
	mov	rbp, rbp
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:print_statfs
	lea	rax, [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r8, rax
	call	print_it
	and	al, 1
	mov	byte ptr [rbp - 0x91], al
	mov	al, byte ptr [rbp - 0x91]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_57:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl do_stat
	.type do_stat, @function
do_stat:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xe0
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.59
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc0], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	eax, dword ptr [rbp - 0xc4]
	mov	ecx, dword ptr [rbp - 0xc0]
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x24]
	nop	
	jg	.label_60
	lea	rsi, [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	__fstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_58
	mov	rsp, rsp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.192
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	nop	
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc8]
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_62
.label_58:
	lea	rdi, [rdi]
	jmp	.label_63
.label_60:
	test	byte ptr [byte ptr [follow_links]],  1
	mov	rsp, rsp
	je	.label_64
	mov	rsp, rsp
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	stat
	mov	dword ptr [rbp - 0xcc], eax
	lea	rsi, [rsi]
	jmp	.label_59
.label_64:
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
.label_59:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	je	.label_66
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.5_0
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd0], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_62
.label_66:
	lea	rdi, [rdi]
	jmp	.label_63
.label_63:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	nop	
	cmp	eax, 0x6000
	je	.label_65
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x2000
	nop	
	jne	.label_61
.label_65:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_61:
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:print_stat
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8, rax
	lea	rsi, [rsi]
	call	print_it
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb9], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
.label_62:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403320

	.globl print_it
	.type print_it, @function
print_it:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0x29], 0
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strlen
	add	rax, 2
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_97:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_67
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], edx
	je	.label_76
	lea	rsi, [rsi]
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x5c
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	je	.label_85
	jmp	.label_93
.label_76:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	strspn
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:digits
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	strspn
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	jne	.label_77
	movabs	rsi, OFFSET FLAT:digits
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strspn
	mov	rbp, rbp
	add	rax, 1
	nop	
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
.label_77:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	inc	rcx
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], edx
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	inc	rax
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	r8d, dword ptr [rbp - 0x5c]
	test	r8d, r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], r8d
	je	.label_71
	jmp	.label_100
.label_100:
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	je	.label_101
	mov	rsp, rsp
	jmp	.label_102
.label_71:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_101:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	jae	.label_75
	movabs	rdi, OFFSET FLAT:.str.62
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rdx + rax + 1], cl
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax + 2], 0
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_75:
	mov	edi, 0x25
	nop	
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	jmp	.label_80
.label_102:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], esi
	mov	rsi, rcx
	mov	ecx, dword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	call	rax
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	nop	
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_80:
	jmp	.label_86
.label_85:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	lea	rdi, [rdi]
	jne	.label_78
	mov	edi, 0x5c
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_86
.label_78:
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	eax, edx
	lea	rdi, [rdi]
	jg	.label_68
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x37
	mov	rsp, rsp
	jg	.label_68
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], ecx
	mov	dword ptr [rbp - 0x64], 1
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_94:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x64], 3
	mov	byte ptr [rbp - 0x95], cl
	jge	.label_91
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rdx]
	mov	rsp, rsp
	cmp	eax, esi
	mov	byte ptr [rbp - 0x96], cl
	lea	rdi, [rdi]
	jg	.label_98
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	lea	rsi, [rsi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x96], dl
.label_98:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x96]
	mov	byte ptr [rbp - 0x95], al
.label_91:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x95]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_81
	mov	rsp, rsp
	jmp	.label_92
.label_81:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	shl	eax, 3
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_94
.label_92:
	mov	edi, dword ptr [rbp - 0x60]
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, -1
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_84
.label_68:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x78
	jne	.label_82
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movsx	edi, byte ptr [rax + 1]
	call	to_uchar
	movzx	edi, al
	lea	rdi, [rdi]
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edi, 0x1000
	cmp	edi, 0
	mov	rbp, rbp
	je	.label_82
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x61
	jl	.label_73
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x66
	mov	rsp, rsp
	jg	.label_73
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xac], ecx
	mov	rsp, rsp
	jmp	.label_69
.label_73:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x41
	jl	.label_72
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0x46
	nop	
	jg	.label_72
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_99
.label_72:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0xb0], ecx
.label_99:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	dword ptr [rbp - 0xac], eax
.label_69:
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + 1]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xb8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	mov	rbp, rbp
	cmp	edi, 0
	lea	rsi, [rsi]
	je	.label_74
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x68]
	mov	rsp, rsp
	shl	ecx, 4
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x61
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	jl	.label_88
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x66
	jg	.label_88
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x61
	mov	rbp, rbp
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xc0], ecx
	mov	rsp, rsp
	jmp	.label_87
.label_88:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	lea	rdi, [rdi]
	jl	.label_90
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x46
	jg	.label_90
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc4], ecx
	jmp	.label_96
.label_90:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0xc4], ecx
.label_96:
	mov	eax, dword ptr [rbp - 0xc4]
	mov	dword ptr [rbp - 0xc0], eax
.label_87:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	ecx, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	add	ecx, eax
	mov	dword ptr [rbp - 0x68], ecx
.label_74:
	mov	edi, dword ptr [rbp - 0x68]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_79
.label_82:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	jne	.label_89
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 0x5c
	lea	rsi, [rsi]
	call	putchar_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rdx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	jmp	.label_70
.label_89:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	print_esc_char
.label_70:
	mov	rsp, rsp
	jmp	.label_79
.label_79:
	jmp	.label_84
.label_84:
	jmp	.label_86
.label_93:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd0], eax
.label_86:
	jmp	.label_95
.label_95:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_97
.label_67:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [trailing_delim]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], eax
	mov	eax, edx
	add	rsp, 0xe0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b40

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r9
	nop	
	mov	byte ptr [rbp - 0x31], 0
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x53
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_119
	jmp	.label_109
.label_109:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	je	.label_111
	jmp	.label_115
.label_115:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], eax
	nop	
	je	.label_130
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x62
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	lea	rdi, [rdi]
	je	.label_103
	nop	
	jmp	.label_128
.label_128:
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	sub	eax, 0x63
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x78], eax
	mov	rsp, rsp
	je	.label_129
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	je	.label_106
	jmp	.label_112
.label_112:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x80], eax
	je	.label_113
	nop	
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	je	.label_118
	jmp	.label_123
.label_123:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	sub	eax, 0x6c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_124
	jmp	.label_131
.label_131:
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_132
	nop	
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x90], eax
	je	.label_105
	jmp	.label_117
.label_117:
	nop	
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x94], eax
	je	.label_114
	mov	rbp, rbp
	jmp	.label_120
.label_132:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	out_string
	lea	rdi, [rdi]
	jmp	.label_107
.label_118:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 0x38
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0
.label_127:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	byte ptr [rbp - 0x95], cl
	lea	rdi, [rdi]
	jge	.label_110
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	shl	rax, 2
	cmp	rax, 8
	nop	
	setb	cl
	mov	byte ptr [rbp - 0x95], cl
.label_110:
	mov	al, byte ptr [rbp - 0x95]
	mov	rbp, rbp
	test	al, 1
	jne	.label_122
	lea	rdi, [rdi]
	jmp	.label_125
.label_122:
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	sub	eax, 1
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x50]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	shl	eax, 3
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rdi, [rdi]
	shl	rdx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	shl	rdx, cl
	or	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_127
.label_125:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	out_uint_x
	mov	rbp, rbp
	jmp	.label_107
.label_124:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	call	out_uint
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jmp	.label_107
.label_114:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax]
	mov	rbp, rbp
	call	out_uint_x
	nop	
	jmp	.label_107
.label_111:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rbp, rbp
	call	human_fstype
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	call	out_string
	lea	rdi, [rdi]
	jmp	.label_107
.label_103:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	out_int
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_107
.label_113:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rax + 0x18]
	call	out_int
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_107
.label_130:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x20]
	call	out_int
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	jmp	.label_107
.label_105:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 8]
	call	out_uint
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_107
.label_119:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	jne	.label_121
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rax
.label_121:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	nop	
	call	out_uint
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	lea	rsi, [rsi]
	jmp	.label_107
.label_129:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x28]
	call	out_uint
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	mov	rbp, rbp
	jmp	.label_107
.label_106:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x30]
	call	out_int
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	jmp	.label_107
.label_120:
	lea	rsi, [rsi]
	mov	edi, 0x3f
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	fputc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd8], eax
.label_107:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0xe0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x404040

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, dil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404060

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	al, dil
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	mov	ecx, edi
	lea	rsi, [rsi]
	sub	ecx, 0x22
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	nop	
	je	.label_143
	jmp	.label_141
.label_141:
	mov	eax, dword ptr [rbp - 8]
	nop	
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	je	.label_143
	lea	rdi, [rdi]
	jmp	.label_147
.label_147:
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	eax, 0x61
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	je	.label_150
	lea	rsi, [rsi]
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_139
	jmp	.label_146
.label_146:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_148
	mov	rsp, rsp
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x66
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_138
	jmp	.label_144
.label_144:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x6e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	nop	
	je	.label_145
	jmp	.label_152
.label_152:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x72
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	je	.label_133
	jmp	.label_140
.label_140:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_142
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x76
	nop	
	mov	dword ptr [rbp - 0x30], eax
	je	.label_151
	nop	
	jmp	.label_136
.label_150:
	mov	byte ptr [rbp - 1], 7
	jmp	.label_134
.label_139:
	nop	
	mov	byte ptr [rbp - 1], 8
	lea	rdi, [rdi]
	jmp	.label_134
.label_148:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x1b
	jmp	.label_134
.label_138:
	mov	byte ptr [rbp - 1], 0xc
	jmp	.label_134
.label_145:
	mov	byte ptr [rbp - 1], 0xa
	nop	
	jmp	.label_134
.label_133:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0xd
	mov	rbp, rbp
	jmp	.label_134
.label_142:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 9
	jmp	.label_134
.label_151:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0xb
	lea	rdi, [rdi]
	jmp	.label_134
.label_143:
	lea	rdi, [rdi]
	jmp	.label_134
.label_136:
	movabs	rdi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rbp - 1]
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x34], edx
	mov	rsp, rsp
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x34]
	mov	al, 0
	call	error
.label_134:
	nop	
	movsx	edi, byte ptr [rbp - 1]
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404250

	.globl out_string
	.type out_string, @function
out_string:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.59
	movabs	rcx, OFFSET FLAT:.str.65
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	nop	
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042c0

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.66
	nop	
	movabs	rcx, OFFSET FLAT:.str.67
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	call	make_format
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404330

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.68
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.69
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	make_format
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rax, rdi
	mov	rsp, rsp
	sub	rax, 0x2f
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	je	.label_369
	lea	rdi, [rdi]
	jmp	.label_383
.label_383:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x187
	mov	qword ptr [rbp - 0x30], rax
	nop	
	je	.label_386
	jmp	.label_394
.label_394:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x7c0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	je	.label_396
	jmp	.label_162
.label_162:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x40], rax
	nop	
	je	.label_163
	nop	
	jmp	.label_168
.label_168:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x137d
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	je	.label_170
	jmp	.label_175
.label_175:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	je	.label_179
	jmp	.label_184
.label_184:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x138f
	nop	
	mov	qword ptr [rbp - 0x58], rax
	je	.label_186
	jmp	.label_353
.label_353:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x1cd1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	je	.label_193
	jmp	.label_199
.label_199:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x2468
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	je	.label_200
	mov	rsp, rsp
	jmp	.label_207
.label_207:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_209
	mov	rsp, rsp
	jmp	.label_216
.label_216:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x78], rax
	je	.label_218
	jmp	.label_223
.label_223:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x4000
	nop	
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	je	.label_225
	lea	rsi, [rsi]
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x4004
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	je	.label_234
	jmp	.label_241
.label_241:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x90], rax
	je	.label_243
	jmp	.label_248
.label_248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4244
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	je	.label_249
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x482b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	je	.label_259
	lea	rdi, [rdi]
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4858
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_267
	jmp	.label_270
.label_270:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4d44
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_273
	lea	rdi, [rdi]
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	je	.label_281
	jmp	.label_285
.label_285:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x517b
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_286
	mov	rsp, rsp
	jmp	.label_293
.label_293:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x564c
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_294
	jmp	.label_303
.label_303:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xd0], rax
	je	.label_301
	mov	rsp, rsp
	jmp	.label_307
.label_307:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_308
	mov	rbp, rbp
	jmp	.label_315
.label_315:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_318
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x72b6
	mov	qword ptr [rbp - 0xe8], rax
	je	.label_324
	jmp	.label_328
.label_328:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_329
	jmp	.label_335
.label_335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0x9fa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	je	.label_337
	mov	rbp, rbp
	jmp	.label_345
.label_345:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x9fa1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rax
	je	.label_346
	jmp	.label_156
.label_156:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa2
	nop	
	mov	qword ptr [rbp - 0x108], rax
	je	.label_351
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x110], rax
	lea	rsi, [rsi]
	je	.label_362
	lea	rdi, [rdi]
	jmp	.label_368
.label_368:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0xadff
	mov	qword ptr [rbp - 0x118], rax
	je	.label_370
	lea	rdi, [rdi]
	jmp	.label_377
.label_377:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xef51
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rax
	lea	rsi, [rsi]
	je	.label_379
	mov	rsp, rsp
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0xef53
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rax
	nop	
	je	.label_389
	jmp	.label_155
.label_155:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0xf15f
	mov	qword ptr [rbp - 0x130], rax
	mov	rsp, rsp
	je	.label_158
	mov	rbp, rbp
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x11954
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rax
	lea	rsi, [rsi]
	je	.label_238
	nop	
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x27e0eb
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rax
	je	.label_181
	jmp	.label_185
.label_185:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x414a53
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	mov	rbp, rbp
	je	.label_188
	lea	rdi, [rdi]
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0xc0ffee
	mov	qword ptr [rbp - 0x150], rax
	je	.label_196
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xc36400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rax
	je	.label_202
	mov	rsp, rsp
	jmp	.label_210
.label_210:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x160], rax
	je	.label_212
	mov	rsp, rsp
	jmp	.label_219
.label_219:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021997
	mov	qword ptr [rbp - 0x168], rax
	je	.label_221
	jmp	.label_228
.label_228:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x1161970
	mov	qword ptr [rbp - 0x170], rax
	je	.label_229
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12fd16d
	nop	
	mov	qword ptr [rbp - 0x178], rax
	nop	
	je	.label_239
	jmp	.label_245
.label_245:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b4
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	je	.label_246
	mov	rbp, rbp
	jmp	.label_252
.label_252:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x188], rax
	lea	rdi, [rdi]
	je	.label_254
	nop	
	jmp	.label_261
.label_261:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b6
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rax
	mov	rsp, rsp
	je	.label_262
	jmp	.label_268
.label_268:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0x12ff7b7
	nop	
	mov	qword ptr [rbp - 0x198], rax
	je	.label_269
	nop	
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0x13111a8
	nop	
	mov	qword ptr [rbp - 0x1a0], rax
	je	.label_277
	lea	rsi, [rsi]
	jmp	.label_283
.label_283:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rdi, [rdi]
	je	.label_284
	jmp	.label_291
.label_291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9041934
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
	mov	rbp, rbp
	je	.label_292
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x1b8], rax
	nop	
	je	.label_299
	nop	
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0xbd00bd0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rbp, rbp
	je	.label_339
	jmp	.label_311
.label_311:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x11307854
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	nop	
	je	.label_313
	mov	rsp, rsp
	jmp	.label_192
.label_192:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x13661366
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_321
	jmp	.label_326
.label_326:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	je	.label_327
	lea	rdi, [rdi]
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x19800202
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e0], rax
	je	.label_336
	jmp	.label_343
.label_343:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1e8], rax
	nop	
	je	.label_344
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0x1badface
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1f0], rax
	je	.label_350
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rsp, rsp
	je	.label_359
	mov	rsp, rsp
	jmp	.label_364
.label_364:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x200], rax
	nop	
	je	.label_367
	lea	rdi, [rdi]
	jmp	.label_374
.label_374:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2bad1dea
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x208], rax
	je	.label_375
	lea	rsi, [rsi]
	jmp	.label_382
.label_382:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x2fc12fc1
	mov	qword ptr [rbp - 0x210], rax
	lea	rdi, [rdi]
	je	.label_384
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x218], rax
	mov	rsp, rsp
	je	.label_397
	lea	rsi, [rsi]
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0x42465331
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x220], rax
	je	.label_164
	mov	rbp, rbp
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x42494e4d
	nop	
	mov	qword ptr [rbp - 0x228], rax
	je	.label_257
	jmp	.label_182
.label_182:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x43415d53
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	nop	
	je	.label_183
	mov	rbp, rbp
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x453dcd28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x238], rax
	je	.label_191
	mov	rbp, rbp
	jmp	.label_393
.label_393:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x45584653
	mov	qword ptr [rbp - 0x240], rax
	lea	rdi, [rdi]
	je	.label_198
	jmp	.label_205
.label_205:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x47504653
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x248], rax
	lea	rdi, [rdi]
	je	.label_206
	lea	rdi, [rdi]
	jmp	.label_214
.label_214:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x50495045
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x250], rax
	lea	rdi, [rdi]
	je	.label_217
	mov	rsp, rsp
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x258], rax
	je	.label_227
	mov	rsp, rsp
	jmp	.label_232
.label_232:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346314d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x260], rax
	nop	
	je	.label_235
	lea	rdi, [rdi]
	jmp	.label_240
.label_240:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x268], rax
	mov	rbp, rbp
	je	.label_177
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x53464846
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rax
	lea	rsi, [rsi]
	je	.label_251
	jmp	.label_388
.label_388:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x278], rax
	lea	rdi, [rdi]
	je	.label_260
	jmp	.label_316
.label_316:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x280], rax
	je	.label_173
	lea	rsi, [rsi]
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x54190100
	mov	qword ptr [rbp - 0x288], rax
	je	.label_275
	jmp	.label_280
.label_280:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x565a4653
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rax
	lea	rdi, [rdi]
	je	.label_282
	jmp	.label_287
.label_287:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58295829
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x298], rax
	mov	rsp, rsp
	je	.label_289
	mov	rbp, rbp
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_296
	mov	rsp, rsp
	jmp	.label_309
.label_309:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x2a8], rax
	je	.label_302
	jmp	.label_360
.label_360:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x5dca2df5
	mov	qword ptr [rbp - 0x2b0], rax
	je	.label_310
	jmp	.label_317
.label_317:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x2b8], rax
	mov	rsp, rsp
	je	.label_319
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6165676c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2c0], rax
	mov	rbp, rbp
	je	.label_325
	jmp	.label_330
.label_330:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x2c8], rax
	mov	rbp, rbp
	je	.label_332
	lea	rsi, [rsi]
	jmp	.label_338
.label_338:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x62646576
	mov	qword ptr [rbp - 0x2d0], rax
	lea	rsi, [rsi]
	je	.label_341
	lea	rdi, [rdi]
	jmp	.label_347
.label_347:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x62656570
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2d8], rax
	mov	rsp, rsp
	je	.label_348
	lea	rsi, [rsi]
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x62656572
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_357
	jmp	.label_363
.label_363:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x2e8], rax
	je	.label_365
	jmp	.label_372
.label_372:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2f0], rax
	mov	rsp, rsp
	je	.label_373
	jmp	.label_380
.label_380:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x64646178
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2f8], rax
	lea	rsi, [rsi]
	je	.label_381
	lea	rsi, [rsi]
	jmp	.label_390
.label_390:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x65735543
	mov	qword ptr [rbp - 0x300], rax
	mov	rsp, rsp
	je	.label_392
	mov	rbp, rbp
	jmp	.label_159
.label_159:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x65735546
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x308], rax
	je	.label_160
	mov	rsp, rsp
	jmp	.label_167
.label_167:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x310], rax
	nop	
	je	.label_169
	nop	
	jmp	.label_279
.label_279:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x68191122
	mov	qword ptr [rbp - 0x318], rax
	mov	rbp, rbp
	je	.label_180
	jmp	.label_187
.label_187:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x6b414653
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x320], rax
	mov	rsp, rsp
	je	.label_189
	mov	rsp, rsp
	jmp	.label_195
.label_195:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x6e667364
	mov	qword ptr [rbp - 0x328], rax
	mov	rsp, rsp
	je	.label_197
	jmp	.label_203
.label_203:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, 0x6e736673
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rax
	nop	
	je	.label_204
	mov	rsp, rsp
	jmp	.label_213
.label_213:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 0x73636673
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x338], rax
	nop	
	je	.label_215
	mov	rbp, rbp
	jmp	.label_222
.label_222:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73717368
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x340], rax
	je	.label_226
	lea	rdi, [rdi]
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73727279
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x348], rax
	mov	rsp, rsp
	je	.label_236
	jmp	.label_242
.label_242:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x73757245
	mov	qword ptr [rbp - 0x350], rax
	mov	rbp, rbp
	je	.label_244
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7461636f
	nop	
	mov	qword ptr [rbp - 0x358], rax
	je	.label_253
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x74726163
	mov	qword ptr [rbp - 0x360], rax
	mov	rsp, rsp
	je	.label_258
	lea	rdi, [rdi]
	jmp	.label_264
.label_264:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x794c7630
	mov	qword ptr [rbp - 0x368], rax
	mov	rsp, rsp
	je	.label_266
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x370], rax
	nop	
	je	.label_274
	lea	rdi, [rdi]
	jmp	.label_391
.label_391:
	mov	eax, 0x858458f6
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x378], rdx
	lea	rsi, [rsi]
	je	.label_172
	mov	rsp, rsp
	jmp	.label_288
.label_288:
	lea	rdi, [rdi]
	mov	eax, 0x9123683e
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x380], rdx
	mov	rbp, rbp
	je	.label_290
	lea	rdi, [rdi]
	jmp	.label_297
.label_297:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	je	.label_300
	jmp	.label_305
.label_305:
	mov	eax, 0xa501fcf5
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x390], rdx
	je	.label_306
	jmp	.label_312
.label_312:
	lea	rsi, [rsi]
	mov	eax, 0xaad7aaea
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x398], rdx
	lea	rdi, [rdi]
	je	.label_314
	jmp	.label_322
.label_322:
	mov	eax, 0xabba1974
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a0], rdx
	mov	rsp, rsp
	je	.label_211
	lea	rsi, [rsi]
	jmp	.label_263
.label_263:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3a8], rdx
	je	.label_333
	jmp	.label_340
.label_340:
	mov	eax, 0xbeefdead
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b0], rdx
	lea	rdi, [rdi]
	je	.label_342
	jmp	.label_331
.label_331:
	mov	eax, 0xc97e8168
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3b8], rdx
	nop	
	je	.label_371
	jmp	.label_355
.label_355:
	nop	
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x3c0], rdx
	je	.label_358
	jmp	.label_366
.label_366:
	mov	eax, 0xde5e81e4
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x3c8], rdx
	mov	rbp, rbp
	je	.label_247
	jmp	.label_376
.label_376:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x3d0], rdx
	mov	rbp, rbp
	je	.label_378
	jmp	.label_385
.label_385:
	mov	eax, 0xf97cff8c
	nop	
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d8], rdx
	je	.label_352
	lea	rsi, [rsi]
	jmp	.label_153
.label_153:
	mov	eax, 0xf995e849
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_157
	jmp	.label_165
.label_165:
	mov	eax, 0xfe534d42
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3e8], rdx
	nop	
	je	.label_230
	jmp	.label_174
.label_174:
	mov	eax, 0xff534d42
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3f0], rdx
	je	.label_178
	jmp	.label_320
.label_302:
	movabs	rax, OFFSET FLAT:.str.70
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_319:
	movabs	rax, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_362:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.72
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_370:
	movabs	rax, OFFSET FLAT:.str.73
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_177:
	movabs	rax, OFFSET FLAT:.str.74
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_292:
	movabs	rax, OFFSET FLAT:.str.75
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_332:
	nop	
	movabs	rax, OFFSET FLAT:.str.76
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_386:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.5_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_321:
	movabs	rax, OFFSET FLAT:.str.78
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_164:
	nop	
	movabs	rax, OFFSET FLAT:.str.79
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_341:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.80
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_350:
	movabs	rax, OFFSET FLAT:.str.81
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_358:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.82
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_257:
	movabs	rax, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_290:
	movabs	rax, OFFSET FLAT:.str.84
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_236:
	movabs	rax, OFFSET FLAT:.str.85
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_202:
	movabs	rax, OFFSET FLAT:.str.86
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_181:
	movabs	rax, OFFSET FLAT:.str.87
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_365:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.88
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_178:
	movabs	rax, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_244:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.90
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_269:
	nop	
	movabs	rax, OFFSET FLAT:.str.91
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_348:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.92
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_367:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.93
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_191:
	movabs	rax, OFFSET FLAT:.str.94
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_381:
	movabs	rax, OFFSET FLAT:.str.95
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_373:
	movabs	rax, OFFSET FLAT:.str.8_0
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_163:
	nop	
	movabs	rax, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_193:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.9_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_158:
	nop	
	movabs	rax, OFFSET FLAT:.str.99
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_247:
	movabs	rax, OFFSET FLAT:.str.100
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_188:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.101
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_198:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.102
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_301:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.103
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_170:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.104
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_389:
	movabs	rax, OFFSET FLAT:.str.105
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_379:
	movabs	rax, OFFSET FLAT:.str.106
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_378:
	nop	
	movabs	rax, OFFSET FLAT:.str.107
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_243:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.108
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_344:
	movabs	rax, OFFSET FLAT:.str.109
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_160:
	nop	
	movabs	rax, OFFSET FLAT:.str.110
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_392:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_299:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.112
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_229:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.113
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_206:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.114
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_249:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.115
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_259:
	movabs	rax, OFFSET FLAT:.str.116
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_267:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.117
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_196:
	movabs	rax, OFFSET FLAT:.str.118
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_157:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.119
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_300:
	movabs	rax, OFFSET FLAT:.str.120
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_313:
	movabs	rax, OFFSET FLAT:.str.121
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_277:
	movabs	rax, OFFSET FLAT:.str.122
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_375:
	nop	
	movabs	rax, OFFSET FLAT:.str.123
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_329:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.124
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_234:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.124
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_225:
	movabs	rax, OFFSET FLAT:.str.124
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_396:
	movabs	rax, OFFSET FLAT:.str.125
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_324:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.126
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_397:
	movabs	rax, OFFSET FLAT:.str.127
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_189:
	movabs	rax, OFFSET FLAT:.str.128
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_371:
	movabs	rax, OFFSET FLAT:.str.129
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_339:
	nop	
	movabs	rax, OFFSET FLAT:.str.130
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_235:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.131
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_179:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.132
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_186:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.133
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_200:
	movabs	rax, OFFSET FLAT:.str.134
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_209:
	nop	
	movabs	rax, OFFSET FLAT:.str.135
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_281:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.136
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_336:
	movabs	rax, OFFSET FLAT:.str.11_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_273:
	movabs	rax, OFFSET FLAT:.str.138
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_294:
	nop	
	movabs	rax, OFFSET FLAT:.str.139
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_308:
	movabs	rax, OFFSET FLAT:.str.140
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_197:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.141
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_218:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.142
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_204:
	movabs	rax, OFFSET FLAT:.str.143
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_260:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.144
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_346:
	movabs	rax, OFFSET FLAT:.str.145
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_253:
	movabs	rax, OFFSET FLAT:.str.146
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_266:
	movabs	rax, OFFSET FLAT:.str.147
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_314:
	movabs	rax, OFFSET FLAT:.str.148
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_217:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.149
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_274:
	movabs	rax, OFFSET FLAT:.str.150
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_337:
	nop	
	movabs	rax, OFFSET FLAT:.str.6_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_325:
	movabs	rax, OFFSET FLAT:.str.152
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_369:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.153
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_180:
	movabs	rax, OFFSET FLAT:.str.154
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_172:
	nop	
	movabs	rax, OFFSET FLAT:.str.155
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_284:
	movabs	rax, OFFSET FLAT:.str.156
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_227:
	movabs	rax, OFFSET FLAT:.str.157
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_318:
	movabs	rax, OFFSET FLAT:.str.158
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_169:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_310:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.160
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_154
.label_215:
	movabs	rax, OFFSET FLAT:.str.161
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_352:
	movabs	rax, OFFSET FLAT:.str.162
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_183:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.163
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_154
.label_286:
	movabs	rax, OFFSET FLAT:.str.164
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_230:
	movabs	rax, OFFSET FLAT:.str.165
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_342:
	movabs	rax, OFFSET FLAT:.str.166
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_173:
	movabs	rax, OFFSET FLAT:.str.167
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_226:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.168
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_357:
	nop	
	movabs	rax, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_262:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.170
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_254:
	movabs	rax, OFFSET FLAT:.str.171
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_212:
	movabs	rax, OFFSET FLAT:.str.172
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_258:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.173
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_359:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.174
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_327:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.175
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_238:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.176
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_275:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.176
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_351:
	movabs	rax, OFFSET FLAT:.str.177
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_221:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.178
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_333:
	movabs	rax, OFFSET FLAT:.str.179
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_306:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.180
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_282:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.181
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_251:
	movabs	rax, OFFSET FLAT:.str.182
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_211:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.183
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_246:
	movabs	rax, OFFSET FLAT:.str.184
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_296:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.185
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_239:
	movabs	rax, OFFSET FLAT:.str.186
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_384:
	movabs	rax, OFFSET FLAT:.str.187
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_154
.label_289:
	movabs	rax, OFFSET FLAT:.str.188
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_154
.label_320:
	nop	
	movabs	rdi, OFFSET FLAT:human_fstype.buf
	movabs	rsi, OFFSET FLAT:.str.189
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:human_fstype.buf
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 0x3f4], eax
.label_154:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x400
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fd0

	.globl out_int
	.type out_int, @function
out_int:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.190
	movabs	rcx, OFFSET FLAT:.str.191
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl make_format
	.type make_format, @function
make_format:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
.label_402:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], cl
	jae	.label_399
	movabs	rdi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	mov	rbp, rbp
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x39], cl
.label_399:
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_401
	lea	rsi, [rsi]
	jmp	.label_405
.label_401:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_404
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
.label_404:
	jmp	.label_400
.label_400:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_402
.label_405:
	mov	rsp, rsp
	jmp	.label_403
.label_403:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_398
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	byte ptr [rax], dl
	lea	rdi, [rdi]
	jmp	.label_403
.label_398:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	strcpy
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061c0

	.globl print_stat
	.type print_stat, @function
print_stat:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x290
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r9
	mov	byte ptr [rbp - 0x49], 0
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, -0x41
	mov	esi, ecx
	sub	ecx, 0x39
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf4], ecx
	ja	.label_406
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_407]]
	lea	rsi, [rsi]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x406dd0

	.globl out_uint_o
	.type out_uint_o, @function
out_uint_o:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.66
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.197
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	make_format
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e40

	.globl human_access
	.type human_access, @function
human_access:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:human_access.modebuf
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	filemodestring
	movabs	rax, OFFSET FLAT:human_access.modebuf
	mov	byte ptr [byte ptr [label_420]],  0
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e90

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x80
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.198
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 1
	test	byte ptr [byte ptr [follow_links]],  1
	lea	rsi, [rsi]
	jne	.label_422
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	nop	
	je	.label_428
.label_422:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jne	.label_424
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.199
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_429
.label_424:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	find_bind_mount
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_426
	mov	byte ptr [rbp - 0x39], 0
	lea	rsi, [rsi]
	jmp	.label_429
.label_426:
	jmp	.label_428
.label_428:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	find_mount_point
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_423
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	find_bind_mount
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], 0
.label_423:
	jmp	.label_429
.label_429:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x68], rsi
	je	.label_421
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_425
.label_421:
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	je	.label_427
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_430
.label_427:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_430:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	mov	rsp, rsp
	call	out_string
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	free
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070a0

	.globl get_birthtime
	.type get_birthtime, @function
get_birthtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, rdx
	lea	rsi, [rsi]
	call	get_stat_birthtime
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	movups	xmm0, xmmword ptr [rbp - 0x38]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	nop	
	cmp	qword ptr [word ptr [human_time.tz]],  0
	mov	rsp, rsp
	jne	.label_432
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_2
	call	getenv
	nop	
	mov	rdi, rax
	call	tzalloc
	nop	
	mov	qword ptr [word ptr [human_time.tz]],  rax
.label_432:
	lea	rdx, [rbp - 0x48]
	lea	rsi, [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [human_time.tz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_431
	movabs	rdi, OFFSET FLAT:human_time.str
	lea	rdi, [rdi]
	mov	eax, 0x3d
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str.203
	lea	rcx, [rbp - 0x48]
	mov	r8,  qword ptr [word ptr [human_time.tz]]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x4c]
	call	nstrftime
	nop	
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_433
.label_431:
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	timetostr
	movabs	rdi, OFFSET FLAT:human_time.str
	movabs	rsi, OFFSET FLAT:.str.204
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
.label_433:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:human_time.str
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407210

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xf0
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 8], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, 0x2e
	call	memchr
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_457
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rax + 1]
	nop	
	sub	edx, 0x30
	mov	rbp, rbp
	cmp	edx, 9
	ja	.label_435
	xor	eax, eax
	mov	esi, eax
	nop	
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	rdi, rcx
	nop	
	call	strtol
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0x7fffffff
	jg	.label_463
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_437
.label_463:
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_437
.label_437:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x40], ecx
	jmp	.label_446
.label_435:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 9
.label_446:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_447
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	sub	ecx, 0x30
	cmp	ecx, 9
	mov	rbp, rbp
	ja	.label_447
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
.label_466:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	jbe	.label_466
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	call	strtol
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0x7fffffff
	nop	
	jg	.label_454
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_461
.label_454:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_461
.label_461:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, 1
	nop	
	mov	edx, eax
	mov	dword ptr [rbp - 0x3c], edx
	cmp	ecx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	jge	.label_436
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x30
	sete	dl
	nop	
	and	dl, 1
	mov	rsp, rsp
	movzx	ecx, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	cmp	rax, rsi
	mov	rsp, rsp
	jae	.label_449
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	sub	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_438
.label_449:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	lea	rdi, [rdi]
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	ecx, 1
	mov	edx, eax
	mov	dword ptr [rbp - 0x64], edx
	cmp	ecx, dword ptr [rbp - 0x64]
	jge	.label_451
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x68], ecx
	cmp	eax, dword ptr [rbp - 0x68]
	jge	.label_460
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_455:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_453
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	jne	.label_442
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], 1
	jmp	.label_443
.label_442:
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rdx
	mov	rsp, rsp
	mov	byte ptr [rax], cl
.label_443:
	nop	
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_455
.label_453:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	nop	
	test	byte ptr [rbp - 0x41], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	je	.label_464
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_444
.label_464:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.205
	mov	rdi, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rbp - 0x68]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xc4], eax
.label_444:
	mov	eax, dword ptr [rbp - 0xc4]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	add	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
.label_460:
	jmp	.label_451
.label_451:
	jmp	.label_436
.label_436:
	jmp	.label_447
.label_447:
	jmp	.label_457
.label_457:
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 0x80], eax
.label_458:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x80], 9
	lea	rdi, [rdi]
	jge	.label_440
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x7c], 0xa
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_458
.label_440:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jge	.label_452
	cmp	qword ptr [rbp - 8], 0
	je	.label_452
	nop	
	mov	eax, 0x3b9aca00
	lea	rdi, [rdi]
	cdq	
	idiv	dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, dword ptr [rbp - 0x84]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc8], eax
	nop	
	mov	rax, rcx
	mov	rbp, rbp
	cqo	
	idiv	rsi
	cmp	rdx, 0
	setne	dil
	lea	rsi, [rsi]
	and	dil, 1
	movzx	r8d, dil
	mov	r9d, dword ptr [rbp - 0xc8]
	mov	rbp, rbp
	sub	r9d, r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], r9d
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rsi, [rsi]
	setne	dil
	mov	rsp, rsp
	and	dil, 1
	lea	rsi, [rsi]
	movzx	r8d, dil
	movsxd	rcx, r8d
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	cmp	qword ptr [rbp - 0x10], 0
	sete	dil
	and	dil, 1
	nop	
	mov	byte ptr [rbp - 0x89], dil
.label_452:
	test	byte ptr [rbp - 0x89], 1
	je	.label_450
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	call	out_minus_zero
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_459
.label_450:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	out_int
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcc], eax
.label_459:
	nop	
	mov	eax, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_465
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x40], 9
	jge	.label_441
	mov	eax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	jmp	.label_448
.label_441:
	mov	rbp, rbp
	mov	eax, 9
	mov	dword ptr [rbp - 0xd0], eax
	mov	rbp, rbp
	jmp	.label_448
.label_448:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	nop	
	cmp	dword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	jge	.label_456
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_434
.label_456:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xd4], eax
.label_434:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	dword ptr [rbp - 0x9c], eax
	mov	eax, dword ptr [rbp - 0x9c]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_445
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x3c]
	sub	ecx, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	cmp	rax, rdx
	jae	.label_445
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	sub	rcx,  qword ptr [word ptr [decimal_point_len]]
	movsxd	rdx, dword ptr [rbp - 0x94]
	nop	
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_439
.label_445:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rsi, [rsi]
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0xe0]
	movabs	rdi, OFFSET FLAT:.str.206
	nop	
	xor	ecx, ecx
	mov	edx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], edx
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	r10d, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0xe4], ecx
	lea	rdi, [rdi]
	mov	ecx, r8d
	lea	rdi, [rdi]
	mov	r8d, r9d
	nop	
	mov	r9d, r10d
	lea	rsi, [rsi]
	mov	dword ptr [rsp], 0
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe8], eax
.label_465:
	add	rsp, 0xf0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407930

	.globl neg_to_zero
	.type neg_to_zero, @function
neg_to_zero:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jg	.label_467
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_468
.label_467:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rcx
.label_468:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079c0

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [follow_links]],  1
	je	.label_469
	nop	
	lea	rsi, [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	getfilecon
	mov	dword ptr [rbp - 0x28], eax
	nop	
	jmp	.label_470
.label_469:
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	call	lgetfilecon
	mov	dword ptr [rbp - 0x28], eax
.label_470:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_474
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.208
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], esi
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	qword ptr [rbp - 0x20], 0
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_474:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str.65
	mov	esi, ecx
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	je	.label_472
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_471
.label_472:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.198
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_471
.label_471:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	je	.label_473
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	freecon
.label_473:
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b40

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	test	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
	mov	rbp, rbp
	jne	.label_475
	nop	
	xor	edi, edi
	call	read_file_system_list
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [find_bind_mount.mount_list]],  rax
	nop	
	cmp	rax, 0
	jne	.label_482
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.201
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x144]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_482:
	mov	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
.label_475:
	lea	rsi, [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	stat
	cmp	eax, 0
	je	.label_479
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_481
.label_479:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [find_bind_mount.mount_list]]
	mov	qword ptr [rbp - 0xb0], rax
.label_483:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_478
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_477
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	jne	.label_477
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_477
	lea	rsi, [rbp - 0x140]
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_476
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	jne	.label_476
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0x140]
	jne	.label_476
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_478
.label_476:
	jmp	.label_477
.label_477:
	nop	
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_483
.label_478:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_481:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x150
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d30

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d60

	.globl out_minus_zero
	.type out_minus_zero, @function
out_minus_zero:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.190
	movabs	rcx, OFFSET FLAT:.str.207
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	make_format
	lea	rsi, [rsi]
	movsd	xmm0,  qword ptr [word ptr [label_484]]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, 1
	nop	
	call	printf
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dd0

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x1f0
	lea	rax, [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xc0], 0
	mov	rdi, rax
	nop	
	call	save_cwd
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_486
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_4
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x188], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_491
.label_486:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_497
	nop	
	mov	eax, 0x90
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_492
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_491
.label_492:
	mov	rsp, rsp
	jmp	.label_487
.label_497:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	dir_name
	nop	
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rbp
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0xe0], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0xe8], rdi
	nop	
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a0], rax
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	call	chdir
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_499
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1b0], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_491
.label_499:
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xb8]
	mov	rsp, rsp
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_490
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	jmp	.label_485
.label_490:
	jmp	.label_487
.label_487:
	mov	rbp, rbp
	jmp	.label_488
.label_488:
	movabs	rdi, OFFSET FLAT:.str.4_0
	lea	rsi, [rbp - 0x180]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_493
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x1d0], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x1d0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_485
.label_493:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	jne	.label_489
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_494
.label_489:
	mov	rbp, rbp
	jmp	.label_496
.label_494:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	chdir
	nop	
	cmp	eax, 0
	nop	
	jge	.label_498
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x1e0], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1d4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_485
.label_498:
	nop	
	mov	eax, 0x90
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x180]
	mov	rbp, rbp
	lea	rsi, [rbp - 0xb8]
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_488
.label_496:
	call	xgetcwd
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_485:
	call	__errno_location
	lea	rdi, [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x184], ecx
	lea	rsi, [rsi]
	call	restore_cwd
	nop	
	cmp	eax, 0
	je	.label_495
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.6_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1e4], esi
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1e4]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_495:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x28]
	nop	
	call	free_cwd
	mov	eax, dword ptr [rbp - 0x184]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1e8]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 8], rax
.label_491:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408350

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_505
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_502
.label_505:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_502:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jae	.label_510
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_503
.label_510:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_503:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_508:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	jne	.label_507
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_501
.label_507:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jge	.label_500
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_500
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_501
.label_500:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_506
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_501
.label_506:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_512
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_504
.label_512:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_509
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_511
.label_509:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_501
.label_511:
	jmp	.label_504
.label_504:
	lea	rdi, [rdi]
	jmp	.label_508
.label_501:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408590

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4085b0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_517:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_513
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_514
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_518
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_520
.label_518:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_523
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_515
.label_523:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_519
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_521
.label_519:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_521:
	lea	rsi, [rsi]
	jmp	.label_515
.label_515:
	mov	rbp, rbp
	jmp	.label_524
.label_524:
	mov	rsp, rsp
	jmp	.label_514
.label_514:
	nop	
	jmp	.label_516
.label_516:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_517
.label_513:
	test	byte ptr [rbp - 0x41], 1
	je	.label_522
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_520
.label_522:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_520:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408760

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_525
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_526
.label_525:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_526:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408840

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_531:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_529
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_530
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_528
.label_530:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_532
.label_528:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_532:
	jmp	.label_527
.label_527:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_531
.label_529:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089f0
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_533
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_534
.label_533:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], -1
.label_534:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ab0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_537:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_539
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30]
	nop	
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_536
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_535
.label_536:
	lea	rdi, [rdi]
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_537
.label_539:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_535:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b80
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
	#Procedure 0x408bb0
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
	#Procedure 0x408be0

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
	je	.label_540
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_543
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_540
.label_543:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_544
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
	movabs	rdx, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_541
.label_544:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_541:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_540:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_542
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_542:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d10

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_545
	lea	rsi, [rsi]
	call	xalloc_die
.label_545:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d60

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_546
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_549
.label_546:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_549:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_550:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_551
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_547
	jmp	.label_551
.label_547:
	jmp	.label_548
.label_548:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_550
.label_551:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e50

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	mov	byte ptr [rbp - 0x29], cl
	je	.label_553
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	lea	rdi, [rdi]
	jmp	.label_553
.label_553:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	nop	
	mov	esi, edx
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	add	rcx, 1
	mov	rdi, rcx
	nop	
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_555
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_552
.label_555:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_554
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_554:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_552:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f70

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_562:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_559
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_562
.label_559:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_561:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_556
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_560
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_557
.label_560:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_558
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_558:
	jmp	.label_557
.label_557:
	jmp	.label_563
.label_563:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_561
.label_556:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409040
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_565:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_564
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], sil
.label_564:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_566
	mov	rbp, rbp
	jmp	.label_567
.label_566:
	jmp	.label_568
.label_568:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_565
.label_567:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409100

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_576
	movabs	rdi, OFFSET FLAT:.str_7
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_573
.label_576:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_573:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_570
.label_569:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_572
	movabs	rdi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_570
.label_572:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_571
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_2
	nop	
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_570
.label_571:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_581
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4_2
	call	gettext
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_570
.label_581:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_580
	movabs	rdi, OFFSET FLAT:.str.5_2
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_570
.label_580:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_577
	movabs	rdi, OFFSET FLAT:.str.6_2
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_570
.label_577:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	lea	rdi, [rdi]
	jne	.label_578
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_570
.label_578:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	lea	rdi, [rdi]
	jne	.label_574
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_570
.label_574:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x1000
	nop	
	jne	.label_579
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9_1
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_570
.label_579:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xc000
	mov	rsp, rsp
	jne	.label_575
	movabs	rdi, OFFSET FLAT:.str.10_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_570
.label_575:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_570:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093f0

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_583
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_584
.label_583:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_584:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_586
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_587
.label_586:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_587:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0x200
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_582
	mov	eax, 0x54
	lea	rsi, [rsi]
	mov	ecx, 0x74
	nop	
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_585
.label_582:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_585:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409690

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_593
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_589
.label_593:
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_588
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x64
	nop	
	jmp	.label_589
.label_588:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_595
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x62
	nop	
	jmp	.label_589
.label_595:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_591
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_589
.label_591:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_590
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_589
.label_590:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_592
	mov	byte ptr [rbp - 1], 0x70
	mov	rbp, rbp
	jmp	.label_589
.label_592:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_594
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x73
	lea	rsi, [rsi]
	jmp	.label_589
.label_594:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x3f
.label_589:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097b0

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_601
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_597
.label_601:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_599
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_596
.label_599:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_600
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x53
	jmp	.label_598
.label_600:
	lea	rsi, [rsi]
	jmp	.label_598
.label_598:
	mov	rbp, rbp
	jmp	.label_596
.label_596:
	jmp	.label_597
.label_597:
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409890

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jge	.label_602
	nop	
	jmp	.label_605
.label_605:
	mov	eax, 0x30
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	eax, 0xa
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_603
.label_602:
	jmp	.label_604
.label_604:
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_604
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099e0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	xor	eax, eax
	nop	
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	lea	r11, [rbp - 0x2d]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	nop	
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	nop	
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r11
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	lea	rdi, [rdi]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409aa0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x9d8
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8d, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	jne	.label_768
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x70], rax
.label_768:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_803
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	nop	
	jmp	.label_804
.label_803:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_806
	nop	
	mov	dword ptr [rbp - 0x68], 0xc
.label_806:
	mov	rbp, rbp
	jmp	.label_804
.label_804:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
.label_757:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_773
	nop	
	mov	dword ptr [rbp - 0x8c], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], al
	nop	
	mov	byte ptr [rbp - 0xf1], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x25
	nop	
	je	.label_821
	lea	rsi, [rsi]
	jmp	.label_842
.label_842:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_844
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_850
.label_844:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_850:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jae	.label_855
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x768], rax
	nop	
	jmp	.label_863
.label_855:
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	qword ptr [rbp - 0x768], rax
.label_863:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_870
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_615
.label_870:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_966
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	lea	rsi, [rsi]
	jne	.label_877
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	nop	
	jae	.label_877
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_961
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_900
.label_961:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_906
.label_900:
	lea	rsi, [rsi]
	mov	esi, 0x20
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
.label_906:
	mov	rbp, rbp
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	add	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_966:
	mov	rax, qword ptr [rbp - 0x118]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_637
.label_821:
	jmp	.label_932
.label_932:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	esi, edx
	nop	
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x770], esi
	mov	rsp, rsp
	je	.label_934
	jmp	.label_950
.label_950:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x774], eax
	je	.label_951
	jmp	.label_957
.label_957:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x76c]
	mov	rsp, rsp
	sub	eax, 0x2d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x778], eax
	je	.label_951
	nop	
	jmp	.label_962
.label_962:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x76c]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_951
	mov	rbp, rbp
	jmp	.label_969
.label_969:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	mov	rbp, rbp
	je	.label_971
	jmp	.label_641
.label_641:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_978
	jmp	.label_951
.label_951:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	nop	
	jmp	.label_932
.label_971:
	nop	
	mov	byte ptr [rbp - 0xe2], 1
	mov	rbp, rbp
	jmp	.label_932
.label_934:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf1], 1
	lea	rdi, [rdi]
	jmp	.label_932
.label_978:
	jmp	.label_992
.label_992:
	lea	rdi, [rdi]
	jmp	.label_993
.label_993:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_995
	mov	dword ptr [rbp - 0x4c], 0
.label_955:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	lea	rdi, [rdi]
	jg	.label_998
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_1002
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_1002
.label_998:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	nop	
	jmp	.label_892
.label_1002:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movsx	eax, byte ptr [rcx]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_892:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 9
	jbe	.label_955
	mov	rbp, rbp
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_618
	lea	rsi, [rsi]
	jmp	.label_609
.label_609:
	mov	eax, dword ptr [rbp - 0x788]
	nop	
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_612
	jmp	.label_618
.label_618:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	nop	
	movsx	edx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_619
.label_612:
	mov	dword ptr [rbp - 0x90], 0
.label_619:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x794], ecx
	je	.label_630
	lea	rdi, [rdi]
	jmp	.label_636
.label_636:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 0x798], eax
	mov	rsp, rsp
	je	.label_639
	lea	rdi, [rdi]
	jmp	.label_646
.label_646:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x79c], eax
	je	.label_650
	nop	
	jmp	.label_657
.label_657:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7a0], eax
	nop	
	je	.label_658
	jmp	.label_663
.label_663:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x42
	nop	
	mov	dword ptr [rbp - 0x7a4], eax
	je	.label_665
	lea	rsi, [rsi]
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x7a8], eax
	je	.label_673
	mov	rbp, rbp
	jmp	.label_677
.label_677:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x7ac], eax
	je	.label_680
	jmp	.label_683
.label_683:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x7b0], eax
	je	.label_687
	lea	rdi, [rdi]
	jmp	.label_691
.label_691:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7b4], eax
	je	.label_693
	mov	rsp, rsp
	jmp	.label_798
.label_798:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x7b8], eax
	je	.label_717
	jmp	.label_707
.label_707:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x7bc], eax
	lea	rdi, [rdi]
	je	.label_708
	jmp	.label_713
.label_713:
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c0], eax
	je	.label_716
	jmp	.label_720
.label_720:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_722
	jmp	.label_728
.label_728:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7c8], eax
	lea	rsi, [rsi]
	je	.label_729
	lea	rdi, [rdi]
	jmp	.label_736
.label_736:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7cc], eax
	je	.label_739
	jmp	.label_742
.label_742:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7d0], eax
	mov	rbp, rbp
	je	.label_743
	jmp	.label_751
.label_751:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7d4], eax
	je	.label_754
	jmp	.label_760
.label_760:
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x55
	nop	
	mov	dword ptr [rbp - 0x7d8], eax
	je	.label_761
	jmp	.label_769
.label_769:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x7dc], eax
	lea	rsi, [rsi]
	je	.label_693
	jmp	.label_778
.label_778:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x57
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7e0], eax
	je	.label_780
	jmp	.label_784
.label_784:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x58
	nop	
	mov	dword ptr [rbp - 0x7e4], eax
	lea	rsi, [rsi]
	je	.label_786
	jmp	.label_790
.label_790:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x7e8], eax
	je	.label_791
	nop	
	jmp	.label_794
.label_794:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x7ec], eax
	lea	rdi, [rdi]
	je	.label_795
	mov	rbp, rbp
	jmp	.label_799
.label_799:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x7f0], eax
	lea	rdi, [rdi]
	je	.label_801
	jmp	.label_805
.label_805:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7f4], eax
	lea	rdi, [rdi]
	je	.label_627
	mov	rsp, rsp
	jmp	.label_809
.label_809:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7f8], eax
	je	.label_811
	lea	rsi, [rsi]
	jmp	.label_815
.label_815:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_817
	jmp	.label_822
.label_822:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x800], eax
	je	.label_975
	mov	rbp, rbp
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x804], eax
	je	.label_693
	mov	rbp, rbp
	jmp	.label_840
.label_840:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x808], eax
	je	.label_627
	lea	rdi, [rdi]
	jmp	.label_846
.label_846:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x80c], eax
	lea	rdi, [rdi]
	je	.label_848
	jmp	.label_853
.label_853:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x810], eax
	mov	rbp, rbp
	je	.label_854
	mov	rsp, rsp
	jmp	.label_860
.label_860:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x814], eax
	nop	
	je	.label_862
	mov	rbp, rbp
	jmp	.label_865
.label_865:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x818], eax
	je	.label_867
	mov	rbp, rbp
	jmp	.label_871
.label_871:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x81c], eax
	lea	rsi, [rsi]
	je	.label_838
	jmp	.label_873
.label_873:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x70
	nop	
	mov	dword ptr [rbp - 0x820], eax
	lea	rdi, [rdi]
	je	.label_875
	jmp	.label_878
.label_878:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x824], eax
	je	.label_880
	lea	rdi, [rdi]
	jmp	.label_886
.label_886:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x72
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x828], eax
	mov	rsp, rsp
	je	.label_888
	jmp	.label_895
.label_895:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x82c], eax
	je	.label_897
	jmp	.label_902
.label_902:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x830], eax
	nop	
	je	.label_903
	jmp	.label_910
.label_910:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x834], eax
	mov	rbp, rbp
	je	.label_911
	jmp	.label_915
.label_915:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x838], eax
	lea	rdi, [rdi]
	je	.label_916
	jmp	.label_919
.label_919:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_741
	lea	rdi, [rdi]
	jmp	.label_924
.label_924:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x840], eax
	lea	rsi, [rsi]
	je	.label_926
	jmp	.label_851
.label_851:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x844], eax
	je	.label_930
	jmp	.label_939
.label_639:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_941
	mov	rsp, rsp
	jmp	.label_608
.label_941:
	jmp	.label_946
.label_946:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_947
	xor	eax, eax
	mov	dword ptr [rbp - 0x848], eax
	lea	rsi, [rsi]
	jmp	.label_953
.label_947:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x848], eax
.label_953:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x848]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	jae	.label_958
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_967
.label_958:
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	qword ptr [rbp - 0x850], rax
.label_967:
	mov	rax, qword ptr [rbp - 0x850]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_976
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_615
.label_976:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_718
	cmp	dword ptr [rbp - 0x94], 0
	lea	rsi, [rsi]
	jne	.label_989
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	jae	.label_989
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	nop	
	je	.label_997
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	jne	.label_999
.label_997:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1009
.label_999:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1009:
	jmp	.label_989
.label_989:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_718:
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_611
.label_801:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_607
	mov	rbp, rbp
	jmp	.label_608
.label_607:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_645
	mov	byte ptr [rbp - 0xe2], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 0
.label_645:
	mov	rsp, rsp
	jmp	.label_620
.label_658:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_621
	jmp	.label_608
.label_621:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xf1], 1
	je	.label_731
	mov	byte ptr [rbp - 0xe2], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe1], 0
.label_731:
	jmp	.label_620
.label_627:
	test	byte ptr [rbp - 0xf1], 1
	nop	
	je	.label_633
	nop	
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_633:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_642
	nop	
	jmp	.label_608
.label_642:
	jmp	.label_620
.label_665:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_648
	nop	
	jmp	.label_608
.label_648:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xf1], 1
	je	.label_655
	mov	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe1], 0
.label_655:
	lea	rdi, [rdi]
	jmp	.label_620
.label_811:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_662
	jmp	.label_608
.label_662:
	lea	rsi, [rsi]
	jmp	.label_620
.label_635:
	nop	
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_859:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	nop	
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	nop	
	mov	dword ptr [rsp], eax
	nop	
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], ebx
	mov	rsp, rsp
	call	__strftime_internal
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_698
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x854], eax
	mov	rsp, rsp
	jmp	.label_706
.label_698:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x854], eax
.label_706:
	mov	eax, dword ptr [rbp - 0x854]
	nop	
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x158]
	nop	
	jae	.label_712
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x860], rax
	lea	rsi, [rsi]
	jmp	.label_723
.label_712:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x860], rax
.label_723:
	mov	rax, qword ptr [rbp - 0x860]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_733
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_615
.label_733:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_747
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_752
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	jae	.label_752
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x168], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_763
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	jne	.label_776
.label_763:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_785
.label_776:
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_785:
	mov	rsp, rsp
	jmp	.label_752
.label_752:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x861], sil
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp - 0x861]
	mov	rbp, rbp
	movzx	r15d, r14b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x868], r8d
	mov	r8d, r15d
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp - 0x868]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x870], rax
.label_747:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_611
.label_620:
	nop	
	lea	rax, [rbp - 0x16d]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_836
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_836:
	mov	rbp, rbp
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	r9, r8
	add	r9, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x588], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x588], 0
	nop	
	je	.label_894
	lea	rdi, [rdi]
	jmp	.label_881
.label_881:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_884
	xor	eax, eax
	mov	dword ptr [rbp - 0x874], eax
	jmp	.label_891
.label_884:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x874], eax
.label_891:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x874]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	lea	rsi, [rsi]
	jae	.label_898
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x880], rax
	nop	
	jmp	.label_904
.label_898:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x880], rax
.label_904:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_912
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_615
.label_912:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_923
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	nop	
	jne	.label_925
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x590]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_925
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_933
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_944
.label_933:
	lea	rdi, [rdi]
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_922
.label_944:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
.label_922:
	jmp	.label_925
.label_925:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1005
	lea	rax, [rbp - 0x580]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_800
.label_1005:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_981
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	nop	
	call	memcpy_uppcase
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x890], rax
	jmp	.label_988
.label_981:
	lea	rax, [rbp - 0x580]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	nop	
	mov	rsi, rax
	call	memcpy
.label_988:
	jmp	.label_800
.label_800:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_923:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_894
.label_894:
	jmp	.label_611
.label_673:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1003
	mov	rbp, rbp
	jmp	.label_620
.label_1003:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x64
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rdx + 0x14]
	nop	
	mov	dword ptr [rbp - 0x894], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x894]
	idiv	esi
	add	eax, 0x13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x895], cl
	lea	rsi, [rsi]
	jge	.label_1007
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x895], cl
.label_1007:
	mov	al, byte ptr [rbp - 0x895]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], cl
	nop	
	mov	edx, dword ptr [rbp - 0x5ac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	lea	rdi, [rdi]
	jmp	.label_613
.label_741:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_626
	mov	rsp, rsp
	jmp	.label_608
.label_626:
	lea	rdi, [rdi]
	jmp	.label_620
.label_680:
	cmp	dword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	je	.label_631
	lea	rsi, [rsi]
	jmp	.label_608
.label_631:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_635
.label_817:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_644
	jmp	.label_608
.label_644:
	jmp	.label_649
.label_649:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	lea	rdi, [rdi]
	jmp	.label_651
.label_975:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_661
	jmp	.label_608
.label_661:
	jmp	.label_664
.label_664:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_666
.label_943:
	mov	byte ptr [rbp - 0x9e], 1
	lea	rsi, [rsi]
	jmp	.label_675
.label_613:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_678
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
.label_678:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x896], cl
	jne	.label_684
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x9c]
	nop	
	mov	byte ptr [rbp - 0x897], al
	jb	.label_629
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	setl	cl
	mov	byte ptr [rbp - 0x897], cl
.label_629:
	mov	al, byte ptr [rbp - 0x897]
	mov	byte ptr [rbp - 0x896], al
.label_684:
	mov	al, byte ptr [rbp - 0x896]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], al
	nop	
	jmp	.label_711
.label_666:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_792
	nop	
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_792:
	jmp	.label_651
.label_651:
	cmp	dword ptr [rbp - 0x98], 0
	nop	
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_714:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], 0
.label_711:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], 0
.label_675:
	nop	
	cmp	dword ptr [rbp - 0x90], 0x4f
	lea	rsi, [rsi]
	jne	.label_740
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_740
	lea	rdi, [rdi]
	jmp	.label_620
.label_740:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x9d], 1
	je	.label_749
	xor	eax, eax
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_749:
	jmp	.label_762
.label_762:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	je	.label_765
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_765:
	nop	
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x89c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x89c]
	div	ecx
	add	edx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x9c]
	nop	
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x89d], al
	jne	.label_782
	cmp	dword ptr [rbp - 0xa4], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x89d], al
.label_782:
	mov	al, byte ptr [rbp - 0x89d]
	nop	
	test	al, 1
	jne	.label_762
	nop	
	jmp	.label_808
.label_808:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	jge	.label_889
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_889:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x9d], 1
	je	.label_816
	mov	rbp, rbp
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x8a4], eax
	lea	rdi, [rdi]
	jmp	.label_949
.label_816:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x2b
	nop	
	mov	dl, byte ptr [rbp - 0x9e]
	mov	rsp, rsp
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8a4], eax
.label_949:
	nop	
	mov	eax, dword ptr [rbp - 0x8a4]
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2d
	lea	rdi, [rdi]
	jne	.label_834
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0xb1], 0
	mov	rsp, rsp
	je	.label_841
	jmp	.label_845
.label_845:
	mov	qword ptr [rbp - 0x5b8], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_847
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8a8], eax
	jmp	.label_696
.label_847:
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 0x8a8], eax
.label_696:
	mov	eax, dword ptr [rbp - 0x8a8]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_858
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8b0], rax
	lea	rdi, [rdi]
	jmp	.label_885
.label_858:
	nop	
	mov	rax, qword ptr [rbp - 0x5b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8b0], rax
.label_885:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x8b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_872
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_615
.label_872:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_876
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_882
	mov	rax, qword ptr [rbp - 0x5b8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x5c0]
	nop	
	jae	.label_882
	nop	
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x5b8]
	nop	
	mov	qword ptr [rbp - 0x5d0], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_893
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_901
.label_893:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	jmp	.label_907
.label_901:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5d0]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_907:
	mov	rsp, rsp
	jmp	.label_882
.label_882:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5b8]
	nop	
	add	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
.label_876:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_841
.label_841:
	mov	rsp, rsp
	jmp	.label_918
.label_834:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	sub	rax, rdx
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	lea	rdi, [rdi]
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	mov	rsp, rsp
	and	sil, 1
	movzx	edi, sil
	lea	rdi, [rdi]
	movsxd	rax, edi
	sub	rcx, rax
	mov	rsp, rsp
	mov	edi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	mov	rbp, rbp
	jle	.label_937
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x5f
	nop	
	jne	.label_960
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_964
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_615
.label_964:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_974
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5d4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdx
.label_974:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x5d4]
	nop	
	jle	.label_985
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_814
.label_985:
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b4], eax
	nop	
	jmp	.label_814
.label_814:
	nop	
	mov	eax, dword ptr [rbp - 0x8b4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	nop	
	je	.label_679
	lea	rdi, [rdi]
	jmp	.label_1001
.label_1001:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e0], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_861
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8b8], eax
	lea	rdi, [rdi]
	jmp	.label_1008
.label_861:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8b8], eax
.label_1008:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8b8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	lea	rsi, [rsi]
	jae	.label_1012
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x8c0], rax
	lea	rsi, [rsi]
	jmp	.label_1019
.label_1012:
	nop	
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x8c0], rax
.label_1019:
	mov	rax, qword ptr [rbp - 0x8c0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_1027
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_615
.label_1027:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_682
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_622
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x5e8]
	mov	rbp, rbp
	jae	.label_622
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	mov	rbp, rbp
	je	.label_758
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_810
.label_758:
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_652
.label_810:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_652:
	mov	rbp, rbp
	jmp	.label_622
.label_622:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_682:
	mov	rax, qword ptr [rbp - 0x5f0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_679
.label_679:
	jmp	.label_1021
.label_960:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_688
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_615
.label_688:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_697
	nop	
	jmp	.label_701
.label_701:
	mov	qword ptr [rbp - 0x600], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	jge	.label_692
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_730
.label_692:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8c4], eax
.label_730:
	mov	eax, dword ptr [rbp - 0x8c4]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	mov	rsp, rsp
	jae	.label_715
	mov	rax, qword ptr [rbp - 0x608]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8d0], rax
	nop	
	jmp	.label_725
.label_715:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x8d0], rax
.label_725:
	mov	rax, qword ptr [rbp - 0x8d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_735
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_615
.label_735:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_748
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_750
	nop	
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_750
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_759
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_771
.label_759:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_781
.label_771:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_781:
	jmp	.label_750
.label_750:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
.label_748:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_697
.label_697:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	je	.label_824
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_824:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
.label_1021:
	jmp	.label_917
.label_937:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0xb1], 0
	lea	rsi, [rsi]
	je	.label_820
	jmp	.label_823
.label_823:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x620], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_825
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_833
.label_825:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_833:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	lea	rsi, [rsi]
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x8e0], rax
	lea	rdi, [rdi]
	jmp	.label_849
.label_837:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8e0], rax
.label_849:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_857
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_615
.label_857:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_869
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_827
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	nop	
	jae	.label_827
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_874
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_879
.label_874:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_890
.label_879:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdx
.label_890:
	nop	
	jmp	.label_827
.label_827:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
.label_869:
	mov	rax, qword ptr [rbp - 0x630]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_820
.label_820:
	jmp	.label_917
.label_917:
	lea	rdi, [rdi]
	jmp	.label_918
.label_918:
	mov	rbp, rbp
	jmp	.label_920
.label_920:
	lea	rax, [rbp - 0xe0]
	lea	rdi, [rdi]
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_921
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e4], eax
	lea	rsi, [rsi]
	jmp	.label_927
.label_921:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e4], eax
.label_927:
	mov	eax, dword ptr [rbp - 0x8e4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_938
	mov	rax, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f0], rax
	nop	
	jmp	.label_948
.label_938:
	mov	rax, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8f0], rax
.label_948:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_956
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_615
.label_956:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_968
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_972
	mov	rax, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x648]
	mov	rsp, rsp
	jae	.label_972
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x640]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	nop	
	je	.label_980
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rsp, rsp
	jne	.label_987
.label_980:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_994
.label_987:
	nop	
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_994:
	lea	rdi, [rdi]
	jmp	.label_972
.label_972:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1004
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	nop	
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_606
.label_1004:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1014
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	call	memcpy_uppcase
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x900], rax
	jmp	.label_1023
.label_1014:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1023:
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_968:
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_611
.label_687:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	nop	
	je	.label_617
	jmp	.label_608
.label_617:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	lea	rdi, [rdi]
	jne	.label_623
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_623
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], 4
	nop	
	jmp	.label_755
.label_623:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_797
	mov	dword ptr [rbp - 0xfc], 0
.label_797:
	jmp	.label_755
.label_755:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_2
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_859
.label_717:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rsi, [rsi]
	jne	.label_656
	jmp	.label_608
.label_656:
	jmp	.label_660
.label_660:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_651
.label_708:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_668
	nop	
	jmp	.label_608
.label_668:
	jmp	.label_674
.label_674:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_651
.label_854:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_681
	lea	rsi, [rsi]
	jmp	.label_608
.label_681:
	mov	rbp, rbp
	jmp	.label_686
.label_686:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_666
.label_862:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_695
	jmp	.label_608
.label_695:
	jmp	.label_700
.label_700:
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	eax, dword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jmp	.label_666
.label_848:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_709
	jmp	.label_608
.label_709:
	jmp	.label_764
.label_764:
	mov	dword ptr [rbp - 0x94], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	lea	rdi, [rdi]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	mov	rsp, rsp
	jmp	.label_714
.label_716:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_813
	lea	rsi, [rsi]
	jmp	.label_608
.label_813:
	jmp	.label_738
.label_738:
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	mov	rsp, rsp
	jmp	.label_651
.label_867:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_746
	mov	rsp, rsp
	jmp	.label_608
.label_746:
	mov	rsp, rsp
	jmp	.label_753
.label_753:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_714
.label_722:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_772
	jmp	.label_608
.label_772:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_777
	mov	dword ptr [rbp - 0x4c], 9
	lea	rsi, [rsi]
	jmp	.label_783
.label_777:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x65c], eax
.label_789:
	cmp	dword ptr [rbp - 0x65c], 9
	lea	rdi, [rdi]
	jge	.label_788
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x904], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x904]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_789
.label_788:
	jmp	.label_783
.label_783:
	jmp	.label_832
.label_832:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_651
.label_838:
	nop	
	jmp	.label_807
.label_807:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_970
	xor	eax, eax
	mov	dword ptr [rbp - 0x908], eax
	jmp	.label_812
.label_970:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x908], eax
.label_812:
	nop	
	mov	eax, dword ptr [rbp - 0x908]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	mov	rbp, rbp
	jae	.label_819
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x670]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x910], rax
	mov	rbp, rbp
	jmp	.label_829
.label_819:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x668]
	nop	
	mov	qword ptr [rbp - 0x910], rax
.label_829:
	mov	rax, qword ptr [rbp - 0x910]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_839
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_615
.label_839:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_704
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_726
	mov	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x670]
	lea	rsi, [rsi]
	jae	.label_726
	movsxd	rax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rdi, [rdi]
	je	.label_864
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_963
.label_864:
	mov	esi, 0x30
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rdx
	nop	
	jmp	.label_977
.label_963:
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_977:
	mov	rbp, rbp
	jmp	.label_726
.label_726:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_704:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x678]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_611
.label_729:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_875:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xf1], 1
	mov	rbp, rbp
	je	.label_908
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_908:
	jmp	.label_620
.label_880:
	lea	rdi, [rdi]
	jmp	.label_896
.label_896:
	nop	
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	ecx, 5
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	jmp	.label_714
.label_739:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.3_3
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_635
.label_888:
	nop	
	jmp	.label_620
.label_743:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_931
	mov	rbp, rbp
	jmp	.label_608
.label_931:
	jmp	.label_940
.label_940:
	nop	
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	lea	rdi, [rdi]
	jmp	.label_651
.label_897:
	mov	rbp, rbp
	lea	rax, [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x918], rax
	mov	rbp, rbp
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x918]
	lea	rsi, [rsi]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	lea	rsi, [rsi]
	add	rdx, 0x17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	lea	rdi, [rdi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_990:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6c0]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x6c4], esi
	mov	rdx, qword ptr [rbp - 0x6c0]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_973
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
	jmp	.label_984
.label_973:
	nop	
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
.label_984:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x91c]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	mov	rbp, rbp
	jne	.label_990
	mov	dword ptr [rbp - 0x94], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9e], 0
	lea	rdi, [rdi]
	jmp	.label_808
.label_786:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x4f
	nop	
	jne	.label_1006
	jmp	.label_608
.label_1006:
	jmp	.label_620
.label_754:
	movabs	rax, OFFSET FLAT:.str.4_3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_635
.label_903:
	jmp	.label_1015
.label_1015:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6d0], 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1016
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x920], eax
	jmp	.label_1020
.label_1016:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x920], eax
.label_1020:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x920]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x6d0]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x6d8]
	lea	rsi, [rsi]
	jae	.label_1026
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x928], rax
	mov	rbp, rbp
	jmp	.label_616
.label_1026:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x928], rax
.label_616:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x928]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_625
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_615
.label_625:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_638
	cmp	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jne	.label_643
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_643
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_887
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_690
.label_887:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6e8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_671
.label_690:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_671:
	mov	rbp, rbp
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_638:
	nop	
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_611
.label_911:
	jmp	.label_702
.label_702:
	mov	eax, 7
	nop	
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	edx, 1
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x92c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	jmp	.label_651
.label_761:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	nop	
	jne	.label_721
	jmp	.label_608
.label_721:
	nop	
	jmp	.label_727
.label_727:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x930], eax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_651
.label_693:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_744
	jmp	.label_608
.label_744:
	lea	rdi, [rdi]
	mov	eax, 0xffffff9c
	lea	rdi, [rdi]
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	mov	rbp, rbp
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_774
	nop	
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	rbp, rbp
	sub	edi, 1
	mov	dword ptr [rbp - 0x934], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x934]
	idiv	edi
	mov	rsp, rsp
	cmp	edx, 0
	mov	dword ptr [rbp - 0x938], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x939], cl
	jne	.label_779
	mov	al, 1
	mov	ecx, 0x64
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x93a], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x93a]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x93b], sil
	nop	
	jne	.label_767
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x940], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x940]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x93b], sil
.label_767:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x93b]
	mov	byte ptr [rbp - 0x939], al
.label_779:
	mov	al, byte ptr [rbp - 0x939]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x938]
	lea	rsi, [rsi]
	add	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6f4], eax
	lea	rsi, [rsi]
	jmp	.label_828
.label_774:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x944], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x944]
	mov	rbp, rbp
	idiv	edi
	cmp	edx, 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x948], esi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x949], cl
	mov	rbp, rbp
	jne	.label_699
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	nop	
	mov	byte ptr [rbp - 0x94a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x94a]
	mov	byte ptr [rbp - 0x94b], sil
	lea	rsi, [rsi]
	jne	.label_852
	lea	rdi, [rdi]
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x950], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	sete	sil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x94b], sil
.label_852:
	mov	al, byte ptr [rbp - 0x94b]
	mov	byte ptr [rbp - 0x949], al
.label_699:
	mov	al, byte ptr [rbp - 0x949]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x948]
	mov	rsp, rsp
	sub	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rsi, [rsi]
	call	iso_week_days
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_883
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	nop	
	mov	dword ptr [rbp - 0x6f4], eax
.label_883:
	lea	rsi, [rsi]
	jmp	.label_828
.label_828:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x954], ecx
	mov	dword ptr [rbp - 0x958], edx
	lea	rsi, [rsi]
	je	.label_899
	jmp	.label_905
.label_905:
	mov	eax, dword ptr [rbp - 0x954]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x95c], eax
	lea	rdi, [rdi]
	jne	.label_909
	mov	rsp, rsp
	jmp	.label_913
.label_913:
	nop	
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x960], eax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x960]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rbp - 0x6f0]
	nop	
	mov	eax, edx
	cdq	
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	jg	.label_914
	mov	eax, dword ptr [rbp - 0x6fc]
	nop	
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_928
.label_914:
	mov	eax, 0xfffff894
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	lea	rdi, [rdi]
	jge	.label_935
	mov	rsp, rsp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x968], eax
	nop	
	jmp	.label_945
.label_935:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x968], eax
.label_945:
	nop	
	mov	eax, dword ptr [rbp - 0x968]
	mov	dword ptr [rbp - 0x964], eax
.label_928:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_613
.label_899:
	nop	
	jmp	.label_959
.label_959:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x6f0]
	nop	
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	eax, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_613
.label_909:
	jmp	.label_669
.label_669:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x96c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x96c]
	lea	rsi, [rsi]
	idiv	ecx
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_651
.label_780:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_991
	jmp	.label_608
.label_991:
	lea	rsi, [rsi]
	jmp	.label_996
.label_996:
	nop	
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	mov	rsp, rsp
	add	esi, 7
	mov	dword ptr [rbp - 0x970], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x974], edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x970]
	mov	rbp, rbp
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x974]
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	nop	
	mov	eax, edi
	mov	rsp, rsp
	cdq	
	nop	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_651
.label_916:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_868
	jmp	.label_608
.label_868:
	jmp	.label_1018
.label_1018:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_651
.label_791:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1024
	nop	
	jmp	.label_620
.label_1024:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1029
	lea	rdi, [rdi]
	jmp	.label_608
.label_1029:
	lea	rsi, [rsi]
	jmp	.label_610
.label_610:
	mov	dword ptr [rbp - 0x94], 4
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_613
.label_926:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_628
	nop	
	jmp	.label_620
.label_628:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x978], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	lea	rsi, [rsi]
	jge	.label_632
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_647
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x97c], eax
	lea	rdi, [rdi]
	jmp	.label_654
.label_647:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x97c], eax
.label_654:
	mov	eax, dword ptr [rbp - 0x97c]
	mov	dword ptr [rbp - 0x700], eax
.label_632:
	lea	rdi, [rdi]
	jmp	.label_667
.label_667:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_613
.label_795:
	test	byte ptr [rbp - 0xf1], 1
	mov	rsp, rsp
	je	.label_676
	nop	
	mov	byte ptr [rbp - 0xe2], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 1
.label_676:
	jmp	.label_685
.label_685:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_689
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	mov	rsp, rsp
	jmp	.label_694
.label_689:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x980], eax
.label_694:
	mov	eax, dword ptr [rbp - 0x980]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	nop	
	cmp	rcx, qword ptr [rbp - 0x710]
	nop	
	jae	.label_703
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x988], rax
	mov	rsp, rsp
	jmp	.label_710
.label_703:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x988], rax
.label_710:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_719
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_615
.label_719:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_734
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_737
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x710]
	nop	
	jae	.label_737
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_745
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_756
.label_745:
	mov	rsp, rsp
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_770
.label_756:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
.label_770:
	jmp	.label_737
.label_737:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe1], 1
	je	.label_787
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x990], rax
	jmp	.label_793
.label_787:
	test	byte ptr [rbp - 0xe2], 1
	lea	rsi, [rsi]
	je	.label_796
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x998], rax
	jmp	.label_802
.label_796:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_802:
	mov	rbp, rbp
	jmp	.label_793
.label_793:
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_734:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_611
.label_650:
	mov	qword ptr [rbp - 0xf0], 1
.label_830:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x3a
	lea	rsi, [rsi]
	jne	.label_818
	lea	rdi, [rdi]
	jmp	.label_826
.label_826:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_830
.label_818:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x7a
	je	.label_835
	mov	rbp, rbp
	jmp	.label_608
.label_835:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_843
.label_930:
	mov	qword ptr [rbp - 0xf0], 0
.label_843:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_936
	jmp	.label_611
.label_936:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x999], al
	mov	rsp, rsp
	jl	.label_856
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x99a], cl
	lea	rdi, [rdi]
	jne	.label_866
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x99a], dl
.label_866:
	mov	al, byte ptr [rbp - 0x99a]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x999], al
.label_856:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x999]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9d], al
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x724]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	nop	
	shr	rcx, 0x20
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	add	esi, edx
	mov	rbp, rbp
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	mov	rbp, rbp
	add	esi, edx
	nop	
	movsxd	rcx, esi
	mov	rsp, rsp
	imul	rcx, rcx, -0x77777777
	lea	rdi, [rdi]
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	lea	rsi, [rsi]
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x728], edx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x724]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	mov	rsp, rsp
	shr	edx, 0x1f
	lea	rdi, [rdi]
	sar	esi, 5
	mov	rsp, rsp
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	nop	
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x72c], esi
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	nop	
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x9a8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9b0], r8
	ja	.label_929
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_775]]
	lea	rsi, [rsi]
	jmp	rcx
.label_1596:
	jmp	.label_942
.label_942:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_943
.label_1597:
	lea	rsi, [rsi]
	jmp	.label_952
.label_952:
	mov	rbp, rbp
	jmp	.label_954
.label_954:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 6
	nop	
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_943
.label_1598:
	jmp	.label_982
.label_982:
	jmp	.label_965
.label_965:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_943
.label_1599:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_979
	mov	rbp, rbp
	jmp	.label_982
.label_979:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_983
	jmp	.label_952
.label_983:
	jmp	.label_986
.label_986:
	nop	
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rbp, rbp
	jmp	.label_943
.label_929:
	mov	rbp, rbp
	jmp	.label_608
.label_630:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_939:
	mov	rsp, rsp
	jmp	.label_608
.label_608:
	mov	dword ptr [rbp - 0x734], 1
.label_1011:
	mov	rbp, rbp
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	nop	
	je	.label_1000
	mov	rsp, rsp
	jmp	.label_1010
.label_1010:
	mov	eax, dword ptr [rbp - 0x734]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_1011
.label_1000:
	mov	rbp, rbp
	jmp	.label_1013
.label_1013:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1017
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x9b4], eax
	jmp	.label_1022
.label_1017:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x9b4], eax
.label_1022:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9b4]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x748], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	jae	.label_1025
	nop	
	mov	rax, qword ptr [rbp - 0x748]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9c0], rax
	jmp	.label_614
.label_1025:
	mov	rax, qword ptr [rbp - 0x740]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9c0], rax
.label_614:
	mov	rax, qword ptr [rbp - 0x9c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x750], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x750]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_624
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_615
.label_624:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_634
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_640
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x740]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	jae	.label_640
	nop	
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_653
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_659
.label_653:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x758]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_670
.label_659:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_670:
	lea	rdi, [rdi]
	jmp	.label_640
.label_640:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	mov	rbp, rbp
	je	.label_1028
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x740]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x9c8], rax
	jmp	.label_705
.label_1028:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	je	.label_732
	mov	eax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	mov	qword ptr [rbp - 0x9d0], rax
	lea	rdi, [rdi]
	jmp	.label_724
.label_732:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x734]
	mov	rsp, rsp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_724:
	jmp	.label_705
.label_705:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_634:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x750]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_611
.label_611:
	jmp	.label_637
.label_637:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_757
.label_773:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_766
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_766
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_766:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_615:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x9d8
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dae0

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
.label_1030:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	jbe	.label_1031
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1030
.label_1031:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db50

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1033:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_1032
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	toupper
	mov	dl, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	lea	rdi, [rdi]
	jmp	.label_1033
.label_1032:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dbe0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	lea	rsi, [rsi]
	add	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	lea	rdi, [rdi]
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	nop	
	sub	esi, edx
	lea	rsi, [rsi]
	add	esi, 4
	mov	rbp, rbp
	sub	esi, 1
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc40

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
	jne	.label_1034
	movabs	rdi, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_1034:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1036
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1037
.label_1036:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1037:
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
	jl	.label_1035
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_5
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
	jne	.label_1035
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_3
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
	jne	.label_1038
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1038:
	jmp	.label_1035
.label_1035:
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
	#Procedure 0x40ddc0
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
	je	.label_1039
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1040
.label_1039:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1040
.label_1040:
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
	#Procedure 0x40de70

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
	je	.label_1041
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1042
.label_1041:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ded0

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
	je	.label_1043
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1044
.label_1043:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1044
.label_1044:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df30

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
	je	.label_1045
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1046
.label_1045:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1046
.label_1046:
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
	#Procedure 0x40e030
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
	jne	.label_1047
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1047:
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
	#Procedure 0x40e090

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
	jne	.label_1048
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1048:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1050
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1049
.label_1050:
	call	abort
.label_1049:
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
	#Procedure 0x40e130
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
	je	.label_1051
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1052
.label_1051:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1052
.label_1052:
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
	#Procedure 0x40e230

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
.label_1152:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1208
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1214]]
	jmp	rcx
.label_1713:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1712:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1220
	jmp	.label_1223
.label_1223:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1226
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1226:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1220
.label_1220:
	movabs	rax, OFFSET FLAT:.str.10_2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1087
.label_1714:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1087
.label_1715:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1242
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_2
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
.label_1242:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1080
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1073:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1059
	jmp	.label_1060
.label_1060:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1062
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1062:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1167
.label_1167:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1073
.label_1059:
	mov	rbp, rbp
	jmp	.label_1080
.label_1080:
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
	jmp	.label_1087
.label_1710:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1709:
	mov	byte ptr [rbp - 0x7b], 1
.label_1711:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1093
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_1093:
	jmp	.label_1097
.label_1097:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1099
	jmp	.label_1105
.label_1105:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1249
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1249:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1099
.label_1099:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_1087
.label_1708:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1087
.label_1208:
	call	abort
.label_1087:
	mov	qword ptr [rbp - 0x58], 0
.label_1106:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1131
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
	jmp	.label_1168
.label_1131:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_1168:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1148
	mov	rbp, rbp
	jmp	.label_1157
.label_1148:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1085
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_1085
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1085
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_1172
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1172
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1184
.label_1172:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1184:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1085
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
	jne	.label_1085
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_1200
	jmp	.label_1078
.label_1200:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_1085:
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
	ja	.label_1203
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1215]]
	nop	
	jmp	rcx
.label_1665:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_1218
	mov	rsp, rsp
	jmp	.label_1222
.label_1222:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1246
	jmp	.label_1078
.label_1246:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1088
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_1088
	nop	
	jmp	.label_1232
.label_1232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1233
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1233:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1241
.label_1241:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1245
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1245:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1250
.label_1250:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1056
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1056:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1088:
	lea	rsi, [rsi]
	jmp	.label_1125
.label_1125:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1065
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1065:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1070
.label_1070:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1077
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1077
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1077
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1077
	nop	
	jmp	.label_1096
.label_1096:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1098
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1098:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1107
.label_1107:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1112
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1112:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1077
.label_1077:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_1133
.label_1218:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1127
	mov	rbp, rbp
	jmp	.label_1094
.label_1127:
	jmp	.label_1133
.label_1133:
	jmp	.label_1057
.label_1676:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_1135
	mov	rbp, rbp
	jmp	.label_1139
.label_1139:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_1142
	jmp	.label_1149
.label_1135:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1151
	jmp	.label_1078
.label_1151:
	jmp	.label_1053
.label_1142:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1158
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1158
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1158
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
	je	.label_1174
	nop	
	jmp	.label_1155
.label_1155:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_1174
	jmp	.label_1185
.label_1185:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_1174
	jmp	.label_1188
.label_1188:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1174
	jmp	.label_1064
.label_1064:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_1195
	jmp	.label_1174
.label_1174:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1110
	jmp	.label_1078
.label_1110:
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
	jae	.label_1206
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1206:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1219
.label_1219:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1225
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1225:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1229
.label_1229:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1231
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1231:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1239
.label_1239:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1183
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1183:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1240
.label_1195:
	jmp	.label_1240
.label_1240:
	jmp	.label_1158
.label_1158:
	jmp	.label_1053
.label_1149:
	jmp	.label_1053
.label_1053:
	jmp	.label_1057
.label_1666:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1058
.label_1667:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1058
.label_1671:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_1058
.label_1669:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_1063
.label_1672:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_1063
.label_1668:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1063
.label_1670:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1058
.label_1677:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1068
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1072
	nop	
	jmp	.label_1078
.label_1072:
	lea	rsi, [rsi]
	jmp	.label_1079
.label_1068:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1082
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1082
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_1082
	jmp	.label_1079
.label_1082:
	jmp	.label_1063
.label_1063:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_1092
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1092
	jmp	.label_1078
.label_1092:
	mov	rsp, rsp
	jmp	.label_1058
.label_1058:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1101
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1104
.label_1101:
	jmp	.label_1057
.label_1678:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1109
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1120
	jmp	.label_1118
.label_1109:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1120
.label_1118:
	nop	
	jmp	.label_1057
.label_1120:
	jmp	.label_1123
.label_1123:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1124
	lea	rsi, [rsi]
	jmp	.label_1057
.label_1124:
	nop	
	jmp	.label_1130
.label_1130:
	mov	byte ptr [rbp - 0x83], 1
.label_1673:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1132
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1132
	jmp	.label_1078
.label_1132:
	lea	rsi, [rsi]
	jmp	.label_1057
.label_1675:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1138
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1170
	jmp	.label_1078
.label_1170:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1153
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_1153
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1153:
	jmp	.label_1161
.label_1161:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1163
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1163:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1171
.label_1171:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_1115
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1115:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1181
.label_1181:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1187
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1187:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1138:
	lea	rsi, [rsi]
	jmp	.label_1057
.label_1674:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1057
.label_1203:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1196
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
	jmp	.label_1134
.label_1196:
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
	jne	.label_1221
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1221:
	jmp	.label_1067
.label_1067:
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
	jne	.label_1243
	jmp	.label_1083
.label_1243:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1248
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1083
.label_1248:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1252
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1197:
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
	jae	.label_1075
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1075:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1178
	jmp	.label_1074
.label_1178:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1197
.label_1074:
	jmp	.label_1083
.label_1252:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1084
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1084
	mov	qword ptr [rbp - 0xb8], 1
.label_1137:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_1091
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
	jb	.label_1095
	jmp	.label_1113
.label_1113:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1095
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_1095
	jmp	.label_1128
.label_1128:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1129
	mov	rsp, rsp
	jmp	.label_1095
.label_1095:
	mov	rsp, rsp
	jmp	.label_1078
.label_1129:
	jmp	.label_1136
.label_1136:
	mov	rsp, rsp
	jmp	.label_1117
.label_1117:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1137
.label_1091:
	mov	rbp, rbp
	jmp	.label_1084
.label_1084:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1150
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1150:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1154
.label_1154:
	lea	rsi, [rsi]
	jmp	.label_1162
.label_1162:
	jmp	.label_1164
.label_1164:
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
	jne	.label_1067
.label_1083:
	jmp	.label_1134
.label_1134:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_1176
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1182
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_1182
.label_1176:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_1156:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_1189
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1189
	jmp	.label_1192
.label_1192:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1194
	jmp	.label_1078
.label_1194:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1199
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1199
	lea	rdi, [rdi]
	jmp	.label_1204
.label_1204:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1207
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1207:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1213
.label_1213:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1217
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1217:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1227
.label_1227:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1066
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1066:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1199:
	jmp	.label_1236
.label_1236:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1238
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1238:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1055
.label_1055:
	jmp	.label_1247
.label_1247:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1212
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
.label_1212:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1089
.label_1089:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1102
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
.label_1102:
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
	jmp	.label_1069
.label_1189:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_1081
	lea	rdi, [rdi]
	jmp	.label_1230
.label_1230:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1086
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1086:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_1081:
	nop	
	jmp	.label_1069
.label_1069:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1100
	jmp	.label_1108
.label_1100:
	lea	rsi, [rsi]
	jmp	.label_1146
.label_1146:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1111
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1111
	lea	rsi, [rsi]
	jmp	.label_1116
.label_1116:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1119
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1119:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1126
.label_1126:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1071
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1071:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1111:
	nop	
	jmp	.label_1141
.label_1141:
	mov	rsp, rsp
	jmp	.label_1143
.label_1143:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1145
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1145:
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
	jmp	.label_1156
.label_1108:
	mov	rsp, rsp
	jmp	.label_1079
.label_1182:
	lea	rsi, [rsi]
	jmp	.label_1057
.label_1057:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_1090
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1175
.label_1090:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1177
.label_1175:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1177
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
	jne	.label_1179
.label_1177:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_1179
	mov	rsp, rsp
	jmp	.label_1079
.label_1179:
	nop	
	jmp	.label_1104
.label_1104:
	jmp	.label_1190
.label_1190:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_1191
	jmp	.label_1078
.label_1191:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1198
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_1198
	lea	rdi, [rdi]
	jmp	.label_1202
.label_1202:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1205
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1205:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1211
.label_1211:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1216
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1216:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1224
.label_1224:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1228
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1228:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1198:
	jmp	.label_1237
.label_1237:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1147
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1147:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1244
.label_1244:
	nop	
	jmp	.label_1079
.label_1079:
	jmp	.label_1234
.label_1234:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1235
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1235
	lea	rdi, [rdi]
	jmp	.label_1253
.label_1253:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1054
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1054:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1061
.label_1061:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1210
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1210:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1235:
	jmp	.label_1076
.label_1076:
	nop	
	jmp	.label_1201
.label_1201:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1209
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1209:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1251
	mov	byte ptr [rbp - 0x7e], 0
.label_1251:
	mov	rbp, rbp
	jmp	.label_1094
.label_1094:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1106
.label_1157:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_1103
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_1103
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1103
	nop	
	jmp	.label_1078
.label_1103:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1114
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1114
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1114
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1122
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
	jmp	.label_1140
.label_1122:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1144
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_1144
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1152
.label_1144:
	jmp	.label_1159
.label_1159:
	mov	rbp, rbp
	jmp	.label_1114
.label_1114:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1160
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1160
	mov	rbp, rbp
	jmp	.label_1165
.label_1165:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1166
	lea	rdi, [rdi]
	jmp	.label_1169
.label_1169:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1173
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1173:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1180
.label_1180:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1165
.label_1166:
	jmp	.label_1160
.label_1160:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1186
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1186:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1140
.label_1078:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1193
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1193
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_1193:
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
.label_1140:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb50
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
	#Procedure 0x40fbc0

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
	je	.label_1254
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1255
.label_1254:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1255
.label_1255:
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
	je	.label_1256
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1256:
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
	#Procedure 0x40fd90
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
.label_1261:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1260
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
	jmp	.label_1261
.label_1260:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1259
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1257]],  rax
.label_1259:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1258
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1258:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fea0

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
	#Procedure 0x40fef0

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
	jge	.label_1266
	call	abort
.label_1266:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1269
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
	jge	.label_1262
	call	xalloc_die
.label_1262:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1263
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1267
.label_1263:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1267:
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
	je	.label_1265
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1257]]
.label_1649:
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1265:
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
.label_1269:
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
	ja	.label_1264
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
	je	.label_1268
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_1268:
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
.label_1264:
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
	#Procedure 0x410220

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
	#Procedure 0x410260
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
	#Procedure 0x410290
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
	#Procedure 0x4102d0

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
	#Procedure 0x410330

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
	jne	.label_1270
	call	abort
.label_1270:
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
	#Procedure 0x4103d0

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
	#Procedure 0x410440

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
	#Procedure 0x410480
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
	#Procedure 0x4104c0

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
	#Procedure 0x410570

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
	#Procedure 0x4105b0

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
	#Procedure 0x4105e0
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
	#Procedure 0x410620
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
	#Procedure 0x410710

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
	#Procedure 0x410760

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
	#Procedure 0x410800
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
	#Procedure 0x410850
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
	#Procedure 0x4108b0

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
	#Procedure 0x4108f0
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
	#Procedure 0x410930

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
	#Procedure 0x410970

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
	#Procedure 0x4109b0

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
	je	.label_1273
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1271
.label_1273:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1274
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1271
.label_1274:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1272
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1271
.label_1272:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_2
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1271:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410af0

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_1
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, rax
	mov	al, 0
	call	open_safer
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rdi], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], 0
	jge	.label_1276
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	edx, 0xffffffff
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	cmovne	edx, r8d
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1275
.label_1276:
	mov	dword ptr [rbp - 4], 0
.label_1275:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ba0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rdi]
	jg	.label_1277
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	nop	
	call	fchdir
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1278
.label_1277:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	call	chdir_long
	mov	dword ptr [rbp - 4], eax
.label_1278:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c00

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 0
	jl	.label_1279
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_1279:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c50
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c80

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c90
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410cc0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d00
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, esi
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d40

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d80

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x410dc0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e00
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e40
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e80
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ec0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f00
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f40
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f80
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ax, dx
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fd0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411000
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411040
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411060
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411080
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x60]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110a0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110c0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110f0

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411120

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411150

	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411190
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4111b0

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
	je	.label_1283
	movabs	rsi, OFFSET FLAT:.str_9
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
	jmp	.label_1282
.label_1283:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1282:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_4
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
	mov	ecx, OFFSET FLAT:.str.3_4
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
	ja	.label_1281
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1284]]
	jmp	rcx
.label_1629:
	jmp	.label_1280
.label_1630:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_4
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
	jmp	.label_1280
.label_1631:
	movabs	rdi, OFFSET FLAT:.str.5_3
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
	jmp	.label_1280
.label_1632:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_3
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
	jmp	.label_1280
.label_1633:
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
	jmp	.label_1280
.label_1634:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_2
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
	jmp	.label_1280
.label_1635:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_2
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
	jmp	.label_1280
.label_1636:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_3
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
	jmp	.label_1280
.label_1637:
	movabs	rdi, OFFSET FLAT:.str.11_3
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
	jmp	.label_1280
.label_1638:
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
	jmp	.label_1280
.label_1281:
	movabs	rdi, OFFSET FLAT:.str.13_2
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
.label_1280:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411920
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
.label_1285:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1286
	mov	rbp, rbp
	jmp	.label_1287
.label_1287:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1285
.label_1286:
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
	#Procedure 0x4119d0

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
.label_1290:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1289
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1292
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
	jmp	.label_1293
.label_1292:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1293:
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
.label_1289:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1288
	mov	rsp, rsp
	jmp	.label_1291
.label_1288:
	jmp	.label_1294
.label_1294:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1290
.label_1291:
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
	#Procedure 0x411b30

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
	je	.label_1295
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
.label_1295:
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
	#Procedure 0x411ce0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_2
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
	movabs	rdi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x411d90
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
	jae	.label_1296
	mov	rbp, rbp
	call	xalloc_die
.label_1296:
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
	#Procedure 0x411df0

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
	jne	.label_1297
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1297
	lea	rdi, [rdi]
	call	xalloc_die
.label_1297:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411e50
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
	jae	.label_1298
	mov	rsp, rsp
	call	xalloc_die
.label_1298:
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
	#Procedure 0x411ed0

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
	jne	.label_1299
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1299
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1301
.label_1299:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1300
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1300
	lea	rsi, [rsi]
	call	xalloc_die
.label_1300:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1301:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f80

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
	jne	.label_1302
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1304
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
.label_1304:
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
	jae	.label_1306
	call	xalloc_die
.label_1306:
	lea	rsi, [rsi]
	jmp	.label_1305
.label_1302:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1303
	call	xalloc_die
.label_1303:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1305:
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
	#Procedure 0x4120b0

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
	#Procedure 0x4120e0
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
	#Procedure 0x412120
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
	#Procedure 0x412170
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
	jb	.label_1307
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1308
.label_1307:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1308:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4121e0

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
	#Procedure 0x412230

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
	#Procedure 0x412290

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4122f0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1309
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	jne	.label_1309
	call	xalloc_die
.label_1309:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x412360

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
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
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_1310
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
.label_1310:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x20]
	call	xvasprintf
	mov	qword ptr [rbp - 0x28], rax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4124d0

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	nop	
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1325
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	je	.label_1337
.label_1325:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1312
.label_1337:
	nop	
	lea	rdi, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	call	cdb_init
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1331
	nop	
	jmp	.label_1334
.label_1331:
	movabs	rdi, OFFSET FLAT:.str_10
	movabs	rsi, OFFSET FLAT:.str.1_8
	nop	
	mov	edx, 0x7e
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	lea	rdi, [rdi]
	call	__assert_fail
.label_1334:
	mov	rbp, rbp
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_1321
	lea	rsi, [rsi]
	jmp	.label_1326
.label_1321:
	movabs	rdi, OFFSET FLAT:.str.2_5
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	edx, 0x7f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1326:
	movabs	rsi, OFFSET FLAT:.str.3_5
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	strspn
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 2
	mov	rsp, rsp
	jne	.label_1314
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 3
	sub	rcx, rdx
	mov	esi, 0x2f
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memchr
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_1330
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1312
.label_1330:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	je	.label_1319
	jmp	.label_1315
.label_1319:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	find_non_slash
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1322
.label_1314:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1333
	lea	rdi, [rbp - 0x30]
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.3_5
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_1313
	jmp	.label_1315
.label_1313:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1333:
	jmp	.label_1322
.label_1322:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_1323
	lea	rdi, [rdi]
	jmp	.label_1311
.label_1323:
	nop	
	movabs	rdi, OFFSET FLAT:.str.4_5
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	edx, 0xa2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1311:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	ja	.label_1335
	jmp	.label_1320
.label_1335:
	movabs	rdi, OFFSET FLAT:.str.5_4
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa3
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1320:
	jmp	.label_1324
.label_1324:
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jg	.label_1327
	lea	rdi, [rdi]
	mov	esi, 0x2f
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	memrchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	jne	.label_1336
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1312
.label_1336:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	nop	
	cmp	rax, 0x1000
	jge	.label_1332
	jmp	.label_1328
.label_1332:
	movabs	rdi, OFFSET FLAT:.str.6_4
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	mov	rbp, rbp
	call	__assert_fail
.label_1328:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	cdb_advance_fd
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	byte ptr [rsi], 0x2f
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1316
	mov	rbp, rbp
	jmp	.label_1315
.label_1316:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	nop	
	call	find_non_slash
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1324
.label_1327:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1329
	lea	rdi, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	cdb_advance_fd
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1318
	jmp	.label_1315
.label_1318:
	jmp	.label_1329
.label_1329:
	lea	rdi, [rbp - 0x30]
	mov	rbp, rbp
	call	cdb_fchdir
	cmp	eax, 0
	je	.label_1317
	lea	rdi, [rdi]
	jmp	.label_1315
.label_1317:
	lea	rdi, [rbp - 0x30]
	call	cdb_free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1312
.label_1315:
	call	__errno_location
	mov	rsp, rsp
	lea	rdi, [rbp - 0x30]
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	cdb_free
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x6c]
	nop	
	mov	dword ptr [rax], ecx
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1312:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412980

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi], 0xffffff9c
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4129a0

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	edx, 0x10900
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	al, 0
	call	openat
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1338
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1339
.label_1338:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	cdb_free
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdi], eax
	mov	dword ptr [rbp - 4], 0
.label_1339:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412a30

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:.str.3_5
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412a70

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi]
	mov	rbp, rbp
	call	fchdir
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412aa0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdi]
	lea	rdi, [rdi]
	jg	.label_1340
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	nop	
	cmp	eax, 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	jne	.label_1342
	mov	rbp, rbp
	jmp	.label_1341
.label_1342:
	movabs	rdi, OFFSET FLAT:.str.7_2
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x40
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rsi, [rsi]
	call	__assert_fail
.label_1341:
	jmp	.label_1340
.label_1340:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412b40

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
	jne	.label_1343
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1343:
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
	ja	.label_1344
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1344
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1344
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
	jmp	.label_1345
.label_1344:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1345:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c30

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x100
	mov	al, dil
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rcx, OFFSET FLAT:.str_11
	nop	
	lea	rdx, [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	fopen
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_1362
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
.label_1346:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getline
	cmp	rax, -1
	je	.label_1366
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.2_6
	lea	rdx, [rbp - 0x4c]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x6c]
	nop	
	lea	r9, [rbp - 0x70]
	lea	rax, [rbp - 0x54]
	lea	rdi, [rbp - 0x58]
	mov	rbp, rbp
	lea	r10, [rbp - 0x71]
	mov	r11, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	sscanf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x84], 3
	je	.label_1350
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], 7
	nop	
	je	.label_1350
	jmp	.label_1346
.label_1350:
	movabs	rsi, OFFSET FLAT:.str.3_6
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rax, rcx
	mov	rdi, rax
	mov	rsp, rsp
	call	strstr
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_1361
	jmp	.label_1346
.label_1361:
	movabs	rsi, OFFSET FLAT:.str.4_6
	lea	rdx, [rbp - 0x5c]
	lea	rcx, [rbp - 0x60]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x64]
	mov	rsp, rsp
	lea	r9, [rbp - 0x68]
	lea	rax, [rbp - 0x71]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sscanf
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x84], 1
	lea	rdi, [rdi]
	je	.label_1367
	cmp	dword ptr [rbp - 0x84], 5
	nop	
	je	.label_1367
	mov	rsp, rsp
	jmp	.label_1346
.label_1367:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rdi, rax
	lea	rsi, [rsi]
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rdi, rax
	mov	rsp, rsp
	call	unescape_tab
	mov	edx, 0x38
	mov	edi, edx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	sil, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	sil, 0xfb
	or	sil, 4
	mov	byte ptr [rax + 0x28], sil
	mov	edi, dword ptr [rbp - 0x4c]
	mov	esi, dword ptr [rbp - 0x50]
	call	gnu_dev_makedev
	mov	r8b, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	edx, OFFSET FLAT:.str.5_1
	mov	esi, edx
	mov	byte ptr [rbp - 0xa9], r8b
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xa9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.6_0
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xab], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xab]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.7_3
	mov	rsp, rsp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xac], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xac]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.8_0
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xad], al
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xad]
	mov	byte ptr [rbp - 0xaa], r8b
	mov	rsp, rsp
	je	.label_1352
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.9_0
	mov	rsp, rsp
	mov	esi, edx
	mov	byte ptr [rbp - 0xae], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xae]
	mov	byte ptr [rbp - 0xaa], r8b
	lea	rsi, [rsi]
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.10_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xaf], al
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xaf]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.11_0
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb0], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb0]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0xb1], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0xb1]
	mov	byte ptr [rbp - 0xaa], r8b
	lea	rsi, [rsi]
	je	.label_1352
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xb2], al
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0xb2]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xaa], r8b
	nop	
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb3], al
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb3]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xaa], r8b
	lea	rdi, [rdi]
	je	.label_1352
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.15_2
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xb4], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb4]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaa], r8b
	mov	rsp, rsp
	je	.label_1352
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb5], al
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0xb5]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:.str.17_1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	byte ptr [rbp - 0xb6], cl
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xb6]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb7], cl
	mov	rbp, rbp
	jne	.label_1364
	mov	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb7], al
	jmp	.label_1364
.label_1364:
	nop	
	mov	al, byte ptr [rbp - 0xb7]
	mov	byte ptr [rbp - 0xaa], al
.label_1352:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xaa]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rsp, rsp
	mov	dil, byte ptr [rdx + 0x28]
	lea	rdi, [rdi]
	and	al, 1
	and	dil, 0xfe
	lea	rdi, [rdi]
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	lea	rdi, [rdi]
	call	strchr
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0xb8], r8b
	jne	.label_1347
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	nop	
	jne	.label_1351
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_1351
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.18_2
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0xb9], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xb9]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_1347
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.19_0
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xba], al
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_1347
.label_1351:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.20
	nop	
	mov	edi, ecx
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb8], dl
.label_1347:
	mov	al, byte ptr [rbp - 0xb8]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	shl	al, 1
	mov	rsp, rsp
	and	sil, 0xfd
	or	sil, al
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x28], sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, 0x30
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_1346
.label_1366:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	ferror_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1360
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xc0], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc4]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	jmp	.label_1356
.label_1360:
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	cmp	eax, -1
	nop	
	jne	.label_1369
	nop	
	jmp	.label_1356
.label_1369:
	jmp	.label_1358
.label_1362:
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rax, OFFSET FLAT:.str.21_0
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	setmntent
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_1349
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1354
.label_1349:
	jmp	.label_1357
.label_1357:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	getmntent
	nop	
	mov	qword ptr [rbp - 0x90], rax
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1370
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	rdi, qword ptr [rbp - 0x90]
	call	hasmntopt
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edi, ecx
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x99], dl
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	xstrdup
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	xstrdup
	mov	dl, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	r8b, 0xfb
	or	r8b, 4
	mov	byte ptr [rax + 0x28], r8b
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:.str.5_1
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc5], dl
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0xc5]
	mov	byte ptr [rbp - 0xc6], dl
	nop	
	je	.label_1353
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc7], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc7]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1353
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.7_3
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xc8], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc8]
	mov	byte ptr [rbp - 0xc6], r8b
	nop	
	je	.label_1353
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.8_0
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], al
	nop	
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc9]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1353
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.9_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xca], al
	nop	
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xca]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1353
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.10_0
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xcb], al
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	mov	r8b, byte ptr [rbp - 0xcb]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1353
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xcc], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xcc]
	nop	
	mov	byte ptr [rbp - 0xc6], r8b
	mov	rsp, rsp
	je	.label_1353
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_0
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xcd], al
	call	strcmp
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0xcd]
	mov	byte ptr [rbp - 0xc6], r8b
	mov	rbp, rbp
	je	.label_1353
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xce], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xce]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1353
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.14_0
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcf], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xcf]
	mov	byte ptr [rbp - 0xc6], r8b
	lea	rsi, [rsi]
	je	.label_1353
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.15_2
	nop	
	mov	esi, edx
	mov	byte ptr [rbp - 0xd0], al
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0xd0]
	nop	
	mov	byte ptr [rbp - 0xc6], r8b
	mov	rbp, rbp
	je	.label_1353
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.16_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xd1], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd1]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1353
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.17_1
	mov	esi, eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd2], cl
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xd2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd3], cl
	jne	.label_1359
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x99]
	mov	rsp, rsp
	xor	al, 0xff
	mov	byte ptr [rbp - 0xd3], al
.label_1359:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd3]
	mov	byte ptr [rbp - 0xc6], al
.label_1353:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xc6]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	mov	rbp, rbp
	and	al, 1
	nop	
	and	dil, 0xfe
	or	dil, al
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x28], dil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0xd4], r8b
	nop	
	jne	.label_1355
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_1368
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_1368
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18_2
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd5], al
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0xd5]
	mov	byte ptr [rbp - 0xd4], r8b
	je	.label_1355
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.19_0
	nop	
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xd6], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd6]
	mov	byte ptr [rbp - 0xd4], r8b
	lea	rsi, [rsi]
	je	.label_1355
.label_1368:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	edi, ecx
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd4], dl
.label_1355:
	mov	al, byte ptr [rbp - 0xd4]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	lea	rdi, [rdi]
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rdx + 0x18]
	call	dev_from_mount_options
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 0x30
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1357
.label_1370:
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	endmntent
	cmp	eax, 0
	nop	
	jne	.label_1348
	mov	rbp, rbp
	jmp	.label_1356
.label_1348:
	mov	rsp, rsp
	jmp	.label_1358
.label_1358:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1354
.label_1356:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax], 0
.label_1365:
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1363
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free_mount_entry
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1365
.label_1363:
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_1354:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x100
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413c00

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_1374:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1373
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	lea	rdi, [rdi]
	jne	.label_1371
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1371
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rcx + rax + 1]
	nop	
	cmp	edx, 0x30
	jl	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x33
	jg	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x30
	lea	rdi, [rdi]
	jl	.label_1371
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x37
	jg	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	lea	rsi, [rsi]
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jl	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	mov	rbp, rbp
	cmp	edx, 0x37
	nop	
	jg	.label_1371
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	sub	edx, 0x30
	shl	edx, 6
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax + 2]
	lea	rsi, [rsi]
	sub	esi, 0x30
	shl	esi, 3
	mov	rsp, rsp
	add	edx, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rcx + rax + 3]
	sub	esi, 0x30
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], dil
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 3
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1372
.label_1371:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], dl
.label_1372:
	jmp	.label_1375
.label_1375:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1374
.label_1373:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e20

	.globl dev_from_mount_options
	.type dev_from_mount_options, @function
dev_from_mount_options:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e40

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x28]
	shr	al, 2
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1376
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x18]
	call	free
.label_1376:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413ed0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1379
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1378
.label_1379:
	nop	
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_1378
.label_1378:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0x77
	lea	rdi, [rdi]
	jae	.label_1382
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	jmp	.label_1381
.label_1382:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1381:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_1377
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1380
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_1380:
	jmp	.label_1377
.label_1377:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414010

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414060

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_1383
	mov	rbp, rbp
	jmp	.label_1384
.label_1384:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1385
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1384
.label_1385:
	jmp	.label_1383
.label_1383:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140e0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_1386
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1388
.label_1386:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_1390
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_1391
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_1391:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2a]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1387
	lea	rdi, [rdi]
	jmp	.label_1389
.label_1387:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	je	.label_1389
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1388
.label_1389:
	jmp	.label_1390
.label_1390:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1388:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414200

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1396
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_1393
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1397
	jmp	.label_1393
.label_1396:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_1393
.label_1397:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1392
.label_1393:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1394
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1392
.label_1394:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_1395
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1392
.label_1395:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1392:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x414340

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1398
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1401
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_1401
.label_1398:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1402
.label_1401:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_1400
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_1405:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1399
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_1403
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_1404
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1403
.label_1404:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1406
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1402
.label_1406:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_1410
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_1408
.label_1410:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1407
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1402
.label_1407:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_1408:
	jmp	.label_1399
.label_1403:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_1409
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1409
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1409:
	lea	rdi, [rdi]
	jmp	.label_1405
.label_1399:
	mov	rbp, rbp
	jmp	.label_1400
.label_1400:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 1], 1
.label_1402:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4145e0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_1411
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1412
.label_1411:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_1413
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1413:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
.label_1412:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414690

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1419
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1418
.label_1419:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_1417
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jne	.label_1420
	mov	rsp, rsp
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1415
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_1415
.label_1420:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1415
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1415:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1414
	mov	rsp, rsp
	jmp	.label_1416
.label_1414:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1418
.label_1416:
	jmp	.label_1417
.label_1417:
	mov	qword ptr [rbp - 8], -1
.label_1418:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4147d0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	lea	rdi, [rdi]
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148c0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_2
	nop	
	call	getenv
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148f0

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1421
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1423
.label_1421:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1423
.label_1423:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1422
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1424
.label_1422:
	call	tzset
	nop	
	mov	byte ptr [rbp - 1], 1
.label_1424:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414980

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1425
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1426
.label_1425:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1426:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4149f0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_1427
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
	jg	.label_1427
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_1427:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a80

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
	jne	.label_1428
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1430
.label_1428:
	mov	rbp, rbp
	jmp	.label_1429
.label_1429:
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
	jne	.label_1431
	jmp	.label_1432
.label_1431:
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
	je	.label_1429
.label_1432:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1430:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414b70

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
	jne	.label_1435
	test	byte ptr [rbp - 0x13], 1
	je	.label_1434
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_1435
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_1434
.label_1435:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_1433
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1433:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1436
.label_1434:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_1436:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414c50

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x1b0
	lea	rdi, [rdi]
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rcx
	nop	
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_1437
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	lea	rsi, [rsi]
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1437:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	nop	
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	mov	rbp, rbp
	cmp	edi, 0
	lea	rdi, [rdi]
	je	.label_1438
	mov	rbp, rbp
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	nop	
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdi, [rdi]
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	esi, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	mov	rsp, rsp
	ja	.label_1440
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x198]
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1439
.label_1440:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1439:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1438:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x10]
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	al, cl
	mov	rsp, rsp
	call	open
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	call	fd_safer
	lea	rsi, [rsi]
	add	rsp, 0x1b0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x414ed0

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
	je	.label_1442
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_12
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1443
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1441
.label_1443:
	mov	byte ptr [rbp - 5], 0
.label_1441:
	jmp	.label_1442
.label_1442:
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
	#Procedure 0x414f70

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
	jne	.label_1445
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1445:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1444
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1444:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414ff0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jg	.label_1446
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1446
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_1446:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415080

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_1454:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1447
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1448
.label_1447:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	je	.label_1451
	mov	rbp, rbp
	jmp	.label_1449
.label_1451:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_1450
	mov	rsp, rsp
	jmp	.label_1449
.label_1450:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1454
.label_1449:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_1453
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1452
	lea	rdi, [rdi]
	call	xalloc_die
.label_1452:
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1448
.label_1453:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1448:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4151b0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsi]
	nop	
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_1465:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_1464
	lea	rax, [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_1456
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	add	eax, 8
	mov	rsp, rsp
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	jmp	.label_1462
.label_1456:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_1462:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1465
.label_1464:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	je	.label_1460
	nop	
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_1463
.label_1460:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1457
.label_1463:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_1458:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	jbe	.label_1459
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_1461
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rcx
	nop	
	jmp	.label_1455
.label_1461:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rcx, 8
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_1455:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1458
.label_1459:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1457:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415460

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
	jge	.label_1469
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1467
.label_1469:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1466
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
	je	.label_1468
.label_1466:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1468
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1468:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1470
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
.label_1470:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1467:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415580

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
	je	.label_1471
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1472
.label_1471:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1473
.label_1472:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1473:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4155f0

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
	je	.label_1474
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
.label_1474:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415650

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
	jne	.label_1475
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1475
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1475
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
	jne	.label_1477
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1476
.label_1477:
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
	jmp	.label_1476
.label_1475:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1476:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415760

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
	ja	.label_1478
	jmp	.label_1480
.label_1480:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1479
.label_1478:
	lea	rsi, [rsi]
	jmp	.label_1479
.label_1479:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4157c0
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
	jb	.label_1481
	jmp	.label_1484
.label_1484:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1481
	jmp	.label_1482
.label_1482:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1483
	jmp	.label_1481
.label_1481:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1485
.label_1483:
	mov	byte ptr [rbp - 1], 0
.label_1485:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415830
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
	jb	.label_1486
	jmp	.label_1489
.label_1489:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1487
	jmp	.label_1486
.label_1486:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1488
.label_1487:
	mov	byte ptr [rbp - 1], 0
.label_1488:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415880
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1490
	jmp	.label_1492
.label_1492:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1491
.label_1490:
	mov	byte ptr [rbp - 1], 0
.label_1491:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4158b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1493
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1493:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4158e0
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
	jb	.label_1494
	jmp	.label_1496
.label_1496:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1497
	jmp	.label_1494
.label_1494:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1495
.label_1497:
	mov	byte ptr [rbp - 1], 0
.label_1495:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415930
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
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
	#Procedure 0x415970
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
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
	#Procedure 0x4159b0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1504
	jmp	.label_1506
.label_1506:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1505
.label_1504:
	mov	byte ptr [rbp - 1], 0
.label_1505:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4159f0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1507
	jmp	.label_1509
.label_1509:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1508
.label_1507:
	mov	byte ptr [rbp - 1], 0
.label_1508:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a30
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
	jb	.label_1510
	jmp	.label_1513
.label_1513:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1510
	jmp	.label_1514
.label_1514:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1510
	jmp	.label_1512
.label_1512:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1515
	jmp	.label_1510
.label_1510:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1511
.label_1515:
	mov	byte ptr [rbp - 1], 0
.label_1511:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ab0
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
	jb	.label_1516
	jmp	.label_1518
.label_1518:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1519
	jmp	.label_1516
.label_1516:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1517
.label_1519:
	mov	byte ptr [rbp - 1], 0
.label_1517:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415b00
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1520
	jmp	.label_1522
.label_1522:
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
	#Procedure 0x415b40
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
	jb	.label_1523
	jmp	.label_1526
.label_1526:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1523
	jmp	.label_1524
.label_1524:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1525
	jmp	.label_1523
.label_1523:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1527
.label_1525:
	mov	byte ptr [rbp - 1], 0
.label_1527:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415bb0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1528
	jmp	.label_1530
.label_1530:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1529
.label_1528:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1529:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415bf0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1531
	jmp	.label_1533
.label_1533:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1532
.label_1531:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1532:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c30

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c70

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jb	.label_1534
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1535
.label_1534:
	mov	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1535
.label_1535:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ce0
	.globl xsum3
	.type xsum3, @function
xsum3:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	xsum
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	xsum
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d30
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d90
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jb	.label_1536
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_1537
.label_1536:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1537:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415de0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x240
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	nop	
	mov	dword ptr [rbp - 0x19c], esi
	nop	
	je	.label_1550
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x90], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_1550:
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a0], edi
	mov	rsp, rsp
	je	.label_1557
	nop	
	jmp	.label_1545
.label_1545:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1546
	jmp	.label_1551
.label_1557:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1553
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	lea	rsi, [rsi]
	jmp	.label_1562
.label_1553:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1562:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1556
.label_1546:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	mov	rsp, rsp
	ja	.label_1559
	mov	eax, dword ptr [rbp - 0x1cc]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	mov	rsp, rsp
	jmp	.label_1567
.label_1559:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1567:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1556
.label_1551:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_1538
	nop	
	jmp	.label_1539
.label_1539:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_1541
	jmp	.label_1549
.label_1549:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_1538
	nop	
	jmp	.label_1558
.label_1558:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_1541
	nop	
	jmp	.label_1565
.label_1565:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_1538
	lea	rsi, [rsi]
	jmp	.label_1543
.label_1543:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_1538
	lea	rsi, [rsi]
	jmp	.label_1554
.label_1554:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1541
	mov	rsp, rsp
	jmp	.label_1560
.label_1560:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1538
	jmp	.label_1566
.label_1566:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_1541
	lea	rsi, [rsi]
	jmp	.label_1542
.label_1542:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_1538
	jmp	.label_1552
.label_1552:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1541
	mov	rsp, rsp
	jmp	.label_1561
.label_1561:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_1538
	lea	rsi, [rsi]
	jmp	.label_1563
.label_1563:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1538
	nop	
	jmp	.label_1547
.label_1547:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_1548
	lea	rdi, [rdi]
	jmp	.label_1541
.label_1541:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_1540
.label_1538:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_1564
	mov	eax, dword ptr [rbp - 0x21c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x228], rcx
	mov	rbp, rbp
	jmp	.label_1544
.label_1564:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_1544:
	nop	
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x30]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1540
.label_1548:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_1568
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x234]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	mov	rsp, rsp
	jmp	.label_1555
.label_1568:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_1555:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1540:
	jmp	.label_1556
.label_1556:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416460

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4164b0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_1577
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1576
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1569
.label_1576:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1571
.label_1569:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_1574
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1574:
	mov	rbp, rbp
	jmp	.label_1571
.label_1571:
	jmp	.label_1572
.label_1577:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1572:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1575
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1575
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1573
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1570
.label_1573:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_1570:
	jmp	.label_1575
.label_1575:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4166e0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x4166f0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
