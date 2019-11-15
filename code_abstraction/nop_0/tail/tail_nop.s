	.section	.text
	.align	16
	#Procedure 0x401bb0

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	je	.label_9
	jmp	.label_8
.label_8:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_7
.label_9:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	call	gettext
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	gettext
	mov	esi, 0xa
	nop	
	mov	edx, 5
	mov	rdi, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.8
	nop	
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.24
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ed0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_12:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	nop	
	mov	byte ptr [rbp - 0x21], cl
	je	.label_15
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	nop	
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
.label_15:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_14
	jmp	.label_10
.label_14:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_12
.label_10:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_13
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	setlocale
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_11
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rbp, rbp
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.39
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	nop	
	movsd	xmm0,  qword ptr [word ptr [label_51]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 1
	mov	qword ptr [rbp - 0x20], 0xa
	movsd	qword ptr [rbp - 0x50], xmm0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.15
	movabs	rsi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x190], rax
	lea	rsi, [rsi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.15
	mov	qword ptr [rbp - 0x198], rax
	mov	rbp, rbp
	call	textdomain
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rsp, rsp
	call	atexit
	mov	rbp, rbp
	lea	rdx, [rbp - 0x20]
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [count_lines]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_headers]],  0
	mov	byte ptr [byte ptr [from_start]],  0
	mov	byte ptr [byte ptr [forever]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [line_end]],  0xa
	nop	
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a4], eax
	lea	rdi, [rdi]
	call	parse_obsolete_option
	lea	rdx, [rbp - 0x20]
	lea	rcx, [rbp - 0x14]
	lea	r8, [rbp - 0x50]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edi, al
	mov	r9d, dword ptr [rbp - 8]
	sub	r9d, edi
	mov	dword ptr [rbp - 8], r9d
	nop	
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	edi, al
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	r10, edi
	mov	rbp, rbp
	shl	r10, 3
	lea	rsi, [rsi]
	add	rsi, r10
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	parse_options
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_33
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_40
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_40:
	mov	rbp, rbp
	jmp	.label_33
.label_33:
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	jge	.label_39
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	nop	
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	jmp	.label_41
.label_39:
	movabs	rax, OFFSET FLAT:main.dummy_stdin
	mov	qword ptr [rbp - 0x28], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_41:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], 0
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_52:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_21
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	esi, edx
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_29
	mov	byte ptr [rbp - 0x51], 1
.label_29:
	mov	rbp, rbp
	jmp	.label_31
.label_31:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_52
.label_21:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x51], 1
	mov	rsp, rsp
	je	.label_37
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [follow_mode]],  1
	mov	rsp, rsp
	jne	.label_37
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.17_0
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_37:
	mov	rbp, rbp
	test	byte ptr [byte ptr [forever]],  1
	je	.label_16
	test	byte ptr [rbp - 0x51], 1
	nop	
	je	.label_16
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_20
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_20
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x28], 1
	mov	byte ptr [rbp - 0x1b1], cl
	lea	rsi, [rsi]
	jne	.label_20
	xor	edi, edi
	lea	rsi, [rbp - 0xe8]
	call	__fstat
	lea	rdi, [rdi]
	xor	edi, edi
	mov	cl, dil
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1b1], cl
	mov	rsp, rsp
	jne	.label_20
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	sete	cl
	nop	
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x1b1], cl
.label_20:
	nop	
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	test	byte ptr [rbp - 0xe9], 1
	lea	rsi, [rsi]
	jne	.label_43
	lea	rsi, [rsi]
	xor	edi, edi
	call	isatty
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_43
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_43:
	jmp	.label_16
.label_16:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_22
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_22
	test	byte ptr [byte ptr [from_start]],  1
	jne	.label_22
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_25
.label_22:
	lea	rdi, [rdi]
	mov	eax, 0x60
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	xnmalloc
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_38:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_42
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	imul	rcx, rcx, 0x60
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_38
.label_42:
	cmp	dword ptr [rbp - 0x14], 1
	lea	rsi, [rsi]
	je	.label_47
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_50
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 1
	mov	rbp, rbp
	jbe	.label_50
.label_47:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [print_headers]],  1
.label_50:
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_26:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_19
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	tail_file
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], al
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_26
.label_19:
	mov	rbp, rbp
	test	byte ptr [byte ptr [forever]],  1
	je	.label_35
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	ignore_fifo_and_pipe
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_35
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rbp - 0x180]
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jge	.label_46
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.20
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b8], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_46:
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x1000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1b9], al
	mov	rbp, rbp
	je	.label_17
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x1b9], cl
	lea	rsi, [rsi]
	jmp	.label_17
.label_17:
	mov	al, byte ptr [rbp - 0x1b9]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [monitor_output]],  al
	mov	rbp, rbp
	test	byte ptr [byte ptr [disable_inotify]],  1
	lea	rsi, [rsi]
	jne	.label_30
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	tailable_stdin
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_27
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	any_remote_file
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_27
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_non_remote_file
	mov	rbp, rbp
	test	al, 1
	jne	.label_45
	mov	rsp, rsp
	jmp	.label_27
.label_45:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_symlinks
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_27
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	call	any_non_regular_fifo
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_27
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_30
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_30
.label_27:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [disable_inotify]],  1
.label_30:
	nop	
	test	byte ptr [byte ptr [disable_inotify]],  1
	lea	rdi, [rdi]
	jne	.label_23
	mov	rsp, rsp
	call	inotify_init
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x184], eax
	nop	
	cmp	ecx, dword ptr [rbp - 0x184]
	jg	.label_28
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_34
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c0], esi
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1c0]
	nop	
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_34:
	nop	
	mov	edi, dword ptr [rbp - 0x184]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	tail_forever_inotify
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_49
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_25
.label_49:
	jmp	.label_28
.label_28:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_44:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_32
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x44], -1
	lea	rsi, [rsi]
	je	.label_24
	mov	edi, dword ptr [rbp - 0x184]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c8], eax
.label_24:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x48], -1
	je	.label_36
	mov	edi, dword ptr [rbp - 0x184]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x48]
	mov	rsp, rsp
	call	inotify_rm_watch
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1cc], eax
.label_36:
	lea	rsi, [rsi]
	jmp	.label_48
.label_48:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_44
.label_32:
	lea	rdi, [rdi]
	jmp	.label_23
.label_23:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	movsd	xmm0, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	tail_forever
.label_35:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rsi, [rsi]
	je	.label_18
	xor	edi, edi
	mov	rbp, rbp
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_18
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.17_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_18:
	nop	
	mov	eax, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 4], eax
.label_25:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a90

	.globl parse_obsolete_option
	.type parse_obsolete_option, @function
parse_obsolete_option:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	dword ptr [rbp - 0x34], 0xa
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x36], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x37], 0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 2
	je	.label_55
	cmp	dword ptr [rbp - 8], 3
	mov	rbp, rbp
	jne	.label_69
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_55
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 1]
	nop	
	cmp	ecx, 0
	je	.label_55
.label_69:
	nop	
	mov	eax, 3
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_56
	cmp	dword ptr [rbp - 8], 4
	jg	.label_56
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.41
	mov	esi, ecx
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_55
.label_56:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_60
.label_55:
	lea	rdi, [rdi]
	call	posix2_version
	mov	rbp, rbp
	mov	cl, 1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x30db0
	mov	rsp, rsp
	setl	dl
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3d], dl
	test	byte ptr [rbp - 0x3d], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3f], cl
	jne	.label_73
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x3c]
	setle	cl
	nop	
	mov	byte ptr [rbp - 0x3f], cl
.label_73:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x3f]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdx, rcx
	inc	rdx
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	movsx	esi, byte ptr [rcx]
	mov	rsp, rsp
	mov	edi, esi
	mov	rsp, rsp
	sub	edi, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], esi
	nop	
	mov	dword ptr [rbp - 0x48], edi
	lea	rdi, [rdi]
	je	.label_65
	mov	rbp, rbp
	jmp	.label_75
.label_75:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	je	.label_77
	jmp	.label_58
.label_58:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_60
.label_65:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_61
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_60
.label_61:
	mov	byte ptr [rbp - 0x35], 1
	jmp	.label_67
.label_77:
	test	byte ptr [rbp - 0x3d], 1
	jne	.label_68
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x63
	nop	
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rbp, rbp
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	byte ptr [rsi + rax], 0
	mov	rsp, rsp
	jne	.label_68
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_60
.label_68:
	mov	byte ptr [rbp - 0x35], 0
.label_67:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_64:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	nop	
	ja	.label_59
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_64
.label_59:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x62
	mov	dword ptr [rbp - 0x50], ecx
	mov	dword ptr [rbp - 0x54], edx
	je	.label_71
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x63
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	je	.label_76
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	eax, 0x6c
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	je	.label_57
	mov	rbp, rbp
	jmp	.label_63
.label_71:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	shl	eax, 9
	nop	
	mov	dword ptr [rbp - 0x34], eax
.label_76:
	mov	byte ptr [rbp - 0x36], 0
.label_57:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_63:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	mov	rbp, rbp
	jne	.label_70
	mov	byte ptr [rbp - 0x37], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_70:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_53
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_60
.label_53:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_62
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	jmp	.label_66
.label_62:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	xstrtoumax
	mov	rsp, rsp
	and	eax, 0xfffffffd
	cmp	eax, 0
	je	.label_72
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.44
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_72:
	nop	
	jmp	.label_66
.label_66:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x35]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [from_start]],  al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x36]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [count_lines]],  al
	mov	al, byte ptr [rbp - 0x37]
	and	al, 1
	mov	byte ptr [byte ptr [forever]],  al
	nop	
	mov	byte ptr [rbp - 1], 1
.label_60:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ec0

	.globl parse_options
	.type parse_options, @function
parse_options:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
.label_97:
	movabs	rdx, OFFSET FLAT:.str.45
	movabs	rcx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	getopt_long
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, -1
	je	.label_84
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_87
	nop	
	jmp	.label_95
.label_95:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	je	.label_98
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, -0x30
	lea	rdi, [rdi]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_108
	lea	rsi, [rsi]
	jmp	.label_109
.label_109:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x46
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	je	.label_112
	jmp	.label_116
.label_116:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x63
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	je	.label_117
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x54], eax
	je	.label_120
	jmp	.label_122
.label_122:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x58], eax
	je	.label_117
	lea	rsi, [rsi]
	jmp	.label_125
.label_125:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_126
	jmp	.label_129
.label_129:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, 0x73
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	je	.label_78
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x76
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	je	.label_86
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	je	.label_91
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_101
	jmp	.label_105
.label_105:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	je	.label_107
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x82
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	mov	rbp, rbp
	je	.label_111
	jmp	.label_115
.label_115:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x78], eax
	lea	rsi, [rsi]
	je	.label_102
	jmp	.label_118
.label_118:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	je	.label_120
	lea	rdi, [rdi]
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	sub	eax, 0x85
	nop	
	mov	dword ptr [rbp - 0x80], eax
	je	.label_124
	jmp	.label_92
.label_112:
	mov	byte ptr [byte ptr [forever]],  1
	nop	
	mov	dword ptr [dword ptr [follow_mode]],  1
	nop	
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_83
.label_117:
	cmp	dword ptr [rbp - 0x2c], 0x6e
	lea	rdi, [rdi]
	sete	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [count_lines]],  al
	nop	
	mov	rcx,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	edx, 0x2b
	jne	.label_82
	mov	rsp, rsp
	mov	byte ptr [byte ptr [from_start]],  1
	lea	rsi, [rsi]
	jmp	.label_96
.label_82:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	jne	.label_103
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_103:
	lea	rdi, [rdi]
	jmp	.label_96
.label_96:
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	test	byte ptr [byte ptr [count_lines]],  1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdi
	lea	rsi, [rsi]
	je	.label_114
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_121
.label_114:
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
.label_121:
	mov	rax, qword ptr [rbp - 0x90]
	xor	ecx, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	xor	r9d, r9d
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	jmp	.label_83
.label_120:
	mov	byte ptr [byte ptr [forever]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_93
	mov	dword ptr [dword ptr [follow_mode]],  2
	jmp	.label_100
.label_93:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.49
	movabs	rdx, OFFSET FLAT:follow_mode_string
	movabs	rax, OFFSET FLAT:follow_mode_map
	lea	rdi, [rdi]
	mov	ecx, 4
	lea	rsi, [rsi]
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	call	__xargmatch_internal
	lea	rdi, [rdi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [follow_mode]],  r10d
.label_100:
	mov	rbp, rbp
	jmp	.label_83
.label_101:
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_83
.label_107:
	movabs	rdi, OFFSET FLAT:.str.50
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	nop	
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, rax
	nop	
	call	xdectoumax
	mov	qword ptr [word ptr [max_n_unchanged_stats_between_opens]],  rax
	mov	rsp, rsp
	jmp	.label_83
.label_124:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [disable_inotify]],  1
	mov	rbp, rbp
	jmp	.label_83
.label_111:
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	ecx, 0x7fffffff
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r8, rax
	lea	rsi, [rsi]
	call	xdectoumax
	lea	rdi, [rdi]
	mov	r9d, eax
	mov	dword ptr [dword ptr [pid]],  r9d
	jmp	.label_83
.label_102:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	mov	rbp, rbp
	jmp	.label_83
.label_126:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 2
	lea	rsi, [rsi]
	jmp	.label_83
.label_78:
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	lea	rdx, [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:cl_strtod
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	call	xstrtod
	test	al, 1
	jne	.label_79
	lea	rdi, [rdi]
	jmp	.label_80
.label_79:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	ucomisd	xmm1, xmm0
	jae	.label_94
.label_80:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	call	quote
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_94:
	nop	
	movsd	xmm0, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsd	qword ptr [rax], xmm0
	jmp	.label_83
.label_86:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 1
	jmp	.label_83
.label_91:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_83
.label_98:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_87:
	nop	
	movabs	rsi, OFFSET FLAT:.str.13
	movabs	rdx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str.53
	nop	
	movabs	r9, OFFSET FLAT:.str.54
	movabs	rax, OFFSET FLAT:.str.55
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.56
	nop	
	xor	edi, edi
	mov	r10d, edi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r11,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp + 0x10], 0
	nop	
	mov	al, 0
	mov	qword ptr [rbp - 0xb8], r10
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_108:
	movabs	rdi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_92:
	nop	
	mov	edi, 1
	call	usage
.label_83:
	lea	rdi, [rdi]
	jmp	.label_97
.label_84:
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	nop	
	je	.label_90
	mov	rbp, rbp
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_81
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.58
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  0
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_88
.label_81:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	rbp, rbp
	jne	.label_128
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_128:
	mov	rsp, rsp
	jmp	.label_88
.label_88:
	mov	rbp, rbp
	jmp	.label_90
.label_90:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_104
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_104
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	jmp	.label_110
.label_104:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_113
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_113
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	lea	rdi, [rdi]
	jne	.label_113
	movabs	rdi, OFFSET FLAT:.str.61
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	nop	
	call	error
	mov	dword ptr [dword ptr [pid]],  0
.label_113:
	nop	
	jmp	.label_110
