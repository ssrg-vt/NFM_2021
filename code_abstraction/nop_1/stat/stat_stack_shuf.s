	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402170

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_9
	lea	rdi, [rdi]
	jmp	.label_7
.label_7:
	nop	
	movabs	rdi, OFFSET FLAT:.str
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
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
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x48], eax
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
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0xc], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:fmt_terse_regular
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:fmt_terse_fs
	nop	
	mov	rdi, rax
	mov	al, 0
	nop	
	call	printf
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x40], eax
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
	mov	dword ptr [rbp - 0x30], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 0x44]
	call	exit
	nop	word ptr [rax + rax]
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x20], rax
.label_10:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	je	.label_11
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 1], cl
.label_11:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	nop	
	jne	.label_12
	lea	rdi, [rdi]
	jmp	.label_13
.label_12:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_10
.label_13:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
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
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_14
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.38
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 0x3c], eax
.label_14:
	movabs	rdi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.41
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x55], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], 1
	mov	rsi, qword ptr [rbp - 0x80]
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
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	qword ptr [rbp - 0x18], rax
	call	textdomain
	nop	
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	call	localeconv
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_21
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_32
.label_21:
	nop	
	movabs	rax, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_32
.label_32:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [word ptr [decimal_point]],  rax
	mov	rax,  qword ptr [word ptr [decimal_point]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rdi
	mov	rdi, rax
	call	strlen
	mov	qword ptr [word ptr [decimal_point_len]],  rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	atexit
	mov	dword ptr [rbp - 0x64], eax
.label_29:
	movabs	rdx, OFFSET FLAT:.str.21
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_37
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x90], eax
	mov	dword ptr [rbp - 0x74], ecx
	lea	rdi, [rdi]
	je	.label_17
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	je	.label_19
	lea	rdi, [rdi]
	jmp	.label_39
.label_39:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x4c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	je	.label_22
	jmp	.label_33
.label_33:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_35
	mov	rsp, rsp
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x78], eax
	je	.label_40
	nop	
	jmp	.label_16
.label_16:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x44], eax
	je	.label_27
	nop	
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	jne	.label_34
	jmp	.label_31
.label_31:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	rcx,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	mov	qword ptr [word ptr [trailing_delim]],  rax
	mov	rsp, rsp
	jmp	.label_20
.label_35:
	movabs	rax, OFFSET FLAT:.str.22
	mov	rcx,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	byte ptr [byte ptr [interpret_backslash_escapes]],  0
	mov	rsp, rsp
	mov	qword ptr [word ptr [trailing_delim]],  rax
	jmp	.label_20
.label_22:
	nop	
	mov	byte ptr [byte ptr [follow_links]],  1
	jmp	.label_20
.label_40:
	mov	byte ptr [rbp - 0x55], 1
	jmp	.label_20
.label_27:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x89], 1
	jmp	.label_20
.label_19:
	xor	edi, edi
	nop	
	call	usage
.label_17:
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
.label_34:
	mov	edi, 1
	nop	
	call	usage
.label_20:
	nop	
	jmp	.label_29
.label_37:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jne	.label_36
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
.label_36:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	je	.label_41
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	strstr
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_25
	call	getenv_quoting_style
.label_25:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_30
.label_41:
	xor	edx, edx
	mov	al, byte ptr [rbp - 0x55]
	nop	
	mov	cl, byte ptr [rbp - 0x89]
	nop	
	and	al, 1
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edi, al
	movzx	esi, cl
	lea	rdi, [rdi]
	call	default_format
	mov	edx, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x55]
	mov	r8b, byte ptr [rbp - 0x89]
	and	cl, 1
	mov	rsp, rsp
	and	r8b, 1
	movzx	edi, cl
	movzx	esi, r8b
	call	default_format
	mov	qword ptr [rbp - 0x50], rax
.label_30:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
.label_23:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_24
	mov	rbp, rbp
	test	byte ptr [rbp - 0x55], 1
	mov	rbp, rbp
	je	.label_28
	nop	
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	call	do_statfs
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], edx
	nop	
	jmp	.label_26
.label_28:
	movsxd	rax, dword ptr [rbp - 0x24]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	call	do_stat
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], r8d
.label_26:
	nop	
	mov	eax, dword ptr [rbp - 0x30]
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
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_23
.label_24:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x29]
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

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
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_46
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	call	argmatch
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	r9d, eax
	nop	
	mov	dword ptr [rbp - 0x14], r9d
	cmp	r8d, dword ptr [rbp - 0x14]
	jg	.label_43
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	mov	rsp, rsp
	call	set_quoting_style
	jmp	.label_44
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
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	quote
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_44:
	lea	rsi, [rsi]
	jmp	.label_45
.label_46:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rsi, [rsi]
	call	set_quoting_style
.label_45:
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

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
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_51
	test	byte ptr [rbp - 2], 1
	je	.label_49
	movabs	rdi, OFFSET FLAT:fmt_terse_fs
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_54
.label_49:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	call	xstrdup
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_54:
	lea	rdi, [rdi]
	jmp	.label_48
.label_51:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 2], 1
	lea	rsi, [rsi]
	je	.label_52
	movabs	rdi, OFFSET FLAT:fmt_terse_regular
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_50
.label_52:
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rbp, rbp
	call	gettext
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x31], 1
	je	.label_53
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_47
.label_53:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.56
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsp, rsp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	xasprintf
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
.label_47:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	nop	
	movabs	rdi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.58
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	xasprintf
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
.label_50:
	jmp	.label_48
.label_48:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f60

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, OFFSET FLAT:.str.59
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jne	.label_55
	movabs	rdi, OFFSET FLAT:.str.60
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], edi
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], 0
	mov	rsp, rsp
	jmp	.label_57
.label_55:
	lea	rsi, [rbp - 0x88]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	statfs
	cmp	eax, 0
	nop	
	je	.label_56
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.61
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x90], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x89], 0
	mov	rsp, rsp
	jmp	.label_57
.label_56:
	mov	rbp, rbp
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:print_statfs
	lea	rax, [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r8, rax
	call	print_it
	and	al, 1
	mov	byte ptr [rbp - 0x8a], al
	mov	al, byte ptr [rbp - 0x8a]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
.label_57:
	nop	
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0

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
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.59
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc8], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	eax, dword ptr [rbp - 0xc4]
	mov	ecx, dword ptr [rbp - 0xc8]
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x14]
	nop	
	jg	.label_66
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	__fstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_65
	mov	rsp, rsp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.192
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	nop	
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x29], 0
	lea	rsi, [rsi]
	jmp	.label_59
.label_65:
	lea	rdi, [rdi]
	jmp	.label_58
.label_66:
	test	byte ptr [byte ptr [follow_links]],  1
	mov	rsp, rsp
	je	.label_60
	mov	rsp, rsp
	lea	rsi, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	stat
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	jmp	.label_64
.label_60:
	lea	rsi, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], eax
.label_64:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	cmp	eax, 0
	je	.label_62
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.5_0
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xcc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	byte ptr [rbp - 0x29], 0
	jmp	.label_59
.label_62:
	lea	rdi, [rdi]
	jmp	.label_58
.label_58:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	and	eax, 0xf000
	nop	
	cmp	eax, 0x6000
	je	.label_61
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x2000
	nop	
	jne	.label_63
.label_61:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_63:
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:print_stat
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, rax
	lea	rsi, [rsi]
	call	print_it
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x15]
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
.label_59:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0xe0
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403340

	.globl print_it
	.type print_it, @function
print_it:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rbp - 0x79], 0
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	call	strlen
	add	rax, 2
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xmalloc
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_71:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_79
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x90], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], edx
	je	.label_85
	lea	rsi, [rsi]
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x5c
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	je	.label_95
	jmp	.label_67
.label_85:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	strspn
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:digits
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x78]
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
	jne	.label_88
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
.label_88:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	inc	rcx
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], edx
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	inc	rax
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0xa0]
	test	r8d, r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb0], r8d
	je	.label_102
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0xb0]
	nop	
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_99
	mov	rsp, rsp
	jmp	.label_83
.label_102:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
.label_99:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	jae	.label_90
	movabs	rdi, OFFSET FLAT:.str.62
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	byte ptr [rdx + rax + 1], cl
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax + 2], 0
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_90:
	mov	edi, 0x25
	nop	
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	jmp	.label_98
.label_83:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd8], esi
	mov	rsi, rcx
	mov	ecx, dword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	call	rax
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	nop	
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x79], al
.label_98:
	jmp	.label_72
.label_95:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [interpret_backslash_escapes]],  1
	lea	rdi, [rdi]
	jne	.label_97
	mov	edi, 0x5c
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_72
.label_97:
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	eax, edx
	lea	rdi, [rdi]
	jg	.label_74
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x37
	mov	rsp, rsp
	jg	.label_74
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 8], 1
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_100:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 3
	mov	byte ptr [rbp - 0x49], cl
	jge	.label_73
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rdx]
	mov	rsp, rsp
	cmp	eax, esi
	mov	byte ptr [rbp - 0x95], cl
	lea	rdi, [rdi]
	jg	.label_78
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	lea	rsi, [rsi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x95], dl
.label_78:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x95]
	mov	byte ptr [rbp - 0x49], al
.label_73:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_101
	mov	rsp, rsp
	jmp	.label_69
.label_101:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xac]
	shl	eax, 3
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0xac], eax
	mov	eax, dword ptr [rbp - 8]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_100
.label_69:
	mov	edi, dword ptr [rbp - 0xac]
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, -1
	mov	qword ptr [rbp - 0x40], rcx
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_89
.label_74:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x78
	jne	.label_81
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	movsx	edi, byte ptr [rax + 1]
	call	to_uchar
	movzx	edi, al
	lea	rdi, [rdi]
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edi, 0x1000
	cmp	edi, 0
	mov	rbp, rbp
	je	.label_81
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x61
	jl	.label_93
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x66
	mov	rsp, rsp
	jg	.label_93
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x9c], ecx
	mov	rsp, rsp
	jmp	.label_91
.label_93:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x41
	jl	.label_77
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0x46
	nop	
	jg	.label_77
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x64], ecx
	lea	rdi, [rdi]
	jmp	.label_92
.label_77:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x64], ecx
.label_92:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x9c], eax
.label_91:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edi, byte ptr [rcx + 1]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xc8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	mov	rbp, rbp
	cmp	edi, 0
	lea	rsi, [rsi]
	je	.label_70
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	shl	ecx, 4
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x61
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	jl	.label_80
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x66
	jg	.label_80
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x61
	mov	rbp, rbp
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x28], ecx
	mov	rsp, rsp
	jmp	.label_84
.label_80:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	lea	rdi, [rdi]
	jl	.label_86
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x46
	jg	.label_86
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], ecx
	jmp	.label_76
.label_86:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0xa8], ecx
.label_76:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0x28], eax
.label_84:
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	add	ecx, eax
	mov	dword ptr [rbp - 0x70], ecx
.label_70:
	mov	edi, dword ptr [rbp - 0x70]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_87
.label_81:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	jne	.label_96
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
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rdx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdx
	mov	dword ptr [rbp - 0x94], eax
	mov	rsp, rsp
	jmp	.label_82
.label_96:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	edi, byte ptr [rax]
	call	print_esc_char
.label_82:
	mov	rsp, rsp
	jmp	.label_87
.label_87:
	jmp	.label_89
.label_89:
	jmp	.label_72
.label_67:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x44], eax
.label_72:
	jmp	.label_68
.label_68:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_71
.label_79:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	call	free
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [trailing_delim]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	cl, byte ptr [rbp - 0x79]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	mov	dword ptr [rbp - 0xa4], eax
	mov	eax, edx
	add	rsp, 0xe0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r9
	nop	
	mov	byte ptr [rbp - 0xa5], 0
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x53
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], ecx
	mov	dword ptr [rbp - 0xac], edx
	je	.label_111
	jmp	.label_122
.label_122:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	je	.label_124
	jmp	.label_131
.label_131:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	je	.label_103
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x62
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	lea	rdi, [rdi]
	je	.label_112
	nop	
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	sub	eax, 0x63
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	mov	rsp, rsp
	je	.label_117
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	je	.label_126
	jmp	.label_129
.label_129:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x66
	mov	dword ptr [rbp - 8], eax
	je	.label_132
	nop	
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rbp, rbp
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	lea	rsi, [rsi]
	je	.label_109
	jmp	.label_114
.label_114:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	sub	eax, 0x6c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_116
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_123
	nop	
	jmp	.label_128
.label_128:
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x94], eax
	je	.label_130
	jmp	.label_106
.label_106:
	nop	
	mov	eax, dword ptr [rbp - 0xd0]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_108
	mov	rbp, rbp
	jmp	.label_113
.label_123:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	out_string
	lea	rdi, [rdi]
	jmp	.label_104
.label_109:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x38
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], 0
.label_120:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x90]
	mov	byte ptr [rbp - 0x79], cl
	lea	rdi, [rdi]
	jge	.label_105
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	shl	rax, 2
	cmp	rax, 8
	nop	
	setb	cl
	mov	byte ptr [rbp - 0x79], cl
.label_105:
	mov	al, byte ptr [rbp - 0x79]
	mov	rbp, rbp
	test	al, 1
	jne	.label_115
	lea	rdi, [rdi]
	jmp	.label_119
.label_115:
	mov	eax, dword ptr [rbp - 0x90]
	nop	
	sub	eax, 1
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x30]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + rcx*4]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	shl	eax, 3
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rdi, [rdi]
	shl	rdx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xe0]
	nop	
	shl	rdx, cl
	or	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_120
.label_119:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	out_uint_x
	mov	rbp, rbp
	jmp	.label_104
.label_116:
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	call	out_uint
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	jmp	.label_104
.label_108:
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax]
	mov	rbp, rbp
	call	out_uint_x
	nop	
	jmp	.label_104
.label_124:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x50], rsi
	mov	rbp, rbp
	call	human_fstype
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	call	out_string
	lea	rdi, [rdi]
	jmp	.label_104
.label_112:
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	out_int
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_104
.label_132:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rax + 0x18]
	call	out_int
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_104
.label_103:
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rax + 0x20]
	call	out_int
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_104
.label_130:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rax + 8]
	call	out_uint
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_104
.label_111:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	nop	
	jne	.label_118
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
.label_118:
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	call	out_uint
	nop	
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	jmp	.label_104
.label_117:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rax + 0x28]
	call	out_uint
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	mov	rbp, rbp
	jmp	.label_104
.label_126:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x30]
	call	out_int
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	jmp	.label_104
.label_113:
	lea	rsi, [rsi]
	mov	edi, 0x3f
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	fputc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
.label_104:
	mov	al, byte ptr [rbp - 0xa5]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0xe0
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090

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
	#Procedure 0x4040b0

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
	mov	byte ptr [rbp - 0xd], al
	movsx	edi, byte ptr [rbp - 0xd]
	mov	ecx, edi
	lea	rsi, [rsi]
	sub	ecx, 0x22
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	nop	
	je	.label_150
	jmp	.label_148
.label_148:
	mov	eax, dword ptr [rbp - 8]
	nop	
	sub	eax, 0x5c
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_150
	lea	rdi, [rdi]
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	eax, 0x61
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	je	.label_138
	lea	rsi, [rsi]
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	je	.label_146
	jmp	.label_134
.label_134:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x14], eax
	je	.label_136
	mov	rsp, rsp
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x66
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_145
	jmp	.label_151
.label_151:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x6e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	nop	
	je	.label_152
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x72
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	je	.label_141
	jmp	.label_147
.label_147:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	je	.label_149
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x76
	nop	
	mov	dword ptr [rbp - 0x30], eax
	je	.label_139
	nop	
	jmp	.label_143
.label_138:
	mov	byte ptr [rbp - 0xd], 7
	jmp	.label_133
.label_146:
	nop	
	mov	byte ptr [rbp - 0xd], 8
	lea	rdi, [rdi]
	jmp	.label_133
.label_136:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], 0x1b
	jmp	.label_133
.label_145:
	mov	byte ptr [rbp - 0xd], 0xc
	jmp	.label_133
.label_152:
	mov	byte ptr [rbp - 0xd], 0xa
	nop	
	jmp	.label_133
.label_141:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd], 0xd
	mov	rbp, rbp
	jmp	.label_133
.label_149:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], 9
	jmp	.label_133
.label_139:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], 0xb
	lea	rdi, [rdi]
	jmp	.label_133
.label_150:
	lea	rdi, [rdi]
	jmp	.label_133
.label_143:
	movabs	rdi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rbp - 0xd]
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	dword ptr [rbp - 0x28], edx
	mov	rsp, rsp
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x28]
	mov	al, 0
	call	error
.label_133:
	nop	
	movsx	edi, byte ptr [rbp - 0xd]
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042a0

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
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, rax
	nop	
	call	make_format
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310

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
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	call	make_format
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404380

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	make_format
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x400
	mov	qword ptr [rbp - 0x398], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rax, rdi
	mov	rsp, rsp
	sub	rax, 0x2f
	mov	qword ptr [rbp - 0x188], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1b8], rax
	je	.label_393
	lea	rdi, [rdi]
	jmp	.label_164
.label_164:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x187
	mov	qword ptr [rbp - 0x1a0], rax
	nop	
	je	.label_166
	jmp	.label_174
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x7c0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x388], rax
	je	.label_176
	jmp	.label_185
.label_185:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x1a8], rax
	nop	
	je	.label_187
	nop	
	jmp	.label_195
.label_195:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x137d
	nop	
	mov	qword ptr [rbp - 0x3b0], rax
	lea	rdi, [rdi]
	je	.label_197
	jmp	.label_198
.label_198:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0xd0], rax
	lea	rsi, [rsi]
	je	.label_209
	jmp	.label_217
.label_217:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x138f
	nop	
	mov	qword ptr [rbp - 0x98], rax
	je	.label_203
	jmp	.label_224
.label_224:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x1cd1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rax
	je	.label_226
	jmp	.label_237
