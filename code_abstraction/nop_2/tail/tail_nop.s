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
	mov	dword ptr [rbp - 0x1c], edi
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	je	.label_9
	jmp	.label_8
.label_8:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
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
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	gettext
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x40], eax
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
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x30], eax
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
	mov	dword ptr [rbp - 0x44], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
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
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
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
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	exit
	nop	
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
	nop	word ptr cs:[rax + rax]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x401ed0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x40], rax
.label_12:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rdx], 0
	nop	
	mov	byte ptr [rbp - 1], cl
	je	.label_15
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	nop	
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
.label_15:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_14
	jmp	.label_10
.label_14:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_12
.label_10:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_13
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
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
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	setlocale
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_11
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rbp, rbp
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x1c], eax
.label_11:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.39
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	nop	
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
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
	movsd	xmm0,  qword ptr [word ptr [label_50]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], 0
	mov	dword ptr [rbp - 0x10], edi
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x12c], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
	mov	qword ptr [rbp - 0xf8], 0xa
	movsd	qword ptr [rbp - 0xc8], xmm0
	mov	rsi, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x118], rax
	lea	rsi, [rsi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.15
	mov	qword ptr [rbp - 0x138], rax
	mov	rbp, rbp
	call	textdomain
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	call	atexit
	mov	rbp, rbp
	lea	rdx, [rbp - 0xf8]
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
	mov	edi, dword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	parse_obsolete_option
	lea	rdx, [rbp - 0xf8]
	lea	rcx, [rbp - 0x12c]
	lea	r8, [rbp - 0xc8]
	and	al, 1
	mov	byte ptr [rbp - 0xa], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edi, al
	mov	r9d, dword ptr [rbp - 0x10]
	sub	r9d, edi
	mov	dword ptr [rbp - 0x10], r9d
	nop	
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	edi, al
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	r10, edi
	mov	rbp, rbp
	shl	r10, 3
	lea	rsi, [rsi]
	add	rsi, r10
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	parse_options
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_31
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	je	.label_33
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
.label_33:
	mov	rbp, rbp
	jmp	.label_31
.label_31:
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jge	.label_43
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x110], rcx
	mov	rbp, rbp
	jmp	.label_46
.label_43:
	movabs	rax, OFFSET FLAT:main.dummy_stdin
	mov	qword ptr [rbp - 0xd8], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
.label_46:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe9], 0
	nop	
	mov	qword ptr [rbp - 0x128], 0
.label_41:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	jae	.label_23
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	esi, edx
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_34
	mov	byte ptr [rbp - 0xe9], 1
.label_34:
	mov	rbp, rbp
	jmp	.label_38
.label_38:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	mov	rsp, rsp
	jmp	.label_41
.label_23:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xe9], 1
	mov	rsp, rsp
	je	.label_45
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [follow_mode]],  1
	mov	rsp, rsp
	jne	.label_45
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.17_0
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_45:
	mov	rbp, rbp
	test	byte ptr [byte ptr [forever]],  1
	je	.label_21
	test	byte ptr [rbp - 0xe9], 1
	nop	
	je	.label_21
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc9], cl
	jne	.label_28
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0xc9], cl
	jne	.label_28
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0xc9], cl
	lea	rsi, [rsi]
	jne	.label_28
	xor	edi, edi
	lea	rsi, [rbp - 0x1c8]
	call	__fstat
	lea	rdi, [rdi]
	xor	edi, edi
	mov	cl, dil
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc9], cl
	mov	rsp, rsp
	jne	.label_28
	mov	eax, dword ptr [rbp - 0x1b0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	sete	cl
	nop	
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0xc9], cl
.label_28:
	nop	
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	mov	byte ptr [rbp - 0x1c9], al
	test	byte ptr [rbp - 0x1c9], 1
	lea	rsi, [rsi]
	jne	.label_16
	lea	rsi, [rsi]
	xor	edi, edi
	call	isatty
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_16
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
.label_16:
	jmp	.label_21
.label_21:
	cmp	qword ptr [rbp - 0xf8], 0
	jne	.label_30
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_30
	test	byte ptr [byte ptr [from_start]],  1
	jne	.label_30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x11c], 0
	nop	
	jmp	.label_36
.label_30:
	lea	rdi, [rdi]
	mov	eax, 0x60
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	call	xnmalloc
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	mov	qword ptr [rbp - 0x128], 0
.label_51:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	jae	.label_47
	mov	rax, qword ptr [rbp - 0x128]
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x128]
	nop	
	imul	rcx, rcx, 0x60
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	nop	
	jmp	.label_51
.label_47:
	cmp	dword ptr [rbp - 0x12c], 1
	lea	rsi, [rsi]
	je	.label_20
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x12c], 0
	jne	.label_24
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd8], 1
	mov	rbp, rbp
	jbe	.label_24
.label_20:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [print_headers]],  1
.label_24:
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	nop	
	mov	qword ptr [rbp - 0x128], 0
.label_49:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	jae	.label_35
	mov	rax, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	tail_file
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_49
.label_35:
	mov	rbp, rbp
	test	byte ptr [byte ptr [forever]],  1
	je	.label_18
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	ignore_fifo_and_pipe
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_18
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rbp - 0xb8]
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jge	.label_27
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.20
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x130], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_27:
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x1000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	je	.label_48
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	lea	rsi, [rsi]
	jmp	.label_48
.label_48:
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [monitor_output]],  al
	mov	rbp, rbp
	test	byte ptr [byte ptr [disable_inotify]],  1
	lea	rsi, [rsi]
	jne	.label_29
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	tailable_stdin
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_19
	nop	
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	call	any_remote_file
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_19
	nop	
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	mov	rsi, qword ptr [rbp - 0xd8]
	call	any_non_remote_file
	mov	rbp, rbp
	test	al, 1
	jne	.label_22
	mov	rsp, rsp
	jmp	.label_19
.label_22:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	call	any_symlinks
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_19
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0xd8]
	nop	
	call	any_non_regular_fifo
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_19
	nop	
	test	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jne	.label_29
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_29
.label_19:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [disable_inotify]],  1
.label_29:
	nop	
	test	byte ptr [byte ptr [disable_inotify]],  1
	lea	rdi, [rdi]
	jne	.label_44
	mov	rsp, rsp
	call	inotify_init
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x104], eax
	nop	
	cmp	ecx, dword ptr [rbp - 0x104]
	jg	.label_39
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_42
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	nop	
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_42:
	nop	
	mov	edi, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	call	tail_forever_inotify
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_32
	mov	dword ptr [rbp - 0x11c], 1
	mov	rsp, rsp
	jmp	.label_36
.label_32:
	jmp	.label_39
.label_39:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	qword ptr [rbp - 0x128], 0
.label_40:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_25
	mov	rax, qword ptr [rbp - 0x128]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x44], -1
	lea	rsi, [rsi]
	je	.label_52
	mov	edi, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0xe0]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
.label_52:
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0xe0]
	cmp	dword ptr [rax + 0x48], -1
	je	.label_26
	mov	edi, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x48]
	mov	rsp, rsp
	call	inotify_rm_watch
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
.label_26:
	lea	rsi, [rsi]
	jmp	.label_37
.label_37:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], rax
	nop	
	jmp	.label_40
.label_25:
	lea	rdi, [rdi]
	jmp	.label_44
.label_44:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0xd8]
	movsd	xmm0, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	call	tail_forever
.label_18:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rsi, [rsi]
	je	.label_17
	xor	edi, edi
	mov	rbp, rbp
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_17
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.17_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_17:
	nop	
	mov	eax, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x11c], eax
.label_36:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x11c]
	add	rsp, 0x1d0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b70

	.globl parse_obsolete_option
	.type parse_obsolete_option, @function
parse_obsolete_option:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], edi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	nop	
	mov	dword ptr [rbp - 0x10], 0xa
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6d], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], 0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x78], 2
	je	.label_64
	cmp	dword ptr [rbp - 0x78], 3
	mov	rbp, rbp
	jne	.label_62
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_64
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 1]
	nop	
	cmp	ecx, 0
	je	.label_64
.label_62:
	nop	
	mov	eax, 3
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x78]
	jg	.label_55
	cmp	dword ptr [rbp - 0x78], 4
	jg	.label_55
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.41
	mov	esi, ecx
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_64
.label_55:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x36], 0
	jmp	.label_56
.label_64:
	lea	rdi, [rdi]
	call	posix2_version
	mov	rbp, rbp
	mov	cl, 1
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x60], 0x30db0
	mov	rsp, rsp
	setl	dl
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], dl
	test	byte ptr [rbp - 0x2d], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x35], cl
	jne	.label_67
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x60]
	setle	cl
	nop	
	mov	byte ptr [rbp - 0x35], cl
.label_67:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x35]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x51], al
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rdx, rcx
	inc	rdx
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	movsx	esi, byte ptr [rcx]
	mov	rsp, rsp
	mov	edi, esi
	mov	rsp, rsp
	sub	edi, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], esi
	nop	
	mov	dword ptr [rbp - 0x34], edi
	lea	rdi, [rdi]
	je	.label_57
	mov	rbp, rbp
	jmp	.label_69
.label_69:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	je	.label_71
	jmp	.label_76
.label_76:
	mov	byte ptr [rbp - 0x36], 0
	jmp	.label_56
.label_57:
	nop	
	test	byte ptr [rbp - 0x51], 1
	jne	.label_53
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x36], 0
	mov	rsp, rsp
	jmp	.label_56
.label_53:
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_60
.label_71:
	test	byte ptr [rbp - 0x2d], 1
	jne	.label_61
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x63
	nop	
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rbp, rbp
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	byte ptr [rsi + rax], 0
	mov	rsp, rsp
	jne	.label_61
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x36], 0
	jmp	.label_56
.label_61:
	mov	byte ptr [rbp - 0x19], 0
.label_60:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
.label_58:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	nop	
	ja	.label_72
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_58
.label_72:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x62
	mov	dword ptr [rbp - 0x44], ecx
	mov	dword ptr [rbp - 0x48], edx
	je	.label_65
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x63
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	je	.label_70
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	sub	eax, 0x6c
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_75
	mov	rbp, rbp
	jmp	.label_77
.label_65:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	eax, 9
	nop	
	mov	dword ptr [rbp - 0x10], eax
.label_70:
	mov	byte ptr [rbp - 0x6d], 0
.label_75:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_77:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	mov	rbp, rbp
	jne	.label_66
	mov	byte ptr [rbp - 0x59], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_66:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_73
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x36], 0
	lea	rsi, [rsi]
	jmp	.label_56
.label_73:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_54
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	jmp	.label_59
.label_54:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	xstrtoumax
	mov	rsp, rsp
	and	eax, 0xfffffffd
	cmp	eax, 0
	je	.label_63
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.44
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	call	quote
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_63:
	nop	
	jmp	.label_59
.label_59:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [from_start]],  al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x6d]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [count_lines]],  al
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	mov	byte ptr [byte ptr [forever]],  al
	nop	
	mov	byte ptr [rbp - 0x36], 1
.label_56:
	mov	al, byte ptr [rbp - 0x36]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0

	.globl parse_options
	.type parse_options, @function
parse_options:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0xb0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0xb8], r8
.label_128:
	movabs	rdx, OFFSET FLAT:.str.45
	movabs	rcx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	getopt_long
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	cmp	eax, -1
	je	.label_129
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], ecx
	je	.label_80
	nop	
	jmp	.label_89
.label_89:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	je	.label_90
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	add	eax, -0x30
	lea	rdi, [rdi]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x7c], eax
	jb	.label_101
	lea	rsi, [rsi]
	jmp	.label_104
.label_104:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x46
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	je	.label_105
	jmp	.label_108
.label_108:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x63
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	je	.label_110
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	sub	eax, 0x66
	mov	dword ptr [rbp - 8], eax
	je	.label_98
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_110
	lea	rsi, [rsi]
	jmp	.label_120
.label_120:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_121
	jmp	.label_125
.label_125:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	sub	eax, 0x73
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_118
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x76
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	je	.label_81
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	je	.label_88
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_96
	jmp	.label_102
.label_102:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	je	.label_103
	jmp	.label_115
.label_115:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x82
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	je	.label_107
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	je	.label_112
	jmp	.label_97
.label_97:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	je	.label_98
	lea	rdi, [rdi]
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	sub	eax, 0x85
	nop	
	mov	dword ptr [rbp - 0x60], eax
	je	.label_119
	jmp	.label_122
.label_105:
	mov	byte ptr [byte ptr [forever]],  1
	nop	
	mov	dword ptr [dword ptr [follow_mode]],  1
	nop	
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_82
.label_110:
	cmp	dword ptr [rbp - 0xa8], 0x6e
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
	jne	.label_78
	mov	rsp, rsp
	mov	byte ptr [byte ptr [from_start]],  1
	lea	rsi, [rsi]
	jmp	.label_95
.label_78:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	jne	.label_100
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_100:
	lea	rdi, [rdi]
	jmp	.label_95
.label_95:
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	test	byte ptr [byte ptr [count_lines]],  1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdi
	lea	rsi, [rsi]
	je	.label_92
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_117
.label_92:
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_117:
	mov	rax, qword ptr [rbp - 0x78]
	xor	ecx, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	xor	r9d, r9d
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	jmp	.label_82
.label_98:
	mov	byte ptr [byte ptr [forever]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_86
	mov	dword ptr [dword ptr [follow_mode]],  2
	jmp	.label_93
.label_86:
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
.label_93:
	mov	rbp, rbp
	jmp	.label_82
.label_96:
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_82
.label_103:
	movabs	rdi, OFFSET FLAT:.str.50
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
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
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, rax
	nop	
	call	xdectoumax
	mov	qword ptr [word ptr [max_n_unchanged_stats_between_opens]],  rax
	mov	rsp, rsp
	jmp	.label_82
.label_119:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [disable_inotify]],  1
	mov	rbp, rbp
	jmp	.label_82
.label_107:
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
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
	mov	rdi, qword ptr [rbp - 0x28]
	mov	r8, rax
	lea	rsi, [rsi]
	call	xdectoumax
	lea	rdi, [rdi]
	mov	r9d, eax
	mov	dword ptr [dword ptr [pid]],  r9d
	jmp	.label_82
.label_112:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	mov	rbp, rbp
	jmp	.label_82
.label_121:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax], 2
	lea	rsi, [rsi]
	jmp	.label_82
.label_118:
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	lea	rdx, [rbp - 0x88]
	movabs	rcx, OFFSET FLAT:cl_strtod
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	call	xstrtod
	test	al, 1
	jne	.label_124
	lea	rdi, [rdi]
	jmp	.label_126
.label_124:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	ucomisd	xmm1, xmm0
	jae	.label_127
.label_126:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	call	quote
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_127:
	nop	
	movsd	xmm0, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	movsd	qword ptr [rax], xmm0
	jmp	.label_82
.label_81:
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax], 1
	jmp	.label_82
.label_88:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_82
.label_90:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_80:
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
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp + 0x10], 0
	nop	
	mov	al, 0
	mov	qword ptr [rbp - 0x98], r10
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_101:
	movabs	rdi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	ecx, dword ptr [rbp - 0xa8]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_122:
	nop	
	mov	edi, 1
	call	usage
.label_82:
	lea	rdi, [rdi]
	jmp	.label_128
.label_129:
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	nop	
	je	.label_84
	mov	rbp, rbp
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_113
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
	jmp	.label_83
.label_113:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	rbp, rbp
	jne	.label_123
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_123:
	mov	rsp, rsp
	jmp	.label_83
.label_83:
	mov	rbp, rbp
	jmp	.label_84
.label_84:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_87
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_87
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
	jmp	.label_106
.label_87:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_111
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_111
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	lea	rdi, [rdi]
	jne	.label_111
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
.label_111:
	nop	
	jmp	.label_106
.label_106:
	add	rsp, 0xe0
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403800

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
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
	mov	byte ptr [rbp - 0x12], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	je	.label_143
	xor	eax, eax
	mov	rbp, rbp
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	jmp	.label_146
.label_143:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	al, 0
	call	open_safer
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_146:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x101], cl
	nop	
	je	.label_132
	cmp	dword ptr [rbp - 0xc], -1
	sete	al
	mov	byte ptr [rbp - 0x101], al