.label_110:
	add	rsp, 0xd0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.17_0
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16], cl
	nop	
	test	byte ptr [rbp - 0x16], 1
	je	.label_140
	xor	eax, eax
	mov	rbp, rbp
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	jmp	.label_130
.label_140:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	al, 0
	call	open_safer
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
.label_130:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], cl
	nop	
	je	.label_133
	cmp	dword ptr [rbp - 0x14], -1
	sete	al
	mov	byte ptr [rbp - 0xb1], al
.label_133:
	mov	al, byte ptr [rbp - 0xb1]
	lea	rdi, [rdi]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	cmp	dword ptr [rbp - 0x14], -1
	lea	rsi, [rsi]
	jne	.label_144
	test	byte ptr [byte ptr [forever]],  1
	je	.label_146
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	lea	rsi, [rsi]
	mov	dl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	dl, 0xff
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0x34], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
.label_146:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.79
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb8], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	call	pretty_name
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_138
.label_144:
	test	byte ptr [byte ptr [print_headers]],  1
	nop	
	je	.label_141
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	pretty_name
	lea	rdi, [rdi]
	mov	rdi, rax
	call	write_header
.label_141:
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	mov	rbp, rbp
	lea	rcx, [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	tail
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	nop	
	test	byte ptr [byte ptr [forever]],  1
	je	.label_132
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xb0]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	sub	ecx, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdx + 0x3c], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	call	__fstat
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	jge	.label_135
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 0
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], esi
	mov	rsp, rsp
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	call	pretty_name
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_142
.label_135:
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_131
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x1000
	je	.label_131
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	nop	
	cmp	eax, 0xc000
	nop	
	je	.label_131
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_131
	movabs	rdi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x36], 0
	nop	
	mov	cl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	mov	rsp, rsp
	xor	cl, 0xff
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x34], cl
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xd8], rax
	call	pretty_name
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	nop	
	call	quotearg_n_style_colon
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rdx + 0x34], 1
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_145
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	jmp	.label_139
.label_145:
	nop	
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_139
.label_139:
	nop	
	mov	rax, qword ptr [rbp - 0xe8]
	xor	ecx, ecx
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_131:
	jmp	.label_142
.label_142:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_143
	mov	al,  byte ptr [byte ptr [reopen_inaccessible_files]]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x34], al
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xec], edi
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	pretty_name
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	close_fd
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_134
.label_143:
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	r9b, byte ptr [rbp - 0x16]
	test	r9b, 1
	mov	rsp, rsp
	cmovne	eax, edx
	mov	rbp, rbp
	mov	rdx, r8
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xf0], edi
	mov	rbp, rbp
	mov	rdi, rcx
	call	pretty_name
	nop	
	mov	edi, dword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	fremote
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rcx + 0x35], al
.label_134:
	jmp	.label_136
.label_132:
	nop	
	test	byte ptr [rbp - 0x16], 1
	nop	
	jne	.label_137
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	call	close
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_137
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf4], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xf4]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	byte ptr [rbp - 0x15], 0
.label_137:
	nop	
	jmp	.label_136
.label_136:
	jmp	.label_138
.label_138:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x100
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d00

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
.label_151:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_153
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx]
	mov	eax, OFFSET FLAT:.str.17_0
	mov	esi, eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	mov	cl, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x23], cl
	jne	.label_148
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rdx + 0x34], 1
	nop	
	mov	byte ptr [rbp - 0x23], cl
	lea	rdi, [rdi]
	jne	.label_148
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rdx + 0x38]
	mov	byte ptr [rbp - 0x23], cl
	jg	.label_148
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	and	edx, 0xf000
	lea	rsi, [rsi]
	cmp	edx, 0x1000
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x24], al
	mov	rbp, rbp
	je	.label_147
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x24], cl
	jmp	.label_147
.label_147:
	mov	al, byte ptr [rbp - 0x24]
	mov	byte ptr [rbp - 0x23], al
.label_148:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	mov	rbp, rbp
	je	.label_152
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 1
	nop	
	jmp	.label_150
.label_152:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_150:
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_151
.label_153:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ec0

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_154:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jae	.label_158
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rax + 0x34], 1
	lea	rsi, [rsi]
	jne	.label_155
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	esi, ecx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_155
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_157
.label_155:
	mov	rsp, rsp
	jmp	.label_156
.label_156:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_154
.label_158:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
.label_157:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f90

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
.label_160:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jae	.label_163
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_159
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rax + 0x35], 1
	je	.label_159
	nop	
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_162
.label_159:
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_160
.label_163:
	mov	byte ptr [rbp - 1], 0
.label_162:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404040

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
.label_166:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_167
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_165
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	jne	.label_165
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_168
.label_165:
	jmp	.label_164
.label_164:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_166
.label_167:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_168:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], 0
.label_173:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_171
	lea	rsi, [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	__lstat
	cmp	eax, 0
	jne	.label_169
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	jne	.label_169
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	jmp	.label_172
.label_169:
	jmp	.label_170
.label_170:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_173
.label_171:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
.label_172:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041b0

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
.label_177:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_178
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_174
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_174
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x1000
	je	.label_174
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	jmp	.label_176
.label_174:
	nop	
	jmp	.label_175
.label_175:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_177
.label_178:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_176:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404290

	.globl tail_forever_inotify
	.type tail_forever_inotify, @function
tail_forever_inotify:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x300
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	movabs	r8, OFFSET FLAT:wd_hasher
	nop	
	movabs	r9, OFFSET FLAT:wd_comparator
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	dword ptr [rbp - 0x24], 3
	mov	byte ptr [rbp - 0x31], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x32], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x33], 0
	mov	byte ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x35], 0
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rdx, r8
	mov	qword ptr [rbp - 0x250], rcx
	mov	rsp, rsp
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x250]
	call	hash_initialize
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_237
	call	xalloc_die
.label_237:
	mov	dword ptr [rbp - 0x64], 2
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	lea	rsi, [rsi]
	jne	.label_239
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	or	eax, 0xc04
	nop	
	mov	dword ptr [rbp - 0x64], eax
.label_239:
	mov	qword ptr [rbp - 0x70], 0
.label_229:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_185
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x34], 1
	jne	.label_250
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
.label_257:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [follow_mode]],  1
	mov	rsp, rsp
	jne	.label_189
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	call	dir_len
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rdi, rdi, 0x60
	nop	
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	cl, byte ptr [rdi + rax]
	mov	byte ptr [rbp - 0x81], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	last_component
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	sub	rax, rdi
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	byte ptr [rdi + rax], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x254], edi
	je	.label_199
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x260], rax
	nop	
	jmp	.label_208
.label_199:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.96
	mov	qword ptr [rbp - 0x260], rax
	lea	rdi, [rdi]
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x260]
	mov	edx, 0x784
	mov	edi, dword ptr [rbp - 0x254]
	nop	
	mov	rsi, rax
	mov	rbp, rbp
	call	inotify_add_watch
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x48], eax
	mov	rsp, rsp
	mov	cl, byte ptr [rbp - 0x81]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x70]
	imul	r8, r8, 0x60
	add	r8, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r8, qword ptr [r8]
	mov	byte ptr [r8 + rsi], cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x48], 0
	jge	.label_228
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x1c
	je	.label_246
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.97
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x264], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x60
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x270], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x264]
	mov	rdx, qword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_263
.label_246:
	movabs	rdi, OFFSET FLAT:.str.98
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_263:
	mov	byte ptr [rbp - 0x33], 1
	mov	rbp, rbp
	jmp	.label_185
.label_228:
	mov	rsp, rsp
	jmp	.label_189
.label_189:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x64]
	call	inotify_add_watch
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rsi + 0x44], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x44], 0
	mov	rbp, rbp
	jge	.label_200
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_211
	mov	byte ptr [rbp - 0x32], 1
.label_211:
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_217
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0xc
	jne	.label_221
.label_217:
	movabs	rdi, OFFSET FLAT:.str.98
	mov	byte ptr [rbp - 0x34], 1
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
	mov	rsp, rsp
	jmp	.label_185
.label_221:
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x3c]
	lea	rdi, [rdi]
	je	.label_224
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.99
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x274], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x280], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x274]
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_224:
	jmp	.label_252
.label_252:
	jmp	.label_254
.label_200:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_insert
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_256
	call	xalloc_die
.label_256:
	mov	byte ptr [rbp - 0x31], 1
.label_250:
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_229
.label_185:
	test	byte ptr [rbp - 0x34], 1
	jne	.label_226
	test	byte ptr [rbp - 0x33], 1
	jne	.label_226
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	rbp, rbp
	jne	.label_181
	test	byte ptr [rbp - 0x32], 1
	je	.label_181
.label_226:
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_188
.label_181:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [follow_mode]],  2
	lea	rsi, [rsi]
	jne	.label_196
	mov	rsp, rsp
	test	byte ptr [rbp - 0x31], 1
	mov	rsp, rsp
	jne	.label_196
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_188
.label_196:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 1
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x70], 0
.label_203:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_248
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0x34], 1
	jne	.label_215
	cmp	dword ptr [dword ptr [follow_mode]],  1
	lea	rdi, [rdi]
	jne	.label_219
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	recheck
	jmp	.label_192
.label_219:
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	lea	rdi, [rdi]
	je	.label_190
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x118]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	stat
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_234
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_238
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	je	.label_234
.label_238:
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.100
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x284], esi
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x284]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x290]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	hash_free
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_188
.label_234:
	jmp	.label_190
.label_190:
	mov	rbp, rbp
	jmp	.label_192
.label_192:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	check_fspec
.label_215:
	mov	rbp, rbp
	jmp	.label_201
.label_201:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_203
.label_248:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
.label_193:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [follow_mode]],  1
	lea	rdi, [rdi]
	jne	.label_214
	mov	rbp, rbp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jne	.label_214
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_214
	movabs	rdi, OFFSET FLAT:.str.101
	nop	
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_188
.label_214:
	lea	rsi, [rsi]
	jmp	.label_225
.label_225:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_227
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_180
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x35], 1
	je	.label_236
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_236:
	xor	esi, esi
	nop	
	mov	edi,  dword ptr [dword ptr [pid]]
	nop	
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x291], cl
	je	.label_242
	mov	rsp, rsp
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x291], cl
.label_242:
	mov	al, byte ptr [rbp - 0x291]
	and	al, 1
	mov	byte ptr [rbp - 0x35], al
	test	byte ptr [rbp - 0x35], 1
	je	.label_247
	mov	qword ptr [rbp - 0x138], 0
	mov	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	jmp	.label_220
.label_247:
	movsd	xmm0,  qword ptr [word ptr [label_255]]
	mov	rsp, rsp
	cvttsd2si	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x140], rax
	movsd	xmm1, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cvtsi2sd	xmm2, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	subsd	xmm1, xmm2
	mov	rsp, rsp
	mulsd	xmm0, xmm1
	lea	rsi, [rsi]
	cvttsd2si	rax, xmm0
	nop	
	mov	qword ptr [rbp - 0x138], rax
.label_220:
	nop	
	jmp	.label_180
.label_180:
	lea	rsi, [rsi]
	jmp	.label_182
.label_182:
	nop	
	lea	rax, [rbp - 0x1c0]
	mov	ecx, 0x10
	xor	edx, edx
	mov	qword ptr [rbp - 0x2a0], rax
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2a0]
	nop	
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	eax, ecx
	mov	dword ptr [rbp - 0x1c4], eax
	mov	rbp, rbp
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c8], eax
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 8]
	nop	
	mov	dword ptr [rbp - 0x2a4], eax
	mov	rsp, rsp
	mov	eax, ecx
	mov	qword ptr [rbp - 0x2b0], rdx
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x2a4]
	idiv	ecx
	mov	edx, edx
	mov	ecx, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2b0]
	lea	rdi, [rdi]
	shl	rsi, cl
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	mov	edi, dword ptr [rbp - 0x2a4]
	idiv	edi
	lea	rsi, [rsi]
	movsxd	r8, eax
	or	rsi, qword ptr [rbp + r8*8 - 0x1c0]
	mov	qword ptr [rbp + r8*8 - 0x1c0], rsi
	test	byte ptr [byte ptr [monitor_output]],  1
	je	.label_194
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	or	rax, 2
	nop	
	mov	qword ptr [rbp - 0x1c0], rax
.label_194:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 1
	mov	rsp, rsp
	jle	.label_222
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2b4], eax
	mov	rbp, rbp
	jmp	.label_184
.label_222:
	mov	eax, 1
	mov	dword ptr [rbp - 0x2b4], eax
	mov	rbp, rbp
	jmp	.label_184
.label_184:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2b4]
	nop	
	add	eax, 1
	cmp	dword ptr [dword ptr [pid]],  0
	mov	dword ptr [rbp - 0x2b8], eax
	mov	rsp, rsp
	je	.label_231
	lea	rax, [rbp - 0x140]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_243
.label_231:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2c0], rcx
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x2c0]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1c0]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x2b8]
	mov	qword ptr [rbp - 0x2c8], rdx
	mov	rcx, qword ptr [rbp - 0x2c8]
	mov	rbp, rbp
	mov	r8, rax
	lea	rsi, [rsi]
	call	select
	mov	dword ptr [rbp - 0x1cc], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1cc], 0
	jne	.label_260
	lea	rdi, [rdi]
	jmp	.label_225
.label_260:
	cmp	dword ptr [rbp - 0x1cc], -1
	jne	.label_212
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.102
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2cc], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x2cc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_212:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c0]
	and	rax, 2
	mov	rbp, rbp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_183
	call	die_pipe
.label_183:
	mov	rsp, rsp
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	nop	
	ja	.label_197
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	safe_read
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	je	.label_202
	nop	
	cmp	qword ptr [rbp - 0x60], -1
	mov	rsp, rsp
	jne	.label_209
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x16
	jne	.label_209
.label_202:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	nop	
	add	ecx, -1
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_209
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x48]
	call	xrealloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_193
.label_209:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	je	.label_223
	cmp	qword ptr [rbp - 0x60], -1
	mov	rbp, rbp
	jne	.label_195
.label_223:
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.103
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2d0], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2d0]
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_195:
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x128], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 0xc]
	mov	eax, ecx
	lea	rdi, [rdi]
	add	rax, 0x10
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_233
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0xc], 0
	jne	.label_233
	nop	
	mov	qword ptr [rbp - 0x70], 0
.label_205:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_261
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	jne	.label_262
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	hash_free
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.104
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	nop	
	call	error
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_188
.label_262:
	mov	rsp, rsp
	jmp	.label_206
.label_206:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_205
.label_261:
	jmp	.label_233
.label_233:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	cmp	dword ptr [rax + 0xc], 0
	lea	rsi, [rsi]
	je	.label_210
	mov	qword ptr [rbp - 0x1d8], 0
.label_241:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_216
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rax]
	mov	rsp, rsp
	jne	.label_218
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x60
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x50]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_218
	jmp	.label_216
.label_218:
	mov	rsp, rsp
	jmp	.label_240
.label_240:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d8], rax
	jmp	.label_241
.label_216:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_245
	jmp	.label_193