.label_237:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x2468
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	je	.label_367
	mov	rsp, rsp
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x268], rax
	mov	rbp, rbp
	je	.label_245
	mov	rsp, rsp
	jmp	.label_253
.label_253:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x140], rax
	je	.label_255
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x4000
	nop	
	mov	qword ptr [rbp - 0x358], rax
	lea	rsi, [rsi]
	je	.label_263
	lea	rsi, [rsi]
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x4004
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3e8], rax
	mov	rbp, rbp
	je	.label_272
	jmp	.label_280
.label_280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x210], rax
	je	.label_282
	jmp	.label_289
.label_289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x4244
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	je	.label_291
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x482b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x310], rax
	je	.label_323
	lea	rdi, [rdi]
	jmp	.label_307
.label_307:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x4858
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	je	.label_311
	jmp	.label_315
.label_315:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x4d44
	mov	qword ptr [rbp - 0x330], rax
	je	.label_317
	lea	rdi, [rdi]
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0x168], rax
	mov	rbp, rbp
	je	.label_326
	jmp	.label_214
.label_214:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x517b
	nop	
	mov	qword ptr [rbp - 0x160], rax
	je	.label_333
	mov	rsp, rsp
	jmp	.label_341
.label_341:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x564c
	mov	qword ptr [rbp - 0x258], rax
	je	.label_342
	jmp	.label_348
.label_348:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0x368], rax
	je	.label_349
	mov	rsp, rsp
	jmp	.label_354
.label_354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 8], rax
	je	.label_356
	mov	rbp, rbp
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0x328], rax
	je	.label_365
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x72b6
	mov	qword ptr [rbp - 0x290], rax
	je	.label_372
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0x148], rax
	je	.label_380
	jmp	.label_385
.label_385:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0x9fa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], rax
	je	.label_387
	mov	rbp, rbp
	jmp	.label_394
.label_394:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x9fa1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x318], rax
	je	.label_397
	jmp	.label_160
.label_160:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x9fa2
	nop	
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_161
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x2e8], rax
	lea	rsi, [rsi]
	je	.label_171
	lea	rdi, [rdi]
	jmp	.label_178
.label_178:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0xadff
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_181
	lea	rdi, [rdi]
	jmp	.label_188
.label_188:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0xef51
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	lea	rsi, [rsi]
	je	.label_189
	mov	rsp, rsp
	jmp	.label_200
.label_200:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0xef53
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a8], rax
	nop	
	je	.label_202
	jmp	.label_210
.label_210:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0xf15f
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	je	.label_212
	mov	rbp, rbp
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x11954
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x370], rax
	lea	rsi, [rsi]
	je	.label_223
	nop	
	jmp	.label_232
.label_232:
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x27e0eb
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
	je	.label_235
	jmp	.label_239
.label_239:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x414a53
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	je	.label_240
	lea	rdi, [rdi]
	jmp	.label_218
.label_218:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0xc0ffee
	mov	qword ptr [rbp - 0x2d0], rax
	je	.label_229
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0xc36400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	je	.label_260
	mov	rsp, rsp
	jmp	.label_267
.label_267:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x128], rax
	je	.label_327
	mov	rsp, rsp
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x1021997
	mov	qword ptr [rbp - 0x278], rax
	je	.label_190
	jmp	.label_285
.label_285:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x1161970
	mov	qword ptr [rbp - 0x108], rax
	je	.label_287
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x12fd16d
	nop	
	mov	qword ptr [rbp - 0x150], rax
	nop	
	je	.label_296
	jmp	.label_302
.label_302:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x12ff7b4
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rsp, rsp
	je	.label_305
	mov	rbp, rbp
	jmp	.label_313
.label_313:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0xe0], rax
	lea	rdi, [rdi]
	je	.label_314
	nop	
	jmp	.label_321
.label_321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x12ff7b6
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x228], rax
	mov	rsp, rsp
	je	.label_322
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0x12ff7b7
	nop	
	mov	qword ptr [rbp - 0x1e0], rax
	je	.label_332
	nop	
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0x13111a8
	nop	
	mov	qword ptr [rbp - 0x3f0], rax
	je	.label_339
	lea	rsi, [rsi]
	jmp	.label_304
.label_304:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x248], rax
	lea	rdi, [rdi]
	je	.label_347
	jmp	.label_352
.label_352:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x9041934
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x280], rax
	mov	rbp, rbp
	je	.label_353
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x340], rax
	nop	
	je	.label_364
	nop	
	jmp	.label_370
.label_370:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0xbd00bd0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	je	.label_234
	jmp	.label_377
.label_377:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x11307854
	nop	
	mov	qword ptr [rbp - 0x300], rax
	nop	
	je	.label_379
	mov	rsp, rsp
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x13661366
	mov	qword ptr [rbp - 0x298], rax
	je	.label_388
	jmp	.label_392
.label_392:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x178], rax
	nop	
	je	.label_395
	lea	rdi, [rdi]
	jmp	.label_156
.label_156:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x19800202
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x260], rax
	je	.label_159
	jmp	.label_165
.label_165:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x70], rax
	nop	
	je	.label_167
	jmp	.label_175
.label_175:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0x1badface
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	je	.label_177
	jmp	.label_184
.label_184:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	je	.label_186
	mov	rsp, rsp
	jmp	.label_193
.label_193:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x338], rax
	nop	
	je	.label_196
	lea	rdi, [rdi]
	jmp	.label_206
.label_206:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x2bad1dea
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	je	.label_208
	lea	rsi, [rsi]
	jmp	.label_216
.label_216:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x2fc12fc1
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	je	.label_219
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x350], rax
	mov	rsp, rsp
	je	.label_228
	lea	rsi, [rsi]
	jmp	.label_236
.label_236:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0x42465331
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_374
	mov	rbp, rbp
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x42494e4d
	nop	
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_246
	jmp	.label_252
.label_252:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x43415d53
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3d8], rax
	nop	
	je	.label_254
	mov	rbp, rbp
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x453dcd28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x200], rax
	je	.label_265
	mov	rbp, rbp
	jmp	.label_271
.label_271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x45584653
	mov	qword ptr [rbp - 0x238], rax
	lea	rdi, [rdi]
	je	.label_273
	jmp	.label_281
.label_281:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x47504653
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2b8], rax
	lea	rdi, [rdi]
	je	.label_283
	lea	rdi, [rdi]
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x50495045
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x218], rax
	lea	rdi, [rdi]
	je	.label_292
	mov	rsp, rsp
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x52654973
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	je	.label_301
	mov	rsp, rsp
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x5346314d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	je	.label_312
	lea	rdi, [rdi]
	jmp	.label_318
.label_318:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x3a0], rax
	mov	rbp, rbp
	je	.label_320
	jmp	.label_328
.label_328:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x53464846
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
	lea	rsi, [rsi]
	je	.label_330
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x1e8], rax
	lea	rdi, [rdi]
	je	.label_336
	jmp	.label_344
.label_344:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_346
	lea	rsi, [rsi]
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x54190100
	mov	qword ptr [rbp - 0x198], rax
	je	.label_351
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x565a4653
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3c8], rax
	lea	rdi, [rdi]
	je	.label_360
	jmp	.label_368
.label_368:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x58295829
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rsp, rsp
	je	.label_369
	mov	rbp, rbp
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x220], rax
	je	.label_376
	mov	rsp, rsp
	jmp	.label_381
.label_381:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x1c0], rax
	je	.label_382
	jmp	.label_389
.label_389:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x5dca2df5
	mov	qword ptr [rbp - 0x320], rax
	je	.label_390
	jmp	.label_153
.label_153:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x240], rax
	mov	rsp, rsp
	je	.label_155
	jmp	.label_162
.label_162:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x6165676c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2c0], rax
	mov	rbp, rbp
	je	.label_163
	jmp	.label_172
.label_172:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x270], rax
	mov	rbp, rbp
	je	.label_173
	lea	rsi, [rsi]
	jmp	.label_182
.label_182:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x62646576
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	je	.label_183
	lea	rdi, [rdi]
	jmp	.label_191
.label_191:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x62656570
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	je	.label_194
	lea	rsi, [rsi]
	jmp	.label_204
.label_204:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x62656572
	mov	qword ptr [rbp - 0x10], rax
	je	.label_207
	jmp	.label_211
.label_211:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x390], rax
	je	.label_248
	jmp	.label_221
.label_221:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	je	.label_222
	jmp	.label_230
.label_230:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x64646178
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	je	.label_233
	lea	rsi, [rsi]
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x65735543
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsp, rsp
	je	.label_241
	mov	rbp, rbp
	jmp	.label_249
.label_249:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x65735546
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3c0], rax
	je	.label_251
	mov	rsp, rsp
	jmp	.label_257
.label_257:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	je	.label_259
	nop	
	jmp	.label_268
.label_268:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x68191122
	mov	qword ptr [rbp - 0x288], rax
	mov	rbp, rbp
	je	.label_269
	jmp	.label_277
.label_277:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x6b414653
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x360], rax
	mov	rsp, rsp
	je	.label_278
	mov	rsp, rsp
	jmp	.label_288
.label_288:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x6e667364
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	je	.label_290
	jmp	.label_298
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	sub	rax, 0x6e736673
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	je	.label_299
	mov	rsp, rsp
	jmp	.label_279
.label_279:
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, 0x73636673
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rax
	nop	
	je	.label_309
	mov	rbp, rbp
	jmp	.label_316
.label_316:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x73717368
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3d0], rax
	je	.label_319
	lea	rdi, [rdi]
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x73727279
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2f0], rax
	mov	rsp, rsp
	je	.label_329
	jmp	.label_334
.label_334:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x73757245
	mov	qword ptr [rbp - 0x138], rax
	mov	rbp, rbp
	je	.label_335
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x7461636f
	nop	
	mov	qword ptr [rbp - 0x100], rax
	je	.label_345
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x74726163
	mov	qword ptr [rbp - 0x1b0], rax
	mov	rsp, rsp
	je	.label_340
	lea	rdi, [rdi]
	jmp	.label_355
.label_355:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x188]
	sub	rax, 0x794c7630
	mov	qword ptr [rbp - 0x2f8], rax
	mov	rsp, rsp
	je	.label_359
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x3f8], rax
	nop	
	je	.label_199
	lea	rdi, [rdi]
	jmp	.label_373
.label_373:
	mov	eax, 0x858458f6
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x188]
	nop	
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x308], rdx
	lea	rsi, [rsi]
	je	.label_375
	mov	rsp, rsp
	jmp	.label_306
.label_306:
	lea	rdi, [rdi]
	mov	eax, 0x9123683e
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3b8], rdx
	mov	rbp, rbp
	je	.label_383
	lea	rdi, [rdi]
	jmp	.label_391
.label_391:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x2c8], rdx
	je	.label_396
	jmp	.label_157
.label_157:
	mov	eax, 0xa501fcf5
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_158
	jmp	.label_168
.label_168:
	lea	rsi, [rsi]
	mov	eax, 0xaad7aaea
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rdi, [rdi]
	je	.label_170
	jmp	.label_179
.label_179:
	mov	eax, 0xabba1974
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x230], rdx
	mov	rsp, rsp
	je	.label_180
	lea	rsi, [rsi]
	jmp	.label_384
.label_384:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rdx
	je	.label_192
	jmp	.label_201
.label_201:
	mov	eax, 0xbeefdead
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x250], rdx
	lea	rdi, [rdi]
	je	.label_231
	jmp	.label_213
.label_213:
	mov	eax, 0xc97e8168
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x380], rdx
	nop	
	je	.label_215
	jmp	.label_308
.label_308:
	nop	
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x188]
	nop	
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x2b0], rdx
	je	.label_227
	jmp	.label_357
.label_357:
	mov	eax, 0xde5e81e4
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x68], rdx
	mov	rbp, rbp
	je	.label_238
	jmp	.label_244
.label_244:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x2d8], rdx
	mov	rbp, rbp
	je	.label_247
	jmp	.label_256
.label_256:
	mov	eax, 0xf97cff8c
	nop	
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x1c8], rdx
	je	.label_264
	lea	rsi, [rsi]
	jmp	.label_297
.label_297:
	mov	eax, 0xf995e849
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x378], rdx
	je	.label_266
	jmp	.label_274
.label_274:
	mov	eax, 0xfe534d42
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3a8], rdx
	nop	
	je	.label_275
	jmp	.label_284
.label_284:
	mov	eax, 0xff534d42
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x188]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x208], rdx
	je	.label_286
	jmp	.label_294
.label_382:
	movabs	rax, OFFSET FLAT:.str.70
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_155:
	movabs	rax, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_171:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.72
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_181:
	movabs	rax, OFFSET FLAT:.str.73
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_320:
	movabs	rax, OFFSET FLAT:.str.74
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_353:
	movabs	rax, OFFSET FLAT:.str.75
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_173:
	nop	
	movabs	rax, OFFSET FLAT:.str.76
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_166:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.5_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_388:
	movabs	rax, OFFSET FLAT:.str.78
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_374:
	nop	
	movabs	rax, OFFSET FLAT:.str.79
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_183:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.80
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_177:
	movabs	rax, OFFSET FLAT:.str.81
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_227:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.82
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_246:
	movabs	rax, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_383:
	movabs	rax, OFFSET FLAT:.str.84
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_329:
	movabs	rax, OFFSET FLAT:.str.85
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_260:
	movabs	rax, OFFSET FLAT:.str.86
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_235:
	movabs	rax, OFFSET FLAT:.str.87
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_248:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.88
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_286:
	movabs	rax, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_335:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.90
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_332:
	nop	
	movabs	rax, OFFSET FLAT:.str.91
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_194:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.92
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_196:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.93
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_265:
	movabs	rax, OFFSET FLAT:.str.94
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_233:
	movabs	rax, OFFSET FLAT:.str.95
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_222:
	movabs	rax, OFFSET FLAT:.str.8_0
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_187:
	nop	
	movabs	rax, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_226:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.9_0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_212:
	nop	
	movabs	rax, OFFSET FLAT:.str.99
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_238:
	movabs	rax, OFFSET FLAT:.str.100
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_240:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.101
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_273:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.102
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_349:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.103
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_197:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.104
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_202:
	movabs	rax, OFFSET FLAT:.str.105
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_189:
	movabs	rax, OFFSET FLAT:.str.106
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_247:
	nop	
	movabs	rax, OFFSET FLAT:.str.107
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_282:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.108
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_167:
	movabs	rax, OFFSET FLAT:.str.109
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_251:
	nop	
	movabs	rax, OFFSET FLAT:.str.110
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_241:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_364:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.112
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_287:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.113
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_283:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.114
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_291:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.115
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_323:
	movabs	rax, OFFSET FLAT:.str.116
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_311:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.117
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_229:
	movabs	rax, OFFSET FLAT:.str.118
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_266:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.119
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_396:
	movabs	rax, OFFSET FLAT:.str.120
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_379:
	movabs	rax, OFFSET FLAT:.str.121
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_339:
	movabs	rax, OFFSET FLAT:.str.122
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_208:
	nop	
	movabs	rax, OFFSET FLAT:.str.123
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_380:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.124
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_272:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.124
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_263:
	movabs	rax, OFFSET FLAT:.str.124
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_176:
	movabs	rax, OFFSET FLAT:.str.125
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_372:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.126
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_228:
	movabs	rax, OFFSET FLAT:.str.127
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_278:
	movabs	rax, OFFSET FLAT:.str.128
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_215:
	movabs	rax, OFFSET FLAT:.str.129
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_234:
	nop	
	movabs	rax, OFFSET FLAT:.str.130
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_312:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.131
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_209:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.132
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_203:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.133
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_367:
	movabs	rax, OFFSET FLAT:.str.134
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_245:
	nop	
	movabs	rax, OFFSET FLAT:.str.135
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_326:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.136
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_159:
	movabs	rax, OFFSET FLAT:.str.11_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_317:
	movabs	rax, OFFSET FLAT:.str.138
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_342:
	nop	
	movabs	rax, OFFSET FLAT:.str.139
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_356:
	movabs	rax, OFFSET FLAT:.str.140
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_290:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.141
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_255:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.142
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_299:
	movabs	rax, OFFSET FLAT:.str.143
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_336:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.144
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_397:
	movabs	rax, OFFSET FLAT:.str.145
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_345:
	movabs	rax, OFFSET FLAT:.str.146
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_359:
	movabs	rax, OFFSET FLAT:.str.147
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_170:
	movabs	rax, OFFSET FLAT:.str.148
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_292:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.149
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_199:
	movabs	rax, OFFSET FLAT:.str.150
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_387:
	nop	
	movabs	rax, OFFSET FLAT:.str.6_0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_163:
	movabs	rax, OFFSET FLAT:.str.152
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_393:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.153
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_269:
	movabs	rax, OFFSET FLAT:.str.154
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_375:
	nop	
	movabs	rax, OFFSET FLAT:.str.155
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_347:
	movabs	rax, OFFSET FLAT:.str.156
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_301:
	movabs	rax, OFFSET FLAT:.str.157
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_365:
	movabs	rax, OFFSET FLAT:.str.158
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_259:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_390:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.160
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_154
.label_309:
	movabs	rax, OFFSET FLAT:.str.161
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_264:
	movabs	rax, OFFSET FLAT:.str.162
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_254:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.163
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_154
.label_333:
	movabs	rax, OFFSET FLAT:.str.164
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_275:
	movabs	rax, OFFSET FLAT:.str.165
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_231:
	movabs	rax, OFFSET FLAT:.str.166
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_346:
	movabs	rax, OFFSET FLAT:.str.167
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_319:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.168
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_207:
	nop	
	movabs	rax, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_322:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.170
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_314:
	movabs	rax, OFFSET FLAT:.str.171
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_327:
	movabs	rax, OFFSET FLAT:.str.172
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_340:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.173
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_186:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.174
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_395:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.175
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_223:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.176
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_351:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.176
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_161:
	movabs	rax, OFFSET FLAT:.str.177
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_190:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.178
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_192:
	movabs	rax, OFFSET FLAT:.str.179
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_158:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.180
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_360:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.181
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_330:
	movabs	rax, OFFSET FLAT:.str.182
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_180:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.183
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_305:
	movabs	rax, OFFSET FLAT:.str.184
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_376:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.185
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_296:
	movabs	rax, OFFSET FLAT:.str.186
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_219:
	movabs	rax, OFFSET FLAT:.str.187
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_154
.label_369:
	movabs	rax, OFFSET FLAT:.str.188
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_154
.label_294:
	nop	
	movabs	rdi, OFFSET FLAT:human_fstype.buf
	movabs	rsi, OFFSET FLAT:.str.189
	mov	rax, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x348], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x348]
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:human_fstype.buf
	mov	qword ptr [rbp - 0x40], rdx
	mov	dword ptr [rbp - 0x9c], eax