.label_132:
	mov	al, byte ptr [rbp - 0x101]
	lea	rdi, [rdi]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x20]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	cmp	dword ptr [rbp - 0xc], -1
	lea	rsi, [rsi]
	jne	.label_141
	test	byte ptr [byte ptr [forever]],  1
	je	.label_145
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x3c], ecx
	lea	rsi, [rsi]
	mov	dl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	dl, 0xff
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0x34], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], 0
.label_145:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.79
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	call	pretty_name
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_135
.label_141:
	test	byte ptr [byte ptr [print_headers]],  1
	nop	
	je	.label_139
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	pretty_name
	lea	rdi, [rdi]
	mov	rdi, rax
	call	write_header
.label_139:
	mov	rdi, qword ptr [rbp - 0x20]
	call	pretty_name
	mov	rbp, rbp
	lea	rcx, [rbp - 0xe8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	call	tail
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	nop	
	test	byte ptr [byte ptr [forever]],  1
	je	.label_130
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc0]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	sub	ecx, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rdx + 0x3c], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	call	__fstat
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	jge	.label_142
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], esi
	mov	rsp, rsp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	call	pretty_name
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_137
.label_142:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_131
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x1000
	je	.label_131
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	and	eax, 0xf000
	nop	
	cmp	eax, 0xc000
	nop	
	je	.label_131
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_131
	movabs	rdi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax + 0x36], 0
	nop	
	mov	cl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	mov	rsp, rsp
	xor	cl, 0xff
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x34], cl
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x100], rax
	call	pretty_name
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	nop	
	call	quotearg_n_style_colon
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	test	byte ptr [rdx + 0x34], 1
	mov	qword ptr [rbp - 8], rax
	je	.label_138
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jmp	.label_136
.label_138:
	nop	
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_136
.label_136:
	nop	
	mov	rax, qword ptr [rbp - 0xe0]
	xor	ecx, ecx
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_131:
	jmp	.label_137
.label_137:
	test	byte ptr [rbp - 0x11], 1
	jne	.label_140
	mov	al,  byte ptr [byte ptr [reopen_inaccessible_files]]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x20]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x34], al
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edi
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	pretty_name
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	close_fd
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_144
.label_140:
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0xc]
	mov	r8, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	r9b, byte ptr [rbp - 0x12]
	test	r9b, 1
	mov	rsp, rsp
	cmovne	eax, edx
	mov	rbp, rbp
	mov	rdx, r8
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0xc4], edi
	mov	rbp, rbp
	mov	rdi, rcx
	call	pretty_name
	nop	
	mov	edi, dword ptr [rbp - 0xc4]
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	fremote
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rcx + 0x35], al
.label_144:
	jmp	.label_133
.label_130:
	nop	
	test	byte ptr [rbp - 0x12], 1
	nop	
	jne	.label_134
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	call	close
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_134
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	byte ptr [rbp - 0x11], 0
.label_134:
	nop	
	jmp	.label_133
.label_133:
	jmp	.label_135
.label_135:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x110
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403de0

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
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
	add	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx]
	mov	eax, OFFSET FLAT:.str.17_0
	mov	esi, eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	mov	cl, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_148
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x30]
	nop	
	test	byte ptr [rdx + 0x34], 1
	nop	
	mov	byte ptr [rbp - 0x21], cl
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
	add	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rdx + 0x38]
	mov	byte ptr [rbp - 0x21], cl
	jg	.label_148
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	and	edx, 0xf000
	lea	rsi, [rsi]
	cmp	edx, 0x1000
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], al
	mov	rbp, rbp
	je	.label_147
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], cl
	jmp	.label_147
.label_147:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 0x21], al
.label_148:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 3], al
	test	byte ptr [rbp - 3], 1
	mov	rbp, rbp
	je	.label_152
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax + 0x38], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x30]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], 0
.label_156:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_158
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x18]
	nop	
	test	byte ptr [rax + 0x34], 1
	lea	rsi, [rsi]
	jne	.label_154
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	esi, ecx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_154
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_155
.label_154:
	mov	rsp, rsp
	jmp	.label_157
.label_157:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_156
.label_158:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
.label_155:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_162:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jae	.label_163
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_159
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rax + 0x35], 1
	je	.label_159
	nop	
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_160
.label_159:
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_162
.label_163:
	mov	byte ptr [rbp - 1], 0
.label_160:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404120

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_164:
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_168
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_166
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x35], 1
	jne	.label_166
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 1
	jmp	.label_167
.label_166:
	jmp	.label_165
.label_165:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_164
.label_168:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
.label_167:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	nop	
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], 0
.label_173:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jae	.label_171
	lea	rsi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	__lstat
	cmp	eax, 0
	jne	.label_170
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	jne	.label_170
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x99], 1
	jmp	.label_172
.label_170:
	jmp	.label_169
.label_169:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_173
.label_171:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x99], 0
.label_172:
	mov	al, byte ptr [rbp - 0x99]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_177:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_178
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x60
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_174
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_174
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x1000
	je	.label_174
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_176
.label_174:
	nop	
	jmp	.label_175
.label_175:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_177
.label_178:
	nop	
	mov	byte ptr [rbp - 0x11], 0
.label_176:
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

	.globl tail_forever_inotify
	.type tail_forever_inotify, @function
tail_forever_inotify:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x310
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	movabs	r8, OFFSET FLAT:wd_hasher
	nop	
	movabs	r9, OFFSET FLAT:wd_comparator
	nop	
	mov	dword ptr [rbp - 0x38], edi
	mov	qword ptr [rbp - 0x230], rsi
	mov	qword ptr [rbp - 0xb0], rdx
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x2f0], xmm0
	mov	dword ptr [rbp - 0x1e4], 3
	mov	byte ptr [rbp - 0x49], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x301], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2d1], 0
	mov	byte ptr [rbp - 0x1f2], 0
	mov	byte ptr [rbp - 0x2e1], 0
	mov	qword ptr [rbp - 0xb8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x2e0], 0
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rdx, r8
	mov	qword ptr [rbp - 0x2c8], rcx
	mov	rsp, rsp
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x2c8]
	call	hash_initialize
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_247
	call	xalloc_die
.label_247:
	mov	dword ptr [rbp - 0x308], 2
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	lea	rsi, [rsi]
	jne	.label_196
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x308]
	mov	rsp, rsp
	or	eax, 0xc04
	nop	
	mov	dword ptr [rbp - 0x308], eax
.label_196:
	mov	qword ptr [rbp - 0x90], 0
.label_246:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	jae	.label_210
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x230]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x34], 1
	jne	.label_213
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_220
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb8], rax
.label_220:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [follow_mode]],  1
	mov	rsp, rsp
	jne	.label_224
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	mov	rdi, qword ptr [rax]
	nop	
	call	dir_len
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x200], rax
	mov	rax, qword ptr [rbp - 0x200]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rdi, rdi, 0x60
	nop	
	add	rdi, qword ptr [rbp - 0x230]
	mov	rdi, qword ptr [rdi]
	mov	cl, byte ptr [rdi + rax]
	mov	byte ptr [rbp - 0x2c9], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x230]
	mov	rdi, qword ptr [rax]
	call	last_component
	mov	rdi, qword ptr [rbp - 0x90]
	imul	rdi, rdi, 0x60
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	sub	rax, rdi
	mov	rdi, qword ptr [rbp - 0x90]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x230]
	mov	qword ptr [rdi + 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x90]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x230]
	mov	rdi, qword ptr [rdi]
	mov	byte ptr [rdi + rax], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x38]
	cmp	qword ptr [rbp - 0x200], 0
	mov	dword ptr [rbp - 0x1d0], edi
	je	.label_251
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x230]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x228], rax
	nop	
	jmp	.label_181
.label_251:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.96
	mov	qword ptr [rbp - 0x228], rax
	lea	rdi, [rdi]
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 0x228]
	mov	edx, 0x784
	mov	edi, dword ptr [rbp - 0x1d0]
	nop	
	mov	rsi, rax
	mov	rbp, rbp
	call	inotify_add_watch
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x230]
	mov	dword ptr [rsi + 0x48], eax
	mov	rsp, rsp
	mov	cl, byte ptr [rbp - 0x2c9]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x200]
	mov	r8, qword ptr [rbp - 0x90]
	imul	r8, r8, 0x60
	add	r8, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	r8, qword ptr [r8]
	mov	byte ptr [r8 + rsi], cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x230]
	cmp	dword ptr [rsi + 0x48], 0
	jge	.label_207
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x1c
	je	.label_221
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.97
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x60
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_242
.label_221:
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
.label_242:
	mov	byte ptr [rbp - 0x2d1], 1
	mov	rbp, rbp
	jmp	.label_210
.label_207:
	mov	rsp, rsp
	jmp	.label_224
.label_224:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x230]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x308]
	call	inotify_add_watch
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x230]
	mov	rsp, rsp
	mov	dword ptr [rsi + 0x44], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x230]
	cmp	dword ptr [rsi + 0x44], 0
	mov	rbp, rbp
	jge	.label_263
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x230]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_190
	mov	byte ptr [rbp - 0x301], 1
.label_190:
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_202
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0xc
	jne	.label_201
.label_202:
	movabs	rdi, OFFSET FLAT:.str.98
	mov	byte ptr [rbp - 0x1f2], 1
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
	jmp	.label_210
.label_201:
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x230]
	cmp	ecx, dword ptr [rax + 0x3c]
	lea	rdi, [rdi]
	je	.label_214
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.99
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1cc], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x230]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x1d8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1cc]
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_214:
	jmp	.label_237
.label_237:
	jmp	.label_183
.label_263:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	mov	rsi, rax
	call	hash_insert
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_241
	call	xalloc_die
.label_241:
	mov	byte ptr [rbp - 0x49], 1
.label_213:
	jmp	.label_183
.label_183:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	jmp	.label_246
.label_210:
	test	byte ptr [rbp - 0x1f2], 1
	jne	.label_248
	test	byte ptr [rbp - 0x2d1], 1
	jne	.label_248
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	rbp, rbp
	jne	.label_257
	test	byte ptr [rbp - 0x301], 1
	je	.label_257
.label_248:
	mov	rdi, qword ptr [rbp - 0x48]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1f1], 1
	jmp	.label_180
.label_257:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [follow_mode]],  2
	lea	rsi, [rsi]
	jne	.label_184
	mov	rsp, rsp
	test	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	jne	.label_184
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f1], 0
	nop	
	jmp	.label_180
.label_184:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	sub	rax, 1
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x90], 0
.label_203:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	test	byte ptr [rax + 0x34], 1
	jne	.label_206
	cmp	dword ptr [dword ptr [follow_mode]],  1
	lea	rdi, [rdi]
	jne	.label_212
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	recheck
	jmp	.label_192
.label_212:
	mov	rax, qword ptr [rbp - 0x90]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x230]
	cmp	dword ptr [rax + 0x38], -1
	lea	rdi, [rdi]
	je	.label_191
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x2c0]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	mov	rdi, qword ptr [rax]
	call	stat
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_229
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x230]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x2c0]
	jne	.label_232
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x230]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	je	.label_229
.label_232:
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.100
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x34], esi
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x90]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x230]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x210], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x210]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	hash_free
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x1f1], 1
	mov	rsp, rsp
	jmp	.label_180
.label_229:
	jmp	.label_191
.label_191:
	mov	rbp, rbp
	jmp	.label_192
.label_192:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x230]
	mov	rdi, rax
	call	check_fspec
.label_206:
	mov	rbp, rbp
	jmp	.label_218
.label_218:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	jmp	.label_203
.label_200:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	call	xmalloc
	mov	qword ptr [rbp - 0x1e0], rax
.label_185:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [follow_mode]],  1
	lea	rdi, [rdi]
	jne	.label_217
	mov	rbp, rbp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jne	.label_217
	mov	rdi, qword ptr [rbp - 0x48]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_217
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
	mov	byte ptr [rbp - 0x1f1], 0
	lea	rdi, [rdi]
	jmp	.label_180
.label_217:
	lea	rsi, [rsi]
	jmp	.label_225
.label_225:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x68]
	ja	.label_194
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_188
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x2e1], 1
	je	.label_239
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_239:
	xor	esi, esi
	nop	
	mov	edi,  dword ptr [dword ptr [pid]]
	nop	
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x302], cl
	je	.label_235
	mov	rsp, rsp
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x302], cl
.label_235:
	mov	al, byte ptr [rbp - 0x302]
	and	al, 1
	mov	byte ptr [rbp - 0x2e1], al
	test	byte ptr [rbp - 0x2e1], 1
	je	.label_250
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jmp	.label_256
.label_250:
	movsd	xmm0,  qword ptr [word ptr [label_261]]
	mov	rsp, rsp
	cvttsd2si	rax, qword ptr [rbp - 0x2f0]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	movsd	xmm1, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	cvtsi2sd	xmm2, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	subsd	xmm1, xmm2
	mov	rsp, rsp
	mulsd	xmm0, xmm1
	lea	rsi, [rsi]
	cvttsd2si	rax, xmm0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_256:
	nop	
	jmp	.label_188
.label_188:
	lea	rsi, [rsi]
	jmp	.label_189
.label_189:
	nop	
	lea	rax, [rbp - 0x1c0]
	mov	ecx, 0x10
	xor	edx, edx
	mov	qword ptr [rbp - 0x1f0], rax
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1f0]
	nop	
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	eax, ecx
	mov	dword ptr [rbp - 0x220], eax
	mov	rbp, rbp
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	mov	rsp, rsp
	mov	eax, ecx
	mov	qword ptr [rbp - 0x218], rdx
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xc4]
	idiv	ecx
	mov	edx, edx
	mov	ecx, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	shl	rsi, cl
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	mov	edi, dword ptr [rbp - 0xc4]
	idiv	edi
	lea	rsi, [rsi]
	movsxd	r8, eax
	or	rsi, qword ptr [rbp + r8*8 - 0x1c0]
	mov	qword ptr [rbp + r8*8 - 0x1c0], rsi
	test	byte ptr [byte ptr [monitor_output]],  1
	je	.label_198
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	or	rax, 2
	nop	
	mov	qword ptr [rbp - 0x1c0], rax
.label_198:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x38], 1
	mov	rsp, rsp
	jle	.label_227
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2f4], eax
	mov	rbp, rbp
	jmp	.label_228
.label_227:
	mov	eax, 1
	mov	dword ptr [rbp - 0x2f4], eax
	mov	rbp, rbp
	jmp	.label_228
.label_228:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2f4]
	nop	
	add	eax, 1
	cmp	dword ptr [dword ptr [pid]],  0
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	je	.label_238
	lea	rax, [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_233
.label_238:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1c0]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x84]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	r8, rax
	lea	rsi, [rsi]
	call	select
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_254
	lea	rdi, [rdi]
	jmp	.label_225
.label_254:
	cmp	dword ptr [rbp - 0x5c], -1
	jne	.label_260
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.102
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x1c4], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_260:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c0]
	and	rax, 2
	mov	rbp, rbp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_222
	call	die_pipe
.label_222:
	mov	rsp, rsp
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	ja	.label_195
	mov	edi, dword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	call	safe_read
	mov	qword ptr [rbp - 0x2e0], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	lea	rsi, [rsi]
	je	.label_204
	nop	
	cmp	qword ptr [rbp - 0x2e0], -1
	mov	rsp, rsp
	jne	.label_211
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x16
	jne	.label_211
.label_204:
	mov	eax, dword ptr [rbp - 0x1e4]
	mov	ecx, eax
	nop	
	add	ecx, -1
	mov	dword ptr [rbp - 0x1e4], ecx
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_211
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2e0], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x1e0]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	xrealloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rsi, [rsi]
	jmp	.label_185
.label_211:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	nop	
	je	.label_230
	cmp	qword ptr [rbp - 0x2e0], -1
	mov	rbp, rbp
	jne	.label_234
.label_230:
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.103
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_234:
	jmp	.label_195
.label_195:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, dword ptr [rax + 0xc]
	mov	eax, ecx
	lea	rdi, [rdi]
	add	rax, 0x10
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_179
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0xc], 0
	jne	.label_179
	nop	
	mov	qword ptr [rbp - 0x90], 0
.label_216:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_186
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x230]
	cmp	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	jne	.label_231
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
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
	mov	byte ptr [rbp - 0x1f1], 1
	jmp	.label_180
.label_231:
	mov	rsp, rsp
	jmp	.label_215
