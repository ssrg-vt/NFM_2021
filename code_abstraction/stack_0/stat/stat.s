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
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	call	gettext
	movabs	rsi, OFFSET FLAT:fmt_terse_regular
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:fmt_terse_fs
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4023f0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.27
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
	#Procedure 0x402420

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
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_10
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_10:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_14
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_11
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.36
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
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.38
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.41
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.42
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
	#Procedure 0x4025c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x29], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.18_0
	movabs	rsi, OFFSET FLAT:.str.19
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	mov	qword ptr [rbp - 0x58], rax
	call	localeconv
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_31
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_35
.label_31:
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_35
.label_35:
	mov	rax, qword ptr [rbp - 0x60]
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [word ptr [decimal_point]],  rax
	mov	rax,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	strlen
	mov	qword ptr [word ptr [decimal_point_len]],  rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	atexit
	mov	dword ptr [rbp - 0x6c], eax
.label_33:
	movabs	rdx, OFFSET FLAT:.str.21
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_38
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x70], eax
	mov	dword ptr [rbp - 0x74], ecx
	je	.label_39
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x78], eax
	je	.label_29
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_22
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x80], eax
	je	.label_27
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x84], eax
	je	.label_32
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x88], eax
	je	.label_37
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x8c], eax
	jne	.label_41
	jmp	.label_36
.label_36:
	movabs	rax, OFFSET FLAT:.str_0
	mov	rcx,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	mov	qword ptr [word ptr [trailing_delim]],  rax
	jmp	.label_17
.label_27:
	movabs	rax, OFFSET FLAT:.str.22
	mov	rcx,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  0
	mov	qword ptr [word ptr [trailing_delim]],  rax
	jmp	.label_17
.label_22:
	mov	byte ptr [byte ptr [follow_links]],  1
	jmp	.label_17
.label_32:
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_17
.label_37:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_17
.label_29:
	xor	edi, edi
	call	usage
.label_39:
	movabs	rsi, OFFSET FLAT:.str.16
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.24
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_41:
	mov	edi, 1
	call	usage
.label_17:
	jmp	.label_33
.label_38:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jne	.label_34
	movabs	rdi, OFFSET FLAT:.str.25
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_34:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_19
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rdi, qword ptr [rbp - 0x20]
	call	strstr
	cmp	rax, 0
	je	.label_26
	call	getenv_quoting_style
.label_26:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_28
.label_19:
	xor	edx, edx
	mov	al, byte ptr [rbp - 0x15]
	mov	cl, byte ptr [rbp - 0x16]
	and	al, 1
	and	cl, 1
	movzx	edi, al
	movzx	esi, cl
	call	default_format
	mov	edx, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	cl, byte ptr [rbp - 0x15]
	mov	r8b, byte ptr [rbp - 0x16]
	and	cl, 1
	and	r8b, 1
	movzx	edi, cl
	movzx	esi, r8b
	call	default_format
	mov	qword ptr [rbp - 0x28], rax
.label_28:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x3c], eax
.label_42:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_20
	test	byte ptr [rbp - 0x15], 1
	je	.label_24
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	do_statfs
	and	al, 1
	movzx	edx, al
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_18
.label_24:
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	do_stat
	and	al, 1
	movzx	r8d, al
	mov	dword ptr [rbp - 0x90], r8d
.label_18:
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	movzx	edx, cl
	and	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_42
.label_20:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x29]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029c0

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:.str.50
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_46
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0xc], r9d
	cmp	r8d, dword ptr [rbp - 0xc]
	jg	.label_43
	xor	eax, eax
	mov	edi, eax
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_44
.label_43:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 4
	call	set_quoting_style
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_44:
	jmp	.label_45
.label_46:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 4
	call	set_quoting_style
.label_45:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a90

	.globl default_format
	.type default_format, @function
default_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	cl, sil
	mov	r8b, dil
	and	r8b, 1
	mov	byte ptr [rbp - 1], r8b
	and	cl, 1
	mov	byte ptr [rbp - 2], cl
	and	al, 1
	mov	byte ptr [rbp - 3], al
	test	byte ptr [rbp - 1], 1
	je	.label_48
	test	byte ptr [rbp - 2], 1
	je	.label_53
	movabs	rdi, OFFSET FLAT:fmt_terse_fs
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_49
.label_53:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
.label_49:
	jmp	.label_47
.label_48:
	test	byte ptr [rbp - 2], 1
	je	.label_54
	movabs	rdi, OFFSET FLAT:fmt_terse_regular
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_50
.label_54:
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 3], 1
	je	.label_52
	movabs	rdi, OFFSET FLAT:.str.55
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_51
.label_52:
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
.label_51:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	movabs	rdi, OFFSET FLAT:.str.58
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
.label_50:
	jmp	.label_47
.label_47:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c60

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.59
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_55
	movabs	rdi, OFFSET FLAT:.str.60
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xa4], edi
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_57
.label_55:
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x10]
	call	statfs
	cmp	eax, 0
	je	.label_56
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_57
.label_56:
	mov	esi, 0xffffffff
	movabs	rcx, OFFSET FLAT:print_statfs
	lea	rax, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8, rax
	call	print_it
	and	al, 1
	mov	byte ptr [rbp - 0x91], al
	mov	al, byte ptr [rbp - 0x91]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_57:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d90

	.globl do_stat
	.type do_stat, @function
do_stat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r8d, OFFSET FLAT:.str.59
	mov	esi, r8d
	mov	dword ptr [rbp - 0xc0], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	strcmp
	cmp	eax, 0
	mov	eax, dword ptr [rbp - 0xc4]
	mov	ecx, dword ptr [rbp - 0xc0]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_58
	lea	rsi, [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0x24]
	call	__fstat
	cmp	eax, 0
	je	.label_60
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.192
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_59
.label_60:
	jmp	.label_62
.label_58:
	test	byte ptr [byte ptr [follow_links]],  1
	je	.label_66
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_61
.label_66:
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	mov	dword ptr [rbp - 0xcc], eax
.label_61:
	mov	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	je	.label_65
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_59
.label_65:
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_63
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_64
.label_63:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_64:
	movabs	rcx, OFFSET FLAT:print_stat
	lea	rax, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8, rax
	call	print_it
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_59:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl print_it
	.type print_it, @function
print_it:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0x29], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 2
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
.label_94:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_84
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x70], edx
	je	.label_88
	jmp	.label_87
.label_87:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x74], eax
	je	.label_99
	jmp	.label_100
.label_88:
	movabs	rsi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	strspn
	movabs	rsi, OFFSET FLAT:digits
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	strspn
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_83
	movabs	rsi, OFFSET FLAT:digits
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	call	strspn
	add	rax, 1
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
.label_83:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	inc	rcx
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x5c], edx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x50]
	inc	rax
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	r8d, dword ptr [rbp - 0x5c]
	test	r8d, r8d
	mov	dword ptr [rbp - 0x78], r8d
	je	.label_79
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_89
	jmp	.label_97
.label_79:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
.label_89:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x50]
	jae	.label_102
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rdx + rax + 1], cl
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rdx + rax + 2], 0
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_102:
	mov	edi, 0x25
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_96
.label_97:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 1
	mov	edx, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0xc]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x90], esi
	mov	rsi, rcx
	mov	ecx, dword ptr [rbp - 0x90]
	call	rax
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_96:
	jmp	.label_72
.label_99:
	test	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	jne	.label_81
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_72
.label_81:
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jg	.label_95
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	jg	.label_95
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x60], ecx
	mov	dword ptr [rbp - 0x64], 1
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_71:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x64], 3
	mov	byte ptr [rbp - 0x95], cl
	jge	.label_77
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x96], cl
	jg	.label_82
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	setle	dl
	mov	byte ptr [rbp - 0x96], dl
.label_82:
	mov	al, byte ptr [rbp - 0x96]
	mov	byte ptr [rbp - 0x95], al
.label_77:
	mov	al, byte ptr [rbp - 0x95]
	test	al, 1
	jne	.label_93
	jmp	.label_67
.label_93:
	mov	eax, dword ptr [rbp - 0x60]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_71
.label_67:
	mov	edi, dword ptr [rbp - 0x60]
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, -1
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_80
.label_95:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x78
	jne	.label_68
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax + 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xa8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	je	.label_68
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x61
	jl	.label_76
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x66
	jg	.label_76
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xac], ecx
	jmp	.label_86
.label_76:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x41
	jl	.label_98
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x46
	jg	.label_98
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xb0], ecx
	jmp	.label_73
.label_98:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0xb0], ecx
.label_73:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	dword ptr [rbp - 0xac], eax
.label_86:
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x68], eax
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xb8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	je	.label_91
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	ecx, dword ptr [rbp - 0x68]
	shl	ecx, 4
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0xbc], ecx
	jl	.label_69
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_69
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xc0], ecx
	jmp	.label_85
.label_69:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_74
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_74
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0xc4], ecx
	jmp	.label_101
.label_74:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0xc4], ecx
.label_101:
	mov	eax, dword ptr [rbp - 0xc4]
	mov	dword ptr [rbp - 0xc0], eax
.label_85:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	ecx, dword ptr [rbp - 0xbc]
	add	ecx, eax
	mov	dword ptr [rbp - 0x68], ecx
.label_91:
	mov	edi, dword ptr [rbp - 0x68]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_78
.label_68:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_92
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, -1
	mov	qword ptr [rbp - 0x48], rdx
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_70
.label_92:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	print_esc_char
.label_70:
	jmp	.label_78
.label_78:
	jmp	.label_80
.label_80:
	jmp	.label_72
.label_100:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd0], eax
.label_72:
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_94
.label_84:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rdi,  qword ptr [word ptr [trailing_delim]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], eax
	mov	eax, edx
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035a0

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	qword ptr [rbp - 0x30], r9
	mov	byte ptr [rbp - 0x31], 0
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	sub	edx, 0x53
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_113
	jmp	.label_128
.label_128:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_125
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x70], eax
	je	.label_131
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x74], eax
	je	.label_105
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x78], eax
	je	.label_111
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_119
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x80], eax
	je	.label_115
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x84], eax
	je	.label_127
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x88], eax
	je	.label_130
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_118
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x90], eax
	je	.label_121
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x94], eax
	je	.label_120
	jmp	.label_124
.label_118:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	out_string
	jmp	.label_108
.label_127:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x38
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
	mov	dword ptr [rbp - 0x4c], 2
	mov	dword ptr [rbp - 0x50], 0
.label_107:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	byte ptr [rbp - 0x95], cl
	jge	.label_112
	movsxd	rax, dword ptr [rbp - 0x50]
	shl	rax, 2
	cmp	rax, 8
	setb	cl
	mov	byte ptr [rbp - 0x95], cl
.label_112:
	mov	al, byte ptr [rbp - 0x95]
	test	al, 1
	jne	.label_117
	jmp	.label_122
.label_117:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 1
	sub	eax, dword ptr [rbp - 0x50]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x50]
	shl	eax, 3
	movsxd	rdx, eax
	shl	rdx, 2
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	shl	rdx, cl
	or	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_107
.label_122:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	out_uint_x
	jmp	.label_108
.label_130:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x40]
	call	out_uint
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_108
.label_120:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax]
	call	out_uint_x
	jmp	.label_108
.label_125:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb8], rsi
	call	human_fstype
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	call	out_string
	jmp	.label_108
.label_105:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x10]
	call	out_int
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_108
.label_115:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x18]
	call	out_int
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_108
.label_131:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x20]
	call	out_int
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_108
.label_121:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 8]
	call	out_uint
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_108
.label_113:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_114
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rax
.label_114:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	call	out_uint
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_108
.label_111:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x28]
	call	out_uint
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_108
.label_119:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 0x30]
	call	out_int
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_108
.label_124:
	mov	edi, 0x3f
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0xd8], eax
.label_108:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403950

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	mov	ecx, edi
	sub	ecx, 0x22
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], ecx
	je	.label_136
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x10], eax
	je	.label_136
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x14], eax
	je	.label_143
	jmp	.label_146
.label_146:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x18], eax
	je	.label_148
	jmp	.label_152
.label_152:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_142
	jmp	.label_139
.label_139:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x20], eax
	je	.label_141
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x24], eax
	je	.label_147
	jmp	.label_151
.label_151:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x28], eax
	je	.label_133
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_140
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x30], eax
	je	.label_145
	jmp	.label_150
.label_143:
	mov	byte ptr [rbp - 1], 7
	jmp	.label_134
.label_148:
	mov	byte ptr [rbp - 1], 8
	jmp	.label_134
.label_142:
	mov	byte ptr [rbp - 1], 0x1b
	jmp	.label_134
.label_141:
	mov	byte ptr [rbp - 1], 0xc
	jmp	.label_134
.label_147:
	mov	byte ptr [rbp - 1], 0xa
	jmp	.label_134
.label_133:
	mov	byte ptr [rbp - 1], 0xd
	jmp	.label_134
.label_140:
	mov	byte ptr [rbp - 1], 9
	jmp	.label_134
.label_145:
	mov	byte ptr [rbp - 1], 0xb
	jmp	.label_134
.label_136:
	jmp	.label_134
.label_150:
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	xor	ecx, ecx
	movsx	edx, byte ptr [rbp - 1]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x34], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x34]
	mov	al, 0
	call	error
.label_134:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl out_string
	.type out_string, @function
out_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.59
	movabs	rcx, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b20

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.66
	movabs	rcx, OFFSET FLAT:.str.67
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b70

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.68
	movabs	rcx, OFFSET FLAT:.str.69
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bc0

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rdi]
	mov	rax, rdi
	sub	rax, 0x2f
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rax
	je	.label_383
	jmp	.label_364
.label_364:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x187
	mov	qword ptr [rbp - 0x30], rax
	je	.label_394
	jmp	.label_153