.label_154:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x400
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406190

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	make_format
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406200

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
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
.label_402:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_399
	movabs	rdi, OFFSET FLAT:printf_flags
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	mov	rbp, rbp
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x11], cl
.label_399:
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_401
	lea	rsi, [rsi]
	jmp	.label_405
.label_401:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_404
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
.label_404:
	jmp	.label_400
.label_400:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_402
.label_405:
	mov	rsp, rsp
	jmp	.label_403
.label_403:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_398
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	byte ptr [rax], dl
	lea	rdi, [rdi]
	jmp	.label_403
.label_398:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	call	strcpy
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl print_stat
	.type print_stat, @function
print_stat:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x290
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a0], rsi
	mov	dword ptr [rbp - 0xd4], edx
	mov	dword ptr [rbp - 0x200], ecx
	mov	qword ptr [rbp - 0x1b8], r8
	mov	qword ptr [rbp - 0x280], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], r9
	mov	byte ptr [rbp - 9], 0
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xd4]
	add	ecx, -0x41
	mov	esi, ecx
	sub	ecx, 0x39
	mov	qword ptr [rbp - 0x1e8], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], ecx
	ja	.label_406
	nop	
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_407]]
	lea	rsi, [rsi]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x4070d0

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	make_format
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407190

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x70
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.198
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x45], 1
	test	byte ptr [byte ptr [follow_links]],  1
	lea	rsi, [rsi]
	jne	.label_423
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	nop	
	je	.label_428
.label_423:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x70], rax
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	lea	rsi, [rsi]
	jne	.label_424
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.199
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_429
.label_424:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	find_bind_mount
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_426
	mov	byte ptr [rbp - 0x45], 0
	lea	rsi, [rsi]
	jmp	.label_429
.label_426:
	jmp	.label_428
.label_428:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	call	find_mount_point
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_422
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	find_bind_mount
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x45], 0
.label_422:
	jmp	.label_429
.label_429:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x40]
	cmp	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 8], rsi
	je	.label_421
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_425
.label_421:
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	je	.label_427
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_430
.label_427:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_430:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	rsp, rsp
	call	out_string
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	cl, byte ptr [rbp - 0x45]
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0

	.globl get_birthtime
	.type get_birthtime, @function
get_birthtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, rdx
	lea	rsi, [rsi]
	call	get_stat_birthtime
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4073f0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 0x60], rsi
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
	lea	rdx, [rbp - 0x58]
	lea	rsi, [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x74], ecx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [human_time.tz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_433
	movabs	rdi, OFFSET FLAT:human_time.str
	lea	rdi, [rdi]
	mov	eax, 0x3d
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str.203
	lea	rcx, [rbp - 0x58]
	mov	r8,  qword ptr [word ptr [human_time.tz]]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x74]
	call	nstrftime
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_431
.label_433:
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	timetostr
	movabs	rdi, OFFSET FLAT:human_time.str
	movabs	rsi, OFFSET FLAT:.str.204
	mov	ecx, dword ptr [rbp - 0x74]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_431:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:human_time.str
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407510

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x100
	nop	
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, 0x2e
	call	memchr
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], 0
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_456
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	movsx	edx, byte ptr [rax + 1]
	nop	
	sub	edx, 0x30
	mov	rbp, rbp
	cmp	edx, 9
	ja	.label_442
	xor	eax, eax
	mov	esi, eax
	nop	
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	rdi, rcx
	nop	
	call	strtol
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0x7fffffff
	jg	.label_438
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_443
.label_438:
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_443
.label_443:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0xc0], ecx
	jmp	.label_451
.label_442:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], 9
.label_451:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc0], 0
	lea	rsi, [rsi]
	je	.label_455
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	sub	ecx, 0x30
	cmp	ecx, 9
	mov	rbp, rbp
	ja	.label_455
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	byte ptr [rax], 0
.label_447:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	jbe	.label_447
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strtol
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0x7fffffff
	nop	
	jg	.label_466
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_441
.label_466:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_441
.label_441:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 1
	nop	
	mov	edx, eax
	mov	dword ptr [rbp - 0x2c], edx
	cmp	ecx, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	jge	.label_449
	mov	rax, qword ptr [rbp - 8]
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
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	sub	rax, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	cmp	rax, rsi
	mov	rsp, rsp
	jae	.label_458
	movsxd	rax, dword ptr [rbp - 0x2c]
	nop	
	sub	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_452
.label_458:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, 1
	mov	edx, eax
	mov	dword ptr [rbp - 0x70], edx
	cmp	ecx, dword ptr [rbp - 0x70]
	jge	.label_450
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0xc0]
	mov	dword ptr [rbp - 0x68], ecx
	cmp	eax, dword ptr [rbp - 0x68]
	jge	.label_436
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_445:
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_454
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	jne	.label_463
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa1], 1
	jmp	.label_465
.label_463:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rdx, rax
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rsp, rsp
	mov	byte ptr [rax], cl
.label_465:
	nop	
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	jmp	.label_445
.label_454:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc8]
	sub	rax, rcx
	nop	
	test	byte ptr [rbp - 0xa1], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	je	.label_460
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_437
.label_460:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.205
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	edx, dword ptr [rbp - 0x68]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x14], eax
.label_437:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rdx, rcx
	mov	qword ptr [rbp - 0x58], rdx
.label_436:
	jmp	.label_450
.label_450:
	jmp	.label_449
.label_449:
	jmp	.label_455
.label_455:
	jmp	.label_456
.label_456:
	mov	dword ptr [rbp - 0x84], 1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc0]
	nop	
	mov	dword ptr [rbp - 0xa0], eax
.label_434:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xa0], 9
	lea	rdi, [rdi]
	jge	.label_462
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x84], 0xa
	mov	dword ptr [rbp - 0x84], eax
	nop	
	mov	eax, dword ptr [rbp - 0xa0]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_434
.label_462:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe9], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jge	.label_444
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_444
	nop	
	mov	eax, 0x3b9aca00
	lea	rdi, [rdi]
	cdq	
	idiv	dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, dword ptr [rbp - 0x74]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
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
	mov	r9d, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	r9d, r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], r9d
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x74], 0
	lea	rsi, [rsi]
	setne	dil
	mov	rsp, rsp
	and	dil, 1
	lea	rsi, [rsi]
	movzx	r8d, dil
	movsxd	rcx, r8d
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	cmp	qword ptr [rbp - 0x48], 0
	sete	dil
	and	dil, 1
	nop	
	mov	byte ptr [rbp - 0xe9], dil
.label_444:
	test	byte ptr [rbp - 0xe9], 1
	je	.label_440
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	call	out_minus_zero
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_448
.label_440:
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	out_int
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_448:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc0], 0
	je	.label_459
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc0], 9
	jge	.label_457
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	jmp	.label_439
.label_457:
	mov	rbp, rbp
	mov	eax, 9
	mov	dword ptr [rbp - 0xd0], eax
	mov	rbp, rbp
	jmp	.label_439
.label_439:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	mov	eax, dword ptr [rbp - 0xc0]
	sub	eax, dword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	nop	
	cmp	dword ptr [rbp - 0x9c], 0
	lea	rsi, [rsi]
	jge	.label_446
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_461
.label_446:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x64], eax
.label_461:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x8c]
	cmp	eax, dword ptr [rbp - 0x2c]
	jge	.label_435
	mov	rax,  qword ptr [word ptr [decimal_point_len]]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	sub	ecx, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	cmp	rax, rdx
	jae	.label_435
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	sub	rcx,  qword ptr [word ptr [decimal_point_len]]
	movsxd	rdx, dword ptr [rbp - 0xf0]
	nop	
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_453
.label_435:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x38]
	movabs	rdi, OFFSET FLAT:.str.206
	nop	
	xor	ecx, ecx
	mov	edx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], edx
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	edx, dword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r10d, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xcc], ecx
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
	mov	dword ptr [rbp - 0x6c], eax
.label_459:
	add	rsp, 0x100
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407c80

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jg	.label_467
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_468
.label_467:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rcx
.label_468:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d10

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x58], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	byte ptr [rbp - 0x29], 0
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [follow_links]],  1
	je	.label_472
	nop	
	lea	rsi, [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	call	getfilecon
	mov	dword ptr [rbp - 0x30], eax
	nop	
	jmp	.label_474
.label_472:
	lea	rsi, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lgetfilecon
	mov	dword ptr [rbp - 0x30], eax
.label_474:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_471
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.208
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	qword ptr [rbp - 0x10], 0
	nop	
	mov	byte ptr [rbp - 0x29], 1
.label_471:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, qword ptr [rbp - 0x58]
	mov	ecx, OFFSET FLAT:.str.65
	mov	esi, ecx
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	je	.label_473
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_470
.label_473:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.198
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_470
.label_470:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	je	.label_469
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	freecon
.label_469:
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407e90

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x138], rdi
	mov	qword ptr [rbp - 0x140], 0
	test	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
	mov	rbp, rbp
	jne	.label_481
	nop	
	xor	edi, edi
	call	read_file_system_list
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [find_bind_mount.mount_list]],  rax
	nop	
	cmp	rax, 0
	jne	.label_478
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.201
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], esi
	call	gettext
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_478:
	mov	byte ptr [byte ptr [find_bind_mount.tried_mount_list]],  1
.label_481:
	lea	rsi, [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	call	stat
	cmp	eax, 0
	je	.label_475
	mov	qword ptr [rbp - 0x148], 0
	lea	rdi, [rdi]
	jmp	.label_479
.label_475:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [find_bind_mount.mount_list]]
	mov	qword ptr [rbp - 8], rax
.label_476:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_482
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_477
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	jne	.label_477
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x138]
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_477
	lea	rsi, [rbp - 0x98]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_480
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	jne	.label_480
	mov	rax, qword ptr [rbp - 0x130]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_480
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_482
.label_480:
	jmp	.label_477
.label_477:
	nop	
	jmp	.label_483
.label_483:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_476
.label_482:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x148], rax
.label_479:
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	add	rsp, 0x150
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408080

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	imaxtostr
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080b0

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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408120

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x1f0
	lea	rax, [rbp - 0x110]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d0], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], rsi
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, rax
	nop	
	call	save_cwd
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_495
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_4
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], 0
	mov	rsp, rsp
	jmp	.label_489
.label_495:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_491
	nop	
	mov	eax, 0x90
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x1e0]
	nop	
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1d0]
	call	chdir
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_485
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x114], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x1d0]
	mov	qword ptr [rbp - 0xf8], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x114]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	qword ptr [rbp - 0xf0], 0
	mov	rsp, rsp
	jmp	.label_489
.label_485:
	mov	rsp, rsp
	jmp	.label_487
.label_491:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	call	dir_name
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rbp
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x1b0], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1d8], rax
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rdx, qword ptr [rbp - 0x1b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0xe0]
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	chdir
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_494
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], 0
	lea	rdi, [rdi]
	jmp	.label_489
.label_494:
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x1a8]
	mov	rsp, rsp
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_499
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	jmp	.label_488
.label_499:
	jmp	.label_487
.label_487:
	mov	rbp, rbp
	jmp	.label_492
.label_492:
	movabs	rdi, OFFSET FLAT:.str.4_0
	lea	rsi, [rbp - 0xd8]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_498
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_488
.label_498:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	jne	.label_497
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x1a0]
	jne	.label_496
.label_497:
	mov	rbp, rbp
	jmp	.label_486
.label_496:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	chdir
	nop	
	cmp	eax, 0
	nop	
	jge	.label_490
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xfc], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x1e8], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1e8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_488
.label_490:
	nop	
	mov	eax, 0x90
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0xd8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1a8]
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_492
.label_486:
	call	xgetcwd
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_488:
	call	__errno_location
	lea	rdi, [rbp - 0x110]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rsi, [rsi]
	call	restore_cwd
	nop	
	cmp	eax, 0
	je	.label_493
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.6_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], esi
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_493:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x110]
	nop	
	call	free_cwd
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xf0], rax
.label_489:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rbp
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	qword ptr [rbp - 0x68], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x50]
	jae	.label_500
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_510
.label_500:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_510:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jae	.label_505
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_511
.label_505:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
.label_511:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_512:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_509
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	nop	
	jmp	.label_501
.label_509:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	jge	.label_504
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_504
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jmp	.label_501
.label_504:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_507
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_501
.label_507:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_508
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_506
.label_508:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_502
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_503
.label_502:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_501
.label_503:
	jmp	.label_506
.label_506:
	lea	rdi, [rdi]
	jmp	.label_512
.label_501:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4088c0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4088e0

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
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_513:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_523
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_520
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_514
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_516
.label_514:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_521
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_519
.label_521:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_515
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x48]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_517
.label_515:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_517:
	lea	rsi, [rsi]
	jmp	.label_519
.label_519:
	mov	rbp, rbp
	jmp	.label_522
.label_522:
	mov	rsp, rsp
	jmp	.label_520
.label_520:
	nop	
	jmp	.label_524
.label_524:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_513
.label_523:
	test	byte ptr [rbp - 0x21], 1
	je	.label_518
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_516
.label_518:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_516:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a90

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_525
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_526
.label_525:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_526:
	mov	rax, qword ptr [rbp - 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b70

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 8], eax
.label_532:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_529
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_527
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_531
.label_527:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
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
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_528
.label_531:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_1
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_528:
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_532
.label_529:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d20
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jl	.label_533
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_534
.label_533:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], -1
.label_534:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408de0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_537:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_539
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_535
.label_536:
	lea	rdi, [rdi]
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_537
.label_539:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_535:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408eb0
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
	#Procedure 0x408ee0
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
	#Procedure 0x408f10

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
	je	.label_544
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_540
.label_544:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_543
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
	movabs	rdx, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_542
.label_543:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_542:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_540:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_541
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_541:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409040

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_545
	lea	rsi, [rsi]
	call	xalloc_die
.label_545:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409090

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], 0
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_546
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_549
.label_546:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0xc], eax
.label_549:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	last_component
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_550:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_551
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409180

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_len
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	mov	byte ptr [rbp - 0x22], cl
	je	.label_553
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	jmp	.label_553
.label_553:
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x21]
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
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_555
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_552
.label_555:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x21], 1
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
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0x2e
.label_554:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_552:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4092a0

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_559:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_562
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_559
.label_562:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_557:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_561
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_556
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_558
.label_556:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_560
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_560:
	jmp	.label_558
.label_558:
	jmp	.label_563
.label_563:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_557
.label_561:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409370
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_564
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], sil
.label_564:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409430

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_579
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_573
	movabs	rdi, OFFSET FLAT:.str_7
	call	gettext
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_569
.label_573:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_569:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_571
.label_579:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_581
	movabs	rdi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_571
.label_581:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_580
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_2
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_571
.label_580:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_578
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4_2
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_571
.label_578:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_577
	movabs	rdi, OFFSET FLAT:.str.5_2
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_571
.label_577:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_574
	movabs	rdi, OFFSET FLAT:.str.6_2
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_571
.label_574:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	lea	rdi, [rdi]
	jne	.label_575
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_571
.label_575:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	lea	rdi, [rdi]
	jne	.label_570
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_571
.label_570:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x1000
	nop	
	jne	.label_576
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9_1
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_571
.label_576:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xc000
	mov	rsp, rsp
	jne	.label_572
	movabs	rdi, OFFSET FLAT:.str.10_1
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_571
.label_572:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_571:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409720

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0xc]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_583
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_584
.label_583:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x18], eax
.label_584:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_586
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_587
.label_586:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_587:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 0xc]
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
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jmp	.label_585
.label_582:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x10], eax
.label_585:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4099c0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_588
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x2d
	jmp	.label_589
.label_588:
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_591
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x64
	nop	
	jmp	.label_589
.label_591:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_594
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x62
	nop	
	jmp	.label_589
.label_594:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_593
	mov	byte ptr [rbp - 5], 0x63
	jmp	.label_589
.label_593:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_592
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x6c
	jmp	.label_589
.label_592:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_595
	mov	byte ptr [rbp - 5], 0x70
	mov	rbp, rbp
	jmp	.label_589
.label_595:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_590
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x73
	lea	rsi, [rsi]
	jmp	.label_589
.label_590:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x3f
.label_589:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 5]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ae0

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_601
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0x46
	jmp	.label_597
.label_601:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_599
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_596
.label_599:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_600
	nop	
	mov	rax, qword ptr [rbp - 8]
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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409bc0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_604
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d10

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	xor	eax, eax
	nop	
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	lea	r11, [rbp - 0x41]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x38], r8
	nop	
	mov	dword ptr [rbp - 4], r9d
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x38]
	nop	
	mov	r9d, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	dword ptr [rbp - 0x48], r9d
	nop	
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r11
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], r10d
	call	__strftime_internal
	lea	rdi, [rdi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dd0

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
	sub	rsp, 0xa48
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdi
	mov	qword ptr [rbp - 0x398], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x308], rdx
	mov	qword ptr [rbp - 0x2b8], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x29d], al
	mov	dword ptr [rbp - 0x2bc], r9d
	mov	dword ptr [rbp - 0x22c], ebx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x498], r11
	mov	qword ptr [rbp - 0x488], r10
	mov	dword ptr [rbp - 0x9d0], r8d
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	r8d, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2dc], r8d
	mov	qword ptr [rbp - 0x978], 0
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x370], rcx
	mov	qword ptr [rbp - 0xe0], 0
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rcx
	cmp	qword ptr [rbp - 0xe0], 0
	nop	
	jne	.label_909
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xe0], rax
.label_909:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2dc], 0xc
	jle	.label_963
	mov	eax, dword ptr [rbp - 0x2dc]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2dc], eax
	nop	
	jmp	.label_694