.label_215:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_216
.label_186:
	jmp	.label_179
.label_179:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	dword ptr [rax + 0xc], 0
	lea	rsi, [rsi]
	je	.label_219
	mov	qword ptr [rbp - 0x40], 0
.label_249:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_187
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rax]
	mov	rsp, rsp
	jne	.label_226
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x60
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x50]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_226
	jmp	.label_187
.label_226:
	mov	rsp, rsp
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_249
.label_187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_253
	jmp	.label_185
.label_253:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x230]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c8], 0xffffffff
	mov	rax, qword ptr [rbp - 0xa0]
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
	mov	byte ptr [rbp - 0x19], dl
	test	byte ptr [rbp - 0x19], 1
	jne	.label_259
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x230]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 0x308]
	lea	rsi, [rsi]
	call	inotify_add_watch
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c8], eax
.label_259:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	jne	.label_205
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c8], 0
	jge	.label_205
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x1c
	je	.label_209
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	rsp, rsp
	jne	.label_223
.label_209:
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
	mov	rdi, qword ptr [rbp - 0x48]
	call	hash_free
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x1f1], 1
	nop	
	jmp	.label_180
.label_223:
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.99
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x88], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x230]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x138], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_205
.label_205:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	mov	byte ptr [rbp - 0x139], cl
	mov	rsp, rsp
	jne	.label_240
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	cmp	dword ptr [rcx + 0x44], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xbd], al
	mov	rsp, rsp
	jl	.label_245
	mov	eax, dword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	cmp	eax, dword ptr [rcx + 0x44]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xbd], dl
.label_245:
	mov	al, byte ptr [rbp - 0xbd]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x139], al
.label_240:
	mov	al, byte ptr [rbp - 0x139]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x219], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x219], 1
	lea	rsi, [rsi]
	je	.label_193
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rcx + 0x44]
	lea	rsi, [rsi]
	jg	.label_182
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x2d0], eax
	lea	rsi, [rsi]
	call	hash_delete
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_182:
	nop	
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	dword ptr [rcx + 0x44], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c8], -1
	nop	
	jne	.label_197
	jmp	.label_185
.label_197:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	hash_delete
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x208], rax
	cmp	qword ptr [rbp - 0x208], 0
	nop	
	je	.label_208
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	je	.label_208
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_244
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x208]
	call	recheck
.label_244:
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x44], 0xffffffff
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x208]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x208]
	mov	dword ptr [rbp - 0xbc], edi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xbc]
	mov	rsp, rsp
	mov	rsi, rax
	call	close_fd
.label_208:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	hash_insert
	nop	
	cmp	rax, 0
	nop	
	jne	.label_236
	call	xalloc_die
.label_236:
	jmp	.label_193
.label_193:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_199
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	call	recheck
.label_199:
	nop	
	jmp	.label_243
.label_219:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	edx, dword ptr [rcx]
	mov	dword ptr [rbp - 0xec], edx
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_lookup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_243:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_252
	jmp	.label_185
.label_252:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, dword ptr [rax + 4]
	mov	rsp, rsp
	and	ecx, 0xe04
	nop	
	cmp	ecx, 0
	je	.label_255
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, dword ptr [rax + 4]
	nop	
	and	ecx, 0x400
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_262
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	call	hash_delete
	mov	qword ptr [rbp - 0x300], rax
.label_262:
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	recheck
	lea	rsi, [rsi]
	jmp	.label_185
.label_255:
	lea	rsi, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	check_fspec
	jmp	.label_185
.label_180:
	nop	
	mov	al, byte ptr [rbp - 0x1f1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x310
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl tail_forever
	.type tail_forever, @function
tail_forever:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x170
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x20], xmm0
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x111], cl
	jne	.label_268
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x111], cl
	lea	rsi, [rsi]
	jne	.label_268
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 1
	mov	byte ptr [rbp - 0x111], cl
	jne	.label_268
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rdx + 0x38], -1
	mov	byte ptr [rbp - 0x111], cl
	lea	rsi, [rsi]
	je	.label_268
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0x8000
	sete	dl
	xor	dl, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x111], dl
.label_268:
	mov	al, byte ptr [rbp - 0x111]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x161], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x110], rcx
.label_277:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x151], 0
	mov	qword ptr [rbp - 0xf0], 0
.label_278:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_287
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x34], 1
	je	.label_288
	lea	rsi, [rsi]
	jmp	.label_270
.label_288:
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0x38], 0
	jge	.label_294
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	and	cl, 1
	nop	
	mov	rdi, rax
	movzx	esi, cl
	nop	
	call	recheck
	jmp	.label_270
.label_294:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x38]
	mov	dword ptr [rbp - 0x168], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	pretty_name
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x40]
	mov	dl, byte ptr [rbp - 0xe1]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	cmp	ecx, esi
	je	.label_267
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x168]
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	rpl_fcntl
	mov	rbp, rbp
	mov	esi, 0x800
	nop	
	xor	edi, edi
	mov	dword ptr [rbp - 0xe8], eax
	mov	eax, dword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0xe1]
	test	cl, 1
	nop	
	cmovne	esi, edi
	lea	rsi, [rsi]
	or	eax, esi
	mov	dword ptr [rbp - 0x34], eax
	nop	
	cmp	dword ptr [rbp - 0xe8], 0
	mov	rbp, rbp
	jl	.label_292
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0xe8]
	je	.label_266
	nop	
	mov	esi, 4
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_266
.label_292:
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_274
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 1
	lea	rsi, [rsi]
	jne	.label_274
	lea	rsi, [rsi]
	jmp	.label_285
.label_274:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.116
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x144], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_285:
	jmp	.label_295
.label_266:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, rdx, 0x60
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x40], ecx
.label_295:
	jmp	.label_267
.label_267:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	nop	
	add	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax + 0x40], 0
	jne	.label_265
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 0x168]
	nop	
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_276
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x38], 0xffffffff
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x13c], ecx
	nop	
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	edi, dword ptr [rbp - 0x168]
	call	close
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_270
.label_276:
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	jne	.label_271
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_281
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	jne	.label_271
.label_281:
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x138], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	timespec_cmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_271
	mov	rax,  qword ptr [word ptr [max_n_unchanged_stats_between_opens]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	qword ptr [rcx + 0x58], rsi
	cmp	rax, rdx
	ja	.label_289
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_289
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xf0]
	imul	rcx, rcx, 0x60
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + 0x40], 0
	setne	dl
	and	dl, 1
	mov	rbp, rbp
	movzx	esi, dl
	mov	rdi, rax
	nop	
	call	recheck
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x58], 0
.label_289:
	nop	
	jmp	.label_270
.label_271:
	nop	
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x128], rax
	mov	qword ptr [rbp - 0x120], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rdx + 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 0x58], 0
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	nop	
	jne	.label_264
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xf0]
	nop	
	imul	rcx, rcx, 0x60
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_264
	movabs	rdi, OFFSET FLAT:.str.115
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x150]
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
	mov	edi, dword ptr [rbp - 0x168]
	nop	
	mov	rcx, qword ptr [rbp - 0x100]
	call	xlseek
	mov	rcx, qword ptr [rbp - 0xf0]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0x160], rax
.label_264:
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	je	.label_280
	test	byte ptr [byte ptr [print_headers]],  1
	lea	rdi, [rdi]
	je	.label_296
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	call	write_header
.label_296:
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
.label_280:
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0x40], 0
	mov	rbp, rbp
	je	.label_269
	mov	qword ptr [rbp - 0x130], -2
	jmp	.label_272
.label_269:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_273
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x35], 1
	je	.label_273
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xf0]
	imul	rcx, rcx, 0x60
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	jmp	.label_284
.label_273:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], -1
.label_284:
	jmp	.label_272
.label_272:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	call	dump_remainder
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	edx, r8b
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x151]
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
	mov	byte ptr [rbp - 0x151], r8b
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	imul	rcx, rcx, 0x60
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_270:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	jmp	.label_278
.label_287:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	any_live_files
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_286
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
	jmp	.label_282
.label_286:
	test	byte ptr [rbp - 0x151], 1
	mov	rsp, rsp
	je	.label_290
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe1], 1
	je	.label_293
.label_290:
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fflush_unlocked
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_293
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x140], esi
	call	gettext
	nop	
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x140]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_293:
	lea	rdi, [rdi]
	call	check_output_alive
	mov	rsp, rsp
	test	byte ptr [rbp - 0x151], 1
	nop	
	jne	.label_275
	test	byte ptr [rbp - 0x161], 1
	mov	rbp, rbp
	je	.label_279
	jmp	.label_282
.label_279:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_283
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_283
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 1
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xf1], cl
.label_283:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xf1]
	and	al, 1
	mov	byte ptr [rbp - 0x161], al
	nop	
	test	byte ptr [rbp - 0x161], 1
	nop	
	jne	.label_291
	movsd	xmm0, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	xnanosleep
	cmp	eax, 0
	nop	
	je	.label_291
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.117
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x118], esi
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_291:
	jmp	.label_275
.label_275:
	jmp	.label_277
.label_282:
	mov	rbp, rbp
	add	rsp, 0x170
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 8], rax
	jmp	.label_297
.label_298:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_297:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	sil,  byte ptr [byte ptr [write_header.first_file]]
	test	sil, 1
	mov	rsp, rsp
	cmovne	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [write_header.first_file]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406450

	.globl tail
	.type tail, @function
tail:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx], 0
	test	byte ptr [byte ptr [count_lines]],  1
	mov	rsp, rsp
	je	.label_299
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
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
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406500

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
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_301
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_301
	mov	edi, dword ptr [rbp - 0x14]
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
	mov	dword ptr [rbp - 4], esi
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
	mov	r8d, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 4]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl record_open_fd
	.type record_open_fd, @function
record_open_fd:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x2c], esi
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], r8d
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x2c]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x38], esi
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rcx
	call	get_stat_mtime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x30], esi
	mov	esi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], esi
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x34], 0
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xb0
	mov	rbp, rbp
	lea	rax, [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	fstatfs
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_308
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_311
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.94
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_311:
	jmp	.label_305
.label_308:
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	is_local_fs_type
	mov	ecx, eax
	nop	
	sub	eax, -1
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_309
	jmp	.label_302
.label_302:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	test	eax, eax
	je	.label_304
	nop	
	jmp	.label_306
.label_306:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_307
	jmp	.label_310
.label_304:
	jmp	.label_303
.label_309:
	lea	rsi, [rsi]
	jmp	.label_303
.label_307:
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_303
.label_310:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.92
	mov	edx, 0x3c9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.fremote
	mov	rsp, rsp
	call	__assert_fail
.label_303:
	lea	rsi, [rsi]
	jmp	.label_305
.label_305:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0xb0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406830

	.globl tail_lines
	.type tail_lines, @function
tail_lines:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xe0
	lea	rax, [rbp - 0xb0]
	mov	qword ptr [rbp - 0xd0], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rcx
	mov	edi, dword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	__fstat
	cmp	eax, 0
	nop	
	je	.label_319
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.86
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x19], 0
	lea	rsi, [rsi]
	jmp	.label_316
.label_319:
	test	byte ptr [byte ptr [from_start]],  1
	mov	rbp, rbp
	je	.label_317
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	esi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	start_lines
	nop	
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_314
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	setl	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_316
.label_314:
	xor	edi, edi
	mov	rbp, rbp
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x10]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	jmp	.label_315
.label_317:
	nop	
	mov	qword ptr [rbp - 0xc8], -1
	mov	rbp, rbp
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_312
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x8000
	nop	
	jne	.label_312
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	lseek
	nop	
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_312
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edx, 2
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rcx
	call	lseek
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jge	.label_312
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx], rax
	nop	
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_318
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	esi, dword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	file_lines
	test	al, 1
	mov	rsp, rsp
	jne	.label_318
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_316
.label_318:
	mov	rbp, rbp
	jmp	.label_320
.label_312:
	cmp	qword ptr [rbp - 0xc8], -1
	lea	rsi, [rsi]
	je	.label_313
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	xlseek
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
.label_313:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	pipe_lines
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_316
.label_320:
	lea	rdi, [rdi]
	jmp	.label_315
.label_315:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
.label_316:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b30

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
	lea	rax, [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0xd8], rdx
	mov	qword ptr [rbp - 0xd0], rcx
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, rax
	nop	
	call	__fstat
	cmp	eax, 0
	je	.label_338
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe1], 0
	jmp	.label_332
.label_338:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_340
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	lea	rsi, [rsi]
	jne	.label_336
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	cmp	qword ptr [rbp - 0xd8], rax
	ja	.label_336
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_325
	nop	
	mov	edx, 1
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	xlseek
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_331
.label_325:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xd8]
	nop	
	call	lseek
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_336
.label_331:
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_324
.label_336:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xd0]
	call	start_bytes
	mov	dword ptr [rbp - 4], eax
	nop	
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	je	.label_329
	cmp	dword ptr [rbp - 4], 0
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe1], al
	jmp	.label_332
.label_329:
	jmp	.label_324
.label_324:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], -1
	nop	
	jmp	.label_335
.label_340:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], -1
	mov	qword ptr [rbp - 0xf8], -1
	mov	rsp, rsp
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_321
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0xd8], rax
	ja	.label_321
	lea	rdi, [rbp - 0xc0]
	call	usable_st_size
	mov	rsp, rsp
	test	al, 1
	jne	.label_330
	jmp	.label_334
.label_330:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_328
.label_334:
	mov	edx, 2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0xd8]
	mov	rsi, rcx
	mov	rsp, rsp
	call	lseek
	mov	qword ptr [rbp - 0xf8], rax
	mov	rbp, rbp
	cmp	rax, -1
	nop	
	je	.label_323
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	add	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xf0], rax
.label_323:
	jmp	.label_328
.label_328:
	nop	
	jmp	.label_321
.label_321:
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	cmp	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	jge	.label_333
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x88], rax
	ja	.label_333
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_322
.label_333:
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_322
.label_322:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rcx, rax
	mov	rbp, rbp
	jg	.label_326
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xd0]
	call	pipe_bytes
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xe1], al
	jmp	.label_332
.label_326:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], -1
	mov	rbp, rbp
	jne	.label_339
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	call	xlseek
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
.label_339:
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	cmp	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	jge	.label_327
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	sub	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_337
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	xlseek
	mov	qword ptr [rbp - 0xc8], rax
.label_337:
	jmp	.label_327
.label_327:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_335:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	call	dump_remainder
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xe1], 1
.label_332:
	mov	al, byte ptr [rbp - 0xe1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x100
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406fb0

	.globl start_lines
	.type start_lines, @function
start_lines:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x2050
	nop	
	mov	qword ptr [rbp - 0x2048], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x2018], rdx
	mov	qword ptr [rbp - 0x2028], rcx
	cmp	qword ptr [rbp - 0x2018], 0
	jne	.label_347
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x201c], 0
	jmp	.label_345
.label_347:
	jmp	.label_343
.label_343:
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2010]
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	safe_read
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_344
	mov	dword ptr [rbp - 0x201c], 0xffffffff
	jmp	.label_345
.label_344:
	cmp	qword ptr [rbp - 8], -1
	mov	rbp, rbp
	jne	.label_349
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
	mov	rsi, qword ptr [rbp - 0x2048]
	mov	qword ptr [rbp - 0x2038], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x204c]
	mov	rdx, qword ptr [rbp - 0x2038]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x201c], 1
	lea	rsi, [rsi]
	jmp	.label_345
.label_349:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x2010]
	mov	rcx, rax
	add	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x2040], rcx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2028]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rdx], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2030], rax
.label_342:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x2030]
	mov	rbp, rbp
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2030]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	memchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2030], rax
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_346
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2030]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2030], rax
	mov	rax, qword ptr [rbp - 0x2018]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2018], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_341
	mov	rax, qword ptr [rbp - 0x2030]
	cmp	rax, qword ptr [rbp - 0x2040]
	jae	.label_348
	nop	
	mov	rdi, qword ptr [rbp - 0x2030]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2040]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2030]
	sub	rax, rcx
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	xwrite_stdout
.label_348:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x201c], 0
	jmp	.label_345
.label_341:
	lea	rdi, [rdi]
	jmp	.label_342
.label_346:
	lea	rdi, [rdi]
	jmp	.label_343