.label_153:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7c0
	mov	qword ptr [rbp - 0x38], rax
	je	.label_155
	jmp	.label_162
.label_162:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x40], rax
	je	.label_165
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x137d
	mov	qword ptr [rbp - 0x48], rax
	je	.label_171
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0x50], rax
	je	.label_177
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x138f
	mov	qword ptr [rbp - 0x58], rax
	je	.label_183
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1cd1
	mov	qword ptr [rbp - 0x60], rax
	je	.label_190
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2468
	mov	qword ptr [rbp - 0x68], rax
	je	.label_376
	jmp	.label_198
.label_198:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x70], rax
	je	.label_200
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x78], rax
	je	.label_207
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4000
	mov	qword ptr [rbp - 0x80], rax
	je	.label_214
	jmp	.label_219
.label_219:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4004
	mov	qword ptr [rbp - 0x88], rax
	je	.label_221
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x90], rax
	je	.label_230
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4244
	mov	qword ptr [rbp - 0x98], rax
	je	.label_237
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x482b
	mov	qword ptr [rbp - 0xa0], rax
	je	.label_245
	jmp	.label_248
.label_248:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4858
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_250
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4d44
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_256
	jmp	.label_260
.label_260:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_262
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x517b
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_269
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x564c
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_285
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xd0], rax
	je	.label_346
	jmp	.label_283
.label_283:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_286
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_292
	jmp	.label_296
.label_296:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x72b6
	mov	qword ptr [rbp - 0xe8], rax
	je	.label_298
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_305
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0xf8], rax
	je	.label_312
	jmp	.label_316
.label_316:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa1
	mov	qword ptr [rbp - 0x100], rax
	je	.label_318
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa2
	mov	qword ptr [rbp - 0x108], rax
	je	.label_325
	jmp	.label_223
.label_223:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x110], rax
	je	.label_332
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xadff
	mov	qword ptr [rbp - 0x118], rax
	je	.label_339
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xef51
	mov	qword ptr [rbp - 0x120], rax
	je	.label_345
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xef53
	mov	qword ptr [rbp - 0x128], rax
	je	.label_352
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xf15f
	mov	qword ptr [rbp - 0x130], rax
	je	.label_358
	jmp	.label_175
.label_175:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x11954
	mov	qword ptr [rbp - 0x138], rax
	je	.label_363
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x27e0eb
	mov	qword ptr [rbp - 0x140], rax
	je	.label_227
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x414a53
	mov	qword ptr [rbp - 0x148], rax
	je	.label_374
	jmp	.label_381
.label_381:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xc0ffee
	mov	qword ptr [rbp - 0x150], rax
	je	.label_302
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xc36400
	mov	qword ptr [rbp - 0x158], rax
	je	.label_387
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x160], rax
	je	.label_380
	jmp	.label_158
.label_158:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021997
	mov	qword ptr [rbp - 0x168], rax
	je	.label_160
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1161970
	mov	qword ptr [rbp - 0x170], rax
	je	.label_169
	jmp	.label_172
.label_172:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12fd16d
	mov	qword ptr [rbp - 0x178], rax
	je	.label_173
	jmp	.label_179
.label_179:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b4
	mov	qword ptr [rbp - 0x180], rax
	je	.label_181
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x188], rax
	je	.label_189
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b6
	mov	qword ptr [rbp - 0x190], rax
	je	.label_195
	jmp	.label_199
.label_199:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x12ff7b7
	mov	qword ptr [rbp - 0x198], rax
	je	.label_201
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x13111a8
	mov	qword ptr [rbp - 0x1a0], rax
	je	.label_209
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x1a8], rax
	je	.label_217
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9041934
	mov	qword ptr [rbp - 0x1b0], rax
	je	.label_226
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x1b8], rax
	je	.label_232
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0xbd00bd0
	mov	qword ptr [rbp - 0x1c0], rax
	je	.label_240
	jmp	.label_164
.label_164:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x11307854
	mov	qword ptr [rbp - 0x1c8], rax
	je	.label_246
	jmp	.label_251
.label_251:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x13661366
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_252
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x1d8], rax
	je	.label_270
	jmp	.label_264
.label_264:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x19800202
	mov	qword ptr [rbp - 0x1e0], rax
	je	.label_265
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1e8], rax
	je	.label_272
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1badface
	mov	qword ptr [rbp - 0x1f0], rax
	je	.label_290
	jmp	.label_281
.label_281:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x1f8], rax
	je	.label_335
	jmp	.label_287
.label_287:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x200], rax
	je	.label_288
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2bad1dea
	mov	qword ptr [rbp - 0x208], rax
	je	.label_294
	jmp	.label_299
.label_299:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x2fc12fc1
	mov	qword ptr [rbp - 0x210], rax
	je	.label_300
	jmp	.label_307
.label_307:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x218], rax
	je	.label_159
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x42465331
	mov	qword ptr [rbp - 0x220], rax
	je	.label_360
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x42494e4d
	mov	qword ptr [rbp - 0x228], rax
	je	.label_321
	jmp	.label_326
.label_326:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x43415d53
	mov	qword ptr [rbp - 0x230], rax
	je	.label_327
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x453dcd28
	mov	qword ptr [rbp - 0x238], rax
	je	.label_334
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x45584653
	mov	qword ptr [rbp - 0x240], rax
	je	.label_340
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x47504653
	mov	qword ptr [rbp - 0x248], rax
	je	.label_348
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x50495045
	mov	qword ptr [rbp - 0x250], rax
	je	.label_354
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x258], rax
	je	.label_361
	jmp	.label_365
.label_365:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346314d
	mov	qword ptr [rbp - 0x260], rax
	je	.label_366
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x268], rax
	je	.label_372
	jmp	.label_377
.label_377:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x53464846
	mov	qword ptr [rbp - 0x270], rax
	je	.label_379
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x278], rax
	je	.label_320
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x280], rax
	je	.label_391
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x54190100
	mov	qword ptr [rbp - 0x288], rax
	je	.label_397
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x565a4653
	mov	qword ptr [rbp - 0x290], rax
	je	.label_163
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58295829
	mov	qword ptr [rbp - 0x298], rax
	je	.label_242
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_178
	jmp	.label_184
.label_184:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x2a8], rax
	je	.label_186
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5dca2df5
	mov	qword ptr [rbp - 0x2b0], rax
	je	.label_193
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x2b8], rax
	je	.label_197
	jmp	.label_202
.label_202:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6165676c
	mov	qword ptr [rbp - 0x2c0], rax
	je	.label_204
	jmp	.label_210
.label_210:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x2c8], rax
	je	.label_211
	jmp	.label_218
.label_218:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x62646576
	mov	qword ptr [rbp - 0x2d0], rax
	je	.label_220
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x62656570
	mov	qword ptr [rbp - 0x2d8], rax
	je	.label_229
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x62656572
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_236
	jmp	.label_241
.label_241:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x2e8], rax
	je	.label_244
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2f0], rax
	je	.label_249
	jmp	.label_253
.label_253:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x64646178
	mov	qword ptr [rbp - 0x2f8], rax
	je	.label_255
	jmp	.label_259
.label_259:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x65735543
	mov	qword ptr [rbp - 0x300], rax
	je	.label_261
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x65735546
	mov	qword ptr [rbp - 0x308], rax
	je	.label_268
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x310], rax
	je	.label_275
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x68191122
	mov	qword ptr [rbp - 0x318], rax
	je	.label_280
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6b414653
	mov	qword ptr [rbp - 0x320], rax
	je	.label_284
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6e667364
	mov	qword ptr [rbp - 0x328], rax
	je	.label_382
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6e736673
	mov	qword ptr [rbp - 0x330], rax
	je	.label_297
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73636673
	mov	qword ptr [rbp - 0x338], rax
	je	.label_304
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73717368
	mov	qword ptr [rbp - 0x340], rax
	je	.label_311
	jmp	.label_315
.label_315:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73727279
	mov	qword ptr [rbp - 0x348], rax
	je	.label_317
	jmp	.label_322
.label_322:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x73757245
	mov	qword ptr [rbp - 0x350], rax
	je	.label_324
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7461636f
	mov	qword ptr [rbp - 0x358], rax
	je	.label_330
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x74726163
	mov	qword ptr [rbp - 0x360], rax
	je	.label_338
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x794c7630
	mov	qword ptr [rbp - 0x368], rax
	je	.label_344
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x370], rax
	je	.label_351
	jmp	.label_355
.label_355:
	mov	eax, 0x858458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x378], rdx
	je	.label_357
	jmp	.label_362
.label_362:
	mov	eax, 0x9123683e
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x380], rdx
	je	.label_185
	jmp	.label_368
.label_368:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	je	.label_370
	jmp	.label_375
.label_375:
	mov	eax, 0xa501fcf5
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x390], rdx
	je	.label_378
	jmp	.label_384
.label_384:
	mov	eax, 0xaad7aaea
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x398], rdx
	je	.label_385
	jmp	.label_390
.label_390:
	mov	eax, 0xabba1974
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a0], rdx
	je	.label_392
	jmp	.label_154
.label_154:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a8], rdx
	je	.label_157
	jmp	.label_166
.label_166:
	mov	eax, 0xbeefdead
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b0], rdx
	je	.label_168
	jmp	.label_257
.label_257:
	mov	eax, 0xc97e8168
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b8], rdx
	je	.label_263
	jmp	.label_180
.label_180:
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c0], rdx
	je	.label_388
	jmp	.label_342
.label_342:
	mov	eax, 0xde5e81e4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c8], rdx
	je	.label_192
	jmp	.label_308
.label_308:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d0], rdx
	je	.label_393
	jmp	.label_203
.label_203:
	mov	eax, 0xf97cff8c
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d8], rdx
	je	.label_205
	jmp	.label_213
.label_213:
	mov	eax, 0xf995e849
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_215
	jmp	.label_222
.label_222:
	mov	eax, 0xfe534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e8], rdx
	je	.label_225
	jmp	.label_328
.label_328:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3f0], rdx
	je	.label_331
	jmp	.label_239