.label_963:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2dc], 0
	lea	rdi, [rdi]
	jne	.label_815
	nop	
	mov	dword ptr [rbp - 0x2dc], 0xc
.label_815:
	mov	rbp, rbp
	jmp	.label_694
.label_694:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x308]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
.label_679:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_986
	nop	
	mov	dword ptr [rbp - 0x9c0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x230], 0
	mov	byte ptr [rbp - 0x51], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29d]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9e9], al
	nop	
	mov	byte ptr [rbp - 0x339], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x25
	nop	
	je	.label_992
	lea	rsi, [rsi]
	jmp	.label_1008
.label_1008:
	mov	qword ptr [rbp - 0x470], 1
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1010
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x274], eax
	jmp	.label_1017
.label_1010:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x274], eax
.label_1017:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x274]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x470]
	cmp	rcx, qword ptr [rbp - 0x158]
	nop	
	jae	.label_1022
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3b0], rax
	nop	
	jmp	.label_1027
.label_1022:
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	mov	qword ptr [rbp - 0x3b0], rax
.label_1027:
	mov	rax, qword ptr [rbp - 0x3b0]
	mov	qword ptr [rbp - 0x468], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x468]
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_616
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_622
.label_616:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_634
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x230], 0
	lea	rsi, [rsi]
	jne	.label_638
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x470]
	cmp	rax, qword ptr [rbp - 0x158]
	nop	
	jae	.label_638
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x470]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], rax
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_647
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_657
.label_647:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_670
.label_657:
	lea	rsi, [rsi]
	mov	esi, 0x20
	nop	
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
.label_670:
	mov	rbp, rbp
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	add	rax, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rax
.label_634:
	mov	rax, qword ptr [rbp - 0x468]
	nop	
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_676
.label_992:
	jmp	.label_708
.label_708:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rcx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	esi, edx
	nop	
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x9bc], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa40], esi
	mov	rsp, rsp
	je	.label_709
	jmp	.label_720
.label_720:
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9cc], eax
	je	.label_700
	jmp	.label_727
.label_727:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9bc]
	mov	rsp, rsp
	sub	eax, 0x2d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28c], eax
	je	.label_700
	nop	
	jmp	.label_874
.label_874:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9bc]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x480], eax
	je	.label_700
	mov	rbp, rbp
	jmp	.label_740
.label_740:
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xec], eax
	mov	rbp, rbp
	je	.label_742
	jmp	.label_747
.label_747:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x5f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x344], eax
	jne	.label_748
	jmp	.label_700
.label_700:
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x9c0], ecx
	nop	
	jmp	.label_708
.label_742:
	nop	
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rbp, rbp
	jmp	.label_708
.label_709:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x339], 1
	lea	rdi, [rdi]
	jmp	.label_708
.label_748:
	jmp	.label_758
.label_758:
	lea	rdi, [rdi]
	jmp	.label_760
.label_760:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_761
	mov	dword ptr [rbp - 0x22c], 0
.label_783:
	cmp	dword ptr [rbp - 0x22c], 0xccccccc
	lea	rdi, [rdi]
	jg	.label_766
	cmp	dword ptr [rbp - 0x22c], 0xccccccc
	jne	.label_771
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_771
.label_766:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x22c], 0x7fffffff
	nop	
	jmp	.label_775
.label_771:
	imul	eax, dword ptr [rbp - 0x22c], 0xa
	nop	
	mov	dword ptr [rbp - 0x22c], eax
	mov	rcx, qword ptr [rbp - 0x108]
	nop	
	movsx	eax, byte ptr [rcx]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
.label_775:
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 9
	jbe	.label_783
	mov	rbp, rbp
	jmp	.label_761
.label_761:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x238], ecx
	mov	dword ptr [rbp - 0x7c], edx
	je	.label_793
	lea	rsi, [rsi]
	jmp	.label_984
.label_984:
	mov	eax, dword ptr [rbp - 0x238]
	nop	
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x9ac], eax
	jne	.label_803
	jmp	.label_793
.label_793:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x108], rcx
	nop	
	movsx	edx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x45c], edx
	jmp	.label_806
.label_803:
	mov	dword ptr [rbp - 0x45c], 0
.label_806:
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x314], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x318], ecx
	je	.label_817
	lea	rdi, [rdi]
	jmp	.label_822
.label_822:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	mov	rsp, rsp
	je	.label_824
	lea	rdi, [rdi]
	jmp	.label_830
.label_830:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x294], eax
	je	.label_832
	nop	
	jmp	.label_839
.label_839:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3d4], eax
	nop	
	je	.label_800
	jmp	.label_845
.label_845:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x42
	nop	
	mov	dword ptr [rbp - 0x474], eax
	je	.label_846
	lea	rsi, [rsi]
	jmp	.label_849
.label_849:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x4bc], eax
	je	.label_851
	mov	rbp, rbp
	jmp	.label_857
.label_857:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xa04], eax
	je	.label_861
	jmp	.label_866
.label_866:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x354], eax
	je	.label_867
	lea	rdi, [rdi]
	jmp	.label_872
.label_872:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x3ec], eax
	je	.label_873
	mov	rsp, rsp
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_883
	jmp	.label_885
.label_885:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x184], eax
	lea	rdi, [rdi]
	je	.label_886
	jmp	.label_891
.label_891:
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x364], eax
	je	.label_893
	jmp	.label_899
.label_899:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x9b8], eax
	je	.label_901
	jmp	.label_907
.label_907:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x288], eax
	lea	rsi, [rsi]
	je	.label_908
	lea	rdi, [rdi]
	jmp	.label_916
.label_916:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x118], eax
	je	.label_918
	jmp	.label_923
.label_923:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x124], eax
	mov	rbp, rbp
	je	.label_823
	jmp	.label_931
.label_931:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2d8], eax
	je	.label_933
	jmp	.label_940
.label_940:
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x55
	nop	
	mov	dword ptr [rbp - 0x9d8], eax
	je	.label_915
	jmp	.label_947
.label_947:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x950], eax
	lea	rsi, [rsi]
	je	.label_873
	jmp	.label_949
.label_949:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x57
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x328], eax
	je	.label_763
	jmp	.label_956
.label_956:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x58
	nop	
	mov	dword ptr [rbp - 0x13c], eax
	lea	rsi, [rsi]
	je	.label_958
	jmp	.label_964
.label_964:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xac], eax
	je	.label_965
	nop	
	jmp	.label_972
.label_972:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x24c], eax
	lea	rdi, [rdi]
	je	.label_974
	mov	rbp, rbp
	jmp	.label_980
.label_980:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	je	.label_983
	jmp	.label_799
.label_799:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x348], eax
	lea	rdi, [rdi]
	je	.label_989
	mov	rsp, rsp
	jmp	.label_993
.label_993:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x110], eax
	je	.label_996
	lea	rsi, [rsi]
	jmp	.label_1000
.label_1000:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2d0], eax
	je	.label_1002
	jmp	.label_1004
.label_1004:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4a8], eax
	je	.label_1006
	mov	rbp, rbp
	jmp	.label_1015
.label_1015:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x47c], eax
	je	.label_873
	mov	rbp, rbp
	jmp	.label_1020
.label_1020:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x2d4], eax
	je	.label_989
	lea	rdi, [rdi]
	jmp	.label_1001
.label_1001:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x16c], eax
	lea	rdi, [rdi]
	je	.label_1025
	jmp	.label_606
.label_606:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x214], eax
	mov	rbp, rbp
	je	.label_608
	mov	rsp, rsp
	jmp	.label_617
.label_617:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x4ac], eax
	nop	
	je	.label_619
	mov	rbp, rbp
	jmp	.label_623
.label_623:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x340], eax
	je	.label_627
	mov	rbp, rbp
	jmp	.label_744
.label_744:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x284], eax
	lea	rsi, [rsi]
	je	.label_637
	jmp	.label_644
.label_644:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x70
	nop	
	mov	dword ptr [rbp - 0x338], eax
	lea	rdi, [rdi]
	je	.label_645
	jmp	.label_651
.label_651:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x100], eax
	je	.label_653
	lea	rdi, [rdi]
	jmp	.label_656
.label_656:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x72
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98c], eax
	mov	rsp, rsp
	je	.label_855
	jmp	.label_666
.label_666:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x9d4], eax
	je	.label_667
	jmp	.label_675
.label_675:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa3c], eax
	nop	
	je	.label_678
	jmp	.label_988
.label_988:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c4], eax
	mov	rbp, rbp
	je	.label_685
	jmp	.label_691
.label_691:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x2cc], eax
	lea	rdi, [rdi]
	je	.label_613
	jmp	.label_650
.label_650:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x914], eax
	je	.label_699
	lea	rdi, [rdi]
	jmp	.label_693
.label_693:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	je	.label_704
	jmp	.label_729
.label_729:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x298], eax
	je	.label_733
	jmp	.label_713
.label_824:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_714
	mov	rsp, rsp
	jmp	.label_607
.label_714:
	jmp	.label_718
.label_718:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9e0], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_789
	xor	eax, eax
	mov	dword ptr [rbp - 0x9f0], eax
	lea	rsi, [rsi]
	jmp	.label_726
.label_789:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x9f0], eax
.label_726:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9f0]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x458], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x9e0]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x458]
	lea	rdi, [rdi]
	jae	.label_732
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x458]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_829
.label_732:
	nop	
	mov	rax, qword ptr [rbp - 0x9e0]
	nop	
	mov	qword ptr [rbp - 0x1e8], rax
.label_829:
	mov	rax, qword ptr [rbp - 0x1e8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x968], rax
	nop	
	mov	rax, qword ptr [rbp - 0x968]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_750
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_622
.label_750:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_757
	cmp	dword ptr [rbp - 0x230], 0
	lea	rsi, [rsi]
	jne	.label_697
	mov	rax, qword ptr [rbp - 0x9e0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x458]
	mov	rsp, rsp
	jae	.label_697
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x9e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	nop	
	je	.label_765
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	jne	.label_773
.label_765:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_779
.label_773:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rdx, qword ptr [rbp - 0x330]
	call	memset
	mov	rdx, qword ptr [rbp - 0x330]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_779:
	jmp	.label_697
.label_697:
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], cl
	nop	
	mov	rax, qword ptr [rbp - 0x9e0]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_757:
	nop	
	mov	rax, qword ptr [rbp - 0x968]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x978], rax
	nop	
	jmp	.label_665
.label_983:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_805
	mov	rbp, rbp
	jmp	.label_607
.label_805:
	test	byte ptr [rbp - 0x339], 1
	je	.label_809
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 0
.label_809:
	mov	rsp, rsp
	jmp	.label_788
.label_800:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_683
	jmp	.label_607
.label_683:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x339], 1
	je	.label_819
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], 0
.label_819:
	jmp	.label_788
.label_989:
	test	byte ptr [rbp - 0x339], 1
	nop	
	je	.label_827
	nop	
	mov	byte ptr [rbp - 0x9e9], 1
	mov	byte ptr [rbp - 0x51], 0
.label_827:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_833
	nop	
	jmp	.label_607
.label_833:
	jmp	.label_788
.label_846:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_840
	nop	
	jmp	.label_607
.label_840:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x339], 1
	je	.label_843
	mov	byte ptr [rbp - 0x9e9], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], 0
.label_843:
	lea	rdi, [rdi]
	jmp	.label_788
.label_996:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_871
	jmp	.label_607
.label_871:
	lea	rsi, [rsi]
	jmp	.label_788
.label_852:
	nop	
	mov	dword ptr [rbp - 0x334], 0xffffffff
.label_942:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	r8b, byte ptr [rbp - 0x9e9]
	nop	
	mov	r9d, dword ptr [rbp - 0x9c0]
	mov	eax, dword ptr [rbp - 0x334]
	mov	r10, qword ptr [rbp - 0x498]
	mov	r11, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x9d0]
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
	mov	qword ptr [rbp - 0x390], rax
	mov	rax, qword ptr [rbp - 0x390]
	mov	qword ptr [rbp - 0x48], rax
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_887
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	rsp, rsp
	jmp	.label_895
.label_887:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x1dc], eax
.label_895:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x2f8], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x2f8]
	nop	
	jae	.label_902
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f8]
	mov	qword ptr [rbp - 0x1b0], rax
	lea	rsi, [rsi]
	jmp	.label_912
.label_902:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
.label_912:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x3f8], rax
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_922
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_622
.label_922:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_898
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_943
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2f8]
	lea	rsi, [rsi]
	jae	.label_943
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4f8], rax
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_948
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	jne	.label_1028
.label_948:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f8]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_968
.label_1028:
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_968:
	mov	rsp, rsp
	jmp	.label_943
.label_943:
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x398]
	sub	rax, qword ptr [rbp - 0x978]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x9e9]
	mov	r9d, dword ptr [rbp - 0x9c0]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x334]
	mov	r10, qword ptr [rbp - 0x498]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x488]
	mov	ebx, dword ptr [rbp - 0x9d0]
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x111], sil
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp - 0x111]
	mov	rbp, rbp
	movzx	r15d, r14b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], r8d
	mov	r8d, r15d
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp - 0x234]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rcx
	mov	qword ptr [rbp - 0x1c8], rax
.label_898:
	mov	rax, qword ptr [rbp - 0x3f8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_665
.label_788:
	nop	
	lea	rax, [rbp - 0x39d]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x928], rax
	mov	rax, qword ptr [rbp - 0x928]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x928], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x928]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x928], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_615
	nop	
	mov	eax, dword ptr [rbp - 0x45c]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x928]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x928], rsi
	mov	byte ptr [rdx], cl
.label_615:
	mov	rbp, rbp
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x39d]
	lea	rdi, [rbp - 0x910]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x314]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x928]
	mov	rsp, rsp
	mov	r9, r8
	add	r9, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x928], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x928]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x2b8]
	call	strftime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4c8], 0
	nop	
	je	.label_671
	lea	rdi, [rdi]
	jmp	.label_680
.label_680:
	mov	rax, qword ptr [rbp - 0x4c8]
	sub	rax, 1
	mov	qword ptr [rbp - 0xa38], rax
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_681
	xor	eax, eax
	mov	dword ptr [rbp - 0x44c], eax
	jmp	.label_689
.label_681:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x44c], eax
.label_689:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x180], rcx
	mov	rcx, qword ptr [rbp - 0xa38]
	cmp	rcx, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	jae	.label_695
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_795
.label_695:
	mov	rax, qword ptr [rbp - 0xa38]
	mov	qword ptr [rbp - 0x70], rax
.label_795:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x3e0], rax
	mov	rax, qword ptr [rbp - 0x3e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_706
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_622
.label_706:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_719
	nop	
	cmp	dword ptr [rbp - 0x230], 0
	nop	
	jne	.label_723
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x180]
	jae	.label_723
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xa38]
	mov	qword ptr [rbp - 0x970], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_850
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	nop	
	jne	.label_737
.label_850:
	lea	rdi, [rdi]
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rdx, qword ptr [rbp - 0x970]
	call	memset
	nop	
	mov	rdx, qword ptr [rbp - 0x970]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1014
.label_737:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x970]
	call	memset
	mov	rdx, qword ptr [rbp - 0x970]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rdx
.label_1014:
	jmp	.label_723
.label_723:
	test	byte ptr [rbp - 0x51], 1
	je	.label_759
	lea	rax, [rbp - 0x910]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa38]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_769
.label_759:
	test	byte ptr [rbp - 0x9e9], 1
	je	.label_745
	lea	rax, [rbp - 0x910]
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0xa38]
	mov	rsi, rax
	nop	
	call	memcpy_uppcase
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3d0], rax
	jmp	.label_776
.label_745:
	lea	rax, [rbp - 0x910]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0xa38]
	nop	
	mov	rsi, rax
	call	memcpy
.label_776:
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 0xa38]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_719:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x3e0]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_671
.label_671:
	jmp	.label_665
.label_851:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_792
	mov	rbp, rbp
	jmp	.label_788
.label_792:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x64
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rdx + 0x14]
	nop	
	mov	dword ptr [rbp - 0x9c8], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x9c8]
	idiv	esi
	add	eax, 0x13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9e8], eax
	mov	rdi, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x9a5], cl
	lea	rsi, [rsi]
	jge	.label_798
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x9e8]
	setl	cl
	mov	byte ptr [rbp - 0x9a5], cl
.label_798:
	mov	al, byte ptr [rbp - 0x9a5]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x9e8]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x9e8], edx
	mov	dword ptr [rbp - 0x230], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa21], cl
	nop	
	mov	edx, dword ptr [rbp - 0x9e8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	lea	rdi, [rdi]
	jmp	.label_774
.label_699:
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_738
	mov	rsp, rsp
	jmp	.label_607
.label_738:
	lea	rdi, [rdi]
	jmp	.label_788
.label_861:
	cmp	dword ptr [rbp - 0x45c], 0
	mov	rsp, rsp
	je	.label_847
	lea	rsi, [rsi]
	jmp	.label_607
.label_847:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_852
.label_1002:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_859
	jmp	.label_607
.label_859:
	jmp	.label_865
.label_865:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x3b4], ecx
	lea	rdi, [rdi]
	jmp	.label_639
.label_1006:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_876
	jmp	.label_607
.label_876:
	jmp	.label_879
.label_879:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x3b4], ecx
	jmp	.label_610
.label_836:
	mov	byte ptr [rbp - 0x45d], 1
	lea	rsi, [rsi]
	jmp	.label_889
.label_774:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0
	jne	.label_892
	mov	eax, dword ptr [rbp - 0x2bc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c0], eax
.label_892:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	byte ptr [rbp - 0x9e1], cl
	jne	.label_900
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x230], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x14c]
	nop	
	mov	byte ptr [rbp - 0x16d], al
	jb	.label_906
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x230]
	cmp	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	setl	cl
	mov	byte ptr [rbp - 0x16d], cl