.label_345:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x201c]
	nop	
	add	rsp, 0x2050
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407200

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x2050
	mov	rsp, rsp
	mov	al, dil
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x2045], al
	mov	qword ptr [rbp - 0x2038], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2044], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_357:
	cmp	qword ptr [rbp - 0x10], 0x2000
	jae	.label_353
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_355
.label_353:
	mov	eax, 0x2000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_355
.label_355:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x2030]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x2044]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x2050], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2050], -1
	jne	.label_356
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
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2038]
	mov	qword ptr [rbp - 0x2040], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2040]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_360:
	nop	
	jmp	.label_351
.label_356:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2050], 0
	mov	rbp, rbp
	jne	.label_359
	jmp	.label_351
.label_359:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2045], 1
	je	.label_354
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x2038]
	call	write_header
	mov	byte ptr [rbp - 0x2045], 0
.label_354:
	lea	rdi, [rbp - 0x2030]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2050]
	call	xwrite_stdout
	mov	rsi, qword ptr [rbp - 0x2050]
	add	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], -1
	lea	rsi, [rsi]
	je	.label_352
	nop	
	mov	rax, qword ptr [rbp - 0x2050]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_358
	cmp	qword ptr [rbp - 0x28], -2
	mov	rbp, rbp
	jne	.label_350
.label_358:
	jmp	.label_351
.label_350:
	jmp	.label_352
.label_352:
	mov	rbp, rbp
	jmp	.label_357
.label_351:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x2050
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407400

	.globl file_lines
	.type file_lines, @function
file_lines:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20a0
	mov	qword ptr [rbp - 0x2078], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2034], esi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x2098], rcx
	mov	qword ptr [rbp - 0x2090], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2040], r9
	mov	rcx, qword ptr [rbp - 0x2090]
	mov	qword ptr [rbp - 0x2050], rcx
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_361
	mov	byte ptr [rbp - 0x2051], 1
	nop	
	jmp	.label_365
.label_361:
	lea	rsi, [rsi]
	mov	eax, 0x2000
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2050]
	sub	rdx, qword ptr [rbp - 0x2098]
	mov	rax, rdx
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2088], rdx
	cmp	qword ptr [rbp - 0x2088], 0
	jne	.label_368
	mov	qword ptr [rbp - 0x2088], 0x2000
.label_368:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2088]
	mov	rcx, qword ptr [rbp - 0x2050]
	mov	rsp, rsp
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x2050], rcx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x2034]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x2078]
	call	xlseek
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x2034]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2088]
	mov	qword ptr [rbp - 0x28], rax
	call	safe_read
	mov	qword ptr [rbp - 0x2088], rax
	nop	
	cmp	qword ptr [rbp - 0x2088], -1
	jne	.label_364
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.80
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2064], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2078]
	mov	qword ptr [rbp - 8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2064]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2051], 0
	jmp	.label_365
.label_364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2088]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2040]
	nop	
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2088], 0
	je	.label_363
	mov	rax, qword ptr [rbp - 0x2088]
	sub	rax, 1
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbp + rax - 0x2030]
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	je	.label_363
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_363:
	jmp	.label_367
.label_367:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2088]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20a0], rax
.label_373:
	cmp	qword ptr [rbp - 0x20a0], 0
	lea	rsi, [rsi]
	je	.label_362
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x2030]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x20a0]
	call	memrchr
	mov	qword ptr [rbp - 0x2080], rax
	cmp	qword ptr [rbp - 0x2080], 0
	lea	rsi, [rsi]
	jne	.label_369
	nop	
	jmp	.label_362
.label_369:
	lea	rax, [rbp - 0x2030]
	mov	rcx, qword ptr [rbp - 0x2080]
	nop	
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x20a0], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	nop	
	jne	.label_370
	nop	
	mov	rax, qword ptr [rbp - 0x20a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2088]
	lea	rdi, [rdi]
	sub	rcx, 1
	cmp	rax, rcx
	lea	rdi, [rdi]
	je	.label_366
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2080]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x2088]
	mov	rdx, qword ptr [rbp - 0x20a0]
	add	rdx, 1
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	xwrite_stdout
.label_366:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x2078]
	mov	edx, dword ptr [rbp - 0x2034]
	mov	rax, qword ptr [rbp - 0x2090]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2050]
	add	rcx, qword ptr [rbp - 0x2088]
	sub	rax, rcx
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	call	dump_remainder
	nop	
	mov	rcx, qword ptr [rbp - 0x2040]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0x2051], 1
	nop	
	jmp	.label_365
.label_370:
	jmp	.label_373
.label_362:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2050]
	cmp	rax, qword ptr [rbp - 0x2098]
	lea	rdi, [rdi]
	jne	.label_372
	nop	
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x2034]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2098]
	nop	
	mov	rcx, qword ptr [rbp - 0x2078]
	lea	rsi, [rsi]
	call	xlseek
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2098]
	nop	
	mov	rsi, qword ptr [rbp - 0x2078]
	nop	
	mov	edx, dword ptr [rbp - 0x2034]
	mov	r8, qword ptr [rbp - 0x2090]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, r8
	nop	
	mov	qword ptr [rbp - 0x2048], rax
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x2040]
	mov	qword ptr [rax], rcx
	mov	byte ptr [rbp - 0x2051], 1
	nop	
	jmp	.label_365
.label_372:
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2050]
	sub	rax, 0x2000
	mov	qword ptr [rbp - 0x2050], rax
	mov	edi, dword ptr [rbp - 0x2034]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x2078]
	call	xlseek
	lea	rsi, [rsi]
	mov	edx, 0x2000
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x2034]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2060], rax
	mov	rsp, rsp
	call	safe_read
	mov	qword ptr [rbp - 0x2088], rax
	cmp	qword ptr [rbp - 0x2088], -1
	jne	.label_371
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2078]
	mov	qword ptr [rbp - 0x2070], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2070]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x2051], 0
	mov	rsp, rsp
	jmp	.label_365
.label_371:
	mov	rax, qword ptr [rbp - 0x2050]
	nop	
	add	rax, qword ptr [rbp - 0x2088]
	mov	rcx, qword ptr [rbp - 0x2040]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2088], 0
	ja	.label_367
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2051], 1
.label_365:
	nop	
	mov	al, byte ptr [rbp - 0x2051]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20a0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078f0

	.globl xlseek
	.type xlseek, @function
xlseek:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rsi
	mov	dword ptr [rbp - 0x60], edx
	mov	qword ptr [rbp - 0x70], rcx
	mov	edi, dword ptr [rbp - 0x7c]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x60]
	call	lseek
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, edx
	nop	
	mov	qword ptr [rbp - 0x78], rax
	cmp	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	jg	.label_376
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rsp, 0x80
	pop	rbp
	ret	
.label_376:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	lea	rsi, [rbp - 0x20]
	nop	
	call	offtostr
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x50], ecx
	lea	rsi, [rsi]
	je	.label_377
	jmp	.label_379
.label_379:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_381
	lea	rdi, [rdi]
	jmp	.label_380
.label_380:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 2
	mov	dword ptr [rbp - 0x28], eax
	je	.label_375
	jmp	.label_378
.label_377:
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.88
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x24]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	jmp	.label_374
.label_381:
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.89
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	nop	
	call	gettext
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_374
.label_375:
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.90
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_374
.label_378:
	mov	rsp, rsp
	call	abort
.label_374:
	lea	rsi, [rsi]
	mov	edi, 1
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b00

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
	mov	qword ptr [rbp - 0x70], rdi
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], 0
	nop	
	mov	byte ptr [rbp - 0x59], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2018
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
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
	mov	qword ptr [rbp - 0x20], rax
.label_391:
	mov	eax, 0x2000
	mov	rbp, rbp
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	safe_read
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	je	.label_396
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], -1
	lea	rdi, [rdi]
	jne	.label_405
.label_396:
	mov	rbp, rbp
	jmp	.label_406
.label_405:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x2008], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x2010], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_390:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	rax, 0
	je	.label_386
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rbp, rbp
	jmp	.label_390
.label_386:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	mov	rbp, rbp
	jae	.label_402
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rax + 0x2000]
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x2008]
	mov	qword ptr [rcx + 0x2008], rax
	jmp	.label_388
.label_402:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x2008]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jbe	.label_385
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x2008]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2010]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_397
.label_385:
	lea	rsi, [rsi]
	mov	eax, 0x2018
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
.label_397:
	lea	rdi, [rdi]
	jmp	.label_388
.label_388:
	jmp	.label_391
.label_406:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], -1
	mov	rbp, rbp
	jne	.label_394
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.80
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	quotearg_style
	nop	
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x59], 0
	lea	rdi, [rdi]
	jmp	.label_389
.label_394:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x2000], 0
	lea	rdi, [rdi]
	jne	.label_393
	jmp	.label_389
.label_393:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_399
	mov	rbp, rbp
	jmp	.label_389
.label_399:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	lea	rsi, [rsi]
	cmp	edx, esi
	je	.label_404
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_404:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_403:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_395
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x2008]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_403
.label_395:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x2000]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_384
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
.label_400:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_398
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	esi,  byte ptr [byte ptr [line_end]]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_382
	mov	rbp, rbp
	jmp	.label_387
.label_382:
	movabs	rdi, OFFSET FLAT:.str.91
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	edx, 0x2e0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.pipe_lines
	call	__assert_fail
.label_387:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_400
.label_398:
	jmp	.label_384
.label_384:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x20], rax
.label_401:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_383
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x2010]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_401
.label_383:
	mov	rsp, rsp
	jmp	.label_389
.label_389:
	mov	rbp, rbp
	jmp	.label_392
.label_392:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_407
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x2010]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_392
.label_407:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408150

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_408
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fwrite_unlocked
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	nop	
	movabs	rsi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_408:
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408220

	.globl start_bytes
	.type start_bytes, @function
start_bytes:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x2050
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2018], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2034], esi
	mov	qword ptr [rbp - 0x2040], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2008], rcx
.label_412:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x2040]
	jae	.label_413
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2000]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x2034]
	lea	rdi, [rdi]
	call	safe_read
	nop	
	mov	qword ptr [rbp - 0x2028], rax
	nop	
	cmp	qword ptr [rbp - 0x2028], 0
	mov	rbp, rbp
	jne	.label_411
	mov	dword ptr [rbp - 0x201c], 0xffffffff
	jmp	.label_410
.label_411:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2028], -1
	mov	rbp, rbp
	jne	.label_414
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
	mov	rsi, qword ptr [rbp - 0x2018]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2030], rax
	mov	rbp, rbp
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2044]
	nop	
	mov	rdx, qword ptr [rbp - 0x2030]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x201c], 1
	jmp	.label_410
.label_414:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2028]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2008]
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x2028]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2040]
	nop	
	ja	.label_409
	mov	rax, qword ptr [rbp - 0x2028]
	mov	rcx, qword ptr [rbp - 0x2040]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2040], rcx
	jmp	.label_415
.label_409:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2028]
	sub	rax, qword ptr [rbp - 0x2040]
	mov	qword ptr [rbp - 0x2010], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2010], 0
	je	.label_416
	lea	rax, [rbp - 0x2000]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x2040]
	mov	rsi, qword ptr [rbp - 0x2010]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xwrite_stdout
.label_416:
	jmp	.label_413
.label_415:
	mov	rsp, rsp
	jmp	.label_412
.label_413:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x201c], 0
.label_410:
	mov	eax, dword ptr [rbp - 0x201c]
	mov	rsp, rsp
	add	rsp, 0x2050
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 1], al
	je	.label_417
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 1], al
	je	.label_417
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	nop	
	jne	.label_417
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
	jmp	.label_417
.label_417:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4084c0

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
	mov	qword ptr [rbp - 0x60], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	mov	rdi, r8
	lea	rsi, [rsi]
	call	xmalloc
	mov	esi, 0x2010
	mov	edi, esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x2008], 0
	mov	rbp, rbp
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_435:
	mov	eax, 0x2000
	lea	rsi, [rsi]
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	safe_read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_431
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -1
	lea	rdi, [rdi]
	jne	.label_433
.label_431:
	mov	rsp, rsp
	jmp	.label_419
.label_433:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x2008], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x2000]
	mov	rsp, rsp
	cmp	rax, 0x2000
	lea	rdi, [rdi]
	jae	.label_421
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x2000]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	jmp	.label_418
.label_421:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rcx + 0x2008], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_432
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_429
.label_432:
	mov	eax, 0x2010
	mov	edi, eax
	call	xmalloc
	nop	
	mov	qword ptr [rbp - 8], rax
.label_429:
	lea	rsi, [rsi]
	jmp	.label_418
.label_418:
	lea	rdi, [rdi]
	jmp	.label_435
.label_419:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x20], -1
	mov	rbp, rbp
	jne	.label_423
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.80
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_425
.label_423:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_430:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jbe	.label_428
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x2000]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x2008]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_430
.label_428:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jbe	.label_427
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	sub	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_424
.label_427:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], 0
.label_424:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rsi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_434:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_422
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x2000]
	mov	rbp, rbp
	call	xwrite_stdout
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x2008]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_434
.label_422:
	jmp	.label_425
.label_425:
	jmp	.label_420
.label_420:
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_426
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_420
.label_426:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408900

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x368
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rax, rdi
	sub	rdi, 0x2f
	nop	
	mov	qword ptr [rbp - 0x280], rax
	mov	qword ptr [rbp - 0x378], rdi
	je	.label_494
	lea	rdi, [rdi]
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x187
	nop	
	mov	qword ptr [rbp - 0x1b8], rax
	nop	
	je	.label_506
	mov	rbp, rbp
	jmp	.label_514
.label_514:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x7c0
	mov	qword ptr [rbp - 0x2b8], rax
	mov	rsp, rsp
	je	.label_516
	jmp	.label_524
.label_524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	je	.label_526
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x137d
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	je	.label_535
	mov	rsp, rsp
	jmp	.label_543
.label_543:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	je	.label_545
	jmp	.label_553
.label_553:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x138f
	mov	qword ptr [rbp - 0x320], rax
	mov	rsp, rsp
	je	.label_556
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x1cd1
	mov	qword ptr [rbp - 0x2a8], rax
	je	.label_566
	jmp	.label_573
.label_573:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x2468
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	je	.label_575
	lea	rdi, [rdi]
	jmp	.label_581
.label_581:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_583
	lea	rsi, [rsi]
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x198], rax
	lea	rdi, [rdi]
	je	.label_592
	lea	rdi, [rdi]
	jmp	.label_599
.label_599:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x4000
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	je	.label_603
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x4004
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rax
	je	.label_611
	lea	rsi, [rsi]
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x200], rax
	lea	rsi, [rsi]
	je	.label_623
	lea	rdi, [rdi]
	jmp	.label_629
.label_629:
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x4244
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	je	.label_632
	jmp	.label_648
.label_648:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x482b
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	je	.label_639
	lea	rdi, [rdi]
	jmp	.label_644
.label_644:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x4858
	mov	qword ptr [rbp - 0x238], rax
	je	.label_559
	jmp	.label_650
.label_650:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x4d44
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	mov	rsp, rsp
	je	.label_496
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0x138], rax
	je	.label_662
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x517b
	mov	qword ptr [rbp - 0x338], rax
	je	.label_669
	mov	rsp, rsp
	jmp	.label_674
.label_674:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x564c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3c0], rax
	mov	rsp, rsp
	je	.label_676
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_440
	lea	rsi, [rsi]
	jmp	.label_445
.label_445:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x6969
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	je	.label_447
	jmp	.label_455
.label_455:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0x140], rax
	je	.label_456
	jmp	.label_465
.label_465:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x72b6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_467
	lea	rsi, [rsi]
	jmp	.label_475
.label_475:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0x3d8], rax
	nop	
	je	.label_476
	nop	
	jmp	.label_482
.label_482:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0x190], rax
	lea	rsi, [rsi]
	je	.label_483
	mov	rbp, rbp
	jmp	.label_486
.label_486:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x9fa1
	mov	qword ptr [rbp - 0xe8], rax
	lea	rdi, [rdi]
	je	.label_490
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x9fa2
	mov	qword ptr [rbp - 0x2d0], rax
	je	.label_497
	jmp	.label_502
.label_502:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x270], rax
	lea	rdi, [rdi]
	je	.label_630
	jmp	.label_511