.label_186:
	movabs	rax, OFFSET FLAT:.str.70
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_197:
	movabs	rax, OFFSET FLAT:.str.71
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_332:
	movabs	rax, OFFSET FLAT:.str.72
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_339:
	movabs	rax, OFFSET FLAT:.str.73
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_372:
	movabs	rax, OFFSET FLAT:.str.74
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_226:
	movabs	rax, OFFSET FLAT:.str.75
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_211:
	movabs	rax, OFFSET FLAT:.str.76
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_394:
	movabs	rax, OFFSET FLAT:.str.5_1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_252:
	movabs	rax, OFFSET FLAT:.str.78
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_360:
	movabs	rax, OFFSET FLAT:.str.79
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_220:
	movabs	rax, OFFSET FLAT:.str.80
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_290:
	movabs	rax, OFFSET FLAT:.str.81
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_388:
	movabs	rax, OFFSET FLAT:.str.82
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_321:
	movabs	rax, OFFSET FLAT:.str.83
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_185:
	movabs	rax, OFFSET FLAT:.str.84
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_317:
	movabs	rax, OFFSET FLAT:.str.85
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_387:
	movabs	rax, OFFSET FLAT:.str.86
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_227:
	movabs	rax, OFFSET FLAT:.str.87
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_244:
	movabs	rax, OFFSET FLAT:.str.88
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_331:
	movabs	rax, OFFSET FLAT:.str.19_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_324:
	movabs	rax, OFFSET FLAT:.str.90
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_201:
	movabs	rax, OFFSET FLAT:.str.91
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_229:
	movabs	rax, OFFSET FLAT:.str.92
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_288:
	movabs	rax, OFFSET FLAT:.str.93
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_334:
	movabs	rax, OFFSET FLAT:.str.94
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_255:
	movabs	rax, OFFSET FLAT:.str.95
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_249:
	movabs	rax, OFFSET FLAT:.str.8_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_165:
	movabs	rax, OFFSET FLAT:.str.14_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_190:
	movabs	rax, OFFSET FLAT:.str.9_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_358:
	movabs	rax, OFFSET FLAT:.str.99
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_192:
	movabs	rax, OFFSET FLAT:.str.100
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_374:
	movabs	rax, OFFSET FLAT:.str.101
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_340:
	movabs	rax, OFFSET FLAT:.str.102
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_346:
	movabs	rax, OFFSET FLAT:.str.103
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_171:
	movabs	rax, OFFSET FLAT:.str.104
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_352:
	movabs	rax, OFFSET FLAT:.str.105
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_345:
	movabs	rax, OFFSET FLAT:.str.106
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_393:
	movabs	rax, OFFSET FLAT:.str.107
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_230:
	movabs	rax, OFFSET FLAT:.str.108
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_272:
	movabs	rax, OFFSET FLAT:.str.109
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_268:
	movabs	rax, OFFSET FLAT:.str.110
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_261:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_232:
	movabs	rax, OFFSET FLAT:.str.112
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_169:
	movabs	rax, OFFSET FLAT:.str.113
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_348:
	movabs	rax, OFFSET FLAT:.str.114
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_237:
	movabs	rax, OFFSET FLAT:.str.115
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_245:
	movabs	rax, OFFSET FLAT:.str.116
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_250:
	movabs	rax, OFFSET FLAT:.str.117
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_302:
	movabs	rax, OFFSET FLAT:.str.118
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_215:
	movabs	rax, OFFSET FLAT:.str.119
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_370:
	movabs	rax, OFFSET FLAT:.str.120
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_246:
	movabs	rax, OFFSET FLAT:.str.121
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_209:
	movabs	rax, OFFSET FLAT:.str.122
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_294:
	movabs	rax, OFFSET FLAT:.str.123
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_305:
	movabs	rax, OFFSET FLAT:.str.124
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_221:
	movabs	rax, OFFSET FLAT:.str.124
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_214:
	movabs	rax, OFFSET FLAT:.str.124
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_155:
	movabs	rax, OFFSET FLAT:.str.125
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_298:
	movabs	rax, OFFSET FLAT:.str.126
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_159:
	movabs	rax, OFFSET FLAT:.str.127
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_284:
	movabs	rax, OFFSET FLAT:.str.128
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_263:
	movabs	rax, OFFSET FLAT:.str.129
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_240:
	movabs	rax, OFFSET FLAT:.str.130
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_366:
	movabs	rax, OFFSET FLAT:.str.131
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_177:
	movabs	rax, OFFSET FLAT:.str.132
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_183:
	movabs	rax, OFFSET FLAT:.str.133
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_376:
	movabs	rax, OFFSET FLAT:.str.134
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_200:
	movabs	rax, OFFSET FLAT:.str.135
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_262:
	movabs	rax, OFFSET FLAT:.str.136
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_265:
	movabs	rax, OFFSET FLAT:.str.11_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_256:
	movabs	rax, OFFSET FLAT:.str.138
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_285:
	movabs	rax, OFFSET FLAT:.str.139
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_286:
	movabs	rax, OFFSET FLAT:.str.140
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_382:
	movabs	rax, OFFSET FLAT:.str.141
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_207:
	movabs	rax, OFFSET FLAT:.str.142
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_297:
	movabs	rax, OFFSET FLAT:.str.143
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_320:
	movabs	rax, OFFSET FLAT:.str.144
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_318:
	movabs	rax, OFFSET FLAT:.str.145
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_330:
	movabs	rax, OFFSET FLAT:.str.146
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_344:
	movabs	rax, OFFSET FLAT:.str.147
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_385:
	movabs	rax, OFFSET FLAT:.str.148
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_354:
	movabs	rax, OFFSET FLAT:.str.149
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_351:
	movabs	rax, OFFSET FLAT:.str.150
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_312:
	movabs	rax, OFFSET FLAT:.str.6_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_204:
	movabs	rax, OFFSET FLAT:.str.152
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_383:
	movabs	rax, OFFSET FLAT:.str.153
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_280:
	movabs	rax, OFFSET FLAT:.str.154
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_357:
	movabs	rax, OFFSET FLAT:.str.155
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_217:
	movabs	rax, OFFSET FLAT:.str.156
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_361:
	movabs	rax, OFFSET FLAT:.str.157
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_292:
	movabs	rax, OFFSET FLAT:.str.158
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_275:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_193:
	movabs	rax, OFFSET FLAT:.str.160
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_304:
	movabs	rax, OFFSET FLAT:.str.161
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_205:
	movabs	rax, OFFSET FLAT:.str.162
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_327:
	movabs	rax, OFFSET FLAT:.str.163
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_269:
	movabs	rax, OFFSET FLAT:.str.164
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_225:
	movabs	rax, OFFSET FLAT:.str.165
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_168:
	movabs	rax, OFFSET FLAT:.str.166
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_391:
	movabs	rax, OFFSET FLAT:.str.167
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_311:
	movabs	rax, OFFSET FLAT:.str.168
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_236:
	movabs	rax, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_195:
	movabs	rax, OFFSET FLAT:.str.170
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_189:
	movabs	rax, OFFSET FLAT:.str.171
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_380:
	movabs	rax, OFFSET FLAT:.str.172
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_338:
	movabs	rax, OFFSET FLAT:.str.173
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_335:
	movabs	rax, OFFSET FLAT:.str.174
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_270:
	movabs	rax, OFFSET FLAT:.str.175
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_363:
	movabs	rax, OFFSET FLAT:.str.176
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_397:
	movabs	rax, OFFSET FLAT:.str.176
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_325:
	movabs	rax, OFFSET FLAT:.str.177
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_160:
	movabs	rax, OFFSET FLAT:.str.178
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_157:
	movabs	rax, OFFSET FLAT:.str.179
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_378:
	movabs	rax, OFFSET FLAT:.str.180
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_163:
	movabs	rax, OFFSET FLAT:.str.181
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_379:
	movabs	rax, OFFSET FLAT:.str.182
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_392:
	movabs	rax, OFFSET FLAT:.str.183
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_181:
	movabs	rax, OFFSET FLAT:.str.184
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_178:
	movabs	rax, OFFSET FLAT:.str.185
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_173:
	movabs	rax, OFFSET FLAT:.str.186
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_300:
	movabs	rax, OFFSET FLAT:.str.187
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_242:
	movabs	rax, OFFSET FLAT:.str.188
	mov	qword ptr [rbp - 8], rax
	jmp	.label_156
.label_239:
	movabs	rdi, OFFSET FLAT:human_fstype.buf
	movabs	rsi, OFFSET FLAT:.str.189
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	sprintf
	movabs	rdx, OFFSET FLAT:human_fstype.buf
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 0x3f4], eax
.label_156:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x400
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052a0

	.globl out_int
	.type out_int, @function
out_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.190
	movabs	rcx, OFFSET FLAT:.str.191
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl make_format
	.type make_format, @function
make_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
.label_398:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x39], cl
	jae	.label_402
	movabs	rdi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x39], cl
.label_402:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_399
	jmp	.label_400
.label_399:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_404
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	byte ptr [rax], cl
.label_404:
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_398
.label_400:
	jmp	.label_401
.label_401:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], dl
	jmp	.label_401
.label_403:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcpy
	mov	qword ptr [rbp - 0x48], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl print_stat
	.type print_stat, @function
print_stat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x290
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r9
	mov	byte ptr [rbp - 0x49], 0
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, -0x41
	mov	esi, ecx
	sub	ecx, 0x39
	mov	qword ptr [rbp - 0xf0], rsi
	mov	dword ptr [rbp - 0xf4], ecx
	ja	.label_409
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_413]]
	jmp	rcx
.label_1606:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	out_string
	jmp	.label_407
.label_1591:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x100], rsi
	mov	qword ptr [rbp - 0x108], rcx
	call	get_quoting_style
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edi, eax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, rax
	call	out_string
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0xf000
	cmp	r8d, 0xa000
	jne	.label_416
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x30]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_419
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.194
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 1
	jmp	.label_412
.label_419:
	movabs	rdi, OFFSET FLAT:.str.195
	mov	al, 0
	call	printf
	xor	ecx, ecx
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x11c], eax
	mov	qword ptr [rbp - 0x128], rsi
	mov	qword ptr [rbp - 0x130], rdx
	call	get_quoting_style
	mov	rsi, qword ptr [rbp - 0x58]
	mov	edi, eax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, qword ptr [rbp - 0x128]
	mov	rdx, rax
	call	out_string
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_416:
	jmp	.label_407
.label_1600:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	call	out_uint
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_407
.label_1588:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	call	out_uint_x
	jmp	.label_407
.label_1604:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 8]
	call	out_uint
	mov	dword ptr [rbp - 0x138], eax
	jmp	.label_407
.label_1598:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xfff
	mov	ecx, ecx
	mov	edx, ecx
	call	out_uint_o
	jmp	.label_407
.label_1585:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x140], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x148], rsi
	call	human_access
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, rax
	call	out_string
	jmp	.label_407
.label_1601:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	edx, ecx
	call	out_uint_x
	jmp	.label_407
.label_1589:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x158], rsi
	call	file_type
	mov	rdi, qword ptr [rbp - 0x150]
	mov	rsi, qword ptr [rbp - 0x158]
	mov	rdx, rax
	call	out_string
	jmp	.label_407
.label_1603:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x10]
	call	out_uint
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_407
.label_1610:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x1c]
	mov	edx, ecx
	call	out_uint
	mov	dword ptr [rbp - 0x160], eax
	jmp	.label_407
.label_1593:
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rax + 0x1c]
	call	getpwuid
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	je	.label_408
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x178], rax
	jmp	.label_410
.label_408:
	movabs	rax, OFFSET FLAT:.str.196
	mov	qword ptr [rbp - 0x178], rax
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdx, rax
	call	out_string
	jmp	.label_407
.label_1602:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x20]
	mov	edx, ecx
	call	out_uint
	mov	dword ptr [rbp - 0x17c], eax
	jmp	.label_407
.label_1590:
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rax + 0x20]
	call	getgrgid
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x188], rdi
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_415
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_417
.label_415:
	movabs	rax, OFFSET FLAT:.str.196
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x190]
	mov	rdx, rax
	call	out_string
	jmp	.label_407
.label_1609:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a8], rsi
	call	gnu_dev_major
	mov	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	out_uint_x
	jmp	.label_407
.label_1605:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	call	out_mount_point
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	r9d, al
	or	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	jmp	.label_407
.label_1592:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x1b0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1b8], rsi
	call	gnu_dev_minor
	mov	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x1b8]
	call	out_uint_x
	jmp	.label_407
.label_1608:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x30]
	call	out_int
	mov	dword ptr [rbp - 0x1bc], eax
	jmp	.label_407
.label_1586:
	mov	eax, 0x200
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	out_uint
	mov	dword ptr [rbp - 0x1c0], eax
	jmp	.label_407
.label_1599:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x40]
	call	out_uint
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_407
.label_1607:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x38]
	mov	qword ptr [rbp - 0x1d0], rsi
	mov	qword ptr [rbp - 0x1d8], rdi
	jge	.label_411
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_411
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_414
.label_411:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1e0], rcx
	jmp	.label_414
.label_414:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	rsi, qword ptr [rbp - 0x1d0]
	mov	rdx, rax
	call	out_uint
	mov	dword ptr [rbp - 0x1e4], eax
	jmp	.label_407
.label_1611:
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	call	get_birthtime
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x60], rdx
	cmp	qword ptr [rbp - 0x60], 0
	jge	.label_418
	movabs	rdx, OFFSET FLAT:.str.59
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	out_string
	jmp	.label_406
.label_418:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x1f0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	rsi, rcx
	call	human_time
	mov	rdi, qword ptr [rbp - 0x1f0]
	mov	rsi, qword ptr [rbp - 0x1f8]
	mov	rdx, rax
	call	out_string
.label_406:
	jmp	.label_407
.label_1594:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x200], rdi
	mov	edi, eax
	mov	qword ptr [rbp - 0x208], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x210], rdx
	mov	rdx, r8
	call	get_birthtime
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x80]
	call	neg_to_zero
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x70], rdx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x200]
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rdx, qword ptr [rbp - 0x210]
	call	out_epoch_sec
	jmp	.label_407
.label_1612:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x218], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x220], rsi
	call	get_stat_atime
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x90]
	call	human_time
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x220]
	mov	rdx, rax
	call	out_string
	jmp	.label_407
.label_1595:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x228], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x230], rdx
	mov	qword ptr [rbp - 0x238], rsi
	call	get_stat_atime
	mov	qword ptr [rbp - 0xa8], rax
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, qword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsi, qword ptr [rbp - 0x238]
	mov	rdx, qword ptr [rbp - 0x230]
	call	out_epoch_sec
	jmp	.label_407
.label_1613:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x240], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x248], rsi
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	human_time
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, rax
	call	out_string
	jmp	.label_407
.label_1596:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x250], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x258], rdx
	mov	qword ptr [rbp - 0x260], rsi
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xc8], rax
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x260]
	mov	rdx, qword ptr [rbp - 0x258]
	call	out_epoch_sec
	jmp	.label_407
.label_1614:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x268], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x270], rsi
	call	get_stat_ctime
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0xd0]
	call	human_time
	mov	rdi, qword ptr [rbp - 0x268]
	mov	rsi, qword ptr [rbp - 0x270]
	mov	rdx, rax
	call	out_string
	jmp	.label_407
.label_1597:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x278], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x280], rdx
	mov	qword ptr [rbp - 0x288], rsi
	call	get_stat_ctime
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	r8, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, qword ptr [rbp - 0x288]
	mov	rdx, qword ptr [rbp - 0x280]
	call	out_epoch_sec
	jmp	.label_407
.label_1587:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	out_file_context
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	jmp	.label_407
.label_409:
	mov	edi, 0x3f
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x28c], eax
.label_407:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_412:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x290
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d90

	.globl out_uint_o
	.type out_uint_o, @function
out_uint_o:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.66
	movabs	rcx, OFFSET FLAT:.str.197
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405de0

	.globl human_access
	.type human_access, @function
human_access:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:human_access.modebuf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	filemodestring
	movabs	rax, OFFSET FLAT:human_access.modebuf
	mov	byte ptr [byte ptr [label_420]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e20

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rax, OFFSET FLAT:.str.198
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 1
	test	byte ptr [byte ptr [follow_links]],  1
	jne	.label_426
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_422
.label_426:
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_423
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.199
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_421
.label_423:
	mov	rdi, qword ptr [rbp - 0x48]
	call	find_bind_mount
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_430
	mov	byte ptr [rbp - 0x39], 0
	jmp	.label_421
.label_430:
	jmp	.label_422
.label_422:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	find_mount_point
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	je	.label_425
	mov	rdi, qword ptr [rbp - 0x38]
	call	find_bind_mount
	mov	qword ptr [rbp - 0x30], rax
	mov	byte ptr [rbp - 0x39], 0
.label_425:
	jmp	.label_421
.label_421:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x68], rsi
	je	.label_429
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_424
.label_429:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_427
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_428
.label_427:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
.label_428:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_424:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	call	out_string
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl get_birthtime
	.type get_birthtime, @function
get_birthtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, rdx
	call	get_stat_birthtime
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	movups	xmm0, xmmword ptr [rbp - 0x38]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406000

	.globl human_time
	.type human_time, @function