.label_906:
	mov	al, byte ptr [rbp - 0x16d]
	mov	byte ptr [rbp - 0x9e1], al
.label_900:
	mov	al, byte ptr [rbp - 0x9e1]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45d], al
	nop	
	jmp	.label_929
.label_610:
	cmp	dword ptr [rbp - 0x9c0], 0
	jne	.label_937
	nop	
	mov	dword ptr [rbp - 0x9c0], 0x5f
.label_937:
	jmp	.label_639
.label_639:
	cmp	dword ptr [rbp - 0x3b4], 0
	nop	
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa21], al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x3b4]
	mov	dword ptr [rbp - 0x14c], ecx
.label_612:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45d], 0
.label_929:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], 0
.label_889:
	nop	
	cmp	dword ptr [rbp - 0x45c], 0x4f
	lea	rsi, [rsi]
	jne	.label_951
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa21], 1
	jne	.label_951
	lea	rdi, [rdi]
	jmp	.label_788
.label_951:
	lea	rax, [rbp - 0xd0]
	add	rax, 0x17
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa00], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa21], 1
	je	.label_962
	xor	eax, eax
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x14c], eax
.label_962:
	jmp	.label_703
.label_703:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	je	.label_975
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa00]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xa00], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_975:
	nop	
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [rbp - 0x78], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2a4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2a4]
	div	ecx
	add	edx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xa00]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa00], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14c]
	nop	
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x14c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x14c], 0
	mov	byte ptr [rbp - 0x3f9], al
	jne	.label_762
	cmp	dword ptr [rbp - 0x78], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x3f9], al
.label_762:
	mov	al, byte ptr [rbp - 0x3f9]
	nop	
	test	al, 1
	jne	.label_703
	nop	
	jmp	.label_969
.label_969:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	jge	.label_978
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x230], eax
.label_978:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xa21], 1
	je	.label_1029
	mov	rbp, rbp
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x9b4], eax
	lea	rdi, [rdi]
	jmp	.label_609
.label_1029:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x2b
	nop	
	mov	dl, byte ptr [rbp - 0x45d]
	mov	rsp, rsp
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9b4], eax
.label_609:
	nop	
	mov	eax, dword ptr [rbp - 0x9b4]
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0x4a1], cl
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2d
	lea	rdi, [rdi]
	jne	.label_624
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x4a1], 0
	mov	rsp, rsp
	je	.label_635
	jmp	.label_640
.label_640:
	mov	qword ptr [rbp - 0x1f8], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_641
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50c], eax
	jmp	.label_646
.label_641:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	dword ptr [rbp - 0x50c], eax
.label_646:
	mov	eax, dword ptr [rbp - 0x50c]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2e8], rcx
	mov	rcx, qword ptr [rbp - 0x1f8]
	cmp	rcx, qword ptr [rbp - 0x2e8]
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	qword ptr [rbp - 0x4d0], rax
	lea	rdi, [rdi]
	jmp	.label_660
.label_654:
	nop	
	mov	rax, qword ptr [rbp - 0x1f8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4d0], rax
.label_660:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4d0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4e0], rax
	mov	rax, qword ptr [rbp - 0x4e0]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_674
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_622
.label_674:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_690
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_626
	mov	rax, qword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2e8]
	nop	
	jae	.label_626
	nop	
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x1f8]
	nop	
	mov	qword ptr [rbp - 0xa20], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_687
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_710
.label_687:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0xa20]
	call	memset
	mov	rdx, qword ptr [rbp - 0xa20]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rdx
	lea	rsi, [rsi]
	jmp	.label_716
.label_710:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_716:
	mov	rsp, rsp
	jmp	.label_626
.label_626:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1f8]
	nop	
	add	rcx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rcx
.label_690:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4e0]
	add	rax, qword ptr [rbp - 0x978]
	nop	
	mov	qword ptr [rbp - 0x978], rax
	mov	rsp, rsp
	jmp	.label_635
.label_635:
	mov	rsp, rsp
	jmp	.label_751
.label_624:
	lea	rax, [rbp - 0xd0]
	movsxd	rcx, dword ptr [rbp - 0x230]
	mov	rbp, rbp
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa00]
	nop	
	sub	rax, rdx
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	byte ptr [rbp - 0x4a1], 0
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
	mov	dword ptr [rbp - 0x4e8], edi
	cmp	dword ptr [rbp - 0x4e8], 0
	mov	rbp, rbp
	jle	.label_753
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c0], 0x5f
	nop	
	jne	.label_767
	movsxd	rax, dword ptr [rbp - 0x4e8]
	mov	rcx, qword ptr [rbp - 0x398]
	nop	
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	nop	
	jb	.label_752
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_622
.label_752:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rsp, rsp
	je	.label_777
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x4e8]
	call	memset
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x4e8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x370]
	movsxd	rdi, esi
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rdx
.label_777:
	movsxd	rax, dword ptr [rbp - 0x4e8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x978], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x4e8]
	nop	
	jle	.label_787
	mov	eax, dword ptr [rbp - 0x22c]
	sub	eax, dword ptr [rbp - 0x4e8]
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_797
.label_787:
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	jmp	.label_797
.label_797:
	nop	
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
	cmp	byte ptr [rbp - 0x4a1], 0
	nop	
	je	.label_804
	lea	rdi, [rdi]
	jmp	.label_808
.label_808:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x220], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_810
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x224], eax
	lea	rdi, [rdi]
	jmp	.label_816
.label_810:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x224], eax
.label_816:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x224]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	cmp	rcx, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	jae	.label_721
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_831
.label_721:
	nop	
	mov	rax, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0xa0], rax
.label_831:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	nop	
	jb	.label_842
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_622
.label_842:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_856
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_863
	mov	rax, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x3c0]
	mov	rbp, rbp
	jae	.label_863
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x300], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	mov	rbp, rbp
	je	.label_870
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	nop	
	jne	.label_880
.label_870:
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_890
.label_880:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_890:
	mov	rbp, rbp
	jmp	.label_863
.label_863:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x220]
	add	rcx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rcx
.label_856:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x978]
	nop	
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_804
.label_804:
	jmp	.label_932
.label_767:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rbp - 0x398]
	nop	
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_935
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_622
.label_935:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x4a1], 0
	je	.label_625
	nop	
	jmp	.label_957
.label_957:
	mov	qword ptr [rbp - 0x930], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rbp, rbp
	jge	.label_946
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x37c], eax
	jmp	.label_953
.label_946:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x37c], eax
.label_953:
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	rcx, qword ptr [rbp - 0x930]
	cmp	rcx, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	jae	.label_961
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rax
	nop	
	jmp	.label_970
.label_961:
	mov	rax, qword ptr [rbp - 0x930]
	mov	qword ptr [rbp - 0x4b8], rax
.label_970:
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x208], rax
	mov	rax, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_979
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_622
.label_979:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_994
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_614
	nop	
	mov	rax, qword ptr [rbp - 0x930]
	cmp	rax, qword ptr [rbp - 0x1a0]
	jae	.label_614
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x930]
	mov	qword ptr [rbp - 0x138], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_848
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_1012
.label_848:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	mov	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_1019
.label_1012:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x138]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1019:
	jmp	.label_614
.label_614:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4a1]
	nop	
	mov	rcx, qword ptr [rbp - 0x370]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x930]
	add	rcx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rcx
.label_994:
	mov	rax, qword ptr [rbp - 0x208]
	add	rax, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_625
.label_625:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	lea	rdi, [rdi]
	je	.label_717
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x4e8]
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4e8]
	mov	rdx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x370], rdx
.label_717:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x4e8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], 0
.label_932:
	jmp	.label_659
.label_753:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x4a1], 0
	lea	rsi, [rsi]
	je	.label_661
	jmp	.label_668
.label_668:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x948], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_669
	xor	eax, eax
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_954
.label_669:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x10c], eax
.label_954:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3a8], rcx
	mov	rcx, qword ptr [rbp - 0x948]
	cmp	rcx, qword ptr [rbp - 0x3a8]
	lea	rsi, [rsi]
	jae	.label_684
	mov	rax, qword ptr [rbp - 0x3a8]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_696
.label_684:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x948]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
.label_696:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_702
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_622
.label_702:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_712
	nop	
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_715
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x948]
	cmp	rax, qword ptr [rbp - 0x3a8]
	nop	
	jae	.label_715
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x948]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x248], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_724
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_731
.label_724:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x248]
	call	memset
	mov	rdx, qword ptr [rbp - 0x248]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_739
.label_731:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x248]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rdx
.label_739:
	nop	
	jmp	.label_715
.label_715:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rcx
.label_712:
	mov	rax, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_661
.label_661:
	jmp	.label_659
.label_659:
	lea	rdi, [rdi]
	jmp	.label_751
.label_751:
	mov	rbp, rbp
	jmp	.label_768
.label_768:
	lea	rax, [rbp - 0xd0]
	lea	rdi, [rdi]
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa00]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x190], rax
	nop	
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_770
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x30c], eax
	lea	rsi, [rsi]
	jmp	.label_790
.label_770:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x30c], eax
.label_790:
	mov	eax, dword ptr [rbp - 0x30c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x998], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x998]
	jae	.label_780
	mov	rax, qword ptr [rbp - 0x998]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x920], rax
	nop	
	jmp	.label_786
.label_780:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x920], rax
.label_786:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x920]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_794
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_622
.label_794:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rsp, rsp
	je	.label_807
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_811
	mov	rax, qword ptr [rbp - 0x190]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x998]
	mov	rsp, rsp
	jae	.label_811
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x960], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	nop	
	je	.label_818
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	rsp, rsp
	jne	.label_826
.label_818:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x960]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x960]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_837
.label_826:
	nop	
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x960]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x960]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_837:
	lea	rdi, [rdi]
	jmp	.label_811
.label_811:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	je	.label_854
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa00]
	nop	
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rbp, rbp
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x508], rax
	jmp	.label_868
.label_854:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x9e9], 1
	je	.label_869
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rsi, qword ptr [rbp - 0xa00]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	call	memcpy_uppcase
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4d8], rax
	jmp	.label_882
.label_869:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa00]
	mov	rdx, qword ptr [rbp - 0x190]
	call	memcpy
.label_882:
	jmp	.label_868
.label_868:
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_807:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_665
.label_867:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	nop	
	je	.label_904
	jmp	.label_607
.label_904:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0
	lea	rdi, [rdi]
	jne	.label_911
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_911
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x334], 4
	nop	
	jmp	.label_920
.label_911:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x334], eax
	nop	
	cmp	dword ptr [rbp - 0x334], 0
	jge	.label_928
	mov	dword ptr [rbp - 0x334], 0
.label_928:
	jmp	.label_920
.label_920:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_2
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_942
.label_883:
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rsi, [rsi]
	jne	.label_941
	jmp	.label_607
.label_941:
	jmp	.label_945
.label_945:
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x3b4], ecx
	nop	
	jmp	.label_639
.label_886:
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rsp, rsp
	jne	.label_955
	nop	
	jmp	.label_607
.label_955:
	jmp	.label_959
.label_959:
	mov	dword ptr [rbp - 0x230], 2
	mov	eax, dword ptr [rbp - 0x2dc]
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_639
.label_608:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_966
	lea	rsi, [rsi]
	jmp	.label_607
.label_966:
	mov	rbp, rbp
	jmp	.label_971
.label_971:
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x3b4], ecx
	nop	
	jmp	.label_610
.label_619:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_982
	jmp	.label_607
.label_982:
	jmp	.label_987
.label_987:
	mov	dword ptr [rbp - 0x230], 2
	nop	
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rdi, [rdi]
	jmp	.label_610
.label_1025:
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_796
	jmp	.label_607
.label_796:
	jmp	.label_999
.label_999:
	mov	dword ptr [rbp - 0x230], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x1c], -1
	lea	rdi, [rdi]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rax + 0x1c]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	mov	rsp, rsp
	jmp	.label_612
.label_893:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_1016
	lea	rsi, [rsi]
	jmp	.label_607
.label_1016:
	jmp	.label_1021
.label_1021:
	mov	dword ptr [rbp - 0x230], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x3b4], ecx
	mov	rsp, rsp
	jmp	.label_639
.label_627:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1026
	mov	rsp, rsp
	jmp	.label_607
.label_1026:
	mov	rsp, rsp
	jmp	.label_628
.label_628:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x230], 2
	nop	
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	mov	rax, qword ptr [rbp - 0x2b8]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	mov	rbp, rbp
	jmp	.label_612
.label_901:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_631
	jmp	.label_607
.label_631:
	mov	eax, dword ptr [rbp - 0x9d0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x22c], -1
	jne	.label_636
	mov	dword ptr [rbp - 0x22c], 9
	lea	rsi, [rsi]
	jmp	.label_672
.label_636:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x358], eax
.label_655:
	cmp	dword ptr [rbp - 0x358], 9
	lea	rdi, [rdi]
	jge	.label_649
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x3b4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x9c4]
	idiv	ecx
	mov	dword ptr [rbp - 0x3b4], eax
	mov	eax, dword ptr [rbp - 0x358]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x358], eax
	jmp	.label_655
.label_649:
	jmp	.label_672
.label_672:
	jmp	.label_673
.label_673:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], eax
	mov	eax, dword ptr [rbp - 0x3b4]
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_639
.label_637:
	nop	
	jmp	.label_682
.label_682:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa10], 1
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_995
	xor	eax, eax
	mov	dword ptr [rbp - 0x97c], eax
	jmp	.label_692
.label_995:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x97c], eax
.label_692:
	nop	
	mov	eax, dword ptr [rbp - 0x97c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x9a0], rcx
	mov	rcx, qword ptr [rbp - 0xa10]
	cmp	rcx, qword ptr [rbp - 0x9a0]
	mov	rbp, rbp
	jae	.label_648
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x9a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x938], rax
	mov	rbp, rbp
	jmp	.label_705
.label_648:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa10]
	nop	
	mov	qword ptr [rbp - 0x938], rax
.label_705:
	mov	rax, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x260], rax
	mov	rax, qword ptr [rbp - 0x260]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_711
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_622
.label_711:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x370], 0
	nop	
	je	.label_725
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_730
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x9a0]
	lea	rsi, [rsi]
	jae	.label_730
	movsxd	rax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0xa10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e8], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rdi, [rdi]
	je	.label_736
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	rbp, rbp
	jne	.label_746
.label_736:
	mov	esi, 0x30
	nop	
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x370], rdx
	nop	
	jmp	.label_754
.label_746:
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x3e8]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x3e8]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_754:
	mov	rbp, rbp
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_725:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x260]
	nop	
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_665
.label_908:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 1
	mov	dword ptr [rbp - 0x314], 0x70
.label_645:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x339], 1
	mov	rbp, rbp
	je	.label_778
	mov	byte ptr [rbp - 0x9e9], 0
	mov	byte ptr [rbp - 0x51], 1
.label_778:
	jmp	.label_788
.label_653:
	lea	rdi, [rdi]
	jmp	.label_781
.label_781:
	nop	
	mov	dword ptr [rbp - 0x230], 1
	mov	byte ptr [rbp - 0xa21], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	ecx, 5
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], ecx
	lea	rsi, [rsi]
	jmp	.label_612
.label_918:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.3_3
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_852
.label_855:
	nop	
	jmp	.label_788
.label_823:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rdi, [rdi]
	jne	.label_801
	mov	rbp, rbp
	jmp	.label_607
.label_801:
	jmp	.label_782
.label_782:
	nop	
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3b4], ecx
	lea	rdi, [rdi]
	jmp	.label_639
.label_667:
	mov	rbp, rbp
	lea	rax, [rbp - 0x440]
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x2c8], rax
	mov	rbp, rbp
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x488]
	mov	rsi, qword ptr [rbp - 0x2c8]
	lea	rsi, [rsi]
	call	mktime_z
	lea	rdx, [rbp - 0xd0]
	mov	qword ptr [rbp - 0x988], rax
	lea	rsi, [rsi]
	add	rdx, 0x17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa00], rdx
	cmp	qword ptr [rbp - 0x988], 0
	lea	rdi, [rdi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0xa21], r8b
.label_864:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x988]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x1bc], esi
	mov	rdx, qword ptr [rbp - 0x988]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	qword ptr [rbp - 0x988], rax
	test	byte ptr [rbp - 0xa21], 1
	je	.label_841
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x954], eax
	jmp	.label_853
.label_841:
	nop	
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x954], eax
.label_853:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x954]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa00]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa00], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x988], 0
	mov	rbp, rbp
	jne	.label_864
	mov	dword ptr [rbp - 0x230], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45d], 0
	lea	rdi, [rdi]
	jmp	.label_969
.label_958:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x4f
	nop	
	jne	.label_884
	jmp	.label_607
.label_884:
	jmp	.label_788
.label_933:
	movabs	rax, OFFSET FLAT:.str.4_3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_852
.label_678:
	jmp	.label_896
.label_896:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_897
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_903
.label_897:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4e4], eax
.label_903:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4e4]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x350], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	jae	.label_913
	mov	rax, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x408], rax
	mov	rbp, rbp
	jmp	.label_926
.label_913:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x408], rax
.label_926:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x408]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x378], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x378]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_936
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_622
.label_936:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_985
	cmp	dword ptr [rbp - 0x230], 0
	lea	rdi, [rdi]
	jne	.label_888
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x350]
	jae	.label_888
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x500], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_620
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_967
.label_620:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x500]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_677
.label_967:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_677:
	mov	rbp, rbp
	jmp	.label_888
.label_888:
	mov	rax, qword ptr [rbp - 0x370]
	nop	
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_985:
	nop	
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	mov	rbp, rbp
	jmp	.label_665
.label_685:
	jmp	.label_1011
.label_1011:
	mov	eax, 7
	nop	
	mov	dword ptr [rbp - 0x230], 1
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	edx, 1
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x31c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x31c]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b4], edx
	lea	rdi, [rdi]
	jmp	.label_639