.label_511:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0xadff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3e8], rax
	je	.label_512
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0xef51
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x308], rax
	je	.label_487
	jmp	.label_458
.label_458:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0xef53
	mov	qword ptr [rbp - 0x1e8], rax
	je	.label_532
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0xf15f
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	je	.label_541
	nop	
	jmp	.label_549
.label_549:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x11954
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	lea	rsi, [rsi]
	je	.label_550
	jmp	.label_561
.label_561:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x27e0eb
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_562
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x414a53
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x388], rax
	je	.label_572
	jmp	.label_578
.label_578:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0xc0ffee
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x318], rax
	mov	rsp, rsp
	je	.label_580
	mov	rbp, rbp
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0xc36400
	mov	qword ptr [rbp - 0x300], rax
	mov	rbp, rbp
	je	.label_591
	nop	
	jmp	.label_598
.label_598:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x1021994
	nop	
	mov	qword ptr [rbp - 0x220], rax
	je	.label_601
	nop	
	jmp	.label_606
.label_606:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x1021997
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x348], rax
	lea	rsi, [rsi]
	je	.label_609
	mov	rbp, rbp
	jmp	.label_617
.label_617:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x1161970
	nop	
	mov	qword ptr [rbp - 0x160], rax
	je	.label_620
	jmp	.label_627
.label_627:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x12fd16d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rax
	je	.label_593
	jmp	.label_635
.label_635:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x12ff7b4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x298], rax
	nop	
	je	.label_638
	mov	rbp, rbp
	jmp	.label_647
.label_647:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x2c8], rax
	mov	rsp, rsp
	je	.label_649
	jmp	.label_655
.label_655:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x12ff7b6
	mov	qword ptr [rbp - 0x100], rax
	je	.label_656
	lea	rsi, [rsi]
	jmp	.label_663
.label_663:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x12ff7b7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rax
	je	.label_664
	jmp	.label_672
.label_672:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x13111a8
	mov	qword ptr [rbp - 0x208], rax
	lea	rsi, [rsi]
	je	.label_673
	mov	rsp, rsp
	jmp	.label_680
.label_680:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rsp, rsp
	je	.label_436
	nop	
	jmp	.label_443
.label_443:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x9041934
	mov	qword ptr [rbp - 0x2f8], rax
	mov	rsp, rsp
	je	.label_444
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x3d0], rax
	lea	rsi, [rsi]
	je	.label_454
	jmp	.label_462
.label_462:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0xbd00bd0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rax
	mov	rbp, rbp
	je	.label_464
	lea	rdi, [rdi]
	jmp	.label_474
.label_474:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x11307854
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	je	.label_671
	mov	rbp, rbp
	jmp	.label_481
.label_481:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x13661366
	nop	
	mov	qword ptr [rbp - 0x1f0], rax
	lea	rdi, [rdi]
	je	.label_478
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x228], rax
	je	.label_491
	lea	rdi, [rdi]
	jmp	.label_446
.label_446:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x19800202
	mov	qword ptr [rbp - 0x1f8], rax
	je	.label_499
	jmp	.label_503
.label_503:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rdi, [rdi]
	je	.label_505
	lea	rsi, [rsi]
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x1badface
	mov	qword ptr [rbp - 0x390], rax
	je	.label_515
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x3b0], rax
	lea	rdi, [rdi]
	je	.label_525
	lea	rdi, [rdi]
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_557
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x2bad1dea
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	je	.label_544
	nop	
	jmp	.label_552
.label_552:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x2fc12fc1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rbp, rbp
	je	.label_554
	lea	rdi, [rdi]
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x260], rax
	mov	rsp, rsp
	je	.label_565
	nop	
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x42465331
	mov	qword ptr [rbp - 0x288], rax
	nop	
	je	.label_574
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x42494e4d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], rax
	mov	rbp, rbp
	je	.label_582
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x43415d53
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], rax
	je	.label_590
	lea	rsi, [rsi]
	jmp	.label_597
.label_597:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x453dcd28
	mov	qword ptr [rbp - 0x1c8], rax
	je	.label_600
	jmp	.label_468
.label_468:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x45584653
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rax
	mov	rsp, rsp
	je	.label_608
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x47504653
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rax
	mov	rbp, rbp
	je	.label_619
	nop	
	jmp	.label_625
.label_625:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x50495045
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	je	.label_628
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_460
	lea	rsi, [rsi]
	jmp	.label_642
.label_642:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x5346314d
	mov	qword ptr [rbp - 0x328], rax
	lea	rdi, [rdi]
	je	.label_645
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x5346414f
	nop	
	mov	qword ptr [rbp - 0x3a8], rax
	je	.label_654
	mov	rbp, rbp
	jmp	.label_658
.label_658:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x53464846
	mov	qword ptr [rbp - 0x350], rax
	nop	
	je	.label_661
	mov	rbp, rbp
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x178], rax
	je	.label_670
	mov	rbp, rbp
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x2f0], rax
	nop	
	je	.label_678
	mov	rbp, rbp
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x54190100
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rsp, rsp
	je	.label_441
	jmp	.label_448
.label_448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x565a4653
	nop	
	mov	qword ptr [rbp - 0x28], rax
	nop	
	je	.label_450
	lea	rsi, [rsi]
	jmp	.label_457
.label_457:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x58295829
	mov	qword ptr [rbp - 0x3a0], rax
	lea	rdi, [rdi]
	je	.label_459
	jmp	.label_469
.label_469:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x58465342
	nop	
	mov	qword ptr [rbp - 0x1b0], rax
	je	.label_471
	jmp	.label_477
.label_477:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x158], rax
	je	.label_479
	jmp	.label_492
.label_492:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x5dca2df5
	nop	
	mov	qword ptr [rbp - 0x88], rax
	nop	
	je	.label_484
	lea	rdi, [rdi]
	jmp	.label_493
.label_493:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x278], rax
	nop	
	je	.label_449
	nop	
	jmp	.label_500
.label_500:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x6165676c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3b8], rax
	lea	rsi, [rsi]
	je	.label_501
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x368], rax
	nop	
	je	.label_510
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x62646576
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_520
	jmp	.label_527
.label_527:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x62656570
	nop	
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	je	.label_528
	jmp	.label_537
.label_537:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x62656572
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	je	.label_538
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	je	.label_547
	jmp	.label_558
.label_558:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2d8], rax
	mov	rsp, rsp
	je	.label_560
	jmp	.label_568
.label_568:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x64646178
	mov	qword ptr [rbp - 0x258], rax
	mov	rsp, rsp
	je	.label_569
	mov	rsp, rsp
	jmp	.label_534
.label_534:
	nop	
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x65735543
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rax
	je	.label_577
	mov	rbp, rbp
	jmp	.label_584
.label_584:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x65735546
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x360], rax
	je	.label_587
	nop	
	jmp	.label_594
.label_594:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x380], rax
	je	.label_596
	nop	
	jmp	.label_604
.label_604:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x68191122
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2e8], rax
	lea	rdi, [rdi]
	je	.label_605
	jmp	.label_613
.label_613:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rax, 0x6b414653
	nop	
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	je	.label_615
	mov	rsp, rsp
	jmp	.label_624
.label_624:
	mov	rax, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rax, 0x6e667364
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2b0], rax
	je	.label_529
	lea	rsi, [rsi]
	jmp	.label_633
.label_633:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x6e736673
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rax
	je	.label_636
	mov	rsp, rsp
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x73636673
	mov	qword ptr [rbp - 0x3c8], rax
	lea	rsi, [rsi]
	je	.label_646
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x73717368
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x248], rax
	je	.label_653
	jmp	.label_657
.label_657:
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x73727279
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x250], rax
	lea	rsi, [rsi]
	je	.label_659
	jmp	.label_665
.label_665:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x73757245
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rbp, rbp
	je	.label_668
	lea	rsi, [rsi]
	jmp	.label_677
.label_677:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x7461636f
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x218], rax
	je	.label_679
	lea	rsi, [rsi]
	jmp	.label_473
.label_473:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	sub	rax, 0x74726163
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	mov	rsp, rsp
	je	.label_442
	jmp	.label_451
.label_451:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rax, 0x794c7630
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	je	.label_452
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x280]
	nop	
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x398], rax
	je	.label_463
	nop	
	jmp	.label_470
.label_470:
	lea	rdi, [rdi]
	mov	eax, 0x858458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	je	.label_472
	mov	rbp, rbp
	jmp	.label_480
.label_480:
	mov	eax, 0x9123683e
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	je	.label_466
	nop	
	jmp	.label_485
.label_485:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	rbp, rbp
	je	.label_488
	jmp	.label_498
.label_498:
	lea	rdi, [rdi]
	mov	eax, 0xa501fcf5
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rdx
	lea	rsi, [rsi]
	je	.label_517
	mov	rbp, rbp
	jmp	.label_507
.label_507:
	lea	rdi, [rdi]
	mov	eax, 0xaad7aaea
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	je	.label_508
	jmp	.label_519
.label_519:
	mov	rsp, rsp
	mov	eax, 0xabba1974
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x340], rdx
	je	.label_521
	jmp	.label_530
.label_530:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x1e0], rdx
	je	.label_531
	mov	rbp, rbp
	jmp	.label_540
.label_540:
	nop	
	mov	eax, 0xbeefdead
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	je	.label_542
	lea	rdi, [rdi]
	jmp	.label_551
.label_551:
	lea	rsi, [rsi]
	mov	eax, 0xc97e8168
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rdx
	je	.label_555
	lea	rdi, [rdi]
	jmp	.label_626
.label_626:
	mov	rsp, rsp
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rdx
	je	.label_567
	jmp	.label_576
.label_576:
	mov	eax, 0xde5e81e4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3e0], rdx
	mov	rsp, rsp
	je	.label_536
	jmp	.label_585
.label_585:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x280]
	nop	
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x358], rdx
	je	.label_586
	jmp	.label_595
.label_595:
	mov	eax, 0xf97cff8c
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2c0], rdx
	nop	
	je	.label_614
	jmp	.label_637
.label_637:
	nop	
	mov	eax, 0xf995e849
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x268], rdx
	je	.label_607
	lea	rdi, [rdi]
	jmp	.label_618
.label_618:
	lea	rdi, [rdi]
	mov	eax, 0xfe534d42
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x310], rdx
	je	.label_622
	jmp	.label_640
.label_640:
	lea	rdi, [rdi]
	mov	eax, 0xff534d42
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x210], rdx
	mov	rbp, rbp
	je	.label_631
	mov	rbp, rbp
	jmp	.label_641
.label_479:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_449:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_630:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_512:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_654:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 0
	mov	rbp, rbp
	jmp	.label_437
.label_444:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_510:
	mov	dword ptr [rbp - 0x7c], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_506:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_478:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_437
.label_574:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_520:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_515:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_567:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_582:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_466:
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_659:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_591:
	mov	dword ptr [rbp - 0x7c], 0
	mov	rsp, rsp
	jmp	.label_437
.label_562:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_547:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_631:
	mov	dword ptr [rbp - 0x7c], 0
	nop	
	jmp	.label_437
.label_668:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 0
	nop	
	jmp	.label_437
.label_664:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_528:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_557:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_600:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_569:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_560:
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_526:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_566:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_541:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_536:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_572:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_608:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_440:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_535:
	mov	dword ptr [rbp - 0x7c], 1
	nop	
	jmp	.label_437
.label_532:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	nop	
	jmp	.label_437
.label_487:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_586:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_623:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_505:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_587:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_577:
	mov	dword ptr [rbp - 0x7c], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_454:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_620:
	mov	dword ptr [rbp - 0x7c], 0
	mov	rsp, rsp
	jmp	.label_437
.label_619:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_632:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_437
.label_639:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_559:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_437
.label_580:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_607:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_488:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_437
.label_671:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_673:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_544:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	nop	
	jmp	.label_437
.label_476:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_611:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_603:
	mov	dword ptr [rbp - 0x7c], 1
	nop	
	jmp	.label_437
.label_516:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_467:
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_565:
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_615:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_555:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_464:
	mov	dword ptr [rbp - 0x7c], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_645:
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_545:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_556:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_575:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_583:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_662:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_499:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_496:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_676:
	mov	dword ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	jmp	.label_437
.label_447:
	mov	dword ptr [rbp - 0x7c], 0
	nop	
	jmp	.label_437
.label_529:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_592:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_636:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_670:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_437
.label_490:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_679:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_452:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_508:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_628:
	nop	
	mov	dword ptr [rbp - 0x7c], 0
	nop	
	jmp	.label_437
.label_463:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_483:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_501:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_494:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_605:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_472:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_436:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_460:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	nop	
	jmp	.label_437
.label_456:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_596:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_484:
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_646:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jmp	.label_437
.label_614:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_590:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_669:
	mov	dword ptr [rbp - 0x7c], 0
	lea	rdi, [rdi]
	jmp	.label_437
.label_622:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_542:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	jmp	.label_437
.label_678:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_653:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_538:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_656:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_649:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_601:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_442:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_525:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_437
.label_491:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_550:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_441:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jmp	.label_437
.label_497:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_609:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_531:
	mov	dword ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	jmp	.label_437
.label_517:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_437
.label_450:
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_661:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_521:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_638:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	jmp	.label_437
.label_471:
	nop	
	mov	dword ptr [rbp - 0x7c], 1
	nop	
	jmp	.label_437
.label_593:
	mov	dword ptr [rbp - 0x7c], 1
	nop	
	jmp	.label_437
.label_554:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], 1
	lea	rsi, [rsi]
	jmp	.label_437
.label_459:
	mov	dword ptr [rbp - 0x7c], 1
	mov	rsp, rsp
	jmp	.label_437
.label_641:
	mov	dword ptr [rbp - 0x7c], 0xffffffff
.label_437:
	mov	eax, dword ptr [rbp - 0x7c]
	add	rsp, 0x368
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a270

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rsi + 0x44]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a2b0

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a300

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x170
	lea	rdi, [rdi]
	mov	al, sil
	mov	qword ptr [rbp - 0x98], rdi
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x151], al
	mov	byte ptr [rbp - 0xa5], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
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
	mov	byte ptr [rbp - 0xe5], cl
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + 0x36]
	mov	rsp, rsp
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb1], cl
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x13c], eax
	mov	rbp, rbp
	test	byte ptr [rbp - 0xe5], 1
	je	.label_692
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_707
.label_692:
	lea	rdi, [rdi]
	mov	eax, 0x800
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	sil, byte ptr [rbp - 0x151]
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
	mov	dword ptr [rbp - 0xec], eax
.label_707:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], eax
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	call	valid_file_spec
	test	al, 1
	mov	rsp, rsp
	jne	.label_685
	lea	rdi, [rdi]
	jmp	.label_687
.label_685:
	jmp	.label_689
.label_687:
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
.label_689:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	nop	
	mov	byte ptr [rbp - 0x105], cl
	mov	rsp, rsp
	je	.label_695
	cmp	dword ptr [rbp - 0xb8], -1
	nop	
	sete	al
	mov	byte ptr [rbp - 0x105], al
.label_695:
	mov	al, byte ptr [rbp - 0x105]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x98]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_682
	lea	rsi, [rbp - 0x90]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rax]
	call	__lstat
	cmp	eax, 0
	nop	
	jne	.label_682
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_682
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.106
	mov	byte ptr [rbp - 0xa5], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	byte ptr [rax + 0x34], 1
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	jmp	.label_702
.label_682:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xb8], -1
	lea	rdi, [rdi]
	je	.label_704
	lea	rsi, [rbp - 0x90]
	nop	
	mov	edi, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	call	__fstat
	cmp	eax, 0
	jge	.label_713
.label_704:
	mov	byte ptr [rbp - 0xa5], 0
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x3c], ecx
	mov	rax, qword ptr [rbp - 0x98]
	test	byte ptr [rax + 0x36], 1
	mov	rbp, rbp
	jne	.label_714
	test	byte ptr [rbp - 0xb1], 1
	mov	rsp, rsp
	je	.label_709
	movabs	rdi, OFFSET FLAT:.str.107
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], esi
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xbc]
	nop	
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_696
.label_709:
	jmp	.label_696
.label_696:
	nop	
	jmp	.label_699
.label_714:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x13c]
	mov	dword ptr [rbp - 0x124], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x124]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	je	.label_703
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x12c], esi
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
	mov	esi, dword ptr [rbp - 0x12c]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_703:
	nop	
	jmp	.label_699