human_time:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [word ptr [human_time.tz]],  0
	jne	.label_431
	movabs	rdi, OFFSET FLAT:.str_2
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [human_time.tz]],  rax
.label_431:
	lea	rdx, [rbp - 0x48]
	lea	rsi, [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi,  qword ptr [word ptr [human_time.tz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_433
	movabs	rdi, OFFSET FLAT:human_time.str
	mov	eax, 0x3d
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str.203
	lea	rcx, [rbp - 0x48]
	mov	r8,  qword ptr [word ptr [human_time.tz]]
	mov	r9d, dword ptr [rbp - 0x4c]
	call	nstrftime
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_432
.label_433:
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x10]
	call	timetostr
	movabs	rdi, OFFSET FLAT:human_time.str
	movabs	rsi, OFFSET FLAT:.str.204
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x7c], eax
.label_432:
	movabs	rax, OFFSET FLAT:human_time.str
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060f0

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	esi, 0x2e
	call	memchr
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_447
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rax + 1]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_456
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	rdi, rcx
	call	strtol
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0x7fffffff
	jg	.label_442
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_448
.label_442:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x40], ecx
	jmp	.label_454
.label_456:
	mov	dword ptr [rbp - 0x40], 9
.label_454:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_451
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_451
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
.label_438:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_438
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x58]
	call	strtol
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0x7fffffff
	jg	.label_452
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_457
.label_452:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_457
.label_457:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, 1
	mov	edx, eax
	mov	dword ptr [rbp - 0x3c], edx
	cmp	ecx, dword ptr [rbp - 0x3c]
	jge	.label_464
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	cmp	rax, rsi
	jae	.label_439
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_458
.label_439:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_458
.label_458:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, 1
	mov	edx, eax
	mov	dword ptr [rbp - 0x64], edx
	cmp	ecx, dword ptr [rbp - 0x64]
	jge	.label_441
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sub	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x68], ecx
	cmp	eax, dword ptr [rbp - 0x68]
	jge	.label_443
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
.label_466:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_437
	mov	rax, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_455
	mov	byte ptr [rbp - 0x41], 1
	jmp	.label_460
.label_455:
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], cl
.label_460:
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_466
.label_437:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	test	byte ptr [rbp - 0x41], 1
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_461
	xor	eax, eax
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_435
.label_461:
	movabs	rsi, OFFSET FLAT:.str.205
	mov	rdi, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rbp - 0x68]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xc4], eax
.label_435:
	mov	eax, dword ptr [rbp - 0xc4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xc0]
	add	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
.label_443:
	jmp	.label_441
.label_441:
	jmp	.label_464
.label_464:
	jmp	.label_451
.label_451:
	jmp	.label_447
.label_447:
	mov	dword ptr [rbp - 0x7c], 1
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x80], eax
.label_444:
	cmp	dword ptr [rbp - 0x80], 9
	jge	.label_440
	imul	eax, dword ptr [rbp - 0x7c], 0xa
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, 1
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_444
.label_440:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 0x7c]
	cqo	
	idiv	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x84], esi
	mov	byte ptr [rbp - 0x89], 0
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_449
	cmp	qword ptr [rbp - 8], 0
	je	.label_449
	mov	eax, 0x3b9aca00
	cdq	
	idiv	dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0xc8], eax
	mov	rax, rcx
	cqo	
	idiv	rsi
	cmp	rdx, 0
	setne	dil
	and	dil, 1
	movzx	r8d, dil
	mov	r9d, dword ptr [rbp - 0xc8]
	sub	r9d, r8d
	mov	dword ptr [rbp - 0x84], r9d
	cmp	dword ptr [rbp - 0x84], 0
	setne	dil
	and	dil, 1
	movzx	r8d, dil
	movsxd	rcx, r8d
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	cmp	qword ptr [rbp - 0x10], 0
	sete	dil
	and	dil, 1
	mov	byte ptr [rbp - 0x89], dil
.label_449:
	test	byte ptr [rbp - 0x89], 1
	je	.label_463
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	out_minus_zero
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_465
.label_463:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	call	out_int
	mov	dword ptr [rbp - 0xcc], eax
.label_465:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x88], eax
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_446
	cmp	dword ptr [rbp - 0x40], 9
	jge	.label_450
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_453
.label_450:
	mov	eax, 9
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_453
.label_453:
	mov	eax, dword ptr [rbp - 0xd0]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x94]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x88], 0
	jge	.label_462
	xor	eax, eax
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_436
.label_462:
	mov	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xd4], eax
.label_436:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	dword ptr [rbp - 0x9c], eax
	mov	eax, dword ptr [rbp - 0x9c]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_445
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	ecx, dword ptr [rbp - 0x3c]
	sub	ecx, dword ptr [rbp - 0x9c]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jae	.label_445
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x9c]
	movsxd	rcx, eax
	sub	rcx,  qword ptr [word ptr [decimal_point_len]]
	movsxd	rdx, dword ptr [rbp - 0x94]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_434
.label_445:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0xe0]
	movabs	rdi, OFFSET FLAT:.str.206
	xor	ecx, ecx
	mov	edx, eax
	mov	dword ptr [rbp - 0xa0], edx
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	edx, dword ptr [rbp - 0x94]
	mov	r8d, dword ptr [rbp - 0x84]
	mov	r9d, dword ptr [rbp - 0xa0]
	mov	r10d, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0xe4], ecx
	mov	ecx, r8d
	mov	r8d, r9d
	mov	r9d, r10d
	mov	dword ptr [rsp], 0
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xe8], eax
.label_446:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406680

	.globl neg_to_zero
	.type neg_to_zero, @function
neg_to_zero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rcx, qword ptr [rbp - 0x18]
	jg	.label_467
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_468
.label_467:
	xor	esi, esi
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x30]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rcx
.label_468:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066f0

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x21], 0
	test	byte ptr [byte ptr [follow_links]],  1
	je	.label_473
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	call	getfilecon
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_469
.label_473:
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	call	lgetfilecon
	mov	dword ptr [rbp - 0x28], eax
.label_469:
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, 0
	jge	.label_474
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.208
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 1
.label_474:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str.65
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdi
	je	.label_470
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_471
.label_470:
	movabs	rax, OFFSET FLAT:.str.198
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	printf
	cmp	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x54], eax
	je	.label_472
	mov	rdi, qword ptr [rbp - 0x20]
	call	freecon
.label_472:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406820

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	test	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
	jne	.label_481
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [find_bind_mount.mount_list]],  rax
	cmp	rax, 0
	jne	.label_477
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.201
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rbp - 0x144]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_477:
	mov	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
.label_481:
	lea	rsi, [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	je	.label_482
	mov	qword ptr [rbp - 8], 0
	jmp	.label_483
.label_482:
	mov	rax,  qword ptr [word ptr [find_bind_mount.mount_list]]
	mov	qword ptr [rbp - 0xb0], rax
.label_479:
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_480
	mov	rax, qword ptr [rbp - 0xb0]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_476
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_476
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	jne	.label_476
	lea	rsi, [rbp - 0x140]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax]
	call	stat
	cmp	eax, 0
	jne	.label_475
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x138]
	jne	.label_475
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0x140]
	jne	.label_475
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_480
.label_475:
	jmp	.label_476
.label_476:
	jmp	.label_478
.label_478:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_479
.label_480:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_483:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x150
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069c0

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069f0

	.globl out_minus_zero
	.type out_minus_zero, @function
out_minus_zero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdx, OFFSET FLAT:.str.190
	movabs	rcx, OFFSET FLAT:.str.207
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	make_format
	movsd	xmm0,  qword ptr [word ptr [label_484]]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 1
	call	printf
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a40

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xc0], 0
	mov	rdi, rax
	call	save_cwd
	cmp	eax, 0
	je	.label_495
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x188], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x188]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_487
.label_495:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_489
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	cmp	eax, 0
	jge	.label_499
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_487
.label_499:
	jmp	.label_492
.label_489:
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0xe0], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
	mov	rdi, qword ptr [rbp - 0xd0]
	call	chdir
	cmp	eax, 0
	jge	.label_498
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_487
.label_498:
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rsi, [rbp - 0xb8]
	call	stat
	cmp	eax, 0
	jge	.label_496
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_490
.label_496:
	jmp	.label_492
.label_492:
	jmp	.label_493
.label_493:
	movabs	rdi, OFFSET FLAT:.str.4_0
	lea	rsi, [rbp - 0x180]
	call	stat
	cmp	eax, 0
	jge	.label_494
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x1d0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_490
.label_494:
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0xb8]
	jne	.label_491
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_486
.label_491:
	jmp	.label_497
.label_486:
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	chdir
	cmp	eax, 0
	jge	.label_485
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x1e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1d4]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_490
.label_485:
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x180]
	lea	rsi, [rbp - 0xb8]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	jmp	.label_493
.label_497:
	call	xgetcwd
	mov	qword ptr [rbp - 0xc0], rax
.label_490:
	call	__errno_location
	lea	rdi, [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x184], ecx
	call	restore_cwd
	cmp	eax, 0
	je	.label_488
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.6_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1e4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1e4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_488:
	lea	rdi, [rbp - 0x28]
	call	free_cwd
	mov	eax, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0x1e8], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1e8]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 8], rax
.label_487:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ea0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_506
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_501
.label_506:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_501:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_507
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_512
.label_507:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_512:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_500:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_509
	mov	qword ptr [rbp - 8], 0
	jmp	.label_504
.label_509:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_503
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_503
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_504
.label_503:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_508
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_504
.label_508:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_505
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_510
.label_505:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_511
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_502
.label_511:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_504
.label_502:
	jmp	.label_510
.label_510:
	jmp	.label_500
.label_504:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407060

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x407070

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
.label_518:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_520
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_517
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_523
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_516
.label_523:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_513
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_515
.label_513:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_521
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
	je	.label_519
.label_521:
	mov	byte ptr [rbp - 0x41], 1
.label_519:
	jmp	.label_515
.label_515:
	jmp	.label_522
.label_522:
	jmp	.label_517
.label_517:
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_518
.label_520:
	test	byte ptr [rbp - 0x41], 1
	je	.label_514
	mov	qword ptr [rbp - 8], -2
	jmp	.label_516
.label_514:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_516:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071c0

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
	jne	.label_525
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_526
.label_525:
	movabs	rdi, OFFSET FLAT:.str.1_1
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_526:
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
	#Procedure 0x407260

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
.label_530:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_528
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_531
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_529
.label_531:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_1
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
	jmp	.label_527
.label_529:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_527:
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_530
.label_528:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073b0
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
	jl	.label_534
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_533
.label_534:
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
.label_533:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407440
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
.label_537:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_535
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_536
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_539
.label_536:
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_537
.label_535:
	mov	qword ptr [rbp - 8], 0
.label_539:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074e0
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
	#Procedure 0x407500
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
	#Procedure 0x407520

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_542
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_544
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_542
.label_544:
	movabs	rdi, OFFSET FLAT:.str_6
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_540
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_2
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_541
.label_540:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_541:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_542:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_543
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_543:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_545
	call	xalloc_die
.label_545:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407650

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_546
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_551
.label_546:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_551:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_548:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_547
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_549
	jmp	.label_547
.label_549:
	jmp	.label_550
.label_550:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_548
.label_547:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407700

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
	je	.label_552
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_552
.label_552:
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
	jne	.label_554
	mov	qword ptr [rbp - 8], 0
	jmp	.label_553
.label_554:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_555
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_555:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_553:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077d0

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_561:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_562
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_561
.label_562:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_556:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_558
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_563
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_557
.label_563:
	test	byte ptr [rbp - 0x19], 1
	je	.label_560
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_560:
	jmp	.label_557
.label_557:
	jmp	.label_559
.label_559:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_556
.label_558:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407870
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
.label_567:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_564
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_564:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_566
	jmp	.label_568
.label_566:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_567
.label_568:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407900

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_578
	movabs	rdi, OFFSET FLAT:.str_7
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_570
.label_578:
	movabs	rdi, OFFSET FLAT:.str.1_3
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_570:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_569:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_581
	movabs	rdi, OFFSET FLAT:.str.2_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_581:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_577
	movabs	rdi, OFFSET FLAT:.str.3_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_577:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_575
	movabs	rdi, OFFSET FLAT:.str.4_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_575:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_580
	movabs	rdi, OFFSET FLAT:.str.5_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_580:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_579
	movabs	rdi, OFFSET FLAT:.str.6_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_579:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_576
	movabs	rdi, OFFSET FLAT:.str.7_0
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_576:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	jne	.label_573
	movabs	rdi, OFFSET FLAT:.str.8_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_573:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	jne	.label_572
	movabs	rdi, OFFSET FLAT:.str.9_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_572:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xc000
	jne	.label_574
	movabs	rdi, OFFSET FLAT:.str.10_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_574:
	movabs	rdi, OFFSET FLAT:.str.11_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_571:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b40

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	mov	edx, 0x72
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x80
	cmp	edx, 0
	cmovne	edi, ecx
	mov	al, dil
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	cmp	ecx, 0
	je	.label_585
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_584
.label_585:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_584:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x20
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x10
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_587
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_586
.label_587:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_586:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 4
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_583
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_582
.label_583:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_582:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xb], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d40

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_588
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_590
.label_588:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_591
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_590
.label_591:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_589
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_590
.label_589:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_595
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_590
.label_595:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_594
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_590
.label_594:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_593
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_590
.label_593:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_592
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_590
.label_592:
	mov	byte ptr [rbp - 1], 0x3f
.label_590:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e20

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	cmp	edi, 0
	je	.label_596
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_598
.label_596:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_597
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_601
.label_597:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_599
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_600
.label_599:
	jmp	.label_600
.label_600:
	jmp	.label_601
.label_601:
	jmp	.label_598
.label_598:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ec0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
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
	jge	.label_602
	jmp	.label_605
.label_605:
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
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_604
.label_602:
	jmp	.label_603
.label_603:
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
	jne	.label_603
	jmp	.label_604