.label_245:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1dc], 0xffffffff
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	mov	rsp, rsp
	and	ecx, 0x200
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rsp, rsp
	setne	dl
	lea	rsi, [rsi]
	xor	dl, 0xff
	nop	
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x1dd], dl
	test	byte ptr [rbp - 0x1dd], 1
	jne	.label_249
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	inotify_add_watch
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1dc], eax
.label_249:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1dd], 1
	lea	rdi, [rdi]
	jne	.label_187
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1dc], 0
	jge	.label_187
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x1c
	je	.label_198
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	rsp, rsp
	jne	.label_204
.label_198:
	movabs	rdi, OFFSET FLAT:.str.98
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_188
.label_204:
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.99
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2d4], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x2e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2d4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_187
.label_187:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1dd], 1
	mov	byte ptr [rbp - 0x2e1], cl
	mov	rsp, rsp
	jne	.label_232
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x120]
	nop	
	cmp	dword ptr [rcx + 0x44], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2e2], al
	mov	rsp, rsp
	jl	.label_179
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	cmp	eax, dword ptr [rcx + 0x44]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2e2], dl
.label_179:
	mov	al, byte ptr [rbp - 0x2e2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2e1], al
.label_232:
	mov	al, byte ptr [rbp - 0x2e1]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1de], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1de], 1
	lea	rsi, [rsi]
	je	.label_235
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rcx + 0x44]
	lea	rsi, [rsi]
	jg	.label_259
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x120]
	nop	
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x2e8], eax
	lea	rsi, [rsi]
	call	hash_delete
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2f0], rax
.label_259:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	dword ptr [rcx + 0x44], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1dc], -1
	nop	
	jne	.label_186
	jmp	.label_193
.label_186:
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	hash_delete
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	nop	
	je	.label_207
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e8]
	cmp	rax, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	je	.label_207
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_213
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	recheck
.label_213:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x44], 0xffffffff
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	dword ptr [rbp - 0x2f4], edi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x2f4]
	mov	rsp, rsp
	mov	rsi, rax
	call	close_fd
.label_207:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	hash_insert
	nop	
	cmp	rax, 0
	nop	
	jne	.label_230
	call	xalloc_die
.label_230:
	jmp	.label_235
.label_235:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_244
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x120]
	nop	
	call	recheck
.label_244:
	nop	
	jmp	.label_191
.label_210:
	lea	rax, [rbp - 0x248]
	mov	rcx, qword ptr [rbp - 0x128]
	nop	
	mov	edx, dword ptr [rcx]
	mov	dword ptr [rbp - 0x204], edx
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_lookup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
.label_191:
	nop	
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_251
	jmp	.label_193
.label_251:
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	mov	rsp, rsp
	and	ecx, 0xe04
	nop	
	cmp	ecx, 0
	je	.label_253
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	nop	
	and	ecx, 0x400
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_258
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x120]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2f8], eax
	call	hash_delete
	mov	qword ptr [rbp - 0x300], rax
.label_258:
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	call	recheck
	lea	rsi, [rsi]
	jmp	.label_193
.label_253:
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	call	check_fspec
	jmp	.label_193
.label_188:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x300
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405680

	.globl tail_forever
	.type tail_forever, @function
tail_forever:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x160
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x18], xmm0
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_277
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x119], cl
	lea	rsi, [rsi]
	jne	.label_277
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 1
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_277
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 0x38], -1
	mov	byte ptr [rbp - 0x119], cl
	lea	rsi, [rsi]
	je	.label_277
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0x8000
	sete	dl
	xor	dl, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x119], dl
.label_277:
	mov	al, byte ptr [rbp - 0x119]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
.label_282:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], 0
	mov	qword ptr [rbp - 0x38], 0
.label_291:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_275
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_280
	lea	rsi, [rsi]
	jmp	.label_279
.label_280:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	jge	.label_288
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	and	cl, 1
	nop	
	mov	rdi, rax
	movzx	esi, cl
	nop	
	call	recheck
	jmp	.label_279
.label_288:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x38]
	mov	dword ptr [rbp - 0x40], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	pretty_name
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x40]
	mov	dl, byte ptr [rbp - 0x19]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	cmp	ecx, esi
	je	.label_268
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	rpl_fcntl
	mov	rbp, rbp
	mov	esi, 0x800
	nop	
	xor	edi, edi
	mov	dword ptr [rbp - 0xec], eax
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x19]
	test	cl, 1
	nop	
	cmovne	esi, edi
	lea	rsi, [rsi]
	or	eax, esi
	mov	dword ptr [rbp - 0xf0], eax
	nop	
	cmp	dword ptr [rbp - 0xec], 0
	mov	rbp, rbp
	jl	.label_264
	mov	eax, dword ptr [rbp - 0xf0]
	cmp	eax, dword ptr [rbp - 0xec]
	je	.label_293
	nop	
	mov	esi, 4
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_293
.label_264:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_273
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 1
	lea	rsi, [rsi]
	jne	.label_273
	lea	rsi, [rsi]
	jmp	.label_271
.label_273:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.116
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x128], rax
	nop	
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_271:
	jmp	.label_283
.label_293:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x60
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x40], ecx
.label_283:
	jmp	.label_268
.label_268:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 8]
	nop	
	cmp	dword ptr [rax + 0x40], 0
	jne	.label_276
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 0x40]
	nop	
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_286
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x12c], ecx
	nop	
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x12c]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	mov	dword ptr [rbp - 0x130], eax
	jmp	.label_279
.label_286:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	jne	.label_274
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_290
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	jne	.label_274
.label_290:
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x138], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x100], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	call	timespec_cmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_274
	mov	rax,  qword ptr [word ptr [max_n_unchanged_stats_between_opens]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	qword ptr [rcx + 0x58], rsi
	cmp	rax, rdx
	ja	.label_269
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_269
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + 0x40], 0
	setne	dl
	and	dl, 1
	mov	rbp, rbp
	movzx	esi, dl
	mov	rdi, rax
	nop	
	call	recheck
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x58], 0
.label_269:
	nop	
	jmp	.label_279
.label_274:
	nop	
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x110], rax
	mov	qword ptr [rbp - 0x108], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
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
	nop	
	mov	qword ptr [rax + 0x58], 0
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	nop	
	jne	.label_284
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	imul	rcx, rcx, 0x60
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_284
	movabs	rdi, OFFSET FLAT:.str.115
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	call	xlseek
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0x150], rax
.label_284:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	je	.label_272
	test	byte ptr [byte ptr [print_headers]],  1
	lea	rdi, [rdi]
	je	.label_294
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	write_header
.label_294:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_272:
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x40], 0
	mov	rbp, rbp
	je	.label_278
	mov	qword ptr [rbp - 0x118], -2
	jmp	.label_265
.label_278:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_289
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_289
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	jmp	.label_295
.label_289:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], -1
.label_295:
	jmp	.label_265
.label_265:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	call	dump_remainder
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xe8], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	edx, r8b
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x39]
	and	r8b, 1
	movzx	edi, r8b
	lea	rdi, [rdi]
	or	edi, edx
	mov	rsp, rsp
	cmp	edi, 0
	mov	rsp, rsp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], r8b
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	imul	rcx, rcx, 0x60
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_279:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_291
.label_275:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	any_live_files
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_296
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.101
	mov	rsp, rsp
	call	gettext
	nop	
	xor	ecx, ecx
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	jmp	.label_285
.label_296:
	test	byte ptr [rbp - 0x39], 1
	mov	rsp, rsp
	je	.label_267
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_270
.label_267:
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fflush_unlocked
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_270
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	nop	
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_270:
	lea	rdi, [rdi]
	call	check_output_alive
	mov	rsp, rsp
	test	byte ptr [rbp - 0x39], 1
	nop	
	jne	.label_281
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	je	.label_287
	jmp	.label_285
.label_287:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x155], cl
	je	.label_292
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x155], cl
	je	.label_292
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 1
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x155], cl
.label_292:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x155]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	nop	
	test	byte ptr [rbp - 0x29], 1
	nop	
	jne	.label_266
	movsd	xmm0, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	xnanosleep
	cmp	eax, 0
	nop	
	je	.label_266
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.117
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x15c], esi
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x15c]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_266:
	jmp	.label_281
.label_281:
	jmp	.label_282
.label_285:
	mov	rbp, rbp
	add	rsp, 0x160
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_298
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.83
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_297
.label_298:
	lea	rdi, [rdi]
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
	#Procedure 0x406120

	.globl write_header
	.type write_header, @function
write_header:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.84
	nop	
	movabs	rcx, OFFSET FLAT:.str.85
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	sil,  byte ptr [byte ptr [write_header.first_file]]
	test	sil, 1
	mov	rsp, rsp
	cmovne	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [write_header.first_file]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061a0

	.globl tail
	.type tail, @function
tail:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rcx], 0
	test	byte ptr [byte ptr [count_lines]],  1
	mov	rsp, rsp
	je	.label_299
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	tail_lines
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jmp	.label_300
.label_299:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	tail_bytes
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
.label_300:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl close_fd
	.type close_fd, @function
close_fd:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], -1
	je	.label_301
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	je	.label_301
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_301
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.93
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	r8d, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_301:
	nop	
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406310

	.globl record_open_fd
	.type record_open_fd, @function
record_open_fd:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], r8d
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x38], esi
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
	call	get_stat_mtime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x30], esi
	mov	esi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], esi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 0
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406400

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xb0
	mov	rbp, rbp
	lea	rax, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	fstatfs
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0x94], 0
	lea	rsi, [rsi]
	je	.label_310
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_304
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.94
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_304:
	jmp	.label_309
.label_310:
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	is_local_fs_type
	mov	ecx, eax
	nop	
	sub	eax, -1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_303
	jmp	.label_307
.label_307:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	test	eax, eax
	je	.label_308
	nop	
	jmp	.label_311
.label_311:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_302
	jmp	.label_305
.label_308:
	jmp	.label_306
.label_303:
	lea	rsi, [rsi]
	jmp	.label_306
.label_302:
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	jmp	.label_306
.label_305:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.92
	mov	edx, 0x3c9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.fremote
	mov	rsp, rsp
	call	__assert_fail
.label_306:
	lea	rsi, [rsi]
	jmp	.label_309
.label_309:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0xb0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065a0

	.globl tail_lines
	.type tail_lines, @function
tail_lines:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xf0
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	__fstat
	cmp	eax, 0
	nop	
	je	.label_317
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.86
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe0], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd4]
	nop	
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_314
.label_317:
	test	byte ptr [byte ptr [from_start]],  1
	mov	rbp, rbp
	je	.label_316
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_lines
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	je	.label_312
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	jmp	.label_314
.label_312:
	xor	edi, edi
	mov	rbp, rbp
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x14]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	jmp	.label_313
.label_316:
	nop	
	mov	qword ptr [rbp - 0xc8], -1
	mov	rbp, rbp
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_318
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	nop	
	jne	.label_318
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	call	lseek
	nop	
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_318
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edx, 2
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0xe8], rcx
	call	lseek
	mov	qword ptr [rbp - 0xd0], rax
	mov	rcx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jge	.label_318
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_315
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	file_lines
	test	al, 1
	mov	rsp, rsp
	jne	.label_315
	mov	byte ptr [rbp - 1], 0
	jmp	.label_314
.label_315:
	mov	rbp, rbp
	jmp	.label_319
.label_318:
	cmp	qword ptr [rbp - 0xc8], -1
	lea	rsi, [rsi]
	je	.label_320
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	xlseek
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rax
.label_320:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	pipe_lines
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	jmp	.label_314
.label_319:
	lea	rdi, [rdi]
	jmp	.label_313
.label_313:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
.label_314:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0xf0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406890

	.globl tail_bytes
	.type tail_bytes, @function
tail_bytes:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x100
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, rax
	nop	
	call	__fstat
	cmp	eax, 0
	je	.label_336
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xdc], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_326
.label_336:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_334
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	lea	rsi, [rsi]
	jne	.label_331
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_331
	mov	eax, dword ptr [rbp - 0xa0]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_340
	nop	
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_329
.label_340:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	lseek
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_331
.label_329:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_330
.label_331:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_bytes
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	cmp	dword ptr [rbp - 0xbc], 0
	mov	rsp, rsp
	je	.label_321
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	jmp	.label_326
.label_321:
	jmp	.label_330
.label_330:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], -1
	nop	
	jmp	.label_332
.label_334:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], -1
	mov	qword ptr [rbp - 0xd0], -1
	mov	rsp, rsp
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_323
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_323
	lea	rdi, [rbp - 0xb8]
	call	usable_st_size
	mov	rsp, rsp
	test	al, 1
	jne	.label_325
	jmp	.label_327
.label_325:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_328
.label_327:
	mov	edx, 2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	rsp, rsp
	call	lseek
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	cmp	rax, -1
	nop	
	je	.label_337
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc8], rax
.label_337:
	jmp	.label_328
.label_328:
	nop	
	jmp	.label_323
.label_323:
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rdi, [rdi]
	jge	.label_324
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_324
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_335
.label_324:
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0xf8], rcx
	jmp	.label_335
.label_335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xf0]
	cmp	rcx, rax
	mov	rbp, rbp
	jg	.label_339
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pipe_bytes
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_326
.label_339:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], -1
	mov	rbp, rbp
	jne	.label_333
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	xlseek
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
.label_333:
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	cmp	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	jge	.label_338
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_322
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0x100], rax
.label_322:
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_332:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	dump_remainder
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_326:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x100
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cd0

	.globl start_lines
	.type start_lines, @function
start_lines:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x2060
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_344
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_341
.label_344:
	jmp	.label_343
.label_343:
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	safe_read
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2038], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_348
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_341
.label_348:
	cmp	qword ptr [rbp - 0x2038], -1
	mov	rbp, rbp
	jne	.label_345
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.80
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x204c], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2058], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x204c]
	mov	rdx, qword ptr [rbp - 0x2058]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_341
.label_345:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x2030]
	mov	rcx, rax
	add	rcx, qword ptr [rbp - 0x2038]
	nop	
	mov	qword ptr [rbp - 0x2040], rcx
	mov	rcx, qword ptr [rbp - 0x2038]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rdx], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2048], rax
.label_347:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x2048]
	mov	rbp, rbp
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	memchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2048], rax
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_349
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2048]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2048], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_346
	mov	rax, qword ptr [rbp - 0x2048]
	cmp	rax, qword ptr [rbp - 0x2040]
	jae	.label_342
	nop	
	mov	rdi, qword ptr [rbp - 0x2048]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2040]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	xwrite_stdout
.label_342:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_341
.label_346:
	lea	rdi, [rdi]
	jmp	.label_347
.label_349:
	lea	rdi, [rdi]
	jmp	.label_343
.label_341:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x2060
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f00

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x2060
	mov	rsp, rsp
	mov	al, dil
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
.label_358:
	cmp	qword ptr [rbp - 0x30], 0x2000
	jae	.label_350
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2048], rax
	jmp	.label_355
.label_350:
	mov	eax, 0x2000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2048], rcx
	jmp	.label_355
.label_355:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2048]
	lea	rsi, [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2038], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2038]
	call	safe_read
	mov	qword ptr [rbp - 0x2040], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2040], -1
	jne	.label_354
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	mov	rbp, rbp
	je	.label_360
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.80
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x204c], esi
	call	gettext
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2058], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x204c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2058]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_360:
	nop	
	jmp	.label_353