.label_699:
	jmp	.label_716
.label_713:
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x8000
	je	.label_681
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_681
	nop	
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0xc000
	je	.label_681
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0xf000
	nop	
	cmp	eax, 0x2000
	je	.label_681
	xor	eax, eax
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0xa5], 0
	mov	rdx, qword ptr [rbp - 0x98]
	mov	dword ptr [rdx + 0x3c], 0xffffffff
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x98]
	mov	byte ptr [rdx + 0x36], 0
	mov	rsp, rsp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xbd], cl
	je	.label_693
	cmp	dword ptr [dword ptr [follow_mode]],  1
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xbd], al
.label_693:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xbd]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x34], al
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_712
	mov	eax, dword ptr [rbp - 0x13c]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0x3c]
	je	.label_717
.label_712:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.109
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	call	pretty_name
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x98]
	test	byte ptr [rsi + 0x34], 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	mov	rbp, rbp
	je	.label_688
	movabs	rdi, OFFSET FLAT:.str.82
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_694
.label_688:
	nop	
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_717:
	mov	rsp, rsp
	jmp	.label_710
.label_681:
	nop	
	mov	edi, dword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x164], edi
	mov	rdi, rax
	lea	rsi, [rsi]
	call	pretty_name
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x164]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	fremote
	mov	rsi, qword ptr [rbp - 0x98]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi + 0x35], cl
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_684
	mov	rbp, rbp
	jmp	.label_683
.label_684:
	test	byte ptr [byte ptr [disable_inotify]],  1
	mov	rsp, rsp
	jne	.label_683
	movabs	rdi, OFFSET FLAT:.str.110
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa5], 0
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x3c], 0xffffffff
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x138], rax
	lea	rsi, [rsi]
	call	pretty_name
	mov	rbp, rbp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x128], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x128]
	mov	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x34], 1
	mov	rcx, qword ptr [rbp - 0x98]
	mov	byte ptr [rcx + 0x35], 1
	nop	
	jmp	.label_697
.label_683:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x3c], 0
.label_697:
	jmp	.label_710
.label_710:
	jmp	.label_716
.label_716:
	mov	rsp, rsp
	jmp	.label_702
.label_702:
	mov	byte ptr [rbp - 0x13d], 0
	test	byte ptr [rbp - 0xa5], 1
	lea	rsi, [rsi]
	jne	.label_718
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xb8]
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x14c], edi
	nop	
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x14c]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	close_fd
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x100], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	pretty_name
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x100]
	nop	
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 0x98]
	mov	dword ptr [rax + 0x38], 0xffffffff
	nop	
	jmp	.label_690
.label_718:
	cmp	dword ptr [rbp - 0x13c], 0
	nop	
	je	.label_698
	cmp	dword ptr [rbp - 0x13c], 2
	lea	rsi, [rsi]
	je	.label_698
	mov	byte ptr [rbp - 0x13d], 1
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x38], -1
	mov	rbp, rbp
	jne	.label_705
	nop	
	jmp	.label_711
.label_705:
	movabs	rdi, OFFSET FLAT:.str.111
	movabs	rsi, OFFSET FLAT:.str.92
	mov	rsp, rsp
	mov	edx, 0x42c
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	mov	rsp, rsp
	call	__assert_fail
.label_711:
	movabs	rdi, OFFSET FLAT:.str.112
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	qword ptr [rbp - 0x160], rax
	call	pretty_name
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, rbp
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	dword ptr [rbp - 0x104], edi
	nop	
	mov	esi, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_691
.label_698:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_706
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.113
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x13d], 1
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
	call	pretty_name
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0x114], edi
	mov	esi, dword ptr [rbp - 0x114]
	nop	
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_701
.label_706:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x88]
	jne	.label_715
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0x90]
	je	.label_720
.label_715:
	movabs	rdi, OFFSET FLAT:.str.114
	mov	byte ptr [rbp - 0x13d], 1
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xe0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0xf0], edi
	mov	esi, dword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0xa4], edi
	mov	rbp, rbp
	mov	rdi, rcx
	mov	rbp, rbp
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	close_fd
	jmp	.label_708
.label_720:
	mov	edi, dword ptr [rbp - 0xb8]
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0xfc], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xfc]
	mov	rsi, rax
	call	close_fd
.label_708:
	jmp	.label_701
.label_701:
	jmp	.label_691
.label_691:
	lea	rsi, [rsi]
	jmp	.label_690
.label_690:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x13d], 1
	je	.label_719
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0xb8]
	test	byte ptr [rbp - 0xe5], 1
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], esi
	je	.label_700
	mov	eax, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	nop	
	jmp	.label_686
.label_700:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x151]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], ecx
.label_686:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xe4]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	mov	esi, dword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x118], edi
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	pretty_name
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x118]
	mov	rcx, rax
	call	xlseek
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
.label_719:
	add	rsp, 0x170
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ade0

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rsi + 0x38], -1
	jne	.label_726
	nop	
	jmp	.label_722
.label_726:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	pretty_name
	lea	rsi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	edi, dword ptr [rax + 0x38]
	call	__fstat
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_727
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_722
.label_727:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_724
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jge	.label_724
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.115
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x30]
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
	mov	rcx, qword ptr [rbp - 0x20]
	call	xlseek
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_728
.label_724:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_725
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_725
	lea	rdi, [rbp - 0xf0]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	call	get_stat_mtime
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	call	timespec_cmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_725
	jmp	.label_722
.label_725:
	jmp	.label_728
.label_728:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [print_headers]],  1
	nop	
	mov	byte ptr [rbp - 9], cl
	mov	rsp, rsp
	je	.label_721
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], dl
.label_721:
	mov	al, byte ptr [rbp - 9]
	mov	rcx, -1
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	al, byte ptr [rbp - 0x49]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rdx + 0x38]
	and	al, 1
	movzx	edi, al
	lea	rdi, [rdi]
	call	dump_remainder
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_722
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fflush_unlocked
	nop	
	cmp	eax, 0
	je	.label_723
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
.label_723:
	jmp	.label_722
.label_722:
	lea	rsi, [rsi]
	add	rsp, 0xf0
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b0d0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b100

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b150

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	lea	rsi, [rsi]
	je	.label_733
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_733
	nop	
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_731
.label_733:
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_729:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_735
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_732
	nop	
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_731
.label_732:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	mov	rbp, rbp
	jne	.label_734
	mov	rbp, rbp
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_734
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_731
.label_734:
	lea	rdi, [rdi]
	jmp	.label_730
.label_730:
	mov	rbp, rbp
	jmp	.label_736
.label_736:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_729
.label_735:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_731:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b250

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xb0
	nop	
	test	byte ptr [byte ptr [monitor_output]],  1
	jne	.label_737
	jmp	.label_738
.label_737:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xa0]
	mov	rbp, rbp
	mov	ecx, 0x10
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	eax, edx
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	nop	
	mov	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], eax
	mov	edi, 2
	nop	
	lea	rsi, [rbp - 0xa0]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa0]
	or	rdx, 2
	nop	
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	select
	cmp	eax, 1
	jne	.label_738
	lea	rdi, [rdi]
	call	die_pipe
.label_738:
	add	rsp, 0xb0
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b330

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
	#Procedure 0x40b350

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
.label_748:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_746
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
	jne	.label_743
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_749
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_739
.label_749:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_744
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_742
.label_744:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_750
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
	je	.label_740
.label_750:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_740:
	lea	rsi, [rsi]
	jmp	.label_742
.label_742:
	mov	rbp, rbp
	jmp	.label_745
.label_745:
	mov	rsp, rsp
	jmp	.label_743
.label_743:
	nop	
	jmp	.label_747
.label_747:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_748
.label_746:
	test	byte ptr [rbp - 0x21], 1
	je	.label_741
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_739
.label_741:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_739:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b500

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
	jne	.label_751
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_752
.label_751:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_752:
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
	#Procedure 0x40b5e0

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
.label_755:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_757
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_756
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
	je	.label_754
.label_756:
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
	movabs	rsi, OFFSET FLAT:.str.3_0
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
	jmp	.label_758
.label_754:
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
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_758:
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_755
.label_757:
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
	#Procedure 0x40b790

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
	jl	.label_759
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_760
.label_759:
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
.label_760:
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
	#Procedure 0x40b850
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
.label_763:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_765
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
	jne	.label_762
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_761
.label_762:
	lea	rdi, [rdi]
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_763
.label_765:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_761:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b920

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rsp, rsp
	lea	rax, [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strtod
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x10], xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_769
	call	__errno_location
	lea	rsi, [rbp - 8]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	c_strtod
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x18], xmm0
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_768
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsd	qword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_767
.label_768:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_767:
	jmp	.label_769
.label_769:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_766
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_766:
	movsd	xmm0, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ba10
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
	#Procedure 0x40ba40
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
	#Procedure 0x40ba70

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
	je	.label_773
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_774
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_773
.label_774:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_772
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
	jmp	.label_771
.label_772:
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
.label_771:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_773:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bba0

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
	je	.label_775
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_778
.label_775:
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
.label_778:
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
.label_780:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_779
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_776
	jmp	.label_779
.label_776:
	jmp	.label_777
.label_777:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_780
.label_779:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc90
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
	je	.label_782
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	jmp	.label_782
.label_782:
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
	jne	.label_784
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_781
.label_784:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x21], 1
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
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0x2e
.label_783:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_781:
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
	#Procedure 0x40bdb0

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
.label_791:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_788
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_791
.label_788:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_790:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_785
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_789
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_787
.label_789:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_786
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_786:
	jmp	.label_787
.label_787:
	jmp	.label_792
.label_792:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_790
.label_785:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be80
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
.label_794:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_793
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
.label_793:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bf40

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
	je	.label_798
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
.label_798:
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
	je	.label_799
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
	ja	.label_800
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
	jmp	.label_801
.label_800:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_801:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_799:
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
	#Procedure 0x40c1c0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1e0

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c200

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c220

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_807:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_808:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c300
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_809:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_814
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_813
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_810:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
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
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_809
.label_814:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_815
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_815
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_812
.label_815:
	mov	byte ptr [rbp - 0x19], 0
.label_812:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c430
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
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
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
	mov	byte ptr [rbp - 0x29], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, OFFSET FLAT:.str.1_1
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
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
	movq	xmm0, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c5b0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_826
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_825
.label_826:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_821:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_822
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_820
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_820
	mov	rsp, rsp
	jmp	.label_823
.label_820:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_825
.label_823:
	nop	
	jmp	.label_824
.label_824:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_821
.label_822:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_825:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6a0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c730
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
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_831
.label_828:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_834:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_829
	lea	rsi, [rsi]
	call	abort
.label_829:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_832
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_831
.label_832:
	jmp	.label_830
.label_830:
	nop	
	jmp	.label_833
.label_833:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_834
.label_831:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7f0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	safe_hasher
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_838:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_836
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_836
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_840
.label_836:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_838
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_837
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_840
.label_837:
	jmp	.label_835
.label_839:
	mov	qword ptr [rbp - 0x28], 0
.label_840:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c8f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
.label_844:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_841
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_843
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_842:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_848
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_845
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_847
.label_845:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_842
.label_848:
	lea	rsi, [rsi]
	jmp	.label_843
.label_843:
	jmp	.label_846
.label_846:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_844
.label_841:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_847:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca00
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rdx
.label_853:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_852
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_849
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_851:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_856
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_850
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_854
.label_850:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_851
.label_856:
	mov	rbp, rbp
	jmp	.label_849
.label_849:
	nop	
	jmp	.label_855
.label_855:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_853
.label_852:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_854:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb10
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb80
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbd0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_864
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_864:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_866
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_866:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_862
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_865
.label_862:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_868
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_868:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_867
	jmp	.label_863
.label_867:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_861
	mov	rsp, rsp
	jmp	.label_863
.label_861:
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
	jne	.label_869
	jmp	.label_863
.label_869:
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
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_865
.label_863:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_865:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdf0

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ce40

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ce70

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cfe0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_875
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_876]]
	mov	rax, qword ptr [rbp - 8]
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
	movss	dword ptr [rbp - 0x24], xmm0
	movss	dword ptr [rbp - 0xc], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x10], xmm1
	mov	rbp, rbp
	js	.label_877
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_877:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x14], xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	movss	xmm1, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_881
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_879
.label_881:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
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
	mov	qword ptr [rbp - 8], rax
.label_875:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_878
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_879
.label_878:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_879:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d150
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_888:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_887
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_884
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_882:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_883
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_889
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_889:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_882
.label_883:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_886
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_886:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_884:
	jmp	.label_885
.label_885:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_888
.label_887:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d2c0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_890
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_890
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_893:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_896
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_899
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_903:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_891
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_903
.label_891:
	jmp	.label_899
.label_899:
	jmp	.label_894
.label_894:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_893
.label_896:
	jmp	.label_890
.label_890:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_902:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_900
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_898:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_901
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_898
.label_901:
	jmp	.label_897
.label_897:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_902
.label_900:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_895:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_892
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_895
.label_892:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4b0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_910
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_909
.label_910:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_904
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_909
.label_904:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
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
	jne	.label_906
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_909
.label_906:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
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
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_905
	lea	rsi, [rsi]
	jmp	.label_908
.label_905:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 0x71], 1
	jmp	.label_909
.label_908:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_911
	mov	rbp, rbp
	jmp	.label_907
.label_911:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_912
.label_907:
	call	abort
.label_912:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_909:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d780

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
.label_916:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_922
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_914
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_918:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_921
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_919
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_917
.label_919:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_917:
	mov	rbp, rbp
	jmp	.label_920
.label_920:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_918
.label_921:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_913
	jmp	.label_915
.label_913:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_925
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_924
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_923
.label_924:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_926
.label_925:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_926:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_914:
	jmp	.label_915
.label_915:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_916
.label_922:
	mov	byte ptr [rbp - 0x19], 1
.label_923:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da10

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_934
	lea	rsi, [rsi]
	call	abort
.label_934:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_940
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_928
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_928:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_927
.label_940:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
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
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x80], rcx
	movss	dword ptr [rbp - 0x88], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_941
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_941:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x80]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
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
	movss	dword ptr [rbp - 0x60], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xbc], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x24], xmm2
	mov	rsp, rsp
	js	.label_937
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_937:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_931
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0xa0]
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
	mov	byte ptr [rbp - 0x1d], al
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 8], xmm0
	js	.label_935
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_935:
	movss	xmm0, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
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
	movss	dword ptr [rbp - 0x1c], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa4], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x44], xmm3
	movss	dword ptr [rbp - 0x8c], xmm2
	js	.label_932
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_932:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_930
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_943
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
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
	movss	dword ptr [rbp - 0x40], xmm1
	movss	dword ptr [rbp - 0x84], xmm0
	nop	
	js	.label_939
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_939:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_945
.label_943:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
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
	movss	dword ptr [rbp - 0x18], xmm1
	nop	
	movss	dword ptr [rbp - 0x14], xmm0
	lea	rdi, [rdi]
	js	.label_944
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_944:
	movss	xmm0, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
.label_945:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_876]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_929
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_927
.label_929:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
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
	jne	.label_936
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_927
.label_936:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_942
	call	abort
.label_942:
	jmp	.label_930
.label_930:
	lea	rdi, [rdi]
	jmp	.label_931
.label_931:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_933
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_938
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_927
.label_938:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_927
.label_933:
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_927:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e000

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_957
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_947
.label_957:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_951
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_951
	jmp	.label_954
.label_951:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_950
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_946
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_952
.label_946:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_952:
	jmp	.label_950
.label_950:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_947
.label_954:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_953:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_958
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_949
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_956
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_956:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_947
.label_955:
	mov	rbp, rbp
	jmp	.label_948
.label_948:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_953
.label_958:
	mov	qword ptr [rbp - 0x40], 0
.label_947:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e240

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e2c0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], -1
	lea	rdi, [rdi]
	jne	.label_963
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_961
.label_963:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_964
	nop	
	mov	rax, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x18], rax