.label_915:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	nop	
	jne	.label_894
	jmp	.label_607
.label_894:
	nop	
	jmp	.label_630
.label_630:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x230], 2
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2b8]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9f4], eax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x9f4]
	idiv	esi
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_639
.label_873:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_633
	jmp	.label_607
.label_633:
	lea	rdi, [rdi]
	mov	eax, 0xffffff9c
	lea	rdi, [rdi]
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rdx + 0x14], 0
	mov	rbp, rbp
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x12c], esi
	mov	dword ptr [rbp - 0x1a4], 0
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2b8]
	nop	
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x174], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x174], 0
	jge	.label_658
	nop	
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x1a4], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x12c]
	mov	rbp, rbp
	sub	edi, 1
	mov	dword ptr [rbp - 0x94c], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x94c]
	idiv	edi
	mov	rsp, rsp
	cmp	edx, 0
	mov	dword ptr [rbp - 0x1ec], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9ad], cl
	jne	.label_664
	mov	al, 1
	mov	ecx, 0x64
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x12c]
	sub	edx, 1
	mov	byte ptr [rbp - 0x71], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x939], sil
	nop	
	jne	.label_688
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x12c]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x90]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x939], sil
.label_688:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x939]
	mov	byte ptr [rbp - 0x9ad], al
.label_664:
	mov	al, byte ptr [rbp - 0x9ad]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x1ec]
	lea	rsi, [rsi]
	add	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	lea	rsi, [rsi]
	jmp	.label_722
.label_658:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x2b8]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x12c]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	idiv	edi
	cmp	edx, 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x258], esi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31d], cl
	mov	rbp, rbp
	jne	.label_802
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x12c]
	nop	
	mov	byte ptr [rbp - 0x489], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x489]
	mov	byte ptr [rbp - 0x24d], sil
	lea	rsi, [rsi]
	jne	.label_743
	lea	rdi, [rdi]
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x12c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x228], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x228]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	sete	sil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x24d], sil
.label_743:
	mov	al, byte ptr [rbp - 0x24d]
	mov	byte ptr [rbp - 0x31d], al
.label_802:
	mov	al, byte ptr [rbp - 0x31d]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rsi, [rsi]
	call	iso_week_days
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x264], eax
	cmp	ecx, dword ptr [rbp - 0x264]
	jg	.label_772
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1a4], 1
	mov	eax, dword ptr [rbp - 0x264]
	nop	
	mov	dword ptr [rbp - 0x174], eax
.label_772:
	lea	rsi, [rsi]
	jmp	.label_722
.label_722:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x478], ecx
	mov	dword ptr [rbp - 0x324], edx
	lea	rsi, [rsi]
	je	.label_813
	jmp	.label_784
.label_784:
	mov	eax, dword ptr [rbp - 0x478]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9f8], eax
	lea	rdi, [rdi]
	jne	.label_785
	mov	rsp, rsp
	jmp	.label_921
.label_921:
	nop	
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x29c], eax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x29c]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rbp - 0x1a4]
	nop	
	mov	eax, edx
	cdq	
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x230], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa21], 0
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	jg	.label_791
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_812
.label_791:
	mov	eax, 0xfffff894
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x1a4]
	cmp	edx, eax
	lea	rdi, [rdi]
	jge	.label_814
	mov	rsp, rsp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	nop	
	jmp	.label_820
.label_814:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x254], eax
.label_820:
	nop	
	mov	eax, dword ptr [rbp - 0x254]
	mov	dword ptr [rbp - 0x28], eax
.label_812:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_774
.label_813:
	nop	
	jmp	.label_838
.label_838:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x230], 4
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x1a4]
	nop	
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	mov	byte ptr [rbp - 0xa21], sil
	mov	rcx, qword ptr [rbp - 0x2b8]
	nop	
	mov	eax, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x1a4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_774
.label_785:
	jmp	.label_862
.label_862:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	mov	ecx, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 0x310], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x310]
	lea	rsi, [rsi]
	idiv	ecx
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_639
.label_763:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_821
	jmp	.label_607
.label_821:
	lea	rsi, [rsi]
	jmp	.label_881
.label_881:
	nop	
	mov	eax, 7
	mov	dword ptr [rbp - 0x230], 2
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	nop	
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	mov	rsp, rsp
	add	esi, 7
	mov	dword ptr [rbp - 0x990], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x64], edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x990]
	mov	rbp, rbp
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x64]
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	nop	
	mov	eax, edi
	mov	rsp, rsp
	cdq	
	nop	
	idiv	esi
	mov	dword ptr [rbp - 0x3b4], eax
	nop	
	jmp	.label_639
.label_613:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_910
	jmp	.label_607
.label_910:
	jmp	.label_914
.label_914:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 1
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x3b4], ecx
	jmp	.label_639
.label_965:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_924
	nop	
	jmp	.label_788
.label_924:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_930
	lea	rdi, [rdi]
	jmp	.label_607
.label_930:
	lea	rsi, [rsi]
	jmp	.label_939
.label_939:
	mov	dword ptr [rbp - 0x230], 4
	nop	
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x14c], edx
	mov	rbp, rbp
	jmp	.label_774
.label_704:
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rdi, [rdi]
	jne	.label_952
	nop	
	jmp	.label_788
.label_952:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x2ec], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2ec]
	lea	rdi, [rdi]
	idiv	esi
	mov	dword ptr [rbp - 0x290], edx
	cmp	dword ptr [rbp - 0x290], 0
	lea	rsi, [rsi]
	jge	.label_934
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_973
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	jmp	.label_977
.label_973:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x290]
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
.label_977:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x290], eax
.label_934:
	lea	rdi, [rdi]
	jmp	.label_990
.label_990:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	mov	byte ptr [rbp - 0xa21], 0
	mov	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_774
.label_974:
	test	byte ptr [rbp - 0x339], 1
	mov	rsp, rsp
	je	.label_997
	nop	
	mov	byte ptr [rbp - 0x9e9], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 1
.label_997:
	jmp	.label_1003
.label_1003:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x198], rax
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_1007
	xor	eax, eax
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_1013
.label_1007:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xd4], eax
.label_1013:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x1b8], rcx
	mov	rcx, qword ptr [rbp - 0x198]
	nop	
	cmp	rcx, qword ptr [rbp - 0x1b8]
	nop	
	jae	.label_1018
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0xa30], rax
	mov	rsp, rsp
	jmp	.label_1024
.label_1018:
	mov	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xa30], rax
.label_1024:
	mov	rax, qword ptr [rbp - 0xa30]
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4a0]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_611
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_622
.label_611:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_629
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_632
	mov	rax, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1b8]
	nop	
	jae	.label_632
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x360], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_643
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_652
.label_643:
	mov	rsp, rsp
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x360]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x360]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_663
.label_652:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x360]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x360]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rdx
.label_663:
	jmp	.label_632
.label_632:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	je	.label_1009
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy_lowcase
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_698
.label_1009:
	test	byte ptr [rbp - 0x9e9], 1
	lea	rsi, [rsi]
	je	.label_701
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_707
.label_701:
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy
.label_707:
	mov	rbp, rbp
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rax
.label_629:
	mov	rax, qword ptr [rbp - 0x4a0]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_665
.label_832:
	mov	qword ptr [rbp - 0x388], 1
.label_735:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x388]
	mov	rcx, qword ptr [rbp - 0x108]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x3a
	lea	rsi, [rsi]
	jne	.label_728
	lea	rdi, [rdi]
	jmp	.label_734
.label_734:
	mov	rax, qword ptr [rbp - 0x388]
	add	rax, 1
	mov	qword ptr [rbp - 0x388], rax
	jmp	.label_735
.label_728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x388]
	mov	rcx, qword ptr [rbp - 0x108]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x7a
	je	.label_741
	mov	rbp, rbp
	jmp	.label_607
.label_741:
	mov	rax, qword ptr [rbp - 0x388]
	add	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_749
.label_733:
	mov	qword ptr [rbp - 0x388], 0
.label_749:
	mov	rax, qword ptr [rbp - 0x2b8]
	nop	
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_755
	jmp	.label_665
.label_755:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x400], edx
	cmp	dword ptr [rbp - 0x400], 0
	mov	byte ptr [rbp - 0x125], al
	mov	rsp, rsp
	jl	.label_756
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x400], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	jne	.label_764
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf9], dl
.label_764:
	mov	al, byte ptr [rbp - 0xf9]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x125], al
.label_756:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x125]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa21], al
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x400]
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
	mov	dword ptr [rbp - 0x150], edx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x400]
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
	mov	dword ptr [rbp - 0xa14], esi
	movsxd	rcx, dword ptr [rbp - 0x400]
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
	mov	dword ptr [rbp - 0x218], edx
	mov	rcx, qword ptr [rbp - 0x388]
	lea	rsi, [rsi]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x98], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x210], r8
	ja	.label_825
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_828]]
	lea	rsi, [rsi]
	jmp	rcx
.label_1690:
	jmp	.label_834
.label_834:
	mov	dword ptr [rbp - 0x230], 5
	mov	dword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x150], 0x64
	add	eax, dword ptr [rbp - 0xa14]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_836
.label_1691:
	lea	rsi, [rsi]
	jmp	.label_844
.label_844:
	mov	rbp, rbp
	jmp	.label_835
.label_835:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 6
	nop	
	mov	dword ptr [rbp - 0x78], 4
	imul	eax, dword ptr [rbp - 0x150], 0x64
	add	eax, dword ptr [rbp - 0xa14]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_836
.label_1692:
	jmp	.label_858
.label_858:
	jmp	.label_860
.label_860:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x230], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x78], 0x14
	imul	eax, dword ptr [rbp - 0x150], 0x2710
	imul	ecx, dword ptr [rbp - 0xa14], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x218]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_836
.label_1693:
	cmp	dword ptr [rbp - 0x218], 0
	je	.label_875
	mov	rbp, rbp
	jmp	.label_858
.label_875:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa14], 0
	je	.label_878
	jmp	.label_844
.label_878:
	jmp	.label_662
.label_662:
	nop	
	mov	dword ptr [rbp - 0x230], 3
	mov	dword ptr [rbp - 0x78], 0
	mov	eax, dword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], eax
	mov	rbp, rbp
	jmp	.label_836
.label_825:
	mov	rbp, rbp
	jmp	.label_607
.label_817:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, -1
	mov	qword ptr [rbp - 0x108], rax
.label_713:
	mov	rsp, rsp
	jmp	.label_607
.label_607:
	mov	dword ptr [rbp - 0x200], 1
.label_919:
	mov	rbp, rbp
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x200]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	nop	
	je	.label_905
	mov	rsp, rsp
	jmp	.label_917
.label_917:
	mov	eax, dword ptr [rbp - 0x200]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x200], eax
	jmp	.label_919
.label_905:
	mov	rbp, rbp
	jmp	.label_925
.label_925:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x200]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x270], rax
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_927
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x9a4], eax
	jmp	.label_938
.label_927:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x9a4], eax
.label_938:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9a4]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x270]
	cmp	rcx, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	jae	.label_944
	nop	
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_950
.label_944:
	mov	rax, qword ptr [rbp - 0x270]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rax
.label_950:
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_960
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_622
.label_960:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_976
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_981
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	jae	.label_981
	nop	
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x270]
	mov	qword ptr [rbp - 0x4f0], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_991
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_998
.label_991:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4f0]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f0]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1005
.label_998:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x4f0]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f0]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1005:
	lea	rdi, [rdi]
	jmp	.label_981
.label_981:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x51], 1
	mov	rbp, rbp
	je	.label_1023
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x370]
	sub	eax, dword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_618
.label_1023:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9e9], 1
	lea	rdi, [rdi]
	je	.label_621
	mov	eax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x370]
	sub	eax, dword ptr [rbp - 0x200]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	jmp	.label_642
.label_621:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x200]
	mov	rsp, rsp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_642:
	jmp	.label_618
.label_618:
	mov	rax, qword ptr [rbp - 0x270]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_976:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	nop	
	jmp	.label_665
.label_665:
	jmp	.label_676
.label_676:
	mov	dword ptr [rbp - 0x22c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_679
.label_986:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_686
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x398], 0
	je	.label_686
	mov	rax, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_686:
	mov	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x20], rax
.label_622:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0xa48
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e190

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
.label_1030:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	jbe	.label_1031
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1030
.label_1031:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e200

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
.label_1033:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_1032
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	toupper
	mov	dl, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rcx], dl
	lea	rdi, [rdi]
	jmp	.label_1033
.label_1032:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e290

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	sub	edi, dword ptr [rbp - 4]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e2f0

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
	jne	.label_1036
	movabs	rdi, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_1036:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1034
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1038
.label_1034:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1038:
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
	jl	.label_1037
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_5
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
	jne	.label_1037
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_3
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
	jne	.label_1035
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1035:
	jmp	.label_1037
.label_1037:
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
	#Procedure 0x40e470
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
	je	.label_1039
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1040
.label_1039:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1040
.label_1040:
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
	#Procedure 0x40e520

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
	je	.label_1041
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1042
.label_1041:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e580

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
	je	.label_1043
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1044
.label_1043:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1044
.label_1044:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e5e0

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
	je	.label_1045
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1046
.label_1045:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1046
.label_1046:
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
	#Procedure 0x40e6e0
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
	jne	.label_1047
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_1047:
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
	#Procedure 0x40e740

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
	jne	.label_1048
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_1048:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
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
	#Procedure 0x40e7e0
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
	je	.label_1051
	mov	rax, qword ptr [rbp - 0x50]
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
	#Procedure 0x40e8e0

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
.label_1171:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1203
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1239]]
	jmp	rcx
.label_1631:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1630:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1163
	jmp	.label_1167
.label_1167:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1168
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1168:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1163
.label_1163:
	movabs	rax, OFFSET FLAT:.str.10_2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_1069
.label_1632:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1069
.label_1633:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_1194
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_2
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_1194:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1117
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_1078:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1213
	jmp	.label_1196
.label_1196:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1215
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_1215:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1228
.label_1228:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1078
.label_1213:
	mov	rbp, rbp
	jmp	.label_1117
.label_1117:
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
	jmp	.label_1069
.label_1628:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1627:
	mov	byte ptr [rbp - 0x3e], 1
.label_1629:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1245
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_1245:
	jmp	.label_1249
.label_1249:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1063
	jmp	.label_1054
.label_1054:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1056
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1056:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1063
.label_1063:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_1069
.label_1626:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1069
.label_1203:
	call	abort
.label_1069:
	mov	qword ptr [rbp - 0xd8], 0
.label_1086:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1080
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
	jmp	.label_1082
.label_1080:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1082:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1100
	mov	rbp, rbp
	jmp	.label_1108
.label_1100:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1111
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1111
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1111
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1129
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1129
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1136
.label_1129:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1136:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1111
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
	jne	.label_1111
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1159
	jmp	.label_1055
.label_1159:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1111:
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
	ja	.label_1166
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1178]]
	nop	
	jmp	rcx
.label_1642:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1182
	mov	rsp, rsp
	jmp	.label_1186
.label_1186:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1190
	jmp	.label_1055
.label_1190:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1233
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_1233
	nop	
	jmp	.label_1197
.label_1197:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1200
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1200:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1209
.label_1209:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1212
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1212:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1216
.label_1216:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1221
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1221:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1233:
	lea	rsi, [rsi]
	jmp	.label_1230
.label_1230:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1231
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1231:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1236
.label_1236:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_1219
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1219
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1219
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1219
	nop	
	jmp	.label_1060
.label_1060:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1061
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1061:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1146
.label_1146:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1174
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1174:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1219
.label_1219:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1087
.label_1182:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1250
	mov	rbp, rbp
	jmp	.label_1079
.label_1250:
	jmp	.label_1087
.label_1087:
	jmp	.label_1084
.label_1653:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1098
	mov	rbp, rbp
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1106
	jmp	.label_1114
.label_1098:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1115
	jmp	.label_1055
.label_1115:
	jmp	.label_1093
.label_1106:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_1119
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_1119
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1119
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
	je	.label_1133
	nop	
	jmp	.label_1142
.label_1142:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1133
	jmp	.label_1148
.label_1148:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1133
	jmp	.label_1155
.label_1155:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1133
	jmp	.label_1154
.label_1154:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1188
	jmp	.label_1133
.label_1133:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1170
	jmp	.label_1055
.label_1170:
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
	jae	.label_1175
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1175:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1251
.label_1251:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1198
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1198:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1205
.label_1205:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1143
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1143:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1214
.label_1214:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1220
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1220:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1161
.label_1188:
	jmp	.label_1161
.label_1161:
	jmp	.label_1119
.label_1119:
	jmp	.label_1093
.label_1114:
	jmp	.label_1093
.label_1093:
	jmp	.label_1084
.label_1643:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_1074
.label_1644:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_1074
.label_1648:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_1074
.label_1646:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_1070
.label_1649:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_1070
.label_1645:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_1070
.label_1647:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_1074
.label_1654:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1247
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1248
	nop	
	jmp	.label_1055
.label_1248:
	lea	rsi, [rsi]
	jmp	.label_1057
.label_1247:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1058
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1058
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1058
	jmp	.label_1057
.label_1058:
	jmp	.label_1070
.label_1070:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1071
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1071
	jmp	.label_1055
.label_1071:
	mov	rsp, rsp
	jmp	.label_1074
.label_1074:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1077
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1081
.label_1077:
	jmp	.label_1084
.label_1655:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1088
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1091
	jmp	.label_1097
.label_1088:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1091
.label_1097:
	nop	
	jmp	.label_1084
.label_1091:
	jmp	.label_1101
.label_1101:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1126
	lea	rsi, [rsi]
	jmp	.label_1084
.label_1126:
	nop	
	jmp	.label_1110
.label_1110:
	mov	byte ptr [rbp - 0x91], 1
.label_1650:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1113
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1113
	jmp	.label_1055
.label_1113:
	lea	rsi, [rsi]
	jmp	.label_1084
.label_1652:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1120
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1253
	jmp	.label_1055
.label_1253:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1127
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_1127
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1127:
	jmp	.label_1137