.label_354:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2040], 0
	mov	rbp, rbp
	jne	.label_357
	jmp	.label_353
.label_357:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 1], 1
	je	.label_356
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	write_header
	mov	byte ptr [rbp - 1], 0
.label_356:
	lea	rdi, [rbp - 0x2030]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2040]
	call	xwrite_stdout
	mov	rsi, qword ptr [rbp - 0x2040]
	add	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	je	.label_351
	nop	
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_359
	cmp	qword ptr [rbp - 0x20], -2
	mov	rbp, rbp
	jne	.label_352
.label_359:
	jmp	.label_353
.label_352:
	jmp	.label_351
.label_351:
	mov	rbp, rbp
	jmp	.label_358
.label_353:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x2060
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407100

	.globl file_lines
	.type file_lines, @function
file_lines:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20a0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2050], rcx
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_361
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_363
.label_361:
	lea	rsi, [rsi]
	mov	eax, 0x2000
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2050]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2048], rdx
	cmp	qword ptr [rbp - 0x2048], 0
	jne	.label_366
	mov	qword ptr [rbp - 0x2048], 0x2000
.label_366:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x2050]
	mov	rsp, rsp
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x2050], rcx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	lea	rsi, [rbp - 0x2040]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2048]
	mov	qword ptr [rbp - 0x2068], rax
	call	safe_read
	mov	qword ptr [rbp - 0x2048], rax
	nop	
	cmp	qword ptr [rbp - 0x2048], -1
	jne	.label_372
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.80
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x206c], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2078], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x206c]
	mov	rdx, qword ptr [rbp - 0x2078]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_363
.label_372:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2048]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2048], 0
	je	.label_367
	mov	rax, qword ptr [rbp - 0x2048]
	sub	rax, 1
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbp + rax - 0x2040]
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	je	.label_367
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_367:
	jmp	.label_362
.label_362:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2048]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2058], rax
.label_368:
	cmp	qword ptr [rbp - 0x2058], 0
	lea	rsi, [rsi]
	je	.label_369
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x2040]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x2058]
	call	memrchr
	mov	qword ptr [rbp - 0x2060], rax
	cmp	qword ptr [rbp - 0x2060], 0
	lea	rsi, [rsi]
	jne	.label_364
	nop	
	jmp	.label_369
.label_364:
	lea	rax, [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2060]
	nop	
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x2058], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	nop	
	jne	.label_371
	nop	
	mov	rax, qword ptr [rbp - 0x2058]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2048]
	lea	rdi, [rdi]
	sub	rcx, 1
	cmp	rax, rcx
	lea	rdi, [rdi]
	je	.label_370
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2060]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x2048]
	mov	rdx, qword ptr [rbp - 0x2058]
	add	rdx, 1
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	xwrite_stdout
.label_370:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2050]
	add	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	call	dump_remainder
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_363
.label_371:
	jmp	.label_368
.label_369:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2050]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jne	.label_373
	nop	
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	xlseek
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2080], rcx
	mov	rcx, r8
	nop	
	mov	qword ptr [rbp - 0x2088], rax
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x2080]
	mov	rbp, rbp
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], rcx
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_363
.label_373:
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2050]
	sub	rax, 0x2000
	mov	qword ptr [rbp - 0x2050], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	lea	rsi, [rsi]
	mov	edx, 0x2000
	lea	rsi, [rbp - 0x2040]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2090], rax
	mov	rsp, rsp
	call	safe_read
	mov	qword ptr [rbp - 0x2048], rax
	cmp	qword ptr [rbp - 0x2048], -1
	jne	.label_365
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2094], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20a0], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2094]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20a0]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_363
.label_365:
	mov	rax, qword ptr [rbp - 0x2050]
	nop	
	add	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2048], 0
	ja	.label_362
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_363:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407590

	.globl xlseek
	.type xlseek, @function
xlseek:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	lseek
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, edx
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jg	.label_374
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x80
	pop	rbp
	ret	
.label_374:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	lea	rsi, [rbp - 0x40]
	nop	
	call	offtostr
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rsi, [rsi]
	je	.label_381
	jmp	.label_376
.label_376:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	sub	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	je	.label_377
	lea	rdi, [rdi]
	jmp	.label_380
.label_380:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x54], eax
	je	.label_378
	jmp	.label_375
.label_381:
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.88
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x58]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	jmp	.label_379
.label_377:
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.89
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	nop	
	call	gettext
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_379
.label_378:
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.90
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_379
.label_375:
	mov	rsp, rsp
	call	abort
.label_379:
	lea	rsi, [rsi]
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4077a0

	.globl pipe_lines
	.type pipe_lines, @function
pipe_lines:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	eax, 0x2018
	mov	rsp, rsp
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	nop	
	mov	byte ptr [rbp - 0x41], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2018
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x2008], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x2010], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_391:
	mov	eax, 0x2000
	mov	rbp, rbp
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	safe_read
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	je	.label_404
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_407
.label_404:
	mov	rbp, rbp
	jmp	.label_384
.label_407:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2008], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2010], 0
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_393:
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x60], rax
	nop	
	cmp	rax, 0
	je	.label_387
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rbp, rbp
	jmp	.label_393
.label_387:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	mov	rbp, rbp
	jae	.label_401
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rax + 0x2000]
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x2008]
	mov	qword ptr [rcx + 0x2008], rax
	jmp	.label_389
.label_401:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x2008]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jbe	.label_386
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x2008]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2010]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_398
.label_386:
	lea	rsi, [rsi]
	mov	eax, 0x2018
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_398:
	lea	rdi, [rdi]
	jmp	.label_389
.label_389:
	jmp	.label_391
.label_384:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], -1
	mov	rbp, rbp
	jne	.label_396
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.80
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	quotearg_style
	nop	
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x41], 0
	lea	rdi, [rdi]
	jmp	.label_390
.label_396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x2000], 0
	lea	rdi, [rdi]
	jne	.label_395
	jmp	.label_390
.label_395:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_399
	mov	rbp, rbp
	jmp	.label_390
.label_399:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	lea	rsi, [rsi]
	cmp	edx, esi
	je	.label_406
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_406:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_405:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_397
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 0x2008]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_405
.label_397:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_382
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_400:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_403
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movsx	esi,  byte ptr [byte ptr [line_end]]
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x68], rax
	nop	
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_385
	mov	rbp, rbp
	jmp	.label_388
.label_385:
	movabs	rdi, OFFSET FLAT:.str.91
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	edx, 0x2e0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.pipe_lines
	call	__assert_fail
.label_388:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_400
.label_403:
	jmp	.label_382
.label_382:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
.label_402:
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_392
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_402
.label_392:
	mov	rsp, rsp
	jmp	.label_390
.label_390:
	mov	rbp, rbp
	jmp	.label_394
.label_394:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_383
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x2010]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_394
.label_383:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407df0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_408
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fwrite_unlocked
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_408
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	clearerr_unlocked
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.87
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	nop	
	movabs	rsi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_408:
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ec0

	.globl start_bytes
	.type start_bytes, @function
start_bytes:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x2050
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
.label_409:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_410
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	call	safe_read
	nop	
	mov	qword ptr [rbp - 0x2038], rax
	nop	
	cmp	qword ptr [rbp - 0x2038], 0
	mov	rbp, rbp
	jne	.label_415
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_413
.label_415:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2038], -1
	mov	rbp, rbp
	jne	.label_416
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2044], esi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2050], rax
	mov	rbp, rbp
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2044]
	nop	
	mov	rdx, qword ptr [rbp - 0x2050]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_413
.label_416:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x2038]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_411
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_414
.label_411:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2038]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2040], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2040], 0
	je	.label_412
	lea	rax, [rbp - 0x2030]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xwrite_stdout
.label_412:
	jmp	.label_410
.label_414:
	mov	rsp, rsp
	jmp	.label_409
.label_410:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_413:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x2050
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408090

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_417
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_417
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	nop	
	jne	.label_417
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_417
.label_417:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408130

	.globl pipe_bytes
	.type pipe_bytes, @function
pipe_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	eax, 0x2010
	mov	rsp, rsp
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	mov	rdi, r8
	lea	rsi, [rsi]
	call	xmalloc
	mov	esi, 0x2010
	mov	edi, esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x2008], 0
	mov	rbp, rbp
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_431:
	mov	eax, 0x2000
	lea	rsi, [rsi]
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_426
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], -1
	lea	rdi, [rdi]
	jne	.label_430
.label_426:
	mov	rsp, rsp
	jmp	.label_434
.label_430:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x2008], 0
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x2000]
	mov	rsp, rsp
	cmp	rax, 0x2000
	lea	rdi, [rdi]
	jae	.label_418
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 0x2000]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	jmp	.label_429
.label_418:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 0x2008], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_428
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_427
.label_428:
	mov	eax, 0x2010
	mov	edi, eax
	call	xmalloc
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_427:
	lea	rsi, [rsi]
	jmp	.label_429
.label_429:
	lea	rdi, [rdi]
	jmp	.label_431
.label_434:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x58], -1
	mov	rbp, rbp
	jne	.label_420
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], 0
	jmp	.label_421
.label_420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jbe	.label_435
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_425
.label_435:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jbe	.label_433
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_432
.label_433:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
.label_432:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rsi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_424:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_419
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x2000]
	mov	rbp, rbp
	call	xwrite_stdout
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_424
.label_419:
	jmp	.label_421
.label_421:
	jmp	.label_423
.label_423:
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_422
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_423
.label_422:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408570

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x368
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rax, rdi
	sub	rdi, 0x2f
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdi
	je	.label_515
	lea	rdi, [rdi]
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x187
	nop	
	mov	qword ptr [rbp - 0x28], rax
	nop	
	je	.label_531
	mov	rbp, rbp
	jmp	.label_587
.label_587:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7c0
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	je	.label_537
	jmp	.label_543
.label_543:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	je	.label_641
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137d
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	je	.label_556
	mov	rsp, rsp
	jmp	.label_561
.label_561:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0x48], rax
	nop	
	je	.label_565
	jmp	.label_572
.label_572:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x138f
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	je	.label_574
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x1cd1
	mov	qword ptr [rbp - 0x58], rax
	je	.label_585
	jmp	.label_588
.label_588:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2468
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	je	.label_611
	lea	rdi, [rdi]
	jmp	.label_593
.label_593:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x68], rax
	je	.label_595
	lea	rsi, [rsi]
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	je	.label_452
	lea	rdi, [rdi]
	jmp	.label_607
.label_607:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x4000
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	je	.label_608
	jmp	.label_619
.label_619:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x4004
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	je	.label_545
	lea	rsi, [rsi]
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	je	.label_629
	lea	rdi, [rdi]
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x4244
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	je	.label_636
	jmp	.label_642
.label_642:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x482b
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	je	.label_643
	lea	rdi, [rdi]
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4858
	mov	qword ptr [rbp - 0xa0], rax
	je	.label_651
	jmp	.label_445
.label_445:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x4d44
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	je	.label_657
	jmp	.label_465
.label_465:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_666
	jmp	.label_671
.label_671:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x517b
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_673
	mov	rsp, rsp
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x564c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	je	.label_436
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_443
	lea	rsi, [rsi]
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6969
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	je	.label_450
	jmp	.label_576
.label_576:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_456
	jmp	.label_460
.label_460:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x72b6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_463
	lea	rsi, [rsi]
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	je	.label_472
	nop	
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	je	.label_479
	mov	rbp, rbp
	jmp	.label_484
.label_484:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa1
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	je	.label_487
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa2
	mov	qword ptr [rbp - 0x100], rax
	je	.label_493
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	je	.label_499
	jmp	.label_504
.label_504:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0xadff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
	je	.label_506
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xef51
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	je	.label_516
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0xef53
	mov	qword ptr [rbp - 0x120], rax
	je	.label_524
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0xf15f
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	je	.label_562
	nop	
	jmp	.label_539
.label_539:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11954
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	lea	rsi, [rsi]
	je	.label_541
	jmp	.label_551
.label_551:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x27e0eb
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	je	.label_495
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x414a53
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x140], rax
	je	.label_563
	jmp	.label_570
.label_570:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc0ffee
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	mov	rsp, rsp
	je	.label_573
	mov	rbp, rbp
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc36400
	mov	qword ptr [rbp - 0x150], rax
	mov	rbp, rbp
	je	.label_586
	nop	
	jmp	.label_618
.label_618:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x1021994
	nop	
	mov	qword ptr [rbp - 0x158], rax
	je	.label_591
	nop	
	jmp	.label_664
.label_664:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1021997
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
	lea	rsi, [rsi]
	je	.label_598
	mov	rbp, rbp
	jmp	.label_603
.label_603:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x1161970
	nop	
	mov	qword ptr [rbp - 0x168], rax
	je	.label_605
	jmp	.label_616
.label_616:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x12fd16d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rax
	je	.label_528
	jmp	.label_579
.label_579:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x12ff7b4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], rax
	nop	
	je	.label_627
	mov	rbp, rbp
	jmp	.label_633
.label_633:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	je	.label_635
	jmp	.label_490
.label_490:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x12ff7b6
	mov	qword ptr [rbp - 0x188], rax
	je	.label_644
	lea	rsi, [rsi]
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], rax
	je	.label_652
	jmp	.label_658
.label_658:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x13111a8
	mov	qword ptr [rbp - 0x198], rax
	lea	rsi, [rsi]
	je	.label_659
	mov	rsp, rsp
	jmp	.label_665
.label_665:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rsp, rsp
	je	.label_667
	nop	
	jmp	.label_676
.label_676:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9041934
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rsp, rsp
	je	.label_677
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x1b0], rax
	lea	rsi, [rsi]
	je	.label_439
	jmp	.label_444
.label_444:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0xbd00bd0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rbp, rbp
	je	.label_446
	lea	rdi, [rdi]
	jmp	.label_451
.label_451:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11307854
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rdi, [rdi]
	je	.label_453
	mov	rbp, rbp
	jmp	.label_459
.label_459:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x13661366
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	lea	rdi, [rdi]
	je	.label_625
	jmp	.label_468
.label_468:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_470
	lea	rdi, [rdi]
	jmp	.label_476
.label_476:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x19800202
	mov	qword ptr [rbp - 0x1d8], rax
	je	.label_679
	jmp	.label_482
.label_482:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rdi, [rdi]
	je	.label_485
	lea	rsi, [rsi]
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x1badface
	mov	qword ptr [rbp - 0x1e8], rax
	je	.label_492
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x1f0], rax
	lea	rdi, [rdi]
	je	.label_500
	lea	rdi, [rdi]
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x1f8], rax
	je	.label_507
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x2bad1dea
	mov	qword ptr [rbp - 0x200], rax
	lea	rdi, [rdi]
	je	.label_514
	nop	
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2fc12fc1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rax
	mov	rbp, rbp
	je	.label_525
	lea	rdi, [rdi]
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x210], rax
	mov	rsp, rsp
	je	.label_535
	nop	
	jmp	.label_615