.label_961:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e360

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_971
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_967
.label_971:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_968
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x20], rcx
	movss	dword ptr [rbp - 0x2c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_965
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_965:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
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
	movss	dword ptr [rbp - 0x14], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x64], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x5c], xmm2
	lea	rsi, [rsi]
	js	.label_970
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_970:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_966
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x40]
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
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x50], rcx
	movss	dword ptr [rbp - 0x84], xmm1
	movss	dword ptr [rbp - 0x24], xmm0
	nop	
	js	.label_980
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_980:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
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
	movss	dword ptr [rbp - 0xb0], xmm0
	movss	dword ptr [rbp - 0x94], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa4], xmm3
	movss	dword ptr [rbp - 0x74], xmm2
	js	.label_977
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_977:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_973
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_969
	mov	rax, qword ptr [rbp - 0x40]
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
	movss	dword ptr [rbp - 0xc], xmm1
	nop	
	movss	dword ptr [rbp - 0xac], xmm0
	lea	rsi, [rsi]
	js	.label_978
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_978:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_979
.label_969:
	mov	rax, qword ptr [rbp - 0x40]
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
	movss	dword ptr [rbp - 0x28], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_975
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_975:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x10], xmm0
.label_979:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_976
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_972:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_974
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_972
.label_974:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_976:
	lea	rsi, [rsi]
	jmp	.label_973
.label_973:
	jmp	.label_966
.label_966:
	nop	
	jmp	.label_968
.label_968:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_967:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e830

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0xa
	jae	.label_981
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_981:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_985:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_983
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_983:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_984
	jmp	.label_982
.label_984:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_985
.label_982:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e8e0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], 3
	mov	rdi, qword ptr [rbp - 8]
	imul	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_987:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_986
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], sil
.label_986:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_989
	jmp	.label_988
.label_989:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_987
.label_988:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x18]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e9e0

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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ea30

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
	jne	.label_992
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
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
	jne	.label_991
	lea	rdi, [rdi]
	jmp	.label_993
.label_993:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb80

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
	mov	qword ptr [rbp - 0x30], 0x31069
	mov	rsp, rsp
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_996
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_996
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	call	strtol
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_997
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_997:
	nop	
	jmp	.label_996
.label_996:
	cmp	qword ptr [rbp - 0x30], -0x80000000
	jge	.label_998
	mov	rax, -0x80000000
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_994
.label_998:
	cmp	qword ptr [rbp - 0x30], 0x7fffffff
	mov	rbp, rbp
	jge	.label_999
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_995
.label_999:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	nop	
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_994:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec90

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
	jne	.label_1002
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_1002:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1000
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1004
.label_1000:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1004:
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
	jl	.label_1003
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
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
	jne	.label_1003
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_2
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
	jne	.label_1001
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1001:
	jmp	.label_1003
.label_1003:
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
	#Procedure 0x40ee10
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
	je	.label_1005
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1006
.label_1005:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1006
.label_1006:
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
	#Procedure 0x40eec0
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
	je	.label_1007
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1008
.label_1007:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1008
.label_1008:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef20
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
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1010
.label_1009:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef80

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
	je	.label_1011
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1012
.label_1011:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1012
.label_1012:
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
	#Procedure 0x40f080
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
	jne	.label_1013
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_1013:
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
	#Procedure 0x40f0e0

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
	jne	.label_1014
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_1014:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
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
	#Procedure 0x40f180
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
	je	.label_1017
	mov	rax, qword ptr [rbp - 0x50]
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
	#Procedure 0x40f280

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
.label_1188:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1053
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1098]]
	jmp	rcx
.label_1585:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1584:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1204
	jmp	.label_1177
.label_1177:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1210
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1210:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1204
.label_1204:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_1019
.label_1586:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1019
.label_1587:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_1039
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
.label_1039:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1051
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_1075:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1057
	jmp	.label_1109
.label_1109:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1062
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_1062:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1075
.label_1057:
	mov	rbp, rbp
	jmp	.label_1051
.label_1051:
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
	jmp	.label_1019
.label_1582:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1581:
	mov	byte ptr [rbp - 0x3e], 1
.label_1583:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1099
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_1099:
	jmp	.label_1102
.label_1102:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1103
	jmp	.label_1122
.label_1122:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1125
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1125:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1103
.label_1103:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_1019
.label_1580:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1019
.label_1053:
	call	abort
.label_1019:
	mov	qword ptr [rbp - 0xd8], 0
.label_1135:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1129
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
	jmp	.label_1131
.label_1129:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1131:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1148
	mov	rbp, rbp
	jmp	.label_1159
.label_1148:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1161
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1161
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1161
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1171
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1171
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1184
.label_1171:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1184:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1161
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
	jne	.label_1161
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1202
	jmp	.label_1028
.label_1202:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1161:
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
	ja	.label_1207
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1218]]
	nop	
	jmp	rcx
.label_1589:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1025
	mov	rsp, rsp
	jmp	.label_1030
.label_1030:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1033
	jmp	.label_1028
.label_1033:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1036
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_1036
	nop	
	jmp	.label_1042
.label_1042:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1045
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1045:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1052
.label_1052:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1055
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1055:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1064
.label_1064:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1069
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1069:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1036:
	lea	rsi, [rsi]
	jmp	.label_1079
.label_1079:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1080
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1080:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1198
.label_1198:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_1034
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1034
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1034
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1034
	nop	
	jmp	.label_1113
.label_1113:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1114
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1114:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1120
.label_1120:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1024
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1024:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1034
.label_1034:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1136
.label_1025:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1139
	mov	rbp, rbp
	jmp	.label_1132
.label_1139:
	jmp	.label_1136
.label_1136:
	jmp	.label_1020
.label_1600:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1146
	mov	rbp, rbp
	jmp	.label_1154
.label_1154:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1156
	jmp	.label_1164
.label_1146:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1166
	jmp	.label_1028
.label_1166:
	jmp	.label_1077
.label_1156:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_1067
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_1067
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1067
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
	je	.label_1180
	nop	
	jmp	.label_1219
.label_1219:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1180
	jmp	.label_1193
.label_1193:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1180
	jmp	.label_1199
.label_1199:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1180
	jmp	.label_1174
.label_1174:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1150
	jmp	.label_1180
.label_1180:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1212
	jmp	.label_1028
.label_1212:
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
	jae	.label_1216
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1216:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1040
.label_1040:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1043
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1043:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1049
.label_1049:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1195
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1195:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1048
.label_1048:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1068
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1068:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1070
.label_1150:
	jmp	.label_1070
.label_1070:
	jmp	.label_1067
.label_1067:
	jmp	.label_1077
.label_1164:
	jmp	.label_1077
.label_1077:
	jmp	.label_1020
.label_1590:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_1083
.label_1591:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_1083
.label_1595:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_1083
.label_1593:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_1060
.label_1596:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_1060
.label_1592:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_1060
.label_1594:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_1083
.label_1601:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1107
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1105
	nop	
	jmp	.label_1028
.label_1105:
	lea	rsi, [rsi]
	jmp	.label_1087
.label_1107:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1084
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1084
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1084
	jmp	.label_1087
.label_1084:
	jmp	.label_1060
.label_1060:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1121
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1121
	jmp	.label_1028
.label_1121:
	mov	rsp, rsp
	jmp	.label_1083
.label_1083:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1126
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1130
.label_1126:
	jmp	.label_1020
.label_1602:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1137
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1140
	jmp	.label_1145
.label_1137:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1140
.label_1145:
	nop	
	jmp	.label_1020
.label_1140:
	jmp	.label_1149
.label_1149:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1181
	lea	rsi, [rsi]
	jmp	.label_1020
.label_1181:
	nop	
	jmp	.label_1160
.label_1160:
	mov	byte ptr [rbp - 0x91], 1
.label_1597:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1163
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1163
	jmp	.label_1028
.label_1163:
	lea	rsi, [rsi]
	jmp	.label_1020
.label_1599:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1169
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1173
	jmp	.label_1028
.label_1173:
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
	jmp	.label_1185
.label_1185:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1186:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1191
.label_1191:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1215
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1215:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1203
.label_1203:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1206
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1206:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1169:
	lea	rsi, [rsi]
	jmp	.label_1020
.label_1564:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_1020
.label_1207:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_1026
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
	jmp	.label_1035
.label_1026:
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
	jne	.label_1054
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_1054:
	jmp	.label_1063
.label_1063:
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
	jne	.label_1078
	jmp	.label_1085
.label_1078:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_1086
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_1085
.label_1086:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_1092
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1111:
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
	jae	.label_1094
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_1094:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1108
	jmp	.label_1110
.label_1108:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1111
.label_1110:
	jmp	.label_1085
.label_1092:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1119
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1119
	mov	qword ptr [rbp - 0xe8], 1
.label_1168:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1123
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
	jb	.label_1124
	jmp	.label_1142
.label_1142:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1124
	jmp	.label_1147
.label_1147:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1124
	jmp	.label_1155
.label_1155:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1157
	mov	rsp, rsp
	jmp	.label_1124
.label_1124:
	mov	rsp, rsp
	jmp	.label_1028
.label_1157:
	jmp	.label_1046
.label_1046:
	mov	rsp, rsp
	jmp	.label_1158
.label_1158:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1168
.label_1123:
	mov	rbp, rbp
	jmp	.label_1119
.label_1119:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_1112
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1112:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1175
.label_1175:
	lea	rsi, [rsi]
	jmp	.label_1179
.label_1179:
	jmp	.label_1182
.label_1182:
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
	jne	.label_1063
.label_1085:
	jmp	.label_1035
.label_1035:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1190
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1197
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1197
.label_1190:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1178:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1208
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1208
	jmp	.label_1213
.label_1213:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1214
	jmp	.label_1028
.label_1214:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1037
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1037
	lea	rdi, [rdi]
	jmp	.label_1027
.label_1027:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1056
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1056:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1209:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1128
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1128:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1050
.label_1050:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1091
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1091:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1037:
	jmp	.label_1065
.label_1065:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1066
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1066:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1073
.label_1073:
	jmp	.label_1074
.label_1074:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1076
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
.label_1076:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1090
.label_1090:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1095
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
.label_1095:
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
	jmp	.label_1104
.label_1208:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1153
	lea	rdi, [rdi]
	jmp	.label_1115
.label_1115:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1117
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1117:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1153:
	nop	
	jmp	.label_1104
.label_1104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1059
	jmp	.label_1134
.label_1059:
	lea	rsi, [rsi]
	jmp	.label_1138
.label_1138:
	test	byte ptr [rbp - 0x42], 1
	je	.label_1058
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1058
	lea	rsi, [rsi]
	jmp	.label_1143
.label_1143:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1144
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1144:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1152
.label_1152:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1162
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1162:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1058:
	nop	
	jmp	.label_1170
.label_1170:
	mov	rsp, rsp
	jmp	.label_1097
.label_1097:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1172
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1172:
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
	jmp	.label_1178
.label_1134:
	mov	rsp, rsp
	jmp	.label_1087
.label_1197:
	lea	rsi, [rsi]
	jmp	.label_1020
.label_1020:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_1100
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1194
.label_1100:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1196
.label_1194:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1196
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
	jne	.label_1200
.label_1196:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1200
	mov	rsp, rsp
	jmp	.label_1087
.label_1200:
	nop	
	jmp	.label_1130
.label_1130:
	jmp	.label_1021
.label_1021:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1023
	jmp	.label_1028
.label_1023:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1029
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_1029
	lea	rdi, [rdi]
	jmp	.label_1038
.label_1038:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1187
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1187:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1047
.label_1047:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1176
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1176:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1211
.label_1211:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1061
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1061:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1029:
	jmp	.label_1082
.label_1082:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1072
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1072:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1081
.label_1081:
	nop	
	jmp	.label_1087
.label_1087:
	jmp	.label_1088
.label_1088:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_1089
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1089
	lea	rdi, [rdi]
	jmp	.label_1093
.label_1093:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1096
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1096:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1101
.label_1101:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1106
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1106:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1089:
	jmp	.label_1116
.label_1116:
	nop	
	jmp	.label_1118
.label_1118:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1189
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1189:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1167
	mov	byte ptr [rbp - 0xb7], 0
.label_1167:
	mov	rbp, rbp
	jmp	.label_1132
.label_1132:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1135
.label_1159:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1141
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1141
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1141
	nop	
	jmp	.label_1028
.label_1141:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1151
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1151
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1151
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1165
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
	jmp	.label_1041
.label_1165:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1183
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1183
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1188
.label_1183:
	jmp	.label_1192
.label_1192:
	mov	rbp, rbp
	jmp	.label_1151
.label_1151:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1031
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1031
	mov	rbp, rbp
	jmp	.label_1022
.label_1022:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1201
	lea	rdi, [rdi]
	jmp	.label_1133
.label_1133:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1205
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1205:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1217
.label_1217:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1022
.label_1201:
	jmp	.label_1031
.label_1031:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1032
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_1032:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1041
.label_1028:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1044
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1044
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_1044:
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
.label_1041:
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
	#Procedure 0x410d20
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
	#Procedure 0x410d90

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
	je	.label_1220
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1221
.label_1220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1221
.label_1221:
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
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1222:
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
	#Procedure 0x410f60
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411070

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
	#Procedure 0x4110c0

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
	jge	.label_1233
	call	abort
.label_1233:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1228
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
	jge	.label_1229
	call	xalloc_die
.label_1229:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1230
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1234
.label_1230:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1234:
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
	je	.label_1232
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1223]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1232:
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
.label_1228:
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
	ja	.label_1231
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
	je	.label_1235
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1235:
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
.label_1231:
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
	#Procedure 0x4113f0

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
	#Procedure 0x411430
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
	#Procedure 0x411460
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
	#Procedure 0x4114a0

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
	#Procedure 0x411500

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
	jne	.label_1236
	call	abort
.label_1236:
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
	#Procedure 0x4115a0

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
	#Procedure 0x411610

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
	#Procedure 0x411650
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
	#Procedure 0x411690

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
	#Procedure 0x411740

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
	#Procedure 0x411780

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
	#Procedure 0x4117b0
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
	#Procedure 0x4117f0

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
	#Procedure 0x4118d0

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
	#Procedure 0x411920

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
	#Procedure 0x4119c0
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
	#Procedure 0x411a10
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
	#Procedure 0x411a70

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
	#Procedure 0x411ab0
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
	#Procedure 0x411af0

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
	#Procedure 0x411b30

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
	#Procedure 0x411b70

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
	je	.label_1240
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1237
.label_1240:
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
	jne	.label_1238
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1237
.label_1238:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1239
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
	jmp	.label_1237
.label_1239:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1237:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411cb0

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
.label_1247:
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
	jg	.label_1241
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1248
.label_1241:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_1242
	lea	rdi, [rdi]
	jmp	.label_1247
.label_1242:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_1245
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jae	.label_1245
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_1246
.label_1245:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_1248
.label_1246:
	jmp	.label_1244
.label_1244:
	jmp	.label_1243
.label_1243:
	mov	rsp, rsp
	jmp	.label_1247
.label_1248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411da0
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
	#Procedure 0x411dc0
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
	#Procedure 0x411de0
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
	#Procedure 0x411e00
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
	#Procedure 0x411e20
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
	#Procedure 0x411e50
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
	#Procedure 0x411e80

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
	#Procedure 0x411eb0
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
	#Procedure 0x411ef0
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
	#Procedure 0x411f10

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f60

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rbp - 0x10]
	jge	.label_1249
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1251
.label_1249:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jle	.label_1253
	nop	
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_1251
.label_1253:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_1252
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_1252
	mov	rbp, rbp
	jmp	.label_1252
.label_1252:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jg	.label_1250
	cmp	qword ptr [rbp - 8], 0x77359400
	lea	rsi, [rsi]
	jg	.label_1250
	lea	rdi, [rdi]
	jmp	.label_1250
.label_1250:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1251:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412030
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_1254
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1256
.label_1254:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	jne	.label_1255
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 1], al
.label_1255:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
.label_1256:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4120a0
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4120e0

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
.label_1258:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412170

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
	je	.label_1262
	movabs	rsi, OFFSET FLAT:.str_8
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
	jmp	.label_1260
.label_1262:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1260:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_3
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
	mov	ecx, OFFSET FLAT:.str.3_2
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
	ja	.label_1261
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1263]]
	jmp	rcx
.label_1614:
	jmp	.label_1259
.label_1615:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_1259
.label_1616:
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
	jmp	.label_1259
.label_1617:
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
	jmp	.label_1259
.label_1618:
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
	jmp	.label_1259
.label_1619:
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
	jmp	.label_1259