.label_604:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fc0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	mov	r10d, 0xffffffff
	lea	r11, [rbp - 0x2d]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	byte ptr [rbp - 0x2d], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	mov	r9d, eax
	mov	dword ptr [rsp], 0xffffffff
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408050

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x9d8
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8d, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_628
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x70], rax
.label_628:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_661
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_665
.label_661:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_670
	mov	dword ptr [rbp - 0x68], 0xc
.label_670:
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_820:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_678
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_983
	jmp	.label_701
.label_701:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_703
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_709
.label_703:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_709:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_716
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_724
.label_716:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_724:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_732
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_732:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_742
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_775
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_775
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1024
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_758
.label_1024:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_766
.label_758:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_766:
	jmp	.label_775
.label_775:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_742:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_778
.label_983:
	jmp	.label_781
.label_781:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_728
	jmp	.label_780
.label_780:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_788
	jmp	.label_802
.label_802:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_788
	jmp	.label_807
.label_807:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_788
	jmp	.label_812
.label_812:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_813
	jmp	.label_771
.label_771:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_819
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_781
.label_813:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_781
.label_728:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_781
.label_819:
	jmp	.label_831
.label_831:
	jmp	.label_833
.label_833:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_835
	mov	dword ptr [rbp - 0x4c], 0
.label_852:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_839
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_842
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_842
.label_839:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_849
.label_842:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_849:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_852
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_860
	jmp	.label_868
.label_868:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_870
	jmp	.label_860
.label_860:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_866
.label_870:
	mov	dword ptr [rbp - 0x90], 0
.label_866:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x794], ecx
	je	.label_885
	jmp	.label_889
.label_889:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x798], eax
	je	.label_890
	jmp	.label_896
.label_896:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x79c], eax
	je	.label_897
	jmp	.label_900
.label_900:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x7a0], eax
	je	.label_901
	jmp	.label_905
.label_905:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0x7a4], eax
	je	.label_907
	jmp	.label_910
.label_910:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x7a8], eax
	je	.label_912
	jmp	.label_914
.label_914:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x7ac], eax
	je	.label_711
	jmp	.label_921
.label_921:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x7b0], eax
	je	.label_746
	jmp	.label_926
.label_926:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7b4], eax
	je	.label_928
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x7b8], eax
	je	.label_931
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x7bc], eax
	je	.label_934
	jmp	.label_937
.label_937:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x7c0], eax
	je	.label_939
	jmp	.label_847
.label_847:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_942
	jmp	.label_945
.label_945:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7c8], eax
	je	.label_946
	jmp	.label_950
.label_950:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x7cc], eax
	je	.label_952
	jmp	.label_957
.label_957:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7d0], eax
	je	.label_979
	jmp	.label_959
.label_959:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7d4], eax
	je	.label_960
	jmp	.label_962
.label_962:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x55
	mov	dword ptr [rbp - 0x7d8], eax
	je	.label_964
	jmp	.label_969
.label_969:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x7dc], eax
	je	.label_928
	jmp	.label_972
.label_972:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x7e0], eax
	je	.label_974
	jmp	.label_977
.label_977:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x7e4], eax
	je	.label_978
	jmp	.label_982
.label_982:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x7e8], eax
	je	.label_984
	jmp	.label_990
.label_990:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x7ec], eax
	je	.label_992
	jmp	.label_996
.label_996:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x7f0], eax
	je	.label_836
	jmp	.label_1001
.label_1001:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x7f4], eax
	je	.label_1003
	jmp	.label_1006
.label_1006:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x7f8], eax
	je	.label_1009
	jmp	.label_1013
.label_1013:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_1015
	jmp	.label_1017
.label_1017:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x800], eax
	je	.label_948
	jmp	.label_1020
.label_1020:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x804], eax
	je	.label_928
	jmp	.label_1004
.label_1004:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x808], eax
	je	.label_1003
	jmp	.label_606
.label_606:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x80c], eax
	je	.label_608
	jmp	.label_612
.label_612:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x810], eax
	je	.label_614
	jmp	.label_620
.label_620:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x814], eax
	je	.label_621
	jmp	.label_730
.label_730:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x818], eax
	je	.label_630
	jmp	.label_632
.label_632:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x81c], eax
	je	.label_633
	jmp	.label_792
.label_792:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x820], eax
	je	.label_799
	jmp	.label_645
.label_645:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x824], eax
	je	.label_646
	jmp	.label_651
.label_651:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x828], eax
	je	.label_855
	jmp	.label_655
.label_655:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x82c], eax
	je	.label_657
	jmp	.label_664
.label_664:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x830], eax
	je	.label_667
	jmp	.label_673
.label_673:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x834], eax
	je	.label_675
	jmp	.label_967
.label_967:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x838], eax
	je	.label_681
	jmp	.label_677
.label_677:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_720
	jmp	.label_1027
.label_1027:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x840], eax
	je	.label_695
	jmp	.label_700
.label_700:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x844], eax
	je	.label_702
	jmp	.label_708
.label_890:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_712
	jmp	.label_623
.label_712:
	jmp	.label_723
.label_723:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_717
	xor	eax, eax
	mov	dword ptr [rbp - 0x848], eax
	jmp	.label_722
.label_717:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x848], eax
.label_722:
	mov	eax, dword ptr [rbp - 0x848]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_727
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_734
.label_727:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x850], rax
.label_734:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_741
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_741:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_753
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_756
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_756
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_763
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_769
.label_763:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_773
.label_769:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_773:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_753:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_643
.label_836:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_796
	jmp	.label_623
.label_796:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_798
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_798:
	jmp	.label_690
.label_901:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_805
	jmp	.label_623
.label_805:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_810
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_810:
	jmp	.label_690
.label_1003:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_816
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_816:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_821
	jmp	.label_623
.label_821:
	jmp	.label_690
.label_907:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_825
	jmp	.label_623
.label_825:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_828
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_828:
	jmp	.label_690
.label_1009:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_837
	jmp	.label_623
.label_837:
	jmp	.label_690
.label_739:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_981:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_853
	xor	eax, eax
	mov	dword ptr [rbp - 0x854], eax
	jmp	.label_859
.label_853:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x854], eax
.label_859:
	mov	eax, dword ptr [rbp - 0x854]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_862
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_872
.label_862:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x860], rax
.label_872:
	mov	rax, qword ptr [rbp - 0x860]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_877
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_877:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_888
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_891
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_891
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_997
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_902
.label_997:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_911
.label_902:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_911:
	jmp	.label_891
.label_891:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	byte ptr [rbp - 0x861], sil
	mov	rsi, rax
	mov	r14b, byte ptr [rbp - 0x861]
	movzx	r15d, r14b
	mov	dword ptr [rbp - 0x868], r8d
	mov	r8d, r15d
	mov	r15d, dword ptr [rbp - 0x868]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x870], rax
.label_888:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_643
.label_690:
	lea	rax, [rbp - 0x16d]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_949
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_949:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x178]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x178], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	mov	qword ptr [rbp - 0x588], rax
	cmp	qword ptr [rbp - 0x588], 0
	je	.label_676
	jmp	.label_751
.label_751:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_988
	xor	eax, eax
	mov	dword ptr [rbp - 0x874], eax
	jmp	.label_994
.label_988:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x874], eax
.label_994:
	mov	eax, dword ptr [rbp - 0x874]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_999
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x880], rax
	jmp	.label_881
.label_999:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x880], rax
.label_881:
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_920
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_920:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1021
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_634
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_634
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1029
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_611
.label_1029:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_622
.label_611:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_622:
	jmp	.label_634
.label_634:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_637
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_647
.label_637:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_650
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x890], rax
	jmp	.label_659
.label_650:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_659:
	jmp	.label_647
.label_647:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1021:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_676
.label_676:
	jmp	.label_643
.label_912:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_685
	jmp	.label_690
.label_685:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x894], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x894]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x895], cl
	jge	.label_691
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x895], cl
.label_691:
	mov	al, byte ptr [rbp - 0x895]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ac]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_610
.label_720:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_804
	jmp	.label_623
.label_804:
	jmp	.label_690
.label_711:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_832
	jmp	.label_623
.label_832:
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_739
.label_1015:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_744
	jmp	.label_623
.label_744:
	jmp	.label_749
.label_749:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_626
.label_948:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_757
	jmp	.label_623
.label_757:
	jmp	.label_760
.label_760:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_762
.label_615:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_767
.label_610:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_770
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_770:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x896], cl
	jne	.label_772
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x897], al
	jb	.label_641
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x897], cl
.label_641:
	mov	al, byte ptr [rbp - 0x897]
	mov	byte ptr [rbp - 0x896], al
.label_772:
	mov	al, byte ptr [rbp - 0x896]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_787
.label_762:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_793
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_793:
	jmp	.label_626
.label_626:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_638:
	mov	byte ptr [rbp - 0x9e], 0
.label_787:
	mov	dword ptr [rbp - 0xa4], 0
.label_767:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_809
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_809
	jmp	.label_690
.label_809:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_815
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_815:
	jmp	.label_823
.label_823:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_824
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_824:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x89c], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x89c]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x89d], al
	jne	.label_834
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x89d], al
.label_834:
	mov	al, byte ptr [rbp - 0x89d]
	test	al, 1
	jne	.label_823
	jmp	.label_854
.label_854:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_857
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_857:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_861
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x8a4], eax
	jmp	.label_864
.label_861:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x8a4], eax
.label_864:
	mov	eax, dword ptr [rbp - 0x8a4]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_874
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_879
	jmp	.label_882
.label_882:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_884
	xor	eax, eax
	mov	dword ptr [rbp - 0x8a8], eax
	jmp	.label_886
.label_884:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8a8], eax
.label_886:
	mov	eax, dword ptr [rbp - 0x8a8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_893
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8b0], rax
	jmp	.label_899
.label_893:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x8b0], rax
.label_899:
	mov	rax, qword ptr [rbp - 0x8b0]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_906
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_906:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_916
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_738
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_738
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_923
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_929
.label_923:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_935
.label_929:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_935:
	jmp	.label_738
.label_738:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_916:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_879
.label_879:
	jmp	.label_865
.label_874:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	sub	rcx, rax
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	jle	.label_954
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_968
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_971
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_971:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_976
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_976:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_989
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_995
.label_989:
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_995
.label_995:
	mov	eax, dword ptr [rbp - 0x8b4]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_666
	jmp	.label_1007
.label_1007:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1011
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b8], eax
	jmp	.label_1014
.label_1011:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8b8], eax
.label_1014:
	mov	eax, dword ptr [rbp - 0x8b8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_1016
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x8c0], rax
	jmp	.label_1022
.label_1016:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x8c0], rax
.label_1022:
	mov	rax, qword ptr [rbp - 0x8c0]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1026
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_1026:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_617
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_619
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_619
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_631
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_635
.label_631:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_644
.label_635:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_644:
	jmp	.label_619
.label_619:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_617:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_666
.label_666:
	jmp	.label_672
.label_968:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_674
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_674:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_682
	jmp	.label_1000
.label_1000:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1005
	xor	eax, eax
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_693
.label_1005:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8c4], eax
.label_693:
	mov	eax, dword ptr [rbp - 0x8c4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_639
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x8d0], rax
	jmp	.label_713
.label_639:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x8d0], rax
.label_713:
	mov	rax, qword ptr [rbp - 0x8d0]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_719
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_719:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_731
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_733
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_733
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_740
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_748
.label_740:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_755
.label_748:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_755:
	jmp	.label_733
.label_733:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_731:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_682
.label_682:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_774
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_774:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_672:
	jmp	.label_786
.label_954:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_789
	jmp	.label_791
.label_791:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_795
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_993
.label_795:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_993:
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_822
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x8e0], rax
	jmp	.label_811
.label_822:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x8e0], rax
.label_811:
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_817
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_817:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_826
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_827
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_827
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1008
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_840
.label_1008:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_848
.label_840:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_848:
	jmp	.label_827
.label_827:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_826:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_789
.label_789:
	jmp	.label_786
.label_786:
	jmp	.label_865
.label_865:
	jmp	.label_867
.label_867:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_869
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e4], eax
	jmp	.label_876
.label_869:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e4], eax
.label_876:
	mov	eax, dword ptr [rbp - 0x8e4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_880
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_887
.label_880:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x8f0], rax
.label_887:
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_895
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_895:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_904
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_908
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_908
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_776
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_919
.label_776:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_927
.label_919:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_927:
	jmp	.label_908
.label_908:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_845
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_941
.label_845:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_943
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x900], rax
	jmp	.label_938
.label_943:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_938:
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_904:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_643
.label_746:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_961
	jmp	.label_623
.label_961:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_965
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_965
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_970
.label_965:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_973
	mov	dword ptr [rbp - 0xfc], 0
.label_973:
	jmp	.label_970
.label_970:
	movabs	rax, OFFSET FLAT:.str.2_2
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_981
.label_931:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_987
	jmp	.label_623
.label_987:
	jmp	.label_991
.label_991:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_626
.label_934:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_841
	jmp	.label_623
.label_841:
	jmp	.label_858
.label_858:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_626
.label_614:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1010
	jmp	.label_623
.label_1010:
	jmp	.label_1012
.label_1012:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_762
.label_621:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1018
	jmp	.label_623
.label_1018:
	jmp	.label_1019
.label_1019:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_762
.label_608:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1023
	jmp	.label_623
.label_1023:
	jmp	.label_1028
.label_1028:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_638
.label_939:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_618
	jmp	.label_623
.label_618:
	jmp	.label_625
.label_625:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_626
.label_630:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_660
	jmp	.label_623
.label_660:
	jmp	.label_636
.label_636:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_638
.label_942:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_844
	jmp	.label_623
.label_844:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_652
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_656
.label_652:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_668:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_662
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x904], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x904]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	add	eax, 1
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_668
.label_662:
	jmp	.label_656