.label_615:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42465331
	mov	qword ptr [rbp - 0x218], rax
	nop	
	je	.label_542
	jmp	.label_550
.label_550:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42494e4d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x220], rax
	mov	rbp, rbp
	je	.label_552
	jmp	.label_559
.label_559:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x43415d53
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x228], rax
	je	.label_462
	lea	rsi, [rsi]
	jmp	.label_569
.label_569:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x453dcd28
	mov	qword ptr [rbp - 0x230], rax
	je	.label_571
	jmp	.label_549
.label_549:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x45584653
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rsp, rsp
	je	.label_581
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x47504653
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], rax
	mov	rbp, rbp
	je	.label_617
	nop	
	jmp	.label_592
.label_592:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x50495045
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x248], rax
	mov	rsp, rsp
	je	.label_597
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x250], rax
	je	.label_604
	lea	rsi, [rsi]
	jmp	.label_610
.label_610:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x5346314d
	mov	qword ptr [rbp - 0x258], rax
	lea	rdi, [rdi]
	je	.label_614
	jmp	.label_624
.label_624:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x5346414f
	nop	
	mov	qword ptr [rbp - 0x260], rax
	je	.label_626
	mov	rbp, rbp
	jmp	.label_606
.label_606:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x53464846
	mov	qword ptr [rbp - 0x268], rax
	nop	
	je	.label_632
	mov	rbp, rbp
	jmp	.label_637
.label_637:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x270], rax
	je	.label_639
	mov	rbp, rbp
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x278], rax
	nop	
	je	.label_646
	mov	rbp, rbp
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x54190100
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x280], rax
	mov	rsp, rsp
	je	.label_654
	jmp	.label_660
.label_660:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x565a4653
	nop	
	mov	qword ptr [rbp - 0x288], rax
	nop	
	je	.label_661
	lea	rsi, [rsi]
	jmp	.label_668
.label_668:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x58295829
	mov	qword ptr [rbp - 0x290], rax
	lea	rdi, [rdi]
	je	.label_669
	jmp	.label_678
.label_678:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x58465342
	nop	
	mov	qword ptr [rbp - 0x298], rax
	je	.label_680
	jmp	.label_440
.label_440:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_441
	jmp	.label_517
.label_517:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x5dca2df5
	nop	
	mov	qword ptr [rbp - 0x2a8], rax
	nop	
	je	.label_526
	lea	rdi, [rdi]
	jmp	.label_454
.label_454:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x2b0], rax
	nop	
	je	.label_457
	nop	
	jmp	.label_461
.label_461:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6165676c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2b8], rax
	lea	rsi, [rsi]
	je	.label_464
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x2c0], rax
	nop	
	je	.label_473
	jmp	.label_478
.label_478:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62646576
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2c8], rax
	je	.label_480
	jmp	.label_663
.label_663:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x62656570
	nop	
	mov	qword ptr [rbp - 0x2d0], rax
	lea	rdi, [rdi]
	je	.label_486
	jmp	.label_491
.label_491:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x62656572
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2d8], rax
	mov	rbp, rbp
	je	.label_494
	jmp	.label_502
.label_502:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x2e0], rax
	lea	rdi, [rdi]
	je	.label_503
	jmp	.label_508
.label_508:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2e8], rax
	mov	rsp, rsp
	je	.label_509
	jmp	.label_518
.label_518:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x64646178
	mov	qword ptr [rbp - 0x2f0], rax
	mov	rsp, rsp
	je	.label_519
	mov	rsp, rsp
	jmp	.label_527
.label_527:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735543
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2f8], rax
	je	.label_530
	mov	rbp, rbp
	jmp	.label_536
.label_536:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735546
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x300], rax
	je	.label_674
	nop	
	jmp	.label_544
.label_544:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x308], rax
	je	.label_547
	nop	
	jmp	.label_557
.label_557:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x68191122
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x310], rax
	lea	rdi, [rdi]
	je	.label_558
	jmp	.label_567
.label_567:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 0x6b414653
	nop	
	mov	qword ptr [rbp - 0x318], rax
	lea	rsi, [rsi]
	je	.label_568
	mov	rsp, rsp
	jmp	.label_580
.label_580:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 0x6e667364
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x320], rax
	je	.label_582
	lea	rsi, [rsi]
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6e736673
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x328], rax
	je	.label_590
	mov	rsp, rsp
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73636673
	mov	qword ptr [rbp - 0x330], rax
	lea	rsi, [rsi]
	je	.label_596
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x73717368
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x338], rax
	je	.label_601
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73727279
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x340], rax
	lea	rsi, [rsi]
	je	.label_612
	jmp	.label_620
.label_620:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x73757245
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x348], rax
	mov	rbp, rbp
	je	.label_622
	lea	rsi, [rsi]
	jmp	.label_630
.label_630:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7461636f
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x350], rax
	je	.label_623
	lea	rsi, [rsi]
	jmp	.label_638
.label_638:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x74726163
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x358], rax
	mov	rsp, rsp
	je	.label_640
	jmp	.label_647
.label_647:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax, 0x794c7630
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x360], rax
	lea	rdi, [rdi]
	je	.label_648
	jmp	.label_655
.label_655:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x368], rax
	je	.label_656
	nop	
	jmp	.label_575
.label_575:
	lea	rdi, [rdi]
	mov	eax, 0x858458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rdx
	nop	
	je	.label_662
	mov	rbp, rbp
	jmp	.label_672
.label_672:
	mov	eax, 0x9123683e
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x378], rdx
	je	.label_675
	nop	
	jmp	.label_438
.label_438:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x380], rdx
	mov	rbp, rbp
	je	.label_613
	jmp	.label_447
.label_447:
	lea	rdi, [rdi]
	mov	eax, 0xa501fcf5
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x388], rdx
	lea	rsi, [rsi]
	je	.label_448
	mov	rbp, rbp
	jmp	.label_455
.label_455:
	lea	rdi, [rdi]
	mov	eax, 0xaad7aaea
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x390], rdx
	lea	rsi, [rsi]
	je	.label_458
	jmp	.label_466
.label_466:
	mov	rsp, rsp
	mov	eax, 0xabba1974
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x398], rdx
	je	.label_467
	jmp	.label_474
.label_474:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a0], rdx
	je	.label_475
	mov	rbp, rbp
	jmp	.label_496
.label_496:
	nop	
	mov	eax, 0xbeefdead
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3a8], rdx
	je	.label_481
	lea	rdi, [rdi]
	jmp	.label_631
.label_631:
	lea	rsi, [rsi]
	mov	eax, 0xc97e8168
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3b0], rdx
	je	.label_577
	lea	rdi, [rdi]
	jmp	.label_501
.label_501:
	mov	rsp, rsp
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3b8], rdx
	je	.label_483
	jmp	.label_510
.label_510:
	mov	eax, 0xde5e81e4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3c0], rdx
	mov	rsp, rsp
	je	.label_511
	jmp	.label_520
.label_520:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c8], rdx
	je	.label_521
	jmp	.label_546
.label_546:
	mov	eax, 0xf97cff8c
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3d0], rdx
	nop	
	je	.label_533
	jmp	.label_538
.label_538:
	nop	
	mov	eax, 0xf995e849
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3d8], rdx
	je	.label_540
	lea	rdi, [rdi]
	jmp	.label_553
.label_553:
	lea	rdi, [rdi]
	mov	eax, 0xfe534d42
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_555
	jmp	.label_564
.label_564:
	lea	rdi, [rdi]
	mov	eax, 0xff534d42
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e8], rdx
	mov	rbp, rbp
	je	.label_566
	mov	rbp, rbp
	jmp	.label_578
.label_441:
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_457:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_499:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_506:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_626:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_437
.label_677:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_473:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_531:
	nop	
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_625:
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_437
.label_542:
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_480:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_492:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_483:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_552:
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_675:
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_612:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_586:
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_437
.label_495:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_503:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_566:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_437
.label_622:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_437
.label_652:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_486:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_507:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_571:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_519:
	nop	
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_509:
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_641:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_585:
	nop	
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_562:
	nop	
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_511:
	nop	
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_563:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_581:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_443:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_556:
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_437
.label_524:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_437
.label_516:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_521:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_629:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_485:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_674:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_530:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_439:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_605:
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_437
.label_617:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_636:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_437
.label_643:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_651:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_437
.label_573:
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_540:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_613:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_437
.label_453:
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_659:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_514:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_437
.label_472:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_545:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_608:
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_437
.label_537:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_463:
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_535:
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_568:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_577:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_446:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_614:
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_565:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_574:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_611:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_595:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_666:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_679:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_657:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_436:
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_437
.label_450:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_437
.label_582:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_452:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_590:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_639:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_437
.label_487:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_623:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_648:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_458:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_597:
	nop	
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_437
.label_656:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_479:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_464:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_515:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_558:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_662:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_667:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_604:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_437
.label_456:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_547:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_526:
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_596:
	nop	
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_437
.label_533:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_462:
	nop	
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_673:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_555:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_481:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_437
.label_646:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_601:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_494:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_644:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_635:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_591:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_640:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_500:
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_437
.label_470:
	nop	
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_541:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_654:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_493:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_598:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_475:
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_437
.label_448:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_437
.label_661:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_632:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_467:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_627:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_437
.label_680:
	nop	
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_437
.label_528:
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_437
.label_525:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_669:
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_437
.label_578:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_437:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x368
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rsi + 0x44]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dc0

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x44]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e10

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x170
	lea	rdi, [rdi]
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	mov	byte ptr [rbp - 0xa1], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	nop	
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0xa2], cl
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + 0x36]
	mov	rsp, rsp
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa3], cl
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa2], 1
	je	.label_720
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_714
.label_720:
	lea	rdi, [rdi]
	mov	eax, 0x800
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	sil, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	sil, 1
	cmovne	eax, ecx
	or	eax, 0
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	mov	al, 0
	call	open_safer
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], eax
.label_714:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	valid_file_spec
	test	al, 1
	mov	rsp, rsp
	jne	.label_681
	lea	rdi, [rdi]
	jmp	.label_684
.label_681:
	jmp	.label_685
.label_684:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.105
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.92
	lea	rsi, [rsi]
	mov	edx, 0x3df
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	mov	rsp, rsp
	call	__assert_fail
.label_685:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	nop	
	mov	byte ptr [rbp - 0xb5], cl
	mov	rsp, rsp
	je	.label_698
	cmp	dword ptr [rbp - 0xb0], -1
	nop	
	sete	al
	mov	byte ptr [rbp - 0xb5], al
.label_698:
	mov	al, byte ptr [rbp - 0xb5]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_707
	lea	rsi, [rbp - 0xa0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	__lstat
	cmp	eax, 0
	nop	
	jne	.label_707
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_707
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.106
	mov	byte ptr [rbp - 0xa1], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x34], 1
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	jmp	.label_704
.label_707:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xb0], -1
	lea	rdi, [rdi]
	je	.label_690
	lea	rsi, [rbp - 0xa0]
	nop	
	mov	edi, dword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	__fstat
	cmp	eax, 0
	jge	.label_713
.label_690:
	mov	byte ptr [rbp - 0xa1], 0
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x3c], ecx
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x36], 1
	mov	rbp, rbp
	jne	.label_695
	test	byte ptr [rbp - 0xa3], 1
	mov	rsp, rsp
	je	.label_718
	movabs	rdi, OFFSET FLAT:.str.107
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], esi
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc8]
	nop	
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_694
.label_718:
	jmp	.label_694
.label_694:
	nop	
	jmp	.label_696
.label_695:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0xd4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	je	.label_701
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xd8], esi
	mov	rbp, rbp
	call	pretty_name
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, rax
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_701:
	nop	
	jmp	.label_696
.label_696:
	jmp	.label_710
.label_713:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x8000
	je	.label_686
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_686
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0xc000
	je	.label_686
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	nop	
	cmp	eax, 0x2000
	je	.label_686
	xor	eax, eax
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0xa1], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x3c], 0xffffffff
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x36], 0
	mov	rsp, rsp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_691
	cmp	dword ptr [dword ptr [follow_mode]],  1
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd9], al
.label_691:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd9]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x34], al
	test	byte ptr [rbp - 0xa3], 1
	jne	.label_709
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0x3c]
	je	.label_715
.label_709:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.109
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	call	pretty_name
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	test	byte ptr [rsi + 0x34], 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	je	.label_683
	movabs	rdi, OFFSET FLAT:.str.82
	call	gettext
	mov	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	jmp	.label_687
.label_683:
	nop	
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xf8], rax
	nop	
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0xf8]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_715:
	mov	rsp, rsp
	jmp	.label_697
.label_686:
	nop	
	mov	edi, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], edi
	mov	rdi, rax
	lea	rsi, [rsi]
	call	pretty_name
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xfc]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	fremote
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi + 0x35], cl
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_717
	mov	rbp, rbp
	jmp	.label_719
.label_717:
	test	byte ptr [byte ptr [disable_inotify]],  1
	mov	rsp, rsp
	jne	.label_719
	movabs	rdi, OFFSET FLAT:.str.110
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x3c], 0xffffffff
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	call	pretty_name
	mov	rbp, rbp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x10c], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x34], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + 0x35], 1
	nop	
	jmp	.label_700
.label_719:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x3c], 0
.label_700:
	jmp	.label_697
.label_697:
	jmp	.label_710
.label_710:
	mov	rsp, rsp
	jmp	.label_704
.label_704:
	mov	byte ptr [rbp - 0xa9], 0
	test	byte ptr [rbp - 0xa1], 1
	lea	rsi, [rsi]
	jne	.label_712
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x110], edi
	nop	
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x110]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x114], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	pretty_name
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x114]
	nop	
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	nop	
	jmp	.label_682
.label_712:
	cmp	dword ptr [rbp - 0xa8], 0
	nop	
	je	.label_689
	cmp	dword ptr [rbp - 0xa8], 2
	lea	rsi, [rsi]
	je	.label_689
	mov	byte ptr [rbp - 0xa9], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x38], -1
	mov	rbp, rbp
	jne	.label_693
	nop	
	jmp	.label_699
.label_693:
	movabs	rdi, OFFSET FLAT:.str.111
	movabs	rsi, OFFSET FLAT:.str.92
	mov	rsp, rsp
	mov	edx, 0x42c
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	mov	rsp, rsp
	call	__assert_fail
.label_699:
	movabs	rdi, OFFSET FLAT:.str.112
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	call	pretty_name
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, rbp
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	dword ptr [rbp - 0x124], edi
	nop	
	mov	esi, dword ptr [rbp - 0x124]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_703
.label_689:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_716
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.113
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa9], 1
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	call	pretty_name
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0x134], edi
	mov	esi, dword ptr [rbp - 0x134]
	nop	
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_702
.label_716:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_705
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0xa0]
	je	.label_711
.label_705:
	movabs	rdi, OFFSET FLAT:.str.114
	mov	byte ptr [rbp - 0xa9], 1
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x140], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0x144], edi
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x148], edi
	mov	rbp, rbp
	mov	rdi, rcx
	mov	rbp, rbp
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	close_fd
	jmp	.label_706
.label_711:
	mov	edi, dword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rbp - 0x14c], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x14c]
	mov	rsi, rax
	call	close_fd