.label_1137:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1138
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1138:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1145
.label_1145:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1151
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1151:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1160
.label_1160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1165
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1165:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1120:
	lea	rsi, [rsi]
	jmp	.label_1084
.label_1651:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_1084
.label_1166:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_1183
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
	jmp	.label_1195
.label_1183:
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
	jne	.label_1211
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_1211:
	jmp	.label_1187
.label_1187:
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
	jne	.label_1229
	jmp	.label_1064
.label_1229:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_1234
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_1064
.label_1234:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_1238
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1059:
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
	jae	.label_1241
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_1241:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1128
	jmp	.label_1083
.label_1128:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1059
.label_1083:
	jmp	.label_1064
.label_1238:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1066
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1066
	mov	qword ptr [rbp - 0xe8], 1
.label_1118:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1072
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
	jb	.label_1075
	jmp	.label_1094
.label_1094:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1075
	jmp	.label_1099
.label_1099:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1075
	jmp	.label_1105
.label_1105:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1107
	mov	rsp, rsp
	jmp	.label_1075
.label_1075:
	mov	rsp, rsp
	jmp	.label_1055
.label_1107:
	jmp	.label_1116
.label_1116:
	mov	rsp, rsp
	jmp	.label_1201
.label_1201:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1118
.label_1072:
	mov	rbp, rbp
	jmp	.label_1066
.label_1066:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_1124
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1124:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1139
.label_1139:
	lea	rsi, [rsi]
	jmp	.label_1131
.label_1131:
	jmp	.label_1134
.label_1134:
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
	jne	.label_1187
.label_1064:
	jmp	.label_1195
.label_1195:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1144
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1153
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1153
.label_1144:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1130:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1169
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1169
	jmp	.label_1172
.label_1172:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1173
	jmp	.label_1055
.label_1173:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1177
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1177
	lea	rdi, [rdi]
	jmp	.label_1184
.label_1184:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1208
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1208:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1244
.label_1244:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1073
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1073:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1206
.label_1206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1141
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1141:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1177:
	jmp	.label_1217
.label_1217:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1218
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1218:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1053
.label_1053:
	jmp	.label_1225
.label_1225:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1227
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
.label_1227:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1237
.label_1237:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1242
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
.label_1242:
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
	jmp	.label_1076
.label_1169:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1246
	lea	rdi, [rdi]
	jmp	.label_1062
.label_1062:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1125
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1125:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1246:
	nop	
	jmp	.label_1076
.label_1076:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1210
	jmp	.label_1085
.label_1210:
	lea	rsi, [rsi]
	jmp	.label_1089
.label_1089:
	test	byte ptr [rbp - 0x42], 1
	je	.label_1090
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1090
	lea	rsi, [rsi]
	jmp	.label_1095
.label_1095:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1096
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1096:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1103
.label_1103:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1112
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1112:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1090:
	nop	
	jmp	.label_1121
.label_1121:
	mov	rsp, rsp
	jmp	.label_1122
.label_1122:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1123
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1123:
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
	jmp	.label_1130
.label_1085:
	mov	rsp, rsp
	jmp	.label_1057
.label_1153:
	lea	rsi, [rsi]
	jmp	.label_1084
.label_1084:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_1156
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1149
.label_1156:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1152
.label_1149:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1152
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
	jne	.label_1157
.label_1152:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1157
	mov	rsp, rsp
	jmp	.label_1057
.label_1157:
	nop	
	jmp	.label_1081
.label_1081:
	jmp	.label_1179
.label_1179:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1181
	jmp	.label_1055
.label_1181:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1185
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_1185
	lea	rdi, [rdi]
	jmp	.label_1191
.label_1191:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1204
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1204:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1202
.label_1202:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1207
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1207:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1222
.label_1222:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1193
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1193:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1185:
	jmp	.label_1223
.label_1223:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1224
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1224:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1232
.label_1232:
	nop	
	jmp	.label_1057
.label_1057:
	jmp	.label_1235
.label_1235:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_1109
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1109
	lea	rdi, [rdi]
	jmp	.label_1240
.label_1240:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1243
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1243:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1226
.label_1226:
	mov	rax, qword ptr [rbp - 0x50]
.label_1664:
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1252
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1252:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1109:
	jmp	.label_1065
.label_1065:
	nop	
	jmp	.label_1067
.label_1067:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1068
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1068:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1192
	mov	byte ptr [rbp - 0xb7], 0
.label_1192:
	mov	rbp, rbp
	jmp	.label_1079
.label_1079:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1086
.label_1108:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1092
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1092
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1092
	nop	
	jmp	.label_1055
.label_1092:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1102
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1102
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1102
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1140
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
	jmp	.label_1132
.label_1140:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1135
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1135
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1171
.label_1135:
	jmp	.label_1147
.label_1147:
	mov	rbp, rbp
	jmp	.label_1102
.label_1102:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1150
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1150
	mov	rbp, rbp
	jmp	.label_1180
.label_1180:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1158
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1162:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1164
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1164:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1176
.label_1176:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1180
.label_1158:
	jmp	.label_1150
.label_1150:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1189
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_1189:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1132
.label_1055:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1199
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1199
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_1199:
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
.label_1132:
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
	#Procedure 0x410380
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
	#Procedure 0x4103f0

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
	je	.label_1254
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1255
.label_1254:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1255
.label_1255:
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
	je	.label_1256
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1256:
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
	#Procedure 0x4105c0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106d0

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
	#Procedure 0x410720

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
	jge	.label_1263
	call	abort
.label_1263:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1266
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
	jge	.label_1267
	call	xalloc_die
.label_1267:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1268
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1264
.label_1268:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1264:
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
	je	.label_1262
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1257]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1262:
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
.label_1266:
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
	ja	.label_1269
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
	je	.label_1265
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1265:
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
.label_1269:
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
	#Procedure 0x410a50

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
	#Procedure 0x410a90
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
	#Procedure 0x410ac0
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
	#Procedure 0x410b00

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
	#Procedure 0x410b60

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
	jne	.label_1270
	call	abort
.label_1270:
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
	#Procedure 0x410c00

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
	#Procedure 0x410c70

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
	#Procedure 0x410cb0
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
	#Procedure 0x410cf0

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
	#Procedure 0x410da0

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
	#Procedure 0x410de0

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
	#Procedure 0x410e10
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
	#Procedure 0x410e50
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
	#Procedure 0x410f30

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
	#Procedure 0x410f80

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
	#Procedure 0x411020
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
	#Procedure 0x411070
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
	#Procedure 0x4110d0

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
	#Procedure 0x411110
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
	#Procedure 0x411150

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
	#Procedure 0x411190

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
	#Procedure 0x4111d0

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
	je	.label_1274
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1271
.label_1274:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1272
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1271
.label_1272:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1273
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1271
.label_1273:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_2
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1271:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411310

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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, rax
	mov	al, 0
	call	open_safer
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rdi], eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_1275
.label_1276:
	mov	dword ptr [rbp - 0xc], 0
.label_1275:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4113c0

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x411420

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], 0
	jl	.label_1279
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	close
	mov	dword ptr [rbp - 4], eax
.label_1279:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411470
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x4114a0

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
	#Procedure 0x4114b0
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4114e0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411520
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
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
	#Procedure 0x411560

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4115a0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4115e0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411620
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411660
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4116a0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4116e0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411720
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411760
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4117a0
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
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	word ptr [rbp - 0xa], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4117f0
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
	#Procedure 0x411820
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411860
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411880
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118a0
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x4118c0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118e0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411910

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411940

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411970

	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	qword ptr [rbp - 8], -1
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119b0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4119d0

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
	je	.label_1283
	movabs	rsi, OFFSET FLAT:.str_9
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
	jmp	.label_1281
.label_1283:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1281:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_4
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
	mov	ecx, OFFSET FLAT:.str.3_4
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
	ja	.label_1282
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1284]]
	jmp	rcx
.label_1582:
	jmp	.label_1280
.label_1583:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_4
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
	jmp	.label_1280
.label_1584:
	movabs	rdi, OFFSET FLAT:.str.5_3
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
	jmp	.label_1280
.label_1585:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_3
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
	jmp	.label_1280
.label_1586:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_1280
.label_1587:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_2
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
	jmp	.label_1280
.label_1588:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_2
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
	jmp	.label_1280
.label_1589:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_3
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
	jmp	.label_1280
.label_1590:
	movabs	rdi, OFFSET FLAT:.str.11_3
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
	jmp	.label_1280
.label_1591:
	movabs	rdi, OFFSET FLAT:.str.12_2
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
	jmp	.label_1280
.label_1282:
	movabs	rdi, OFFSET FLAT:.str.13_2
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
.label_1280:
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
	#Procedure 0x412210
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
.label_1285:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1286
	mov	rbp, rbp
	jmp	.label_1287
.label_1287:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1285
.label_1286:
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
	#Procedure 0x4122c0

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
.label_1289:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1292
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1291
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
	jmp	.label_1290
.label_1291:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1290:
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
.label_1292:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1288
	mov	rsp, rsp
	jmp	.label_1293
.label_1288:
	jmp	.label_1294
.label_1294:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1289
.label_1293:
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
	#Procedure 0x412420

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
	je	.label_1295
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
.label_1295:
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
	#Procedure 0x4125e0
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
	#Procedure 0x412690
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4126f0

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
	jne	.label_1297
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1297
	lea	rdi, [rdi]
	call	xalloc_die
.label_1297:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412750
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
	jae	.label_1298
	mov	rsp, rsp
	call	xalloc_die
.label_1298:
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
	#Procedure 0x4127d0

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
	jne	.label_1299
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1299
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1301
.label_1299:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1300
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1300
	lea	rsi, [rsi]
	call	xalloc_die
.label_1300:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1301:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412880

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
	jne	.label_1302
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1304
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
.label_1304:
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
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1303
	call	xalloc_die
.label_1303:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1305:
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
	#Procedure 0x4129b0

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
	#Procedure 0x4129e0
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
	#Procedure 0x412a20
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
	#Procedure 0x412a70
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
	jb	.label_1307
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1308
.label_1307:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1308:
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
	#Procedure 0x412ae0

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
	#Procedure 0x412b30

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
	#Procedure 0x412b90

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412bf0

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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412c60

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x1a0
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x60], xmm7
	movaps	xmmword ptr [rbp - 0x30], xmm6
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x190], xmm5
	movaps	xmmword ptr [rbp - 0x50], xmm4
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x70], xmm1
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x40], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x198], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rsi
	nop	
	je	.label_1310
	movaps	xmm0, xmmword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x130], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x70]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x120], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x110], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x80]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x100], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x50]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xf0], xmm4
	lea	rsi, [rsi]
	movaps	xmm5, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xd0], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xc0], xmm7
.label_1310:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x140], rcx
	mov	rdx, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x148], rdx
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x150], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rdi
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], r8
	lea	r8, [rbp - 0x160]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], r8
	lea	r8, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], r8
	mov	dword ptr [rbp - 0x17c], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x180], 8
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x180]
	nop	
	call	xvasprintf
	mov	qword ptr [rbp - 0x168], rax
	add	rsp, 0x1a0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412e20

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	call	chdir
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	je	.label_1320
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	je	.label_1327
.label_1320:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1317
.label_1327:
	nop	
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	cdb_init
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1318
	nop	
	jmp	.label_1323
.label_1318:
	movabs	rdi, OFFSET FLAT:.str_10
	movabs	rsi, OFFSET FLAT:.str.1_8
	nop	
	mov	edx, 0x7e
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	lea	rdi, [rdi]
	call	__assert_fail
.label_1323:
	mov	rbp, rbp
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1336
	lea	rsi, [rsi]
	jmp	.label_1313
.label_1336:
	movabs	rdi, OFFSET FLAT:.str.2_5
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	edx, 0x7f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1313:
	movabs	rsi, OFFSET FLAT:.str.3_5
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	strspn
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 2
	mov	rsp, rsp
	jne	.label_1330
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx, 3
	sub	rcx, rdx
	mov	esi, 0x2f
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memchr
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jne	.label_1316
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1317
.label_1316:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rbp - 0x40]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	je	.label_1335
	jmp	.label_1311
.label_1335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	find_non_slash
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_1332
.label_1330:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1321
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.3_5
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_1329
	jmp	.label_1311
.label_1329:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_1321:
	jmp	.label_1332
.label_1332:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_1337
	lea	rdi, [rdi]
	jmp	.label_1334
.label_1337:
	nop	
	movabs	rdi, OFFSET FLAT:.str.4_5
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	edx, 0xa2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1334:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1324
	jmp	.label_1328
.label_1324:
	movabs	rdi, OFFSET FLAT:.str.5_4
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa3
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1328:
	jmp	.label_1312
.label_1312:
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jg	.label_1314
	lea	rdi, [rdi]
	mov	esi, 0x2f
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	call	memrchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	jne	.label_1326
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1317
.label_1326:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	nop	
	cmp	rax, 0x1000
	jge	.label_1325
	jmp	.label_1315
.label_1325:
	movabs	rdi, OFFSET FLAT:.str.6_4
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	mov	rbp, rbp
	call	__assert_fail
.label_1315:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	cdb_advance_fd
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	byte ptr [rsi], 0x2f
	nop	
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_1322
	mov	rbp, rbp
	jmp	.label_1311
.label_1322:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	nop	
	call	find_non_slash
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_1312
.label_1314:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1319
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	cdb_advance_fd
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1331
	jmp	.label_1311
.label_1331:
	jmp	.label_1319
.label_1319:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	call	cdb_fchdir
	cmp	eax, 0
	je	.label_1333
	lea	rdi, [rdi]
	jmp	.label_1311
.label_1333:
	lea	rdi, [rbp - 0x48]
	call	cdb_free
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1317
.label_1311:
	call	__errno_location
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	cdb_free
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], ecx
	nop	
	mov	dword ptr [rbp - 0x34], 0xffffffff
.label_1317:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4132d0

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
	#Procedure 0x4132f0

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
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, 0
	call	openat
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1338
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1339
.label_1338:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	cdb_free
	mov	eax, dword ptr [rbp - 4]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rdi], eax
	mov	dword ptr [rbp - 0x14], 0
.label_1339:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413380

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4133c0

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4133f0

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413490

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
	jne	.label_1343
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_1343:
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
	ja	.label_1344
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	jmp	.label_1345
.label_1344:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1345:
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
	#Procedure 0x413580

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x130
	mov	al, dil
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rcx, OFFSET FLAT:.str_11
	nop	
	lea	rdx, [rbp - 0x78]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fopen
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1368
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xd0], 0
.label_1359:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc0]
	lea	rsi, [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0x40]
	call	getline
	cmp	rax, -1
	je	.label_1348
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.2_6
	lea	rdx, [rbp - 0x98]
	lea	rcx, [rbp - 0x64]
	lea	r8, [rbp - 0x108]
	nop	
	lea	r9, [rbp - 0x80]
	lea	rax, [rbp - 0x18]
	lea	rdi, [rbp - 0x20]
	mov	rbp, rbp
	lea	r10, [rbp - 0x91]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	sscanf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xa4], 3
	je	.label_1363
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 7
	nop	
	je	.label_1363
	jmp	.label_1359
.label_1363:
	movabs	rsi, OFFSET FLAT:.str.3_6
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdi, rax
	mov	rsp, rsp
	call	strstr
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1370
	jmp	.label_1359
.label_1370:
	movabs	rsi, OFFSET FLAT:.str.4_6
	lea	rdx, [rbp - 0xa0]
	lea	rcx, [rbp - 0x90]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x1c]
	mov	rsp, rsp
	lea	r9, [rbp - 0x50]
	lea	rax, [rbp - 0x91]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sscanf
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xa4], 1
	lea	rdi, [rdi]
	je	.label_1354
	cmp	dword ptr [rbp - 0xa4], 5
	nop	
	je	.label_1354
	mov	rsp, rsp
	jmp	.label_1359
.label_1354:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rax, rcx
	mov	rdi, rax
	lea	rsi, [rsi]
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x108]
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
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x108]
	mov	rsp, rsp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	sil, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	sil, 0xfb
	or	sil, 4
	mov	byte ptr [rax + 0x28], sil
	mov	edi, dword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x64]
	call	gnu_dev_makedev
	mov	r8b, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax + 0x18]
	mov	edx, OFFSET FLAT:.str.5_1
	mov	esi, edx
	mov	byte ptr [rbp - 0x47], r8b
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x47]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1346
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.6_0
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x89], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x89]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1346
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.7_3
	mov	rsp, rsp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x9b], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x9b]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1346
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.8_0
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0xa7], r8b
	mov	rsp, rsp
	je	.label_1346
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.9_0
	mov	rsp, rsp
	mov	esi, edx
	mov	byte ptr [rbp - 3], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 3]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rsi, [rsi]
	je	.label_1346
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.10_0
	mov	esi, edx
	mov	byte ptr [rbp - 0x49], al
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x49]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1346
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.11_0
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x31]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1346
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0x79], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x79]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rsi, [rsi]
	je	.label_1346
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_0
	mov	esi, edx
	mov	byte ptr [rbp - 0xa8], al
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa7], r8b
	nop	
	je	.label_1346
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe2], al
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xe2]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rdi, [rdi]
	je	.label_1346
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.15_2
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xe1], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa7], r8b
	mov	rsp, rsp
	je	.label_1346
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x46], al
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x46]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1346
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:.str.17_1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	byte ptr [rbp - 0xa6], cl
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xa6]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45], cl
	mov	rbp, rbp
	jne	.label_1357
	mov	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_1357
.label_1357:
	nop	
	mov	al, byte ptr [rbp - 0x45]
	mov	byte ptr [rbp - 0xa7], al
.label_1346:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa7]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
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
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx]
	lea	rdi, [rdi]
	call	strchr
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0x12], r8b
	jne	.label_1351
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	nop	
	jne	.label_1362
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_1362
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.18_2
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0x9c], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x12], r8b
	je	.label_1351
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.19_0
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc3], al
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc3]
	mov	byte ptr [rbp - 0x12], r8b
	je	.label_1351