.label_656:
	jmp	.label_684
.label_684:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_626
.label_633:
	jmp	.label_692
.label_692:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_694
	xor	eax, eax
	mov	dword ptr [rbp - 0x908], eax
	jmp	.label_698
.label_694:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x908], eax
.label_698:
	mov	eax, dword ptr [rbp - 0x908]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_706
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x910], rax
	jmp	.label_729
.label_706:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x910], rax
.label_729:
	mov	rax, qword ptr [rbp - 0x910]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_725
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_725:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_736
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_737
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_737
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_745
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_915
.label_745:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_759
.label_915:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_759:
	jmp	.label_737
.label_737:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_736:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_643
.label_946:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_799:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_683
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_683:
	jmp	.label_690
.label_646:
	jmp	.label_784
.label_784:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_638
.label_952:
	movabs	rax, OFFSET FLAT:.str.3_3
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_739
.label_855:
	jmp	.label_690
.label_979:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_803
	jmp	.label_623
.label_803:
	jmp	.label_806
.label_806:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_626
.label_657:
	lea	rax, [rbp - 0x6b8]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x918], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x918]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_850:
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
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_830
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
	jmp	.label_843
.label_830:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
.label_843:
	mov	eax, dword ptr [rbp - 0x91c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_850
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_854
.label_978:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_782
	jmp	.label_623
.label_782:
	jmp	.label_690
.label_960:
	movabs	rax, OFFSET FLAT:.str.4_3
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_739
.label_667:
	jmp	.label_686
.label_686:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_871
	xor	eax, eax
	mov	dword ptr [rbp - 0x920], eax
	jmp	.label_875
.label_871:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x920], eax
.label_875:
	mov	eax, dword ptr [rbp - 0x920]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_878
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_933
.label_878:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x928], rax
.label_933:
	mov	rax, qword ptr [rbp - 0x928]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_894
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_894:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1025
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_909
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_913
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_918
.label_913:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_765
.label_918:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_765:
	jmp	.label_909
.label_909:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1025:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_643
.label_675:
	jmp	.label_940
.label_940:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x92c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_626
.label_964:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_951
	jmp	.label_623
.label_951:
	jmp	.label_955
.label_955:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x930], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_626
.label_928:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_966
	jmp	.label_623
.label_966:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_980
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	sub	edi, 1
	mov	dword ptr [rbp - 0x934], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x934]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x938], esi
	mov	byte ptr [rbp - 0x939], cl
	jne	.label_985
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x93a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x93a]
	mov	byte ptr [rbp - 0x93b], sil
	jne	.label_1002
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x940], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x940]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x93b], sil
.label_1002:
	mov	al, byte ptr [rbp - 0x93b]
	mov	byte ptr [rbp - 0x939], al
.label_985:
	mov	al, byte ptr [rbp - 0x939]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x938]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	jmp	.label_669
.label_980:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x944], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x944]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x948], esi
	mov	byte ptr [rbp - 0x949], cl
	jne	.label_607
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	mov	byte ptr [rbp - 0x94a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x94a]
	mov	byte ptr [rbp - 0x94b], sil
	jne	.label_624
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x950], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x950]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x94b], sil
.label_624:
	mov	al, byte ptr [rbp - 0x94b]
	mov	byte ptr [rbp - 0x949], al
.label_607:
	mov	al, byte ptr [rbp - 0x949]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x948]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_654
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_654:
	jmp	.label_669
.label_669:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x954], ecx
	mov	dword ptr [rbp - 0x958], edx
	je	.label_671
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0x954]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x95c], eax
	jne	.label_680
	jmp	.label_687
.label_687:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x960], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x960]
	idiv	esi
	add	edx, dword ptr [rbp - 0x6f0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	jg	.label_689
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_710
.label_689:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_715
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x968], eax
	jmp	.label_721
.label_715:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x968], eax
.label_721:
	mov	eax, dword ptr [rbp - 0x968]
	mov	dword ptr [rbp - 0x964], eax
.label_710:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_610
.label_671:
	jmp	.label_735
.label_735:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_610
.label_680:
	jmp	.label_752
.label_752:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x96c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x96c]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_626
.label_974:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_764
	jmp	.label_623
.label_764:
	jmp	.label_998
.label_998:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0x970], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x974], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x970]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x974]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_626
.label_681:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_779
	jmp	.label_623
.label_779:
	jmp	.label_783
.label_783:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_626
.label_984:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_794
	jmp	.label_690
.label_794:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_797
	jmp	.label_623
.label_797:
	jmp	.label_800
.label_800:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_610
.label_695:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_814
	jmp	.label_690
.label_814:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x978], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x978]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	jge	.label_616
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_925
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x97c], eax
	jmp	.label_829
.label_925:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x97c], eax
.label_829:
	mov	eax, dword ptr [rbp - 0x97c]
	mov	dword ptr [rbp - 0x700], eax
.label_616:
	jmp	.label_838
.label_838:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_610
.label_992:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_846
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_846:
	jmp	.label_707
.label_707:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_851
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	jmp	.label_750
.label_851:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x980], eax
.label_750:
	mov	eax, dword ptr [rbp - 0x980]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_856
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x988], rax
	jmp	.label_863
.label_856:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x988], rax
.label_863:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_873
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_873:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_883
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_699
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_699
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_892
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_898
.label_892:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_903
.label_898:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_903:
	jmp	.label_699
.label_699:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_917
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x990], rax
	jmp	.label_922
.label_917:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_924
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x998], rax
	jmp	.label_808
.label_924:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_808:
	jmp	.label_922
.label_922:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_883:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_643
.label_897:
	mov	qword ptr [rbp - 0xf0], 1
.label_936:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_944
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_936
.label_944:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_953
	jmp	.label_623
.label_953:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_958
.label_702:
	mov	qword ptr [rbp - 0xf0], 0
.label_958:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_963
	jmp	.label_643
.label_963:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x999], al
	jl	.label_648
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x99a], cl
	jne	.label_975
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x99a], dl
.label_975:
	mov	al, byte ptr [rbp - 0x99a]
	mov	byte ptr [rbp - 0x999], al
.label_648:
	mov	al, byte ptr [rbp - 0x999]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x728], edx
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
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
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x9a8], rcx
	mov	qword ptr [rbp - 0x9b0], r8
	ja	.label_986
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_609]]
	jmp	rcx
.label_1716:
	jmp	.label_613
.label_613:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_615
.label_1717:
	jmp	.label_627
.label_627:
	jmp	.label_629
.label_629:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_615
.label_1718:
	jmp	.label_640
.label_640:
	jmp	.label_642
.label_642:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_615
.label_1719:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_653
	jmp	.label_640
.label_653:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_658
	jmp	.label_627
.label_658:
	jmp	.label_663
.label_663:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_615
.label_986:
	jmp	.label_623
.label_885:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_708:
	jmp	.label_623
.label_623:
	mov	dword ptr [rbp - 0x734], 1
.label_697:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_688
	jmp	.label_696
.label_696:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_697
.label_688:
	jmp	.label_704
.label_704:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_705
	xor	eax, eax
	mov	dword ptr [rbp - 0x9b4], eax
	jmp	.label_714
.label_705:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x9b4], eax
.label_714:
	mov	eax, dword ptr [rbp - 0x9b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_718
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x9c0], rax
	jmp	.label_726
.label_718:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x9c0], rax
.label_726:
	mov	rax, qword ptr [rbp - 0x9c0]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_818
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_649
.label_818:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_743
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_747
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_747
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_754
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_761
.label_754:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_768
.label_761:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_768:
	jmp	.label_747
.label_747:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_777
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x9c8], rax
	jmp	.label_785
.label_777:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_790
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x9d0], rax
	jmp	.label_801
.label_790:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_801:
	jmp	.label_785
.label_785:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_743:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_643
.label_643:
	jmp	.label_778
.label_778:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_820
.label_678:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_956
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_956
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_956:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_649:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x9d8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b400

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1031:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1030
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1031
.label_1030:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b460

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1033:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1032
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1033
.label_1032:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4c0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rsp
	mov	eax, 7
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	add	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	sub	esi, 1
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b500

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1034
	movabs	rdi, OFFSET FLAT:.str_8
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1034:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1035
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1037
.label_1035:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1037:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1036
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1036
	movabs	rsi, OFFSET FLAT:.str.2_3
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1038
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1038:
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b620
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
	je	.label_1039
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1040
.label_1039:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1040
.label_1040:
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
	#Procedure 0x40b6a0

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1041
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1042
.label_1041:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b6e0

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
	je	.label_1043
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1044
.label_1043:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1044
.label_1044:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b730

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
	je	.label_1045
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1046
.label_1045:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1046
.label_1046:
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
	#Procedure 0x40b7e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1047
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1047:
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
	#Procedure 0x40b820

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
	jne	.label_1048
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1048:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1050
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1049
.label_1050:
	call	abort
.label_1049:
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
	#Procedure 0x40b890
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
	je	.label_1051
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1052
.label_1051:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1052
.label_1052:
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
	#Procedure 0x40b960

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
.label_1245:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1159
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1164]]
	jmp	rcx
.label_1727:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1726:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1172
	jmp	.label_1175
.label_1175:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1176
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1176:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1172
.label_1172:
	movabs	rax, OFFSET FLAT:.str.10_2
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1183
.label_1728:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1183
.label_1729:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1193
	movabs	rdi, OFFSET FLAT:.str.11_2
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1193:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1206
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1202:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1209
	jmp	.label_1212
.label_1212:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1214
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1214:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1218
.label_1218:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1202
.label_1209:
	jmp	.label_1206
.label_1206:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1183
.label_1724:
	mov	byte ptr [rbp - 0x79], 1
.label_1723:
	mov	byte ptr [rbp - 0x7b], 1
.label_1725:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1234
	mov	byte ptr [rbp - 0x79], 1
.label_1234:
	jmp	.label_1086
.label_1086:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1093
	jmp	.label_1113
.label_1113:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1240
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1240:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1093
.label_1093:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1183
.label_1722:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1183
.label_1159:
	call	abort
.label_1183:
	mov	qword ptr [rbp - 0x58], 0
.label_1220:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1228
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1252
.label_1228:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1252:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1062
	jmp	.label_1071
.label_1062:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1073
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1073
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1073
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1087
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1087
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1173
.label_1087:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1173:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1073
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1073
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1115
	jmp	.label_1068
.label_1115:
	mov	byte ptr [rbp - 0x81], 1
.label_1073:
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
	ja	.label_1190
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1128]]
	jmp	rcx
.label_1661:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1129
	jmp	.label_1072
.label_1072:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1081
	jmp	.label_1068
.label_1081:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1103
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1103
	jmp	.label_1140
.label_1140:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1141
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1141:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1144
.label_1144:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1188
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1188:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1152
.label_1152:
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
	mov	byte ptr [rbp - 0x7c], 1
.label_1103:
	jmp	.label_1165
.label_1165:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1167
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1167:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1125
.label_1125:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1178
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1178
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1178
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1178
	jmp	.label_1191
.label_1191:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1238
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1238:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1199
.label_1199:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1203
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1203:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1178
.label_1178:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1213
.label_1129:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1216
	jmp	.label_1079
.label_1216:
	jmp	.label_1213
.label_1213:
	jmp	.label_1114
.label_1672:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1219
	jmp	.label_1225
.label_1225:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1227
	jmp	.label_1229
.label_1219:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1231
	jmp	.label_1068
.label_1231:
	jmp	.label_1119
.label_1227:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1117
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1117
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1117
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1109
	jmp	.label_1244
.label_1244:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1109
	jmp	.label_1247
.label_1247:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1109
	jmp	.label_1253
.label_1253:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1109
	jmp	.label_1056
.label_1056:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1058
	jmp	.label_1109
.label_1109:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1064
	jmp	.label_1068
.label_1064:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1070
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1070:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1084
.label_1084:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1089
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1089:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1096
.label_1096:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1101
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1101:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1105
.label_1105:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1235
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1235:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1110
.label_1058:
	jmp	.label_1110
.label_1110:
	jmp	.label_1117
.label_1117:
	jmp	.label_1119
.label_1229:
	jmp	.label_1119
.label_1119:
	jmp	.label_1114
.label_1662:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1123
.label_1663:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1123
.label_1667:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1123
.label_1665:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1126
.label_1668:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1126
.label_1664:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1126
.label_1666:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1123
.label_1673:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1132
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1135
	jmp	.label_1068
.label_1135:
	jmp	.label_1112
.label_1132:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1137
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1137
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1137
	jmp	.label_1112
.label_1137:
	jmp	.label_1126
.label_1126:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1143
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1143
	jmp	.label_1068
.label_1143:
	jmp	.label_1123
.label_1123:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1150
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1134
.label_1150:
	jmp	.label_1114
.label_1674:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1157
	jmp	.label_1161
.label_1154:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1157
.label_1161:
	jmp	.label_1114
.label_1157:
	jmp	.label_1163
.label_1163:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1166
	jmp	.label_1114
.label_1166:
	jmp	.label_1169
.label_1169:
	mov	byte ptr [rbp - 0x83], 1
.label_1669:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1174
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1174
	jmp	.label_1068
.label_1174:
	jmp	.label_1114
.label_1671:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1179
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1182
	jmp	.label_1068
.label_1182:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1185
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1185
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1185:
	jmp	.label_1195
.label_1195:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1197
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1197:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1201
.label_1201:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1205
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1205:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1211
.label_1211:
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
	mov	byte ptr [rbp - 0x7c], 0
.label_1179:
	jmp	.label_1114
.label_1670:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1114
.label_1190:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1226
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
	jmp	.label_1055
.label_1226:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1242
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1242:
	jmp	.label_1158
.label_1158:
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
	jne	.label_1053
	jmp	.label_1060