.label_706:
	jmp	.label_702
.label_702:
	jmp	.label_703
.label_703:
	lea	rsi, [rsi]
	jmp	.label_682
.label_682:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa9], 1
	je	.label_692
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xb0]
	test	byte ptr [rbp - 0xa2], 1
	mov	qword ptr [rbp - 0x158], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x15c], esi
	je	.label_708
	mov	eax, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x160], eax
	nop	
	jmp	.label_688
.label_708:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x160], ecx
.label_688:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x160]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x158]
	nop	
	mov	esi, dword ptr [rbp - 0x15c]
	mov	rbp, rbp
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x164], edi
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	pretty_name
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x164]
	mov	rcx, rax
	call	xlseek
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rax
.label_692:
	add	rsp, 0x170
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a870

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rsi + 0x38], -1
	jne	.label_727
	nop	
	jmp	.label_722
.label_727:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	pretty_name
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	edi, dword ptr [rax + 0x38]
	call	__fstat
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_721
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_722
.label_721:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_723
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jge	.label_723
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.115
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edi, dword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rbp - 0xa8]
	call	xlseek
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	jmp	.label_726
.label_723:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_725
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_725
	lea	rdi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	call	get_stat_mtime
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb0]
	call	timespec_cmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_725
	jmp	.label_722
.label_725:
	jmp	.label_726
.label_726:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [print_headers]],  1
	nop	
	mov	byte ptr [rbp - 0xe1], cl
	mov	rsp, rsp
	je	.label_728
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe1], dl
.label_728:
	mov	al, byte ptr [rbp - 0xe1]
	mov	rcx, -1
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rdx + 0x38]
	and	al, 1
	movzx	edi, al
	lea	rdi, [rdi]
	call	dump_remainder
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_722
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fflush_unlocked
	nop	
	cmp	eax, 0
	je	.label_724
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe8], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
.label_724:
	jmp	.label_722
.label_722:
	lea	rsi, [rsi]
	add	rsp, 0xf0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aba0

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xd
	mov	rbp, rbp
	call	raise
	mov	edi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40abd0

	.globl valid_file_spec
	.type valid_file_spec, @function
valid_file_spec:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x38], -1
	nop	
	sete	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rdi + 0x3c], 0
	sete	al
	and	al, 1
	movzx	edx, al
	xor	ecx, edx
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac20

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	lea	rsi, [rsi]
	je	.label_729
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_729
	nop	
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_734
.label_729:
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_735:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_731
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_736
	nop	
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_734
.label_736:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	mov	rbp, rbp
	jne	.label_730
	mov	rbp, rbp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_730
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_734
.label_730:
	lea	rdi, [rdi]
	jmp	.label_733
.label_733:
	mov	rbp, rbp
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_735
.label_731:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_734:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad20

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xa0
	nop	
	test	byte ptr [byte ptr [monitor_output]],  1
	jne	.label_737
	jmp	.label_738
.label_737:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	nop	
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rbp, rbp
	mov	ecx, 0x10
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	eax, edx
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	nop	
	mov	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	mov	rsp, rsp
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	edi, 2
	nop	
	lea	rsi, [rbp - 0x90]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, 2
	nop	
	mov	qword ptr [rbp - 0x90], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	select
	cmp	eax, 1
	jne	.label_738
	lea	rdi, [rdi]
	call	die_pipe
.label_738:
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ae10

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
	#Procedure 0x40ae30

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
.label_743:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_739
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
	jne	.label_740
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_744
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_746
.label_744:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_749
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_741
.label_749:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_745
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
	je	.label_747
.label_745:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_747:
	lea	rsi, [rsi]
	jmp	.label_741
.label_741:
	mov	rbp, rbp
	jmp	.label_750
.label_750:
	mov	rsp, rsp
	jmp	.label_740
.label_740:
	nop	
	jmp	.label_742
.label_742:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_743
.label_739:
	test	byte ptr [rbp - 0x41], 1
	je	.label_748
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_746
.label_748:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_746:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40afe0

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
	jne	.label_751
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_752
.label_751:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_752:
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
	#Procedure 0x40b0c0

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
.label_755:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_756
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_757
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
	je	.label_754
.label_757:
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
	movabs	rsi, OFFSET FLAT:.str.3_0
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
	jmp	.label_758
.label_754:
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
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_758:
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_755
.label_756:
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
	#Procedure 0x40b270

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
	jl	.label_759
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_760
.label_759:
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
.label_760:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b330
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
.label_763:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_765
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
	jne	.label_762
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_761
.label_762:
	lea	rdi, [rdi]
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_763
.label_765:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_761:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b400

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rsp, rsp
	lea	rax, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	strtod
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x20], xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_769
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	c_strtod
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x38], xmm0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_768
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	movsd	qword ptr [rbp - 0x20], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_767
.label_768:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_767:
	jmp	.label_769
.label_769:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_766
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_766:
	movsd	xmm0, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4f0
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
	#Procedure 0x40b520
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
	#Procedure 0x40b550

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
	je	.label_772
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_774
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_772
.label_774:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_771
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
	jmp	.label_773
.label_771:
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
.label_773:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_772:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_770
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_770:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b680

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
	je	.label_775
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_778
.label_775:
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
.label_778:
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
.label_779:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_780
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_776
	jmp	.label_780
.label_776:
	jmp	.label_777
.label_777:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_779
.label_780:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b770
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
	je	.label_782
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	lea	rdi, [rdi]
	jmp	.label_782
.label_782:
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
	jne	.label_784
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_781
.label_784:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_783
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
.label_783:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_781:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b890

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
.label_791:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_787
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_791
.label_787:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_790:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_785
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_789
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_786
.label_789:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_788
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_788:
	jmp	.label_786
.label_786:
	jmp	.label_792
.label_792:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_790
.label_785:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b960
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
.label_794:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_793
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
.label_793:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_795
	mov	rbp, rbp
	jmp	.label_796
.label_795:
	jmp	.label_797
.label_797:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_794
.label_796:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba20

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
	je	.label_798
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
.label_798:
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
	je	.label_800
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
	ja	.label_801
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
	jmp	.label_799
.label_801:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdx
.label_799:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_800:
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
	#Procedure 0x40bca0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcc0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bce0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd00

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_807:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_802
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_804
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_808:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_803
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_808
.label_803:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_805
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_805:
	jmp	.label_804
.label_804:
	mov	rbp, rbp
	jmp	.label_806
.label_806:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_807
.label_802:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bde0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
.label_809:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_814
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_813
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_810:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_811
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_810
.label_811:
	jmp	.label_813
.label_813:
	jmp	.label_816
.label_816:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_809
.label_814:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_815
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_815
	mov	byte ptr [rbp - 1], 1
	jmp	.label_812
.label_815:
	mov	byte ptr [rbp - 1], 0
.label_812:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf10
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8b, cl
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_1
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movq	xmm0, rdx
	nop	
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_817]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_818]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_819]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c090

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_826
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_824
.label_826:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_823:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_821
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_820
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_820
	mov	rsp, rsp
	jmp	.label_822
.label_820:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_824
.label_822:
	nop	
	jmp	.label_825
.label_825:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_823
.label_821:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_824:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c180

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_827
	call	abort
.label_827:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c210
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_828
	mov	qword ptr [rbp - 8], 0
	jmp	.label_831
.label_828:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_830:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_829
	lea	rsi, [rsi]
	call	abort
.label_829:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_832
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_831
.label_832:
	jmp	.label_833
.label_833:
	nop	
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_830
.label_831:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c2d0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_838:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_836
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_836
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_840
.label_836:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_838
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_837
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_840
.label_837:
	jmp	.label_835
.label_839:
	mov	qword ptr [rbp - 8], 0
.label_840:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c3d0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_844:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_841
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_843
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_842:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_846
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_845
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_848
.label_845:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_842
.label_846:
	lea	rsi, [rsi]
	jmp	.label_843
.label_843:
	jmp	.label_847
.label_847:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_844
.label_841:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_848:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c4e0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_854:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_852
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_849
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_851:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_856
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_850
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_855
.label_850:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_851
.label_856:
	mov	rbp, rbp
	jmp	.label_849
.label_849:
	nop	
	jmp	.label_853
.label_853:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_854
.label_852:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_855:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c5f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_857:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_858
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_857
.label_858:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c660
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [default_tuning]]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_859]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_860]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6b0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_867
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_867:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_869
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_869:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_866
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_862
.label_866:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_864
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_864:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_861
	jmp	.label_863
.label_861:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_865
	mov	rsp, rsp
	jmp	.label_863
.label_865:
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_868
	jmp	.label_863
.label_868:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_862
.label_863:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_862:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c8d0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c920

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c950

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_873
	mov	byte ptr [rbp - 1], 1
	jmp	.label_870
.label_873:
	movss	xmm0,  dword ptr [dword ptr [label_871]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_872
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_874]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_872
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_874]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_872
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_872
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_872
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_874]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_872
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	lea	rsi, [rsi]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	mov	rbp, rbp
	jbe	.label_872
	mov	byte ptr [rbp - 1], 1
	jmp	.label_870
.label_872:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_870:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cac0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_875
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_876]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	nop	
	and	edx, 1
	nop	
	mov	esi, edx
	or	rsi, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm1, rsi
	mov	rsp, rsp
	addss	xmm1, xmm1
	mov	rsp, rsp
	cvtsi2ss	xmm2, rax
	mov	rsp, rsp
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x28], xmm1
	mov	rbp, rbp
	js	.label_877
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_877:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_881
	mov	qword ptr [rbp - 8], 0
	jmp	.label_879
.label_881:
	nop	
	movss	xmm0, dword ptr [rbp - 0x1c]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_880]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_875:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_878
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_879
.label_878:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_879:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc30
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_888:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_887
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_884
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_882:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_885
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_889
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_889:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_882
.label_885:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_886
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_886:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_884:
	jmp	.label_883
.label_883:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_888
.label_887:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cda0

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_892
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_892
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_898:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_901
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_891
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_894:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_896
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_894
.label_896:
	jmp	.label_891
.label_891:
	jmp	.label_903
.label_903:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_898
.label_901:
	jmp	.label_892
.label_892:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_890:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_893
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_899:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_900
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_899
.label_900:
	jmp	.label_902
.label_902:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_890
.label_893:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_895:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_897
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_895
.label_897:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf90

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	jne	.label_904
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_905
.label_904:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_907
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_905
.label_907:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_909
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_905
.label_909:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_908
	lea	rsi, [rsi]
	jmp	.label_912
.label_908:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_905
.label_912:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_910
	mov	rbp, rbp
	jmp	.label_911
.label_910:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_906
.label_911:
	call	abort
.label_906:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 1], 0
.label_905:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d260

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
.label_924:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_915
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_922
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_918:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_914
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_926
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_917
.label_926:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	free_entry
.label_917:
	mov	rbp, rbp
	jmp	.label_913
.label_913:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_918
.label_914:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_921
	jmp	.label_923
.label_921:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_919
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_925
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_916
.label_925:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_920
.label_919:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_920:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_922:
	jmp	.label_923
.label_923:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_924
.label_915:
	mov	byte ptr [rbp - 1], 1
.label_916:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d4f0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_940
	lea	rsi, [rsi]
	call	abort
.label_940:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_945
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_942
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_942:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_935
.label_945:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	lea	rdi, [rdi]
	mov	edi, edx
	and	edi, 1
	lea	rdi, [rdi]
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_927
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_927:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	esi, edx
	and	esi, 1
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rsp, rsp
	or	rdi, rcx
	mov	rbp, rbp
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x64], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	mov	rsp, rsp
	js	.label_938
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x70], xmm0
.label_938:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_934
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, r9
	lea	rdi, [rdi]
	addss	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x71], al
	nop	
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x8c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_930
	movss	xmm0, dword ptr [rbp - 0x8c]
	nop	
	movss	dword ptr [rbp - 0x90], xmm0
.label_930:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	lea	rdi, [rdi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x94], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x98], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_932
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_932:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_931
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_929
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	nop	
	js	.label_937
	movss	xmm0, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_937:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	mov	rbp, rbp
	jmp	.label_944
.label_929:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 1
	mov	esi, edx
	mov	rbp, rbp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	mov	rbp, rbp
	cvtsi2ss	xmm1, rax
	mov	rbp, rbp
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	nop	
	movss	dword ptr [rbp - 0xb4], xmm0
	lea	rdi, [rdi]
	js	.label_939
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xb4], xmm0
.label_939:
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
.label_944:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_876]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_928
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_935
.label_928:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_880]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	nop	
	cmova	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_933
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_935
.label_933:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_943
	call	abort
.label_943:
	jmp	.label_931
.label_931:
	lea	rdi, [rdi]
	jmp	.label_934
.label_934:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_936
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_941
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_935
.label_941:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_935
.label_936:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_935:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dac0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_957
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_952
.label_957:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_950
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_950
	jmp	.label_954
.label_950:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_948
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_946
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_951
.label_946:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_951:
	jmp	.label_948
.label_948:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_952
.label_954:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_953:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_958
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_949
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_949
	lea	rsi, [rsi]
	jmp	.label_955
.label_949:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_956
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free_entry
.label_956:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_952
.label_955:
	mov	rbp, rbp
	jmp	.label_947
.label_947:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_953
.label_958:
	mov	qword ptr [rbp - 8], 0
.label_952:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd00

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_959
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_960
.label_959:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_960:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd80

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], -1
	lea	rdi, [rdi]
	jne	.label_963
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_961
.label_963:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_964
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_962
.label_964:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_962:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_961:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de20

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_970
	mov	qword ptr [rbp - 8], 0
	jmp	.label_976
.label_970:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_969
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	mov	rsp, rsp
	and	edi, 1
	lea	rsi, [rsi]
	mov	r8d, edi
	mov	rbp, rbp
	or	r8, rsi
	mov	rbp, rbp
	cvtsi2ss	xmm0, r8
	mov	rsp, rsp
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_971
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_971:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	lea	rsi, [rsi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rsi, [rsi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x70], xmm2
	lea	rsi, [rsi]
	js	.label_966
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_966:
	movss	xmm0, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_967
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	lea	rdi, [rdi]
	and	r8d, 1
	mov	rsp, rsp
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	mov	rsp, rsp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	nop	
	js	.label_977
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_977:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_974
	movss	xmm0, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xa0], xmm0
.label_974:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_965
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_972
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	mov	rbp, rbp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	nop	
	movss	dword ptr [rbp - 0xa8], xmm0
	lea	rsi, [rsi]
	js	.label_979
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_979:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_968
.label_972:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	nop	
	mov	esi, edx
	mov	rsp, rsp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	lea	rsi, [rsi]
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	nop	
	test	rax, rax
	nop	
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_980
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_980:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xac], xmm0
.label_968:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_880]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_973
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_978:
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_975
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_978
.label_975:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_973:
	lea	rsi, [rsi]
	jmp	.label_965
.label_965:
	jmp	.label_967
.label_967:
	nop	
	jmp	.label_969
.label_969:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_976:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2f0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_981
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0xa
.label_981:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_985:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_983
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
.label_983:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_984
	jmp	.label_982