.label_1362:
	mov	rax, qword ptr [rbp - 0x70]
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
	mov	byte ptr [rbp - 0x12], dl
.label_1351:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
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
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdi], rdx
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rdx, 0x30
	mov	qword ptr [rbp - 0xf0], rdx
	jmp	.label_1359
.label_1348:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	ferror_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1369
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xd4], eax
	mov	dword ptr [rbp - 0xb4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	jmp	.label_1349
.label_1369:
	mov	rdi, qword ptr [rbp - 0x40]
	call	rpl_fclose
	cmp	eax, -1
	nop	
	jne	.label_1353
	nop	
	jmp	.label_1349
.label_1353:
	jmp	.label_1355
.label_1368:
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rax, OFFSET FLAT:.str.21_0
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	setmntent
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_1365
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	jmp	.label_1358
.label_1365:
	jmp	.label_1364
.label_1364:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	getmntent
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1366
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	rdi, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax + 8]
	call	xstrdup
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	xstrdup
	mov	dl, 1
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	r8b, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	r8b, 0xfb
	or	r8b, 4
	mov	byte ptr [rax + 0x28], r8b
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:.str.5_1
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], dl
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 5]
	mov	byte ptr [rbp - 0x65], dl
	nop	
	je	.label_1347
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xa5]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1347
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.7_3
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 2], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 0x65], r8b
	nop	
	je	.label_1347
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.8_0
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc1], al
	nop	
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc1]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1347
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.9_0
	mov	esi, edx
	mov	byte ptr [rbp - 1], al
	nop	
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 1]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1347
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.10_0
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x109], al
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	mov	r8b, byte ptr [rbp - 0x109]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1347
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xd5], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xd5]
	nop	
	mov	byte ptr [rbp - 0x65], r8b
	mov	rsp, rsp
	je	.label_1347
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_0
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x81], al
	call	strcmp
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0x81]
	mov	byte ptr [rbp - 0x65], r8b
	mov	rbp, rbp
	je	.label_1347
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_0
	mov	esi, edx
	mov	byte ptr [rbp - 0x102], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x102]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1347
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.14_0
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc2], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xc2]
	mov	byte ptr [rbp - 0x65], r8b
	lea	rsi, [rsi]
	je	.label_1347
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.15_2
	nop	
	mov	esi, edx
	mov	byte ptr [rbp - 4], al
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 4]
	nop	
	mov	byte ptr [rbp - 0x65], r8b
	mov	rbp, rbp
	je	.label_1347
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.16_2
	mov	esi, edx
	mov	byte ptr [rbp - 0x21], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1347
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.17_1
	mov	esi, eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x48], cl
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9a], cl
	jne	.label_1356
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x99]
	mov	rsp, rsp
	xor	al, 0xff
	mov	byte ptr [rbp - 0x9a], al
.label_1356:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x65], al
.label_1347:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x65]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
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
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0x8a], r8b
	nop	
	jne	.label_1350
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_1360
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_1360
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18_2
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8b], al
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x8b]
	mov	byte ptr [rbp - 0x8a], r8b
	je	.label_1350
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.19_0
	nop	
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x51], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x51]
	mov	byte ptr [rbp - 0x8a], r8b
	lea	rsi, [rsi]
	je	.label_1350
.label_1360:
	mov	rax, qword ptr [rbp - 0x70]
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
	mov	byte ptr [rbp - 0x8a], dl
.label_1350:
	mov	al, byte ptr [rbp - 0x8a]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x70]
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
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdx + 0x18]
	call	dev_from_mount_options
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rax, 0x30
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	lea	rdi, [rdi]
	jmp	.label_1364
.label_1366:
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	endmntent
	cmp	eax, 0
	nop	
	jne	.label_1352
	mov	rbp, rbp
	jmp	.label_1349
.label_1352:
	mov	rsp, rsp
	jmp	.label_1355
.label_1355:
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1358
.label_1349:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rax], 0
.label_1367:
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	je	.label_1361
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x78]
	call	free_mount_entry
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1367
.label_1361:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xf4]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], 0
.label_1358:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rsp, 0x130
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414510

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_1373:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1374
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	lea	rdi, [rdi]
	jne	.label_1372
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1372
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movsx	edx, byte ptr [rcx + rax + 1]
	nop	
	cmp	edx, 0x30
	jl	.label_1372
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x33
	jg	.label_1372
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x30
	lea	rdi, [rdi]
	jl	.label_1372
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x37
	jg	.label_1372
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 3]
	lea	rsi, [rsi]
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jl	.label_1372
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 3]
	mov	rbp, rbp
	cmp	edx, 0x37
	nop	
	jg	.label_1372
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	sub	edx, 0x30
	shl	edx, 6
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rcx + rax + 2]
	lea	rsi, [rsi]
	sub	esi, 0x30
	shl	esi, 3
	mov	rsp, rsp
	add	edx, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rcx + rax + 3]
	sub	esi, 0x30
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], dil
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 3
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1371
.label_1372:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], dl
.label_1371:
	jmp	.label_1375
.label_1375:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1373
.label_1374:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414730

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414750

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
	#Procedure 0x4147e0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1377
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1381
.label_1377:
	nop	
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_1381
.label_1381:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0x77
	lea	rdi, [rdi]
	jae	.label_1382
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_1379
.label_1382:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_1379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_1380
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 0x20], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1378
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_1378:
	jmp	.label_1380
.label_1380:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414920

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414970

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_1383
	mov	rbp, rbp
	jmp	.label_1384
.label_1384:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1385
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1384
.label_1385:
	jmp	.label_1383
.label_1383:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4149f0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_1390
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1389
.label_1390:
	mov	rdi, qword ptr [rbp - 8]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1386
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
	je	.label_1387
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x11], al
.label_1387:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1391
	lea	rdi, [rdi]
	jmp	.label_1388
.label_1391:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	je	.label_1388
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1389
.label_1388:
	jmp	.label_1386
.label_1386:
	nop	
	mov	qword ptr [rbp - 0x28], 0
.label_1389:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414b10

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1394
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_1397
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1395
	jmp	.label_1397
.label_1394:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_1397
.label_1395:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1392
.label_1397:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1396
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1392
.label_1396:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	change_env
	test	al, 1
	jne	.label_1393
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_1392
.label_1393:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_1392:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x414c50

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1404
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	ja	.label_1398
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_1398
.label_1404:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1403
.label_1398:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1407
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 8], rax
.label_1409:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1406
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_1400
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_1408
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1400
.label_1408:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1410
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1403
.label_1410:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	cmp	rax, 0x77
	jae	.label_1402
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_1405
.label_1402:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1401
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1403
.label_1401:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_1405:
	jmp	.label_1406
.label_1400:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_1399
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1399
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1399:
	lea	rdi, [rdi]
	jmp	.label_1409
.label_1406:
	mov	rbp, rbp
	jmp	.label_1407
.label_1407:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 9], 1
.label_1403:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414ef0

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
	mov	byte ptr [rbp - 5], 1
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
	mov	dword ptr [rbp - 4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], dl
.label_1412:
	nop	
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414fa0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x68], rsi
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jne	.label_1414
	mov	rdi, qword ptr [rbp - 0x68]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1420
.label_1414:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	set_tz
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_1417
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], -1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_1418
	mov	rsp, rsp
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1416
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_1416
.label_1418:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1416
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1416:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1419
	mov	rsp, rsp
	jmp	.label_1415
.label_1419:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1420
.label_1415:
	jmp	.label_1417
.label_1417:
	mov	qword ptr [rbp - 0x18], -1
.label_1420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4150e0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 4]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4151d0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415200

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
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1423
.label_1421:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1423
.label_1423:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1422
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_1424
.label_1422:
	call	tzset
	nop	
	mov	byte ptr [rbp - 0x11], 1
.label_1424:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415290

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1425
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1426
.label_1425:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_1426:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415300

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
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], esi
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 1], cl
	je	.label_1427
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	jg	.label_1427
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_1427:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415390

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
	jne	.label_1428
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1431
.label_1428:
	mov	rbp, rbp
	jmp	.label_1429
.label_1429:
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
	jne	.label_1430
	jmp	.label_1432
.label_1430:
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
	je	.label_1429
.label_1432:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1431:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415480

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
	jne	.label_1435
	test	byte ptr [rbp - 0x15], 1
	je	.label_1434
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_1435
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_1434
.label_1435:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_1433
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1433:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_1436
.label_1434:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_1436:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415560

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x1e0
	lea	rdi, [rdi]
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x90], xmm6
	movaps	xmmword ptr [rbp - 0x10], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x40], xmm3
	movaps	xmmword ptr [rbp - 0x50], xmm2
	movaps	xmmword ptr [rbp - 0xd0], xmm1
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 0x98], r9
	mov	qword ptr [rbp - 0xa8], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	dword ptr [rbp - 0xd4], esi
	je	.label_1437
	movaps	xmm0, xmmword ptr [rbp - 0x70]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rbp - 0xd0]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rbp - 0x50]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x1d0]
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	lea	rsi, [rsi]
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_1437:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x178], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	rsi, qword ptr [rbp - 0x1a8]
	nop	
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0xd4]
	mov	r8, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1d4], 0
	mov	edi, dword ptr [rbp - 0x1b4]
	and	edi, 0x40
	mov	rbp, rbp
	cmp	edi, 0
	lea	rdi, [rdi]
	je	.label_1438
	mov	rbp, rbp
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	nop	
	lea	rdx, [rbp - 0x1a0]
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
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xac], esi
	mov	rsp, rsp
	ja	.label_1439
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xac]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1440
.label_1439:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_1440:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1438:
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1d4]
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
	add	rsp, 0x1e0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4157e0

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
	je	.label_1442
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_12
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1443
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1441
.label_1443:
	mov	byte ptr [rbp - 0xd], 0
.label_1441:
	jmp	.label_1442
.label_1442:
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
	#Procedure 0x415880

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415900

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
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_1446:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415990

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
.label_1451:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1453
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xstrcat
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1447
.label_1453:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	je	.label_1450
	mov	rbp, rbp
	jmp	.label_1448
.label_1450:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_1449
	mov	rsp, rsp
	jmp	.label_1448
.label_1449:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1451
.label_1448:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	call	vasprintf
	cmp	eax, 0
	jge	.label_1452
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1454
	lea	rdi, [rdi]
	call	xalloc_die
.label_1454:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1447
.label_1452:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1447:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415ac0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsi]
	nop	
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x78], rax
.label_1458:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	jbe	.label_1463
	lea	rax, [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	ja	.label_1461
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	add	eax, 8
	mov	rsp, rsp
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1455
.label_1461:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x18], rdx
.label_1455:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, rax
	call	xsum
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_1458
.label_1463:
	lea	rax, [rbp - 0x30]
	cmp	qword ptr [rbp - 0x70], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	je	.label_1464
	nop	
	cmp	qword ptr [rbp - 0x70], 0x7fffffff
	jbe	.label_1456
.label_1464:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	jmp	.label_1460
.label_1456:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x78], rax
.label_1457:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jbe	.label_1462
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1465
	mov	eax, dword ptr [rbp - 0x64]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	nop	
	jmp	.label_1459
.label_1465:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rcx, 8
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1459:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1457
.label_1462:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
.label_1460:
	mov	rax, qword ptr [rbp - 0x98]
	add	rsp, 0xb0
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415d70

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
	jge	.label_1470
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1468
.label_1470:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1467
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
	je	.label_1466
.label_1467:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1466
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1466:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1469
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
.label_1469:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1468:
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
	#Procedure 0x415e90

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
	je	.label_1471
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1472
.label_1471:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1473
.label_1472:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1473:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415f00

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
	je	.label_1474
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
.label_1474:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415f60

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
	jne	.label_1475
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1475
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1475
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
	jne	.label_1476
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1477
.label_1476:
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
	jmp	.label_1477
.label_1475:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1477:
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
	#Procedure 0x416070

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4160d0
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
	jb	.label_1481
	jmp	.label_1482
.label_1482:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_1481
	nop	
	jmp	.label_1483
.label_1483:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_1485
	jmp	.label_1481
.label_1481:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_1484
.label_1485:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_1484:
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
	#Procedure 0x416160
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
	jb	.label_1486
	nop	
	jmp	.label_1487
.label_1487:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_1488
	lea	rdi, [rdi]
	jmp	.label_1486
.label_1486:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1489
.label_1488:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_1489:
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
	#Procedure 0x4161e0
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
	ja	.label_1490
	mov	rsp, rsp
	jmp	.label_1492
.label_1492:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1491
.label_1490:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_1491:
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
	#Procedure 0x416230
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
	je	.label_1493
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1493:
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
	#Procedure 0x416280
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
	jb	.label_1494
	nop	
	jmp	.label_1495
.label_1495:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_1496
	lea	rsi, [rsi]
	jmp	.label_1494
.label_1494:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1497
.label_1496:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_1497:
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
	#Procedure 0x4162f0
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
	ja	.label_1499
	jmp	.label_1498
.label_1498:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_1500
.label_1499:
	mov	byte ptr [rbp - 5], 0
.label_1500:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416340
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
	ja	.label_1501
	lea	rsi, [rsi]
	jmp	.label_1502
.label_1502:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1503
.label_1501:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_1503:
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
	#Procedure 0x416390
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
	ja	.label_1504
	jmp	.label_1505
.label_1505:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1506
.label_1504:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1506:
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
	#Procedure 0x4163e0
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
	ja	.label_1507
	jmp	.label_1509
.label_1509:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1508
.label_1507:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1508:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416430
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
	jb	.label_1511
	jmp	.label_1512
.label_1512:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_1511
	nop	
	jmp	.label_1515
.label_1515:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1511
	jmp	.label_1513
.label_1513:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_1510
	mov	rsp, rsp
	jmp	.label_1511
.label_1511:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1514
.label_1510:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1514:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4164e0
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
	jb	.label_1516
	mov	rbp, rbp
	jmp	.label_1517
.label_1517:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_1519
	mov	rsp, rsp
	jmp	.label_1516
.label_1516:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1518
.label_1519:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1518:
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
	#Procedure 0x416550
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
	ja	.label_1520
	jmp	.label_1522
.label_1522:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_1521
.label_1520:
	mov	byte ptr [rbp - 5], 0
.label_1521:
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
	#Procedure 0x4165a0
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
	jb	.label_1523
	lea	rdi, [rdi]
	jmp	.label_1527
.label_1527:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_1523
	jmp	.label_1524
.label_1524:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1526
	jmp	.label_1523
.label_1523:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1525
.label_1526:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_1525:
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
	#Procedure 0x416630

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
	ja	.label_1528
	jmp	.label_1529
.label_1529:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_1530
.label_1528:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_1530:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x416680
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
	ja	.label_1531
	mov	rbp, rbp
	jmp	.label_1532
.label_1532:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1533
.label_1531:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1533:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4166e0

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416720

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jb	.label_1534
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1535
.label_1534:
	mov	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1535
.label_1535:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416790
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4167e0
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416840
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jb	.label_1537
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1536
.label_1537:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1536:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416890

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
	movaps	xmmword ptr [rbp - 0x80], xmm7
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xd0], xmm4
	movaps	xmmword ptr [rbp - 0x230], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1f0], xmm1
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	mov	dword ptr [rbp - 0x20], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x210], r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	dword ptr [rbp - 0x60], esi
	nop	
	je	.label_1542
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x230]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0xd0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x70]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x80]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_1542:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x210]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rdx, qword ptr [rbp - 0x220]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], r8d
	mov	dword ptr [rbp - 0x1a4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1b0], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1b8], r9
	mov	dword ptr [rbp - 0x1bc], 0x30
	mov	dword ptr [rbp - 0x1c0], 0x10
	mov	edi, dword ptr [rbp - 0x1a4]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], edi
	mov	rsp, rsp
	je	.label_1546
	nop	
	jmp	.label_1557
.label_1557:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_1558
	jmp	.label_1563
.label_1546:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_1564
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f8]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rsi, [rsi]
	jmp	.label_1541
.label_1564:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_1541:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1559
.label_1558:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	ja	.label_1539
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_1554
.label_1539:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1554:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x54]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1559
.label_1563:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_1547
	nop	
	jmp	.label_1556
.label_1556:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_1540
	jmp	.label_1561
.label_1561:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1547
	nop	
	jmp	.label_1567
.label_1567:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1540
	nop	
	jmp	.label_1545
.label_1545:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_1547
	lea	rsi, [rsi]
	jmp	.label_1553
.label_1553:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1547
	lea	rsi, [rsi]
	jmp	.label_1560
.label_1560:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1540
	mov	rsp, rsp
	jmp	.label_1566
.label_1566:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1547
	jmp	.label_1538
.label_1538:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_1540
	lea	rsi, [rsi]
	jmp	.label_1551
.label_1551:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_1547
	jmp	.label_1550
.label_1550:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1540
	mov	rsp, rsp
	jmp	.label_1562
.label_1562:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_1547
	lea	rsi, [rsi]
	jmp	.label_1568
.label_1568:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1547
	nop	
	jmp	.label_1549
.label_1549:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_1552
	lea	rdi, [rdi]
	jmp	.label_1540
.label_1540:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1543
.label_1547:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_1565
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rcx
	mov	rbp, rbp
	jmp	.label_1544
.label_1565:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_1544:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xac], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	mov	esi, dword ptr [rbp - 0x1a4]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xac]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1543
.label_1552:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_1548
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x90], rcx
	mov	rsp, rsp
	jmp	.label_1555
.label_1548:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_1555:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x5c], eax
.label_1543:
	jmp	.label_1559
.label_1559:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416ef0

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
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416f40

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_1569
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	edx, dword ptr [rbp - 0x18]
	jle	.label_1576
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1571
.label_1576:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1573
.label_1571:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1577
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1577:
	mov	rbp, rbp
	jmp	.label_1573
.label_1573:
	jmp	.label_1574
.label_1569:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1574:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_1570
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1570
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1575
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1572
.label_1575:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_1572:
	jmp	.label_1570
.label_1570:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417170

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x417180

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