.label_1053:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1061
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1060
.label_1061:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1066
	mov	byte ptr [rbp - 0x91], 0
.label_1097:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1075
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1075:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1092
	jmp	.label_1094
.label_1092:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1097
.label_1094:
	jmp	.label_1060
.label_1066:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1104
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1104
	mov	qword ptr [rbp - 0xb8], 1
.label_1139:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1107
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
	jb	.label_1108
	jmp	.label_1124
.label_1124:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1108
	jmp	.label_1239
.label_1239:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1108
	jmp	.label_1131
.label_1131:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1133
	jmp	.label_1108
.label_1108:
	jmp	.label_1068
.label_1133:
	jmp	.label_1111
.label_1111:
	jmp	.label_1121
.label_1121:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1139
.label_1107:
	jmp	.label_1104
.label_1104:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1145
	mov	byte ptr [rbp - 0x91], 0
.label_1145:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1149
.label_1149:
	jmp	.label_1221
.label_1221:
	jmp	.label_1153
.label_1153:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1158
.label_1060:
	jmp	.label_1055
.label_1055:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1162
	test	byte ptr [rbp - 0x79], 1
	je	.label_1171
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1171
.label_1162:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1106:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1180
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1180
	jmp	.label_1186
.label_1186:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1184
	jmp	.label_1068
.label_1184:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1189
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1189
	jmp	.label_1194
.label_1194:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1196
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1196:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1200
.label_1200:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1204
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1204:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1210
.label_1210:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1215
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1215:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1189:
	jmp	.label_1222
.label_1222:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1223
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1223:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1230
.label_1230:
	jmp	.label_1232
.label_1232:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1233
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1233:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1237
.label_1237:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1241
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1241:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1057
.label_1180:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1246
	jmp	.label_1248
.label_1248:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1250
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1250:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1246:
	jmp	.label_1057
.label_1057:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1059
	jmp	.label_1063
.label_1059:
	jmp	.label_1065
.label_1065:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1067
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1067
	jmp	.label_1076
.label_1076:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1077
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1077:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1083
.label_1083:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1088
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1088:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1067:
	jmp	.label_1098
.label_1098:
	jmp	.label_1100
.label_1100:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1102
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1102:
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
	jmp	.label_1106
.label_1063:
	jmp	.label_1112
.label_1171:
	jmp	.label_1114
.label_1114:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1116
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1118
.label_1116:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1122
.label_1118:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1122
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
	jne	.label_1130
.label_1122:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1130
	jmp	.label_1112
.label_1130:
	jmp	.label_1134
.label_1134:
	jmp	.label_1095
.label_1095:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1136
	jmp	.label_1068
.label_1136:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1138
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1138
	jmp	.label_1146
.label_1146:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1142
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1142:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1148
.label_1148:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1151
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1151:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1155
.label_1155:
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
	mov	byte ptr [rbp - 0x7c], 1
.label_1138:
	jmp	.label_1168
.label_1168:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1170
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1170:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1177
.label_1177:
	jmp	.label_1112
.label_1112:
	jmp	.label_1099
.label_1099:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1181
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1181
	jmp	.label_1251
.label_1251:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1187
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1187:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1192
.label_1192:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1198
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1198:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1181:
	jmp	.label_1207
.label_1207:
	jmp	.label_1208
.label_1208:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1120
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1120:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1147
	mov	byte ptr [rbp - 0x7e], 0
.label_1147:
	jmp	.label_1079
.label_1079:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1220
.label_1071:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1224
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1224
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1224
	jmp	.label_1068
.label_1224:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1069
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1069
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1069
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1236
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
	jmp	.label_1085
.label_1236:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1243
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1243
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1245
.label_1243:
	jmp	.label_1249
.label_1249:
	jmp	.label_1069
.label_1069:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1078
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1078
	jmp	.label_1074
.label_1074:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1054
	jmp	.label_1082
.label_1082:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1091
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1091:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1127
.label_1127:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1074
.label_1054:
	jmp	.label_1078
.label_1078:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1080
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1080:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1085
.label_1068:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1090
	test	byte ptr [rbp - 0x79], 1
	je	.label_1090
	mov	dword ptr [rbp - 0x34], 4
.label_1090:
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
.label_1085:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd00
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
	#Procedure 0x40cd40

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
	je	.label_1254
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1255
.label_1254:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1255
.label_1255:
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
	je	.label_1256
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1256:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cea0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1260:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1258
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1260
.label_1258:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1261
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1259]],  rax
.label_1261:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1257
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1257:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf80

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
	#Procedure 0x40cfc0

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
	jge	.label_1264
	call	abort
.label_1264:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1269
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1263
	call	xalloc_die
.label_1263:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1268
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1262
.label_1268:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1262:
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
	je	.label_1267
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1259]]
	mov	qword ptr [rax + 8], rcx
.label_1267:
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
.label_1269:
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
	ja	.label_1265
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1266
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1266:
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
.label_1265:
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
	#Procedure 0x40d240

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
	#Procedure 0x40d280
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
	#Procedure 0x40d2a0
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
	#Procedure 0x40d2d0

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
	#Procedure 0x40d310

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
	jne	.label_1270
	call	abort
.label_1270:
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
	#Procedure 0x40d380

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
	#Procedure 0x40d3c0

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
	#Procedure 0x40d3f0
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
	#Procedure 0x40d420

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
	#Procedure 0x40d4a0

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
	#Procedure 0x40d4d0

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
	#Procedure 0x40d4f0
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
	#Procedure 0x40d520
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
	#Procedure 0x40d5d0

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
	#Procedure 0x40d610

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
	#Procedure 0x40d690
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
	#Procedure 0x40d6c0
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
	#Procedure 0x40d700

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
	#Procedure 0x40d740
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
	#Procedure 0x40d770

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
	#Procedure 0x40d7a0

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
	#Procedure 0x40d7c0

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
	je	.label_1273
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1271
.label_1273:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1272
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1271
.label_1272:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1274
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1271
.label_1274:
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_2
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1271:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8c0

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:.str_1
	mov	esi, 0x80000
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, rax
	mov	al, 0
	call	open_safer
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], 0
	jge	.label_1275
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	edx, 0xffffffff
	xor	r8d, r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	cmovne	edx, r8d
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1276
.label_1275:
	mov	dword ptr [rbp - 4], 0
.label_1276:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d950

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rdi]
	jg	.label_1277
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	fchdir
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1278
.label_1277:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	chdir_long
	mov	dword ptr [rbp - 4], eax
.label_1278:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9a0

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 0
	jl	.label_1279
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_1279:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9e0
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da10

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da20
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da50
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da80
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dab0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dae0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db10
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db40
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db70
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dba0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dbd0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc00
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc30
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc60
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dca0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcd0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd00
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
	#Procedure 0x40dd20
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
	#Procedure 0x40dd40
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
	#Procedure 0x40dd60
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
	#Procedure 0x40dd70

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
	#Procedure 0x40dd90

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
	#Procedure 0x40ddb0

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
	#Procedure 0x40ddd0

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
	#Procedure 0x40de00
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
	#Procedure 0x40de10

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
	je	.label_1281
	movabs	rsi, OFFSET FLAT:.str_9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1283
.label_1281:
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1283:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_4
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
	mov	ecx, OFFSET FLAT:.str.3_4
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
	ja	.label_1282
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1284]]
	jmp	rcx
.label_1651:
	jmp	.label_1280
.label_1652:
	movabs	rdi, OFFSET FLAT:.str.4_4
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
	jmp	.label_1280
.label_1653:
	movabs	rdi, OFFSET FLAT:.str.5_3
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
	jmp	.label_1280
.label_1654:
	movabs	rdi, OFFSET FLAT:.str.6_3
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
	jmp	.label_1280
.label_1655:
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_1280
.label_1656:
	movabs	rdi, OFFSET FLAT:.str.8_2
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
	jmp	.label_1280
.label_1657:
	movabs	rdi, OFFSET FLAT:.str.9_2
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
	jmp	.label_1280
.label_1658:
	movabs	rdi, OFFSET FLAT:.str.10_3
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
	jmp	.label_1280
.label_1659:
	movabs	rdi, OFFSET FLAT:.str.11_3
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
	jmp	.label_1280
.label_1660:
	movabs	rdi, OFFSET FLAT:.str.12_2
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
	jmp	.label_1280
.label_1282:
	movabs	rdi, OFFSET FLAT:.str.13_2
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
.label_1280:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3d0
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
.label_1287:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1285
	jmp	.label_1286
.label_1286:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1287
.label_1285:
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
	#Procedure 0x40e440

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
.label_1291:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1288
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1293
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1292
.label_1293:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1292:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1288:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1294
	jmp	.label_1289
.label_1294:
	jmp	.label_1290
.label_1290:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1291
.label_1289:
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
	#Procedure 0x40e550

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
	je	.label_1295
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
.label_1295:
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
	#Procedure 0x40e6c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_2
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
	movabs	rdi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x40e750
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
	jae	.label_1296
	call	xalloc_die
.label_1296:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7a0

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
	jne	.label_1297
	cmp	qword ptr [rbp - 8], 0
	je	.label_1297
	call	xalloc_die
.label_1297:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7e0
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
	jae	.label_1298
	call	xalloc_die
.label_1298:
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
	#Procedure 0x40e830

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1299
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1299
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1301
.label_1299:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1300
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1300
	call	xalloc_die
.label_1300:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1301:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8b0

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
	jne	.label_1302
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1305
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
.label_1305:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1303
	call	xalloc_die
.label_1303:
	jmp	.label_1304
.label_1302:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1306
	call	xalloc_die
.label_1306:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1304:
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
	#Procedure 0x40e9a0

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
	#Procedure 0x40e9c0
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
	#Procedure 0x40e9f0
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
	#Procedure 0x40ea30
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
	jb	.label_1307
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1308
.label_1307:
	call	xalloc_die
.label_1308:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea90

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
	#Procedure 0x40ead0

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
	#Procedure 0x40eb10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_7
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
	#Procedure 0x40eb50

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1309
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1309
	call	xalloc_die
.label_1309:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eba0

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
	#Procedure 0x40ed10

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1320
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_1332
.label_1320:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1315
.label_1332:
	lea	rdi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	cdb_init
	xor	ecx, ecx
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1328
	jmp	.label_1314
.label_1328:
	movabs	rdi, OFFSET FLAT:.str_10
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1314:
	mov	eax, 0x1000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_1324
	jmp	.label_1316
.label_1324:
	movabs	rdi, OFFSET FLAT:.str.2_5
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1316:
	movabs	rsi, OFFSET FLAT:.str.3_5
	mov	rdi, qword ptr [rbp - 0x10]
	call	strspn
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 2
	jne	.label_1313
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 3
	sub	rcx, rdx
	mov	esi, 0x2f
	mov	rdi, rax
	mov	rdx, rcx
	call	memchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1327
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1315
.label_1327:
	lea	rdi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1326
	jmp	.label_1311
.label_1326:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	find_non_slash
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1317
.label_1313:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1321
	lea	rdi, [rbp - 0x30]
	movabs	rsi, OFFSET FLAT:.str.3_5
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_1336
	jmp	.label_1311
.label_1336:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1321:
	jmp	.label_1317
.label_1317:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1334
	jmp	.label_1335
.label_1334:
	movabs	rdi, OFFSET FLAT:.str.4_5
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1335:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1318
	jmp	.label_1323
.label_1318:
	movabs	rdi, OFFSET FLAT:.str.5_4
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa3
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1323:
	jmp	.label_1330
.label_1330:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rcx, rdx
	jg	.label_1331
	mov	esi, 0x2f
	mov	eax, 0x1000
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	memrchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_1333
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1315
.label_1333:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	cmp	rax, 0x1000
	jge	.label_1325
	jmp	.label_1329
.label_1325:
	movabs	rdi, OFFSET FLAT:.str.6_4
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1329:
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1322
	jmp	.label_1311
.label_1322:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	call	find_non_slash
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1330
.label_1331:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1312
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_1319
	jmp	.label_1311
.label_1319:
	jmp	.label_1312
.label_1312:
	lea	rdi, [rbp - 0x30]
	call	cdb_fchdir
	cmp	eax, 0
	je	.label_1337
	jmp	.label_1311
.label_1337:
	lea	rdi, [rbp - 0x30]
	call	cdb_free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1315
.label_1311:
	call	__errno_location
	lea	rdi, [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	cdb_free
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1315:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f0d0

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0xffffff9c
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f0f0

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 0x10900
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1339
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1338
.label_1339:
	mov	rdi, qword ptr [rbp - 0x10]
	call	cdb_free
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], eax
	mov	dword ptr [rbp - 4], 0
.label_1338:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f160

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:.str.3_5
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f1a0

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi]
	call	fchdir
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f1c0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdi]
	jg	.label_1340
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	test	byte ptr [rbp - 9], 1
	jne	.label_1341
	jmp	.label_1342
.label_1341:
	movabs	rdi, OFFSET FLAT:.str.7_2
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x40
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	call	__assert_fail
.label_1342:
	jmp	.label_1340
.label_1340:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f240

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
	jne	.label_1343
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1343:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1344
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1344
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1344
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1345
.label_1344:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1345:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f2f0

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	al, dil
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rcx, OFFSET FLAT:.str_11
	lea	rdx, [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	fopen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1355
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
.label_1348:
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getline
	cmp	rax, -1
	je	.label_1361
	movabs	rsi, OFFSET FLAT:.str.2_6
	lea	rdx, [rbp - 0x4c]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x6c]
	lea	r9, [rbp - 0x70]
	lea	rax, [rbp - 0x54]
	lea	rdi, [rbp - 0x58]
	lea	r10, [rbp - 0x71]
	mov	r11, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r11
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	sscanf
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 3
	je	.label_1358
	cmp	dword ptr [rbp - 0x84], 7
	je	.label_1358
	jmp	.label_1348