.label_984:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_985
.label_982:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3a0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
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
	mov	rbp, rbp
	jae	.label_986
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], sil
.label_986:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_989
	jmp	.label_988
.label_989:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_987
.label_988:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e4a0

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x48]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x48], rsi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e4f0

	.globl offtostr
	.type offtostr, @function
offtostr:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_990
	lea	rsi, [rsi]
	jmp	.label_992
.label_992:
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	mov	rsp, rsp
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
	jne	.label_992
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	nop	
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	lea	rdi, [rdi]
	jmp	.label_993
.label_990:
	jmp	.label_991
.label_991:
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cqo	
	mov	rsp, rsp
	idiv	rcx
	mov	rbp, rbp
	add	rdx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], sil
	lea	rdi, [rdi]
	mov	eax, 0xa
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	rax, 0
	jne	.label_991
	lea	rdi, [rdi]
	jmp	.label_993
.label_993:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e640

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0x31069
	mov	rsp, rsp
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_994
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_994
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_996
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_996:
	nop	
	jmp	.label_994
.label_994:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_998
	mov	rax, -0x80000000
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_997
.label_998:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	mov	rbp, rbp
	jge	.label_999
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_995
.label_999:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_997:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e750

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
	jne	.label_1002
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_1002:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1000
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1004
.label_1000:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1004:
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
	jl	.label_1003
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
	jne	.label_1003
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_2
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
	jne	.label_1001
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1001:
	jmp	.label_1003
.label_1003:
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
	#Procedure 0x40e8d0
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
	je	.label_1005
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1006
.label_1005:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1006
.label_1006:
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
	#Procedure 0x40e980
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
	je	.label_1007
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1008
.label_1007:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1008
.label_1008:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9e0
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
	je	.label_1009
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1010
.label_1009:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea40

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
	je	.label_1011
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1012
.label_1011:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1012
.label_1012:
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
	#Procedure 0x40eb40
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
	jne	.label_1013
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1013:
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
	#Procedure 0x40eba0

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
	jne	.label_1014
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1014:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1016
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1015
.label_1016:
	call	abort
.label_1015:
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
	#Procedure 0x40ec40
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
	je	.label_1017
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1018
.label_1017:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1018
.label_1018:
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
	#Procedure 0x40ed40

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
.label_1075:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1136
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1139]]
	jmp	rcx
.label_1632:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1631:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1148
	jmp	.label_1151
.label_1151:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1154
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1154:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1148
.label_1148:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1037
.label_1633:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1037
.label_1634:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1174
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
.label_1174:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1185
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1204:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1188
	jmp	.label_1190
.label_1190:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1192
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1192:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1050
.label_1050:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1204
.label_1188:
	mov	rbp, rbp
	jmp	.label_1185
.label_1185:
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
	jmp	.label_1037
.label_1629:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1628:
	mov	byte ptr [rbp - 0x7b], 1
.label_1630:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1215
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_1215:
	jmp	.label_1199
.label_1199:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1031
	jmp	.label_1019
.label_1019:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1020
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1020:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1031
.label_1031:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_1037
.label_1627:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1037
.label_1136:
	call	abort
.label_1037:
	mov	qword ptr [rbp - 0x58], 0
.label_1141:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1051
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
	jmp	.label_1183
.label_1051:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_1183:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1071
	mov	rbp, rbp
	jmp	.label_1081
.label_1071:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1084
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_1084
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1084
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_1105
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1105
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1111
.label_1105:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1111:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1084
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
	jne	.label_1084
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_1126
	jmp	.label_1056
.label_1126:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_1084:
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
	ja	.label_1131
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1142]]
	nop	
	jmp	rcx
.label_1605:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_1146
	mov	rsp, rsp
	jmp	.label_1150
.label_1150:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1140
	jmp	.label_1056
.label_1140:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1157
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_1157
	nop	
	jmp	.label_1202
.label_1202:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1165
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1165:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1172
.label_1172:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1178
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1178:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1184
.label_1184:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1187
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1187:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1157:
	lea	rsi, [rsi]
	jmp	.label_1195
.label_1195:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1197
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1197:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1201
.label_1201:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1038
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1038
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1038
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1038
	nop	
	jmp	.label_1216
.label_1216:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1217
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1217:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1021
.label_1021:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1027
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1027:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1038
.label_1038:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_1054
.label_1146:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1045
	mov	rbp, rbp
	jmp	.label_1052
.label_1045:
	jmp	.label_1054
.label_1054:
	jmp	.label_1023
.label_1616:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_1055
	mov	rbp, rbp
	jmp	.label_1061
.label_1061:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_1064
	jmp	.label_1072
.label_1055:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1074
	jmp	.label_1056
.label_1074:
	jmp	.label_1079
.label_1064:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1082
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1082
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1082
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
	je	.label_1099
	nop	
	jmp	.label_1107
.label_1107:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_1099
	jmp	.label_1114
.label_1114:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_1099
	jmp	.label_1118
.label_1118:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1099
	jmp	.label_1057
.label_1057:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_1122
	jmp	.label_1099
.label_1099:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1128
	jmp	.label_1056
.label_1128:
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
	jae	.label_1134
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1134:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1147
.label_1147:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1153
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1153:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1160
.label_1160:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1163
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1163:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1171
.label_1171:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1069
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1069:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1181
.label_1122:
	jmp	.label_1181
.label_1181:
	jmp	.label_1082
.label_1082:
	jmp	.label_1079
.label_1072:
	jmp	.label_1079
.label_1079:
	jmp	.label_1023
.label_1606:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1177
.label_1607:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1177
.label_1611:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_1177
.label_1609:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_1166
.label_1612:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_1166
.label_1608:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1166
.label_1610:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1177
.label_1617:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1198
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1203
	nop	
	jmp	.label_1056
.label_1203:
	lea	rsi, [rsi]
	jmp	.label_1092
.label_1198:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1211
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1211
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_1211
	jmp	.label_1092
.label_1211:
	jmp	.label_1166
.label_1166:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_1200
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1200
	jmp	.label_1056
.label_1200:
	mov	rsp, rsp
	jmp	.label_1177
.label_1177:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1219
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1145
.label_1219:
	jmp	.label_1023
.label_1618:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1025
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1028
	jmp	.label_1035
.label_1025:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1028
.label_1035:
	nop	
	jmp	.label_1023
.label_1028:
	jmp	.label_1041
.label_1041:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1042
	lea	rsi, [rsi]
	jmp	.label_1023
.label_1042:
	nop	
	jmp	.label_1049
.label_1049:
	mov	byte ptr [rbp - 0x83], 1
.label_1613:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1053
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1053
	jmp	.label_1056
.label_1053:
	lea	rsi, [rsi]
	jmp	.label_1023
.label_1615:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1060
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1070
	jmp	.label_1056
.label_1070:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1076
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_1076
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1076:
	jmp	.label_1086
.label_1086:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1088
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1088:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1096
.label_1096:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_1206
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1206:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1109
.label_1109:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1112
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1112:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1060:
	lea	rsi, [rsi]
	jmp	.label_1023
.label_1614:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1023
.label_1131:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1123
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
	jmp	.label_1102
.label_1123:
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
	jne	.label_1149
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1149:
	jmp	.label_1161
.label_1161:
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
	jne	.label_1175
	jmp	.label_1110
.label_1175:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1182
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1110
.label_1182:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1186
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1207:
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
	jae	.label_1189
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1189:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1193
	jmp	.label_1205
.label_1193:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1207
.label_1205:
	jmp	.label_1110
.label_1186:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1067
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1067
	mov	qword ptr [rbp - 0xb8], 1
.label_1059:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_1214
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
	jb	.label_1032
	jmp	.label_1029
.label_1029:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1032
	jmp	.label_1039
.label_1039:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_1032
	jmp	.label_1047
.label_1047:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1048
	mov	rsp, rsp
	jmp	.label_1032
.label_1032:
	mov	rsp, rsp
	jmp	.label_1056
.label_1048:
	jmp	.label_1058
.label_1058:
	mov	rsp, rsp
	jmp	.label_1113
.label_1113:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1059
.label_1214:
	mov	rbp, rbp
	jmp	.label_1067
.label_1067:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1073
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1073:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1077
.label_1077:
	lea	rsi, [rsi]
	jmp	.label_1087
.label_1087:
	jmp	.label_1089
.label_1089:
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
	jne	.label_1161
.label_1110:
	jmp	.label_1102
.label_1102:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_1103
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1078
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_1078
.label_1103:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_1080:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_1095
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1095
	jmp	.label_1120
.label_1120:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1121
	jmp	.label_1056
.label_1121:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1125
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1125
	lea	rdi, [rdi]
	jmp	.label_1132
.label_1132:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1135
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1135:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1138
.label_1138:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1143
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1143:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1155
.label_1155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1100
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1100:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1125:
	jmp	.label_1167
.label_1167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1169
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1169:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1176
.label_1176:
	jmp	.label_1179
.label_1179:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1180
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
.label_1180:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1164
.label_1164:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1194
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
.label_1194:
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
	jmp	.label_1162
.label_1095:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_1210
	lea	rdi, [rdi]
	jmp	.label_1127
.label_1127:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1212
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1212:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_1210:
	nop	
	jmp	.label_1162
.label_1162:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
.label_1566:
	mov	rsp, rsp
	ja	.label_1218
	jmp	.label_1022
.label_1218:
	lea	rsi, [rsi]
	jmp	.label_1046
.label_1046:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1026
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1026
	lea	rsi, [rsi]
	jmp	.label_1033
.label_1033:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1036
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1036:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1043
.label_1043:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1173
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1173:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1026:
	nop	
	jmp	.label_1063
.label_1063:
	mov	rsp, rsp
	jmp	.label_1065
.label_1065:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1068
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1068:
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
	jmp	.label_1080
.label_1022:
	mov	rsp, rsp
	jmp	.label_1092
.label_1078:
	lea	rsi, [rsi]
	jmp	.label_1023
.label_1023:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_1097
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1101
.label_1097:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1104
.label_1101:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1104
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
	jne	.label_1034
.label_1104:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_1034
	mov	rsp, rsp
	jmp	.label_1092
.label_1034:
	nop	
	jmp	.label_1145
.label_1145:
	jmp	.label_1156
.label_1156:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_1119
	jmp	.label_1056
.label_1119:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1124
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_1124
	lea	rdi, [rdi]
	jmp	.label_1129
.label_1129:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1133
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1133:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1137
.label_1137:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1106
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1106:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1152
.label_1152:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1158
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1158:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1124:
	jmp	.label_1168
.label_1168:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1170
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1170:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1044
.label_1044:
	nop	
	jmp	.label_1092
.label_1092:
	jmp	.label_1116
.label_1116:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1130
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1130
	lea	rdi, [rdi]
	jmp	.label_1144
.label_1144:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1159
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1159:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1191
.label_1191:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1196
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1196:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1130:
	jmp	.label_1093
.label_1093:
	nop	
	jmp	.label_1208
.label_1208:
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
	jne	.label_1213
	mov	byte ptr [rbp - 0x7e], 0
.label_1213:
	mov	rbp, rbp
	jmp	.label_1052
.label_1052:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1141
.label_1081:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_1024
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_1024
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1024
	nop	
	jmp	.label_1056
.label_1024:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1030
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1030
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1030
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1040
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
	jmp	.label_1062
.label_1040:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1066
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_1066
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1075
.label_1066:
	jmp	.label_1083
.label_1083:
	mov	rbp, rbp
	jmp	.label_1030
.label_1030:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1085
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1085
	mov	rbp, rbp
	jmp	.label_1090
.label_1090:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1091
	lea	rdi, [rdi]
	jmp	.label_1094
.label_1094:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1098
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1098:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1108
.label_1108:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1090
.label_1091:
	jmp	.label_1085
.label_1085:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1117
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1117:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1062
.label_1056:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1115
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1115
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_1115:
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
.label_1062:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x410660
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
	#Procedure 0x4106d0

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
	je	.label_1220
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1221
.label_1220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1221
.label_1221:
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
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1222:
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
	#Procedure 0x4108a0
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
.label_1227:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1226
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
	jmp	.label_1227
.label_1226:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1225
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1223]],  rax
.label_1225:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1224
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1224:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109b0

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
	#Procedure 0x410a00

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
	jge	.label_1233
	call	abort
.label_1233:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1228
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
	jge	.label_1229
	call	xalloc_die
.label_1229:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1230
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1234
.label_1230:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1234:
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
	je	.label_1232
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1223]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1232:
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
.label_1228:
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
	ja	.label_1231
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
	je	.label_1235
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_1235:
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
.label_1231:
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
	#Procedure 0x410d30

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
	#Procedure 0x410d70
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
	#Procedure 0x410da0
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
	#Procedure 0x410de0

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
	#Procedure 0x410e40

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
	jne	.label_1236
	call	abort
.label_1236:
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
	#Procedure 0x410ee0

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
	#Procedure 0x410f50

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
	#Procedure 0x410f90
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
	#Procedure 0x410fd0

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
	#Procedure 0x411080

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
	#Procedure 0x4110c0

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
	#Procedure 0x4110f0
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
	#Procedure 0x411130

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
	#Procedure 0x411220

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
	#Procedure 0x411270

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
	#Procedure 0x411310
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
	#Procedure 0x411360
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
	#Procedure 0x4113c0

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
	#Procedure 0x411400
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
	#Procedure 0x411440

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
	#Procedure 0x411480

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
	#Procedure 0x4114c0

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
	je	.label_1240
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1238
.label_1240:
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
	jne	.label_1239
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1238
.label_1239:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1237
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
	jmp	.label_1238
.label_1237:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1238:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411600

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
.label_1246:
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1247
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1245
.label_1247:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_1241
	lea	rdi, [rdi]
	jmp	.label_1246
.label_1241:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_1244
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1244
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_1248
.label_1244:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1245
.label_1248:
	jmp	.label_1243
.label_1243:
	jmp	.label_1242
.label_1242:
	mov	rsp, rsp
	jmp	.label_1246
.label_1245:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4116f0
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
	#Procedure 0x411710
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
	#Procedure 0x411730
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
	#Procedure 0x411750
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
	#Procedure 0x411770
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
	#Procedure 0x4117a0
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
	#Procedure 0x4117d0

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
	#Procedure 0x411800
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
	#Procedure 0x411840
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
	#Procedure 0x411860

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4118b0

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1252
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1249
.label_1252:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_1253
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1249
.label_1253:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_1250
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_1250
	mov	rbp, rbp
	jmp	.label_1250
.label_1250:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jg	.label_1251
	cmp	qword ptr [rbp - 0x20], 0x77359400
	lea	rsi, [rsi]
	jg	.label_1251
	lea	rdi, [rdi]
	jmp	.label_1251
.label_1251:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
.label_1249:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411980
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_1254
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1256
.label_1254:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	mov	rsp, rsp
	jne	.label_1255
	cmp	qword ptr [rbp - 8], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_1255:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1256:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4119f0
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_1257]]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	mov	rsp, rsp
	movaps	xmm0, xmm1
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411a30

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
	jg	.label_1258
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1258
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
.label_1258:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ac0

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
	je	.label_1259
	movabs	rsi, OFFSET FLAT:.str_8
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
	jmp	.label_1263