.label_1620:
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
	jmp	.label_1259
.label_1621:
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
	jmp	.label_1259
.label_1622:
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
	jmp	.label_1259
.label_1623:
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
	jmp	.label_1259
.label_1261:
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
.label_1259:
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
	#Procedure 0x4129b0
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
.label_1264:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1265
	mov	rbp, rbp
	jmp	.label_1266
.label_1266:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1264
.label_1265:
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
	#Procedure 0x412a60

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
.label_1268:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1271
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1270
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
	jmp	.label_1269
.label_1270:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1269:
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
.label_1271:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1267
	mov	rsp, rsp
	jmp	.label_1272
.label_1267:
	jmp	.label_1273
.label_1273:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1268
.label_1272:
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
	#Procedure 0x412bc0

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
	je	.label_1274
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
.label_1274:
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
	#Procedure 0x412d80
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
	#Procedure 0x412e30

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412e90

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
	jne	.label_1276
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1276
	lea	rdi, [rdi]
	call	xalloc_die
.label_1276:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412ef0
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
	jae	.label_1277
	mov	rsp, rsp
	call	xalloc_die
.label_1277:
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
	#Procedure 0x412f70

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
	jne	.label_1278
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1278
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1280
.label_1278:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1279
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1279
	lea	rsi, [rsi]
	call	xalloc_die
.label_1279:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413020

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
	jne	.label_1281
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1283
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
.label_1283:
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
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1282
	call	xalloc_die
.label_1282:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1284:
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
	#Procedure 0x413150

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
	#Procedure 0x413180
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
	#Procedure 0x4131c0
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
	#Procedure 0x413210
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
	jb	.label_1286
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1287
.label_1286:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1287:
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
	#Procedure 0x413280

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
	#Procedure 0x4132d0
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
	#Procedure 0x413330

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413390

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x4133a0

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
	jge	.label_1288
	call	xset_binary_mode_error
.label_1288:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4133e0

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
	jne	.label_1300
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_1292
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1295
.label_1292:
	mov	dword ptr [rbp - 0x50], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0x3fffffff
	jbe	.label_1296
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_1293
.label_1296:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_1293:
	jmp	.label_1295
.label_1295:
	nop	
	jmp	.label_1289
.label_1300:
	cmp	dword ptr [rbp - 0x50], 1
	jne	.label_1298
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1290
.label_1298:
	cmp	dword ptr [rbp - 0x50], 3
	jne	.label_1294
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1294:
	jmp	.label_1290
.label_1290:
	jmp	.label_1289
.label_1289:
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_1297
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1301
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_1291
.label_1301:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1291
.label_1291:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_1302
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1299
.label_1302:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], ecx
.label_1299:
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
.label_1297:
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
	#Procedure 0x4135d0

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
	#Procedure 0x413640

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
.label_1304:
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
	jne	.label_1305
	jmp	.label_1306
.label_1305:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1303
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1303
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1307
.label_1303:
	jmp	.label_1304
.label_1306:
	mov	dword ptr [rbp - 4], 0
.label_1307:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4136f0

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 9], 1
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	lea	rsi, [rbp - 0x28]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	rax
	nop	
	movsd	qword ptr [rbp - 0x18], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	je	.label_1313
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_1310
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1310
.label_1313:
	mov	byte ptr [rbp - 9], 0
	lea	rsi, [rsi]
	jmp	.label_1309
.label_1310:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	nop	
	ucomisd	xmm1, xmm0
	jne	.label_1308
	lea	rsi, [rsi]
	jp	.label_1308
	jmp	.label_1311
.label_1308:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x22
	jne	.label_1311
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], 0
.label_1311:
	nop	
	jmp	.label_1309
.label_1309:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1312
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_1312:
	movsd	xmm0, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsd	qword ptr [rax], xmm0
	mov	cl, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413810

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
	jg	.label_1347
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_1347
	jmp	.label_1345
.label_1347:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_9
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_1345:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1361
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1365
.label_1361:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1365
.label_1365:
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
.label_1336:
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
	je	.label_1321
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_1336
.label_1321:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1348
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_1322
.label_1348:
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
	jne	.label_1363
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_1320
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1320
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_1320
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_1324
.label_1320:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_1322
.label_1324:
	lea	rdi, [rdi]
	jmp	.label_1339
.label_1363:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_1343
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_1351
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_1322
.label_1351:
	mov	dword ptr [rbp - 0x60], 1
.label_1343:
	jmp	.label_1339
.label_1339:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_1356
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_1322
.label_1356:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1329
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
	jne	.label_1317
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
	jmp	.label_1322
.label_1317:
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
	je	.label_1316
	jmp	.label_1360
.label_1360:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_1316
	nop	
	jmp	.label_1359
.label_1359:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1316
	nop	
	jmp	.label_1368
.label_1368:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_1316
	lea	rsi, [rsi]
	jmp	.label_1373
.label_1373:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_1316
	jmp	.label_1376
.label_1376:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1316
	jmp	.label_1315
.label_1315:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_1316
	mov	rsp, rsp
	jmp	.label_1333
.label_1333:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1316
	jmp	.label_1319
.label_1319:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_1316
	mov	rsp, rsp
	jmp	.label_1352
.label_1352:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_1316
	jmp	.label_1369
.label_1369:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_1332
	jmp	.label_1316
.label_1316:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1346
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
	je	.label_1314
	lea	rsi, [rsi]
	jmp	.label_1379
.label_1379:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1314
	jmp	.label_1364
.label_1364:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_1326
	lea	rsi, [rsi]
	jmp	.label_1337
.label_1337:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_1358
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_1358:
	jmp	.label_1326
.label_1314:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_1326:
	jmp	.label_1346
.label_1346:
	nop	
	jmp	.label_1332
.label_1332:
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
	je	.label_1362
	jmp	.label_1353
.label_1353:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1372
	jmp	.label_1374
.label_1374:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_1371
	jmp	.label_1378
.label_1378:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1375
	nop	
	jmp	.label_1349
.label_1349:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_1323
	nop	
	jmp	.label_1334
.label_1334:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1340
	mov	rsp, rsp
	jmp	.label_1342
.label_1342:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_1330
	jmp	.label_1331
.label_1331:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1318
	mov	rbp, rbp
	jmp	.label_1354
.label_1354:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1355
	jmp	.label_1370
.label_1370:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1367
	jmp	.label_1350
.label_1350:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1328
	jmp	.label_1327
.label_1327:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1371
	jmp	.label_1357
.label_1357:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1375
	jmp	.label_1335
.label_1335:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1323
	jmp	.label_1366
.label_1366:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1330
	jmp	.label_1377
.label_1377:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_1338
	jmp	.label_1341
.label_1367:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1362:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1328:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_1325
.label_1372:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1371:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1375:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1323:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1340:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_1325
.label_1330:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_1325
.label_1338:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1318:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1355:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1325
.label_1341:
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
	jmp	.label_1322
.label_1325:
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
	je	.label_1344
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_1344:
	jmp	.label_1329
.label_1329:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_1322:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4141a0

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
	jae	.label_1380
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_1381
.label_1380:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_1381:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414220

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
.label_1382:
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
	je	.label_1383
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
	jmp	.label_1382
.label_1383:
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
	#Procedure 0x4142a0

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
	je	.label_1392
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
.label_1392:
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
	je	.label_1396
	nop	
	jmp	.label_1405
.label_1405:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_1406
	jmp	.label_1409
.label_1396:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_1413
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
	jmp	.label_1391
.label_1413:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_1391:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1388
.label_1406:
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
	ja	.label_1390
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
	jmp	.label_1403
.label_1390:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1403:
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
	jmp	.label_1388
.label_1409:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_1384
	nop	
	jmp	.label_1404
.label_1404:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_1387
	jmp	.label_1410
.label_1410:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1384
	nop	
	jmp	.label_1385
.label_1385:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1387
	nop	
	jmp	.label_1395
.label_1395:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_1384
	lea	rsi, [rsi]
	jmp	.label_1402
.label_1402:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1384
	lea	rsi, [rsi]
	jmp	.label_1408
.label_1408:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1387
	mov	rsp, rsp
	jmp	.label_1411
.label_1411:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1384
	jmp	.label_1389
.label_1389:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_1387
	lea	rsi, [rsi]
	jmp	.label_1400
.label_1400:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_1384
	jmp	.label_1414
.label_1414:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1387
	mov	rsp, rsp
	jmp	.label_1386
.label_1386:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_1384
	lea	rsi, [rsi]
	jmp	.label_1407
.label_1407:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1384
	nop	
	jmp	.label_1398
.label_1398:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_1399
	lea	rdi, [rdi]
	jmp	.label_1387
.label_1387:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1393
.label_1384:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_1412
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
	jmp	.label_1394
.label_1412:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_1394:
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
	jmp	.label_1393
.label_1399:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_1397
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
	jmp	.label_1401
.label_1397:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_1401:
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
.label_1393:
	jmp	.label_1388
.label_1388:
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
	#Procedure 0x414900

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
	#Procedure 0x414950

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
	jg	.label_1417
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
	jle	.label_1416
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1419
.label_1416:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1421
.label_1419:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1418
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1418:
	mov	rbp, rbp
	jmp	.label_1421
.label_1421:
	jmp	.label_1422
.label_1417:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1422:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_1415
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1415
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1423
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
	jne	.label_1420
.label_1423:
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
.label_1420:
	jmp	.label_1415
.label_1415:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414ad0

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
	jne	.label_1424
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_1424:
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
	ja	.label_1425
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	jmp	.label_1426
.label_1425:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1426:
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
	#Procedure 0x414bc0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	qword ptr [rsi + 8], 0
	nop	
	jl	.label_1427
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1430
.label_1427:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x16
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1429
.label_1430:
	mov	qword ptr [rbp - 0x10], 0x1fa400
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1431:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_1432
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x28]
	call	nanosleep
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rsi, 0x1fa400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	cmp	dword ptr [rbp - 4], 0
	je	.label_1433
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1428
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_1428:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1429
.label_1433:
	nop	
	mov	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jmp	.label_1431
.label_1432:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x28]
	call	nanosleep
	mov	dword ptr [rbp - 0x14], eax
.label_1429:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414d20

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414d40

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414d60

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
	je	.label_1435
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1434
.label_1435:
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1434:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414dc0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x414e10
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414e60
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414eb0
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 4]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414ef0
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414f50

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 4]
	mov	edx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 4]
	mov	r9, qword ptr [rbp - 0x10]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414fb0
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 6], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	movzx	esi, word ptr [rbp - 6]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 6]
	sub	edi, dword ptr [rbp - 4]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415000
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415050
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
	mov	byte ptr [rbp - 5], al
	nop	
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 5]
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 4]
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4150b0
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415100

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
	jne	.label_1436
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1439
.label_1436:
	mov	rbp, rbp
	jmp	.label_1437
.label_1437:
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
	jne	.label_1438
	jmp	.label_1440
.label_1438:
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
	je	.label_1437
.label_1440:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1439:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4151f0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	call	c_locale
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1443
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1442
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1442:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	jmp	.label_1441
.label_1443:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	call	strtod_l
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x10], xmm0
.label_1441:
	movsd	xmm0, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415290

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4152e0

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
	jne	.label_1447
	test	byte ptr [rbp - 0x15], 1
	je	.label_1446
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_1447
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_1446
.label_1447:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_1445
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1445:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_1448
.label_1446:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_1448:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4153c0

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
	movsd	qword ptr [rbp - 8], xmm0
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	ucomisd	xmm0, xmm1
	mov	rsp, rsp
	ja	.label_1450
	lea	rdi, [rdi]
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	jmp	.label_1451
.label_1450:
	movsd	xmm0,  qword ptr [word ptr [label_1453]]
	ucomisd	xmm0, qword ptr [rbp - 8]
	ja	.label_1454
	lea	rdi, [rdi]
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	nop	
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	jmp	.label_1451
.label_1454:
	lea	rsi, [rsi]
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	nop	
	movsd	xmm0,  qword ptr [word ptr [label_1257]]
	cvttsd2si	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	movsd	xmm1, qword ptr [rbp - 8]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x30], xmm0
	lea	rsi, [rsi]
	cvttsd2si	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsd	xmm1, qword ptr [rbp - 0x30]
	ucomisd	xmm1, xmm0
	nop	
	seta	sil
	lea	rsi, [rsi]
	and	sil, 1
	mov	rsp, rsp
	movzx	eax, sil
	nop	
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_1452
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_1452:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	make_timespec
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
.label_1451:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415570

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
	je	.label_1455
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_10
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1457
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1456
.label_1457:
	mov	byte ptr [rbp - 0xd], 0
.label_1456:
	jmp	.label_1455
.label_1455:
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
	#Procedure 0x415610

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415690

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
	#Procedure 0x4156d0

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
	jge	.label_1464
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1462
.label_1464:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1461
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
	je	.label_1460
.label_1461:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1460
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1460:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1463
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
.label_1463:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1462:
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
	#Procedure 0x4157f0

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
	je	.label_1465
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1466
.label_1465:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1467
.label_1466:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1467:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415860

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
	je	.label_1468
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
.label_1468:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4158c0

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
	jne	.label_1469
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1469
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1469
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
	jne	.label_1470
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1471
.label_1470:
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
	jmp	.label_1471
.label_1469:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1471:
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
	#Procedure 0x4159d0

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415a30
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
	jb	.label_1475
	jmp	.label_1477
.label_1477:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_1475
	nop	
	jmp	.label_1476
.label_1476:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_1479
	jmp	.label_1475
.label_1475:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_1478
.label_1479:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_1478:
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
	#Procedure 0x415ac0
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
	jb	.label_1480
	nop	
	jmp	.label_1481
.label_1481:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_1482
	lea	rdi, [rdi]
	jmp	.label_1480
.label_1480:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1483
.label_1482:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_1483:
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
	#Procedure 0x415b40
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
	ja	.label_1484
	mov	rsp, rsp
	jmp	.label_1486
.label_1486:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1485
.label_1484:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_1485:
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
	#Procedure 0x415b90
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
	je	.label_1487
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1487:
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
	#Procedure 0x415be0
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
	jb	.label_1488
	nop	
	jmp	.label_1489
.label_1489:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_1490
	lea	rsi, [rsi]
	jmp	.label_1488
.label_1488:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1491
.label_1490:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_1491:
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
	#Procedure 0x415c50
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
	ja	.label_1493
	jmp	.label_1494
.label_1494:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_1492
.label_1493:
	mov	byte ptr [rbp - 5], 0
.label_1492:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415ca0
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
	ja	.label_1495
	lea	rsi, [rsi]
	jmp	.label_1497
.label_1497:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1496
.label_1495:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_1496:
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
	#Procedure 0x415cf0
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
	ja	.label_1498
	jmp	.label_1499
.label_1499:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1500
.label_1498:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1500:
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
	#Procedure 0x415d40
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
	ja	.label_1501
	jmp	.label_1503
.label_1503:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1502
.label_1501:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1502:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415d90
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
	jb	.label_1504
	jmp	.label_1505
.label_1505:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_1504
	nop	
	jmp	.label_1508
.label_1508:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1504
	jmp	.label_1506
.label_1506:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_1509
	mov	rsp, rsp
	jmp	.label_1504
.label_1504:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1507
.label_1509:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1507:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415e40
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
	jb	.label_1510
	mov	rbp, rbp
	jmp	.label_1511
.label_1511:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_1513
	mov	rsp, rsp
	jmp	.label_1510
.label_1510:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1512
.label_1513:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1512:
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
	#Procedure 0x415eb0
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
	ja	.label_1514
	jmp	.label_1516
.label_1516:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_1515
.label_1514:
	mov	byte ptr [rbp - 5], 0
.label_1515:
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
	#Procedure 0x415f00
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
	jb	.label_1517
	lea	rdi, [rdi]
	jmp	.label_1521
.label_1521:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_1517
	jmp	.label_1518
.label_1518:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1520
	jmp	.label_1517
.label_1517:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1519
.label_1520:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_1519:
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
	#Procedure 0x415f90

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
	ja	.label_1522
	jmp	.label_1523
.label_1523:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_1524
.label_1522:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_1524:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x415fe0
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
	ja	.label_1525
	mov	rbp, rbp
	jmp	.label_1526
.label_1526:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1527
.label_1525:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1527:
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4160f0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x416100

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