.label_1358:
	movabs	rsi, OFFSET FLAT:.str.3_6
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rax, rcx
	mov	rdi, rax
	call	strstr
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_1370
	jmp	.label_1348
.label_1370:
	movabs	rsi, OFFSET FLAT:.str.4_6
	lea	rdx, [rbp - 0x5c]
	lea	rcx, [rbp - 0x60]
	lea	r8, [rbp - 0x64]
	lea	r9, [rbp - 0x68]
	lea	rax, [rbp - 0x71]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	sscanf
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 1
	je	.label_1357
	cmp	dword ptr [rbp - 0x84], 5
	je	.label_1357
	jmp	.label_1348
.label_1357:
	movsxd	rax, dword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	edx, 0x38
	mov	edi, edx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	sil, byte ptr [rax + 0x28]
	and	sil, 0xfb
	or	sil, 4
	mov	byte ptr [rax + 0x28], sil
	mov	edi, dword ptr [rbp - 0x4c]
	mov	esi, dword ptr [rbp - 0x50]
	call	gnu_dev_makedev
	mov	r8b, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	edx, OFFSET FLAT:.str.5_1
	mov	esi, edx
	mov	byte ptr [rbp - 0xa9], r8b
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xa9]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.6_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xab], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xab]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.7_3
	mov	esi, edx
	mov	byte ptr [rbp - 0xac], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xac]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.8_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xad], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xad]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.9_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xae], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xae]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.10_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xaf], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xaf]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.11_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xb0], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb0]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xb1], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb1]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xb2], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb2]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.14_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xb3], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.15_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xb4], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb4]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.16_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xb5], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb5]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1352
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:.str.17_1
	mov	esi, eax
	mov	byte ptr [rbp - 0xb6], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0xb7], cl
	jne	.label_1350
	mov	al, 1
	mov	byte ptr [rbp - 0xb7], al
	jmp	.label_1350
.label_1350:
	mov	al, byte ptr [rbp - 0xb7]
	mov	byte ptr [rbp - 0xaa], al
.label_1352:
	mov	al, byte ptr [rbp - 0xaa]
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	and	al, 1
	and	dil, 0xfe
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	cmp	rax, 0
	mov	byte ptr [rbp - 0xb8], r8b
	jne	.label_1360
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1362
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_1362
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.18_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xb9], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb9]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_1360
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.19_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xba], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_1360
.label_1362:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.20
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	byte ptr [rbp - 0xb8], dl
.label_1360:
	mov	al, byte ptr [rbp - 0xb8]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x30
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_1348
.label_1361:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rdi, qword ptr [rbp - 0x30]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1359
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x88], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xc0], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], ecx
	jmp	.label_1364
.label_1359:
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1365
	jmp	.label_1364
.label_1365:
	jmp	.label_1366
.label_1355:
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rax, OFFSET FLAT:.str.21_0
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	call	setmntent
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1369
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1368
.label_1369:
	jmp	.label_1346
.label_1346:
	mov	rdi, qword ptr [rbp - 0x30]
	call	getmntent
	mov	qword ptr [rbp - 0x90], rax
	cmp	rax, 0
	je	.label_1351
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	rdi, qword ptr [rbp - 0x90]
	call	hasmntopt
	mov	ecx, 0x38
	mov	edi, ecx
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x99], dl
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 0x10]
	call	xstrdup
	mov	dl, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rax + 0x28]
	and	r8b, 0xfb
	or	r8b, 4
	mov	byte ptr [rax + 0x28], r8b
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:.str.5_1
	mov	esi, ecx
	mov	byte ptr [rbp - 0xc5], dl
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xc5]
	mov	byte ptr [rbp - 0xc6], dl
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.6_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xc7], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc7]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.7_3
	mov	esi, edx
	mov	byte ptr [rbp - 0xc8], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc8]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.8_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xc9], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc9]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.9_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xca], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xca]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.10_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xcb], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcb]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.11_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xcc], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcc]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xcd], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcd]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xce], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xce]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.14_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xcf], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcf]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.15_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xd0], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd0]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.16_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xd1], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd1]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1349
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:.str.17_1
	mov	esi, eax
	mov	byte ptr [rbp - 0xd2], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xd2]
	mov	byte ptr [rbp - 0xd3], cl
	jne	.label_1356
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xd3], al
.label_1356:
	mov	al, byte ptr [rbp - 0xd3]
	mov	byte ptr [rbp - 0xc6], al
.label_1349:
	mov	al, byte ptr [rbp - 0xc6]
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	and	al, 1
	and	dil, 0xfe
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	cmp	rax, 0
	mov	byte ptr [rbp - 0xd4], r8b
	jne	.label_1354
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1363
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_1363
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.18_2
	mov	esi, edx
	mov	byte ptr [rbp - 0xd5], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd5]
	mov	byte ptr [rbp - 0xd4], r8b
	je	.label_1354
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.19_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xd6], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd6]
	mov	byte ptr [rbp - 0xd4], r8b
	je	.label_1354
.label_1363:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.20
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	byte ptr [rbp - 0xd4], dl
.label_1354:
	mov	al, byte ptr [rbp - 0xd4]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rdx + 0x18]
	call	dev_from_mount_options
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x30
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1346
.label_1351:
	mov	rdi, qword ptr [rbp - 0x30]
	call	endmntent
	cmp	eax, 0
	jne	.label_1367
	jmp	.label_1364
.label_1367:
	jmp	.label_1366
.label_1366:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1368
.label_1364:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_1353:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1347
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free_mount_entry
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1353
.label_1347:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 0xdc], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_1368:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ff60

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x10], 0
.label_1375:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1374
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	jne	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 4
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x30
	jl	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x33
	jg	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x30
	jl	.label_1371
.label_1687:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x37
	jg	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	cmp	edx, 0x30
	jl	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	cmp	edx, 0x37
	jg	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	sub	edx, 0x30
	shl	edx, 6
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax + 2]
	sub	esi, 0x30
	shl	esi, 3
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax + 3]
	sub	esi, 0x30
	add	edx, esi
	mov	dil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], dil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1372
.label_1371:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], dl
.label_1372:
	jmp	.label_1373
.label_1373:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1375
.label_1374:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4100f0

	.globl dev_from_mount_options
	.type dev_from_mount_options, @function
dev_from_mount_options:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410110

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x28]
	shr	al, 2
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_1376
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x18]
	call	free
.label_1376:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410180

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1377
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1378
.label_1377:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1378
.label_1378:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_1382
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1380
.label_1382:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_1380:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1379
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1381
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_1381:
	jmp	.label_1379
.label_1379:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410280

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rdx], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4102c0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_1383
	jmp	.label_1385
.label_1385:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1384
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1385
.label_1384:
	jmp	.label_1383
.label_1383:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410320

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1386
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1387
.label_1386:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1389
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_1391
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_1391:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_1388
	jmp	.label_1390
.label_1388:
	test	byte ptr [rbp - 0x29], 1
	je	.label_1390
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1387
.label_1390:
	jmp	.label_1389
.label_1389:
	mov	qword ptr [rbp - 8], 0
.label_1387:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103f0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	call	getenv_TZ
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1392
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_1393
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_1397
	jmp	.label_1393
.label_1392:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_1393
.label_1397:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1396
.label_1393:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1395
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1396
.label_1395:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_1394
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1396
.label_1394:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1396:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4104e0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1406
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1405
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_1405
.label_1406:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1398
.label_1405:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_1402
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_1409:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_1408
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1404
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_1401
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_1404
.label_1401:
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 9
	sub	rax, rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1399
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1398
.label_1399:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_1400
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_1407
.label_1400:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1410
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1398
.label_1410:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_1407:
	jmp	.label_1408
.label_1404:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_1403
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1403
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_1403:
	jmp	.label_1409
.label_1408:
	jmp	.label_1402
.label_1402:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_1398:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106e0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_1411
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1413
.label_1411:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_1412
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1412:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1413:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410770

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1417
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1418
.label_1417:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1415
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1420
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_1416
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_1416
.label_1420:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_1416
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1416:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_1414
	jmp	.label_1419
.label_1414:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1418
.label_1419:
	jmp	.label_1415
.label_1415:
	mov	qword ptr [rbp - 8], -1
.label_1418:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410860

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 4]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 8]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	isdst_differ
	and	al, 1
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410900

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410920

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	je	.label_1421
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1424
.label_1421:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1424
.label_1424:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_1423
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1422
.label_1423:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_1422:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410990

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1425
	movabs	rdi, OFFSET FLAT:.str_2
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1426
.label_1425:
	movabs	rdi, OFFSET FLAT:.str_2
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_1426:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109f0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_1427
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_1427
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_1427:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a50

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
	jne	.label_1428
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1432
.label_1428:
	jmp	.label_1429
.label_1429:
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
	jne	.label_1431
	jmp	.label_1430
.label_1431:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1429
.label_1430:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1432:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b10

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
	jne	.label_1433
	test	byte ptr [rbp - 0x13], 1
	je	.label_1434
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1433
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1434
.label_1433:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1435
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1435:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1436
.label_1434:
	mov	dword ptr [rbp - 4], 0
.label_1436:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bc0

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
	je	.label_1437
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
.label_1437:
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
	je	.label_1438
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
	ja	.label_1439
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1440
.label_1439:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1440:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1438:
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
	#Procedure 0x410dc0

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
	je	.label_1441
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_12
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1443
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_10
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1442
.label_1443:
	mov	byte ptr [rbp - 5], 0
.label_1442:
	jmp	.label_1441
.label_1441:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e40

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
	jne	.label_1444
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_1444:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1445
	movabs	rax, OFFSET FLAT:.str.1_11
	mov	qword ptr [rbp - 8], rax
.label_1445:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ea0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1446
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1446
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
.label_1446:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f00

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_1454:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1447
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1449
.label_1447:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	je	.label_1450
	jmp	.label_1452
.label_1450:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_1448
	jmp	.label_1452
.label_1448:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1454
.label_1452:
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_1451
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1453
	call	xalloc_die
.label_1453:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1449
.label_1451:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1449:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ff0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_1458:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_1464
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_1462
	mov	eax, dword ptr [rbp - 0x7c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1456
.label_1462:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_1456:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1458
.label_1464:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x98], rax
	je	.label_1457
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_1460
.label_1457:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1463
.label_1460:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_1455:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_1461
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_1465
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1459
.label_1465:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_1459:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1455
.label_1461:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1463:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411200

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
	jge	.label_1466
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1469
.label_1466:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1467
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1468
.label_1467:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1468
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1468:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1470
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1470:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1469:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1471
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1472
.label_1471:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1473
.label_1472:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1473:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411330

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
	je	.label_1474
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1474:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411370

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
	jne	.label_1475
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1475
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1475
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1477
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1476
.label_1477:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1476
.label_1475:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1476:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411440

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
	ja	.label_1478
	jmp	.label_1480
.label_1480:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1479
.label_1478:
	jmp	.label_1479
.label_1479:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411490
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
	#Procedure 0x411500
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
	#Procedure 0x411550
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
	#Procedure 0x411580
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
	#Procedure 0x4115b0
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
	#Procedure 0x411600
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
	#Procedure 0x411640
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
	#Procedure 0x411680
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
	#Procedure 0x4116c0
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
	#Procedure 0x411700
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
	#Procedure 0x411780
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
	jmp	.label_1519
.label_1519:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1517
	jmp	.label_1516
.label_1516:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1518
.label_1517:
	mov	byte ptr [rbp - 1], 0
.label_1518:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4117d0
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
	#Procedure 0x411810
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
	jmp	.label_1525
.label_1525:
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
	ja	.label_1526
	jmp	.label_1523
.label_1523:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1527
.label_1526:
	mov	byte ptr [rbp - 1], 0
.label_1527:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411880

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
	#Procedure 0x4118c0
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
	#Procedure 0x411900

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
	#Procedure 0x411930

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	jb	.label_1534
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1535
.label_1534:
	mov	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1535
.label_1535:
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411980
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4119c0
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411a10
	.globl xmax
	.type xmax, @function
xmax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	jb	.label_1536
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1537
.label_1536:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1537:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411a50

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
	je	.label_1558
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
.label_1558:
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
	je	.label_1545
	jmp	.label_1539
.label_1539:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1549
	jmp	.label_1555
.label_1545:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1557
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1564
.label_1557:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1564:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1552
.label_1549:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1556
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1563
.label_1556:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1563:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1552
.label_1555:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1538
	jmp	.label_1561
.label_1561:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1551
	jmp	.label_1566
.label_1566:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1538
	jmp	.label_1541
.label_1541:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1551
	jmp	.label_1546
.label_1546:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1538
	jmp	.label_1540
.label_1540:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1538
	jmp	.label_1547
.label_1547:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1551
	jmp	.label_1568
.label_1568:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1538
	jmp	.label_1542
.label_1542:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1551
	jmp	.label_1548
.label_1548:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1538
	jmp	.label_1554
.label_1554:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1551
	jmp	.label_1562
.label_1562:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1538
	jmp	.label_1567
.label_1567:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1538
	jmp	.label_1543
.label_1543:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1544
	jmp	.label_1551
.label_1551:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1553
.label_1538:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1559
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1565
.label_1559:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1565:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1553
.label_1544:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1560
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1550
.label_1560:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1550:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1553:
	jmp	.label_1552
.label_1552:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f70

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
	#Procedure 0x411fa0

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
	jg	.label_1574
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1572
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1575
.label_1572:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1573
.label_1575:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1571
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1571:
	jmp	.label_1573
.label_1573:
	jmp	.label_1576
.label_1574:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1576:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1569
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1569
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1577
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1570
.label_1577:
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
.label_1570:
	jmp	.label_1569
.label_1569:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412180

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x412190

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