.label_1259:
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
.label_1263:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_3
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
	mov	ecx, OFFSET FLAT:.str.3_2
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
	ja	.label_1261
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1262]]
	jmp	rcx
.label_1587:
	jmp	.label_1260
.label_1588:
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
	jmp	.label_1260
.label_1589:
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
	jmp	.label_1260
.label_1590:
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
	jmp	.label_1260
.label_1591:
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
	jmp	.label_1260
.label_1592:
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
	jmp	.label_1260
.label_1593:
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
	jmp	.label_1260
.label_1594:
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
	jmp	.label_1260
.label_1595:
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
	jmp	.label_1260
.label_1596:
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
	jmp	.label_1260
.label_1261:
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
.label_1260:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412230
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
.label_1264:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1265
	mov	rbp, rbp
	jmp	.label_1266
.label_1266:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1264
.label_1265:
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
	#Procedure 0x4122e0

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
.label_1273:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1272
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1268
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
	jmp	.label_1269
.label_1268:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1269:
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
.label_1272:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1271
	mov	rsp, rsp
	jmp	.label_1267
.label_1271:
	jmp	.label_1270
.label_1270:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1273
.label_1267:
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
	#Procedure 0x412440

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
	je	.label_1274
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
.label_1274:
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
	#Procedure 0x4125f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_0
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
	#Procedure 0x4126a0

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
	jae	.label_1275
	mov	rbp, rbp
	call	xalloc_die
.label_1275:
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
	#Procedure 0x412700

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
	jne	.label_1276
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1276
	lea	rdi, [rdi]
	call	xalloc_die
.label_1276:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412760
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
	jae	.label_1277
	mov	rsp, rsp
	call	xalloc_die
.label_1277:
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
	#Procedure 0x4127e0

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
	jne	.label_1278
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1278
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1280
.label_1278:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1279
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1279
	lea	rsi, [rsi]
	call	xalloc_die
.label_1279:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412890

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
	jne	.label_1281
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1283
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
.label_1283:
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
	jae	.label_1285
	call	xalloc_die
.label_1285:
	lea	rsi, [rsi]
	jmp	.label_1284
.label_1281:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1282
	call	xalloc_die
.label_1282:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1284:
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
	#Procedure 0x4129c0

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
	#Procedure 0x4129f0
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
	#Procedure 0x412a30
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
	#Procedure 0x412a80
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
	jb	.label_1286
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1287
.label_1286:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1287:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412af0

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
	#Procedure 0x412b40
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
	#Procedure 0x412ba0

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
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x412c00

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
	#Procedure 0x412c10

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	set_binary_mode
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_1288
	call	xset_binary_mode_error
.label_1288:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c50

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
	jne	.label_1299
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1302
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1292
.label_1302:
	mov	dword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_1297
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_1289
.label_1297:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_1289:
	jmp	.label_1292
.label_1292:
	nop	
	jmp	.label_1296
.label_1299:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1298
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1295
.label_1298:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_1290
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1290:
	jmp	.label_1295
.label_1295:
	jmp	.label_1296
.label_1296:
	nop	
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1291
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1300
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_1293
.label_1300:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1293
.label_1293:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_1301
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1294
.label_1301:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
.label_1294:
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
.label_1291:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412e40

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
	#Procedure 0x412eb0

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x10], xmm0
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	dtotimespec
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], rdx
.label_1307:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_1303
	jmp	.label_1304
.label_1303:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1306
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1306
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1305
.label_1306:
	jmp	.label_1307
.label_1304:
	mov	dword ptr [rbp - 4], 0
.label_1305:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412f60

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	lea	rsi, [rbp - 0x30]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	rax
	nop	
	movsd	qword ptr [rbp - 0x28], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	nop	
	je	.label_1310
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1309
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1309
.label_1310:
	mov	byte ptr [rbp - 0x31], 0
	lea	rsi, [rsi]
	jmp	.label_1312
.label_1309:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x28]
	nop	
	ucomisd	xmm1, xmm0
	jne	.label_1311
	lea	rsi, [rsi]
	jp	.label_1311
	jmp	.label_1308
.label_1311:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x22
	jne	.label_1308
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], 0
.label_1308:
	nop	
	jmp	.label_1312
.label_1312:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1313
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_1313:
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsd	qword ptr [rax], xmm0
	mov	cl, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x413080

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
	jg	.label_1348
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_1348
	jmp	.label_1366
.label_1348:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_9
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_1366:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1379
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_1316
.label_1379:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_1316
.label_1316:
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
.label_1353:
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
	je	.label_1356
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_1353
.label_1356:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1359
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_1328
.label_1359:
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
	jne	.label_1372
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_1315
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1315
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_1315
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1339
.label_1315:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1328
.label_1339:
	lea	rdi, [rdi]
	jmp	.label_1360
.label_1372:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_1349
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_1357
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1328
.label_1357:
	mov	dword ptr [rbp - 0x4c], 1
.label_1349:
	jmp	.label_1360
.label_1360:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1342
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_1328
.label_1342:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1332
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
	jne	.label_1327
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
	jmp	.label_1328
.label_1327:
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
	je	.label_1317
	jmp	.label_1347
.label_1347:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_1317
	nop	
	jmp	.label_1358
.label_1358:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_1317
	nop	
	jmp	.label_1361
.label_1361:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_1317
	lea	rsi, [rsi]
	jmp	.label_1373
.label_1373:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_1317
	jmp	.label_1376
.label_1376:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1317
	jmp	.label_1318
.label_1318:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_1317
	mov	rsp, rsp
	jmp	.label_1329
.label_1329:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1317
	jmp	.label_1338
.label_1338:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_1317
	mov	rsp, rsp
	jmp	.label_1345
.label_1345:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_1317
	jmp	.label_1354
.label_1354:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1351
	jmp	.label_1317
.label_1317:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1320
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
	je	.label_1346
	lea	rsi, [rsi]
	jmp	.label_1378
.label_1378:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1346
	jmp	.label_1368
.label_1368:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_1326
	lea	rsi, [rsi]
	jmp	.label_1333
.label_1333:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_1335
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1335:
	jmp	.label_1326
.label_1346:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1326:
	jmp	.label_1320
.label_1320:
	nop	
	jmp	.label_1351
.label_1351:
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
	je	.label_1352
	jmp	.label_1336
.label_1336:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1364
	jmp	.label_1367
.label_1367:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1325
	jmp	.label_1374
.label_1374:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_1322
	nop	
	jmp	.label_1321
.label_1321:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1324
	nop	
	jmp	.label_1331
.label_1331:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1330
	mov	rsp, rsp
	jmp	.label_1340
.label_1340:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_1341
	jmp	.label_1371
.label_1371:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1314
	mov	rbp, rbp
	jmp	.label_1355
.label_1355:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1362
	jmp	.label_1363
.label_1363:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1365
	jmp	.label_1369
.label_1369:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_1370
	jmp	.label_1375
.label_1375:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_1325
	jmp	.label_1334
.label_1334:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1322
	jmp	.label_1323
.label_1323:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_1324
	jmp	.label_1337
.label_1337:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1341
	jmp	.label_1343
.label_1343:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_1344
	jmp	.label_1350
.label_1365:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1352:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1370:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1319
.label_1364:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1325:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1322:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1324:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1330:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_1319
.label_1341:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_1319
.label_1344:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1314:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1362:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1319
.label_1350:
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
	jmp	.label_1328
.label_1319:
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
	je	.label_1377
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_1377:
	jmp	.label_1332
.label_1332:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_1328:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413970

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
	jae	.label_1380
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1381
.label_1380:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1381:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4139f0

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
.label_1382:
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
	je	.label_1383
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
	jmp	.label_1382
.label_1383:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413a70

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
	je	.label_1413
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
.label_1413:
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
	je	.label_1387
	nop	
	jmp	.label_1397
.label_1397:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1411
	jmp	.label_1402
.label_1387:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1404
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
	jmp	.label_1412
.label_1404:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1412:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1406
.label_1411:
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
	ja	.label_1408
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
	jmp	.label_1390
.label_1408:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1390:
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
	jmp	.label_1406
.label_1402:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_1386
	nop	
	jmp	.label_1391
.label_1391:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_1388
	jmp	.label_1400
.label_1400:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_1386
	nop	
	jmp	.label_1407
.label_1407:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_1388
	nop	
	jmp	.label_1384
.label_1384:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_1386
	lea	rsi, [rsi]
	jmp	.label_1394
.label_1394:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_1386
	lea	rsi, [rsi]
	jmp	.label_1401
.label_1401:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1388
	mov	rsp, rsp
	jmp	.label_1409
.label_1409:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1386
	jmp	.label_1385
.label_1385:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_1388
	lea	rsi, [rsi]
	jmp	.label_1393
.label_1393:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_1386
	jmp	.label_1403
.label_1403:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1388
	mov	rsp, rsp
	jmp	.label_1410
.label_1410:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_1386
	lea	rsi, [rsi]
	jmp	.label_1389
.label_1389:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1386
	nop	
	jmp	.label_1398
.label_1398:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_1399
	lea	rdi, [rdi]
	jmp	.label_1388
.label_1388:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_1392
.label_1386:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_1414
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
	jmp	.label_1395
.label_1414:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_1395:
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
	jmp	.label_1392
.label_1399:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_1396
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
	jmp	.label_1405
.label_1396:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_1405:
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
.label_1392:
	jmp	.label_1406
.label_1406:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140f0

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
	#Procedure 0x414140

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
	jg	.label_1415
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
	jle	.label_1422
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1417
.label_1422:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1419
.label_1417:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_1423
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1423:
	mov	rbp, rbp
	jmp	.label_1419
.label_1419:
	jmp	.label_1420
.label_1415:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1420:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1416
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1416
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1421
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
	jne	.label_1418
.label_1421:
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
.label_1418:
	jmp	.label_1416
.label_1416:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4142c0

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
	jne	.label_1424
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1424:
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
	ja	.label_1425
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1425
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1425
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
	jmp	.label_1426
.label_1425:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1426:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4143b0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	nop	
	jl	.label_1431
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1433
.label_1431:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x16
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1429
.label_1433:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1427:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1428
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rsi, 0x1fa400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1430
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1432
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_1432:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1429
.label_1430:
	nop	
	mov	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jmp	.label_1427
.label_1428:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_1429:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x414510

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
	#Procedure 0x414530

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
	#Procedure 0x414550

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	__gl_setmode_check
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_1434
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1435
.label_1434:
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_1435:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4145b0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414600
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414650
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	shr	edi, cl
	lea	rdi, [rdi]
	or	esi, edi
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146a0
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146e0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	mov	rbp, rbp
	or	rdi, rdx
	mov	rax, rdi
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414740

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	nop	
	mov	rcx, r9
	shl	rdx, cl
	mov	rsp, rsp
	or	rdi, rdx
	mov	rsp, rsp
	mov	rax, rdi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4147a0
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4147f0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rdi, [rdi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sar	esi, cl
	nop	
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	lea	rdi, [rdi]
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414840
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 1]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	nop	
	mov	al, sil
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148a0
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	nop	
	mov	ecx, edi
	shl	edx, cl
	lea	rdi, [rdi]
	or	esi, edx
	lea	rsi, [rsi]
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148f0

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
	jne	.label_1436
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1438
.label_1436:
	mov	rbp, rbp
	jmp	.label_1437
.label_1437:
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
	jne	.label_1440
	jmp	.label_1439
.label_1440:
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
	je	.label_1437
.label_1439:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1438:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4149e0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	call	c_locale
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1443
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1442
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1442:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	mov	rbp, rbp
	jmp	.label_1441
.label_1443:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 8], xmm0
.label_1441:
	movsd	xmm0, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a80

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1444
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	nop	
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_1444:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414ad0

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
	jne	.label_1447
	test	byte ptr [rbp - 0x13], 1
	je	.label_1446
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_1447
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_1446
.label_1447:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_1445
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1445:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1448
.label_1446:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_1448:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414bb0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	movsd	xmm1,  qword ptr [word ptr [label_1449]]
	movsd	qword ptr [rbp - 0x18], xmm0
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	ucomisd	xmm0, xmm1
	mov	rsp, rsp
	ja	.label_1450
	lea	rdi, [rdi]
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_1451
.label_1450:
	movsd	xmm0,  qword ptr [word ptr [label_1453]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_1454
	lea	rdi, [rdi]
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	nop	
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	jmp	.label_1451
.label_1454:
	lea	rsi, [rsi]
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	nop	
	movsd	xmm0,  qword ptr [word ptr [label_1257]]
	cvttsd2si	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	movsd	xmm1, qword ptr [rbp - 0x18]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x28], xmm0
	lea	rsi, [rsi]
	cvttsd2si	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	nop	
	seta	sil
	lea	rsi, [rsi]
	and	sil, 1
	mov	rsp, rsp
	movzx	eax, sil
	nop	
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1452
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1452:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	make_timespec
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
.label_1451:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414d60

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
	je	.label_1456
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_10
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1457
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1455
.label_1457:
	mov	byte ptr [rbp - 5], 0
.label_1455:
	jmp	.label_1456
.label_1456:
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
	#Procedure 0x414e00

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
	jne	.label_1459
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1459:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1458
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1458:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414e80

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
	#Procedure 0x414ec0

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
	jge	.label_1463
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1461
.label_1463:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1460
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
	je	.label_1462
.label_1460:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1462
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1462:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1464
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
.label_1464:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1461:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414fe0

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
	je	.label_1465
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1466
.label_1465:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1467
.label_1466:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1467:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x415050

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
	je	.label_1468
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
.label_1468:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150b0

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
	jne	.label_1469
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1469
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1469
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
	jne	.label_1471
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1470
.label_1471:
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
	jmp	.label_1470
.label_1469:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1470:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4151c0

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
	ja	.label_1472
	jmp	.label_1474
.label_1474:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1473
.label_1472:
	lea	rsi, [rsi]
	jmp	.label_1473
.label_1473:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415220
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
	jmp	.label_1478
.label_1478:
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
	ja	.label_1477
	jmp	.label_1475
.label_1475:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1479
.label_1477:
	mov	byte ptr [rbp - 1], 0
.label_1479:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415290
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
	#Procedure 0x4152e0
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
	#Procedure 0x415310
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
	#Procedure 0x415340
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
	#Procedure 0x415390
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
	#Procedure 0x4153d0
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
	#Procedure 0x415410
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
	#Procedure 0x415450
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
	#Procedure 0x415490
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
	#Procedure 0x415510
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
	jmp	.label_1512
.label_1512:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1513
	jmp	.label_1510
.label_1510:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1511
.label_1513:
	mov	byte ptr [rbp - 1], 0
.label_1511:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415560
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
	#Procedure 0x4155a0
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
	jmp	.label_1520
.label_1520:
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
	ja	.label_1519
	jmp	.label_1517
.label_1517:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1521
.label_1519:
	mov	byte ptr [rbp - 1], 0
.label_1521:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415610

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
	#Procedure 0x415650
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
	#Procedure 0x415740

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x415750

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
