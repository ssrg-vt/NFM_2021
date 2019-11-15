	.section	.text
	.align	32
	#Procedure 0x401bc0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_7
	mov	rsp, rsp
	jmp	.label_8
.label_8:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_9
.label_7:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x14], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x18], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x24], eax
	nop	
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401db0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x40], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_13:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	je	.label_11
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 1], cl
.label_11:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_12
	nop	
	jmp	.label_14
.label_12:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_13
.label_14:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_10
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_10:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	edi, 5
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	call	setlocale
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_15
	movabs	rsi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_15
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.45
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2c], eax
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fb0

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x350
	nop	
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x184], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2d8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2d8]
	mov	rdi, qword ptr [rsi]
	lea	rdi, [rdi]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.9
	nop	
	movabs	rsi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 8], rax
	call	bindtextdomain
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x268], rax
	call	atexit
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	getpagesize
	nop	
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	lea	rdi, [rdi]
	movsxd	rdi, eax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [page_size]],  rdi
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x230], rsi
	mov	rcx, qword ptr [rbp - 0x230]
	call	setvbuf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	call	getenv
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	setne	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [posixly_correct]],  r8b
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [print_bytes]],  0
	mov	byte ptr [byte ptr [print_chars]],  0
	mov	byte ptr [byte ptr [print_words]],  0
	mov	byte ptr [byte ptr [print_lines]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [print_linelength]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [max_line_length]],  0
	mov	qword ptr [word ptr [total_bytes]],  0
	mov	qword ptr [word ptr [total_chars]],  0
	nop	
	mov	qword ptr [word ptr [total_words]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [total_lines]],  0
.label_61:
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x184]
	mov	rsi, qword ptr [rbp - 0x2d8]
	call	getopt_long
	nop	
	mov	dword ptr [rbp - 0x2a4], eax
	mov	rsp, rsp
	cmp	eax, -1
	je	.label_50
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2a4]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2b8], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2bc], ecx
	nop	
	je	.label_57
	mov	rbp, rbp
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x344], eax
	je	.label_69
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x2f4], eax
	lea	rdi, [rdi]
	je	.label_77
	jmp	.label_16
.label_16:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x348], eax
	lea	rsi, [rsi]
	je	.label_28
	lea	rdi, [rdi]
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0x2b8]
	sub	eax, 0x6c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x26c], eax
	lea	rdi, [rdi]
	je	.label_33
	lea	rdi, [rdi]
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	sub	eax, 0x6d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2a8], eax
	je	.label_43
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	sub	eax, 0x77
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x178], eax
	lea	rsi, [rsi]
	je	.label_48
	lea	rdi, [rdi]
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x2b8]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x31c], eax
	je	.label_60
	jmp	.label_65
.label_28:
	mov	byte ptr [byte ptr [print_bytes]],  1
	mov	rbp, rbp
	jmp	.label_35
.label_43:
	mov	byte ptr [byte ptr [print_chars]],  1
	mov	rbp, rbp
	jmp	.label_35
.label_33:
	mov	byte ptr [byte ptr [print_lines]],  1
	lea	rdi, [rdi]
	jmp	.label_35
.label_48:
	mov	byte ptr [byte ptr [print_words]],  1
	nop	
	jmp	.label_35
.label_77:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_linelength]],  1
	lea	rdi, [rdi]
	jmp	.label_35
.label_60:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x170], rax
	jmp	.label_35
.label_69:
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_57:
	movabs	rsi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str.14
	mov	rbp, rbp
	movabs	r9, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x240], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_65:
	mov	edi, 1
	call	usage
.label_35:
	jmp	.label_61
.label_50:
	test	byte ptr [byte ptr [print_lines]],  1
	jne	.label_25
	test	byte ptr [byte ptr [print_words]],  1
	jne	.label_25
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_chars]],  1
	jne	.label_25
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [print_bytes]],  1
	lea	rdi, [rdi]
	jne	.label_25
	test	byte ptr [byte ptr [print_linelength]],  1
	lea	rsi, [rsi]
	jne	.label_25
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_bytes]],  1
	nop	
	mov	byte ptr [byte ptr [print_words]],  1
	mov	byte ptr [byte ptr [print_lines]],  1
.label_25:
	mov	byte ptr [rbp - 0x39], 0
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x170], 0
	lea	rdi, [rdi]
	je	.label_20
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x184]
	mov	rbp, rbp
	jge	.label_27
	nop	
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	nop	
	mov	rdx, qword ptr [rbp - 0x2d8]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2f0], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x288], edi
	nop	
	mov	esi, dword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x278], rcx
	lea	rsi, [rsi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_2
	nop	
	mov	rdi, qword ptr [rbp - 0x278]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x334], eax
	call	usage
.label_27:
	mov	rdi, qword ptr [rbp - 0x170]
	nop	
	mov	eax, OFFSET FLAT:.str.19
	nop	
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_21
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x298], rax
	jmp	.label_24
.label_21:
	movabs	rsi, OFFSET FLAT:.str.20
	mov	rdi, qword ptr [rbp - 0x170]
	nop	
	call	fopen
	mov	qword ptr [rbp - 0x298], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x298], 0
	lea	rdi, [rdi]
	jne	.label_38
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rax
	call	quotearg_style
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_38:
	lea	rdi, [rdi]
	jmp	.label_24
.label_24:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x298]
	mov	rbp, rbp
	call	fileno
	mov	rsp, rsp
	lea	rsi, [rbp - 0x218]
	lea	rsi, [rsi]
	mov	edi, eax
	call	__fstat
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_22
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x200]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rbp, rbp
	jne	.label_22
	nop	
	cvtsi2sd	xmm0, qword ptr [rbp - 0x1e8]
	movsd	qword ptr [rbp - 0x2d0], xmm0
	nop	
	call	physmem_available
	movsd	xmm1,  qword ptr [word ptr [label_29]]
	movsd	xmm2,  qword ptr [word ptr [label_30]]
	nop	
	divsd	xmm0, xmm2
	ucomisd	xmm0, xmm1
	mov	rbp, rbp
	jbe	.label_31
	movsd	xmm0,  qword ptr [word ptr [label_29]]
	movsd	qword ptr [rbp - 0x228], xmm0
	jmp	.label_42
.label_31:
	mov	rsp, rsp
	call	physmem_available
	movsd	xmm1,  qword ptr [word ptr [label_30]]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x228], xmm0
.label_42:
	movsd	xmm0, qword ptr [rbp - 0x228]
	movsd	xmm1, qword ptr [rbp - 0x2d0]
	ucomisd	xmm0, xmm1
	jb	.label_22
	lea	rdi, [rbp - 0x160]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], 1
	nop	
	call	readtokens0_init
	nop	
	lea	rsi, [rbp - 0x160]
	nop	
	mov	rdi, qword ptr [rbp - 0x298]
	call	readtokens0
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_62
	jmp	.label_72
.label_62:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x298]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_47
.label_72:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	nop	
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x220], rax
	call	quotearg_style
	nop	
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x220]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_47:
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x238]
	call	argv_iter_init_argv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x340], rax
	jmp	.label_51
.label_22:
	mov	qword ptr [rbp - 0x238], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x298]
	call	argv_iter_init_stream
	mov	qword ptr [rbp - 0x340], rax
.label_51:
	mov	rbp, rbp
	jmp	.label_76
.label_20:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x184]
	jge	.label_64
	mov	rax, qword ptr [rbp - 0x2d8]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x330], rax
	nop	
	jmp	.label_70
.label_64:
	nop	
	movabs	rax, OFFSET FLAT:main.stdin_only
	mov	qword ptr [rbp - 0x330], rax
	jmp	.label_70
.label_70:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x330]
	nop	
	mov	qword ptr [rbp - 0x238], rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	cmp	ecx, dword ptr [rbp - 0x184]
	nop	
	jge	.label_18
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x184]
	sub	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_32
.label_18:
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	jmp	.label_32
.label_32:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	call	argv_iter_init_argv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x340], rax
.label_76:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x340], 0
	jne	.label_52
	nop	
	call	xalloc_die
.label_52:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x238]
	call	get_input_fstatus
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x258], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x258]
	call	compute_number_width
	mov	rbp, rbp
	mov	dword ptr [dword ptr [number_width]],  eax
	mov	byte ptr [rbp - 0x305], 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2f8], 0
.label_66:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x244]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2bd], 0
	mov	rdi, qword ptr [rbp - 0x340]
	call	argv_iter
	mov	qword ptr [rbp - 0x2a0], rax
	cmp	qword ptr [rbp - 0x2a0], 0
	mov	rsp, rsp
	jne	.label_19
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x244]
	lea	rsi, [rsi]
	mov	ecx, eax
	sub	ecx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x314], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2b4], ecx
	je	.label_59
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x314]
	mov	rbp, rbp
	sub	eax, 3
	mov	dword ptr [rbp - 0x304], eax
	je	.label_41
	lea	rdi, [rdi]
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x314]
	mov	rsp, rsp
	sub	eax, 4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28c], eax
	je	.label_46
	lea	rdi, [rdi]
	jmp	.label_37
.label_59:
	jmp	.label_56
.label_46:
	nop	
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x25c], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x25c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x305], 0
	lea	rdi, [rdi]
	jmp	.label_56
.label_41:
	mov	rsp, rsp
	call	xalloc_die
.label_37:
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0x33f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_19:
	cmp	qword ptr [rbp - 0x170], 0
	je	.label_34
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x170]
	nop	
	mov	eax, OFFSET FLAT:.str.19
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_34
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x2a0]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_34
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x310], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x284], edi
	mov	esi, dword ptr [rbp - 0x284]
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2bd], 1
.label_34:
	mov	rax, qword ptr [rbp - 0x2a0]
	cmp	byte ptr [rax], 0
	jne	.label_74
	nop	
	cmp	qword ptr [rbp - 0x170], 0
	jne	.label_63
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	jmp	.label_36
.label_63:
	mov	rdi, qword ptr [rbp - 0x340]
	call	argv_iter_n_args
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	qword ptr [rbp - 0x168], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	movabs	rdi, OFFSET FLAT:.str.28
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x250], rax
	nop	
	mov	qword ptr [rbp - 0x2c8], r8
	call	gettext
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.29
	nop	
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x250]
	nop	
	mov	r8, qword ptr [rbp - 0x2c8]
	mov	r9, rax
	mov	al, 0
	nop	
	call	error
.label_36:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2bd], 1
.label_74:
	test	byte ptr [rbp - 0x2bd], 1
	nop	
	je	.label_71
	mov	byte ptr [rbp - 0x305], 0
	nop	
	jmp	.label_73
.label_71:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x2a0]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2e0], rdi
	mov	rbp, rbp
	je	.label_53
	mov	eax, dword ptr [rbp - 0x2f8]
	mov	dword ptr [rbp - 0x318], eax
	mov	rsp, rsp
	jmp	.label_26
.label_53:
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x318], eax
	jmp	.label_26
.label_26:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	movsxd	rcx, eax
	imul	rcx, rcx, 0x98
	nop	
	add	rcx, qword ptr [rbp - 0x258]
	mov	rdi, qword ptr [rbp - 0x2e0]
	mov	rsi, rcx
	mov	rsp, rsp
	call	wc_file
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x305]
	lea	rdi, [rdi]
	and	al, 1
	movzx	r8d, al
	and	r8d, edx
	cmp	r8d, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x305], al
.label_73:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_58
	mov	rax, qword ptr [rbp - 0x258]
	mov	dword ptr [rax], 1
.label_58:
	lea	rdi, [rdi]
	jmp	.label_23
.label_23:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2f8]
	add	eax, 1
	mov	dword ptr [rbp - 0x2f8], eax
	mov	rbp, rbp
	jmp	.label_66
.label_56:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x305], 1
	je	.label_54
	cmp	qword ptr [rbp - 0x170], 0
	mov	rbp, rbp
	jne	.label_54
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	call	argv_iter_n_args
	cmp	rax, 0
	jne	.label_54
	xor	eax, eax
	mov	edi, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	call	wc_file
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x305]
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	and	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x305], al
.label_54:
	test	byte ptr [rbp - 0x39], 1
	je	.label_68
	lea	rdi, [rbp - 0x160]
	lea	rsi, [rsi]
	call	readtokens0_free
.label_68:
	nop	
	mov	rdi, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	call	argv_iter_n_args
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	edi, ecx
	lea	rdi, [rdi]
	cmp	rdi, rax
	mov	rsp, rsp
	jae	.label_49
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rax,  qword ptr [word ptr [total_lines]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [total_words]]
	mov	rdx,  qword ptr [word ptr [total_chars]]
	mov	rcx,  qword ptr [word ptr [total_bytes]]
	mov	rsp, rsp
	mov	r8,  qword ptr [word ptr [max_line_length]]
	mov	qword ptr [rbp - 0x2e8], r8
	mov	qword ptr [rbp - 0x300], rax
	mov	qword ptr [rbp - 0x2b0], rsi
	mov	qword ptr [rbp - 0x328], rdx
	mov	qword ptr [rbp - 0x280], rcx
	call	gettext
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, qword ptr [rbp - 0x2b0]
	nop	
	mov	rdx, qword ptr [rbp - 0x328]
	mov	rcx, qword ptr [rbp - 0x280]
	mov	r8, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	mov	r9, rax
	lea	rsi, [rsi]
	call	write_counts
.label_49:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x340]
	nop	
	call	argv_iter_free
	mov	rdi, qword ptr [rbp - 0x258]
	nop	
	call	free
	test	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rdi, [rdi]
	je	.label_17
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_17
	nop	
	call	__errno_location
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.19
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_17:
	lea	rsi, [rsi]
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x305]
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	lea	rsi, [rsi]
	add	rsp, 0x350
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl get_input_fstatus
	.type get_input_fstatus, @function
get_input_fstatus:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_84
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_81
.label_84:
	mov	rbp, rbp
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	jmp	.label_81
.label_81:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, 0x98
	mov	esi, ecx
	mov	rdi, rax
	lea	rdi, [rdi]
	call	xnmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_86
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 1
	lea	rsi, [rsi]
	jne	.label_83
	mov	al,  byte ptr [byte ptr [print_lines]]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [print_words]]
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [print_chars]]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [print_bytes]]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	add	ecx, edx
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [print_linelength]]
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	cmp	ecx, 1
	jne	.label_83
.label_86:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 1
	jmp	.label_80
.label_83:
	mov	qword ptr [rbp - 0x18], 0
.label_87:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_88
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_82
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	mov	esi, edx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_79
.label_82:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	call	__fstat
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_85
.label_79:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rax, rax, 0x98
	nop	
	add	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	lea	rdi, [rdi]
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x1c], eax
.label_85:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x98
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_87
.label_88:
	nop	
	jmp	.label_80
.label_80:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030d0

	.globl compute_number_width
	.type compute_number_width, @function
compute_number_width:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], 1
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x28]
	jae	.label_89
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	jg	.label_89
	mov	dword ptr [rbp - 4], 1
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_98:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_94
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax], 0
	jne	.label_91
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x20]
	mov	rbp, rbp
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_90
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x98
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_92
.label_90:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 7
.label_92:
	mov	rbp, rbp
	jmp	.label_91
.label_91:
	jmp	.label_96
.label_96:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_98
.label_94:
	jmp	.label_95
.label_95:
	lea	rdi, [rdi]
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_97
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	mov	eax, 0xa
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_95
.label_97:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_93
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
.label_93:
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403270

	.globl wc_file
	.type wc_file, @function
wc_file:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_101
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jne	.label_99
.label_101:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	call	xset_binary_mode
	xor	edi, edi
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	wc
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 5], al
	jmp	.label_102
.label_99:
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_100
	mov	rsp, rsp
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0
	mov	rbp, rbp
	jmp	.label_102
.label_100:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	wc
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_103
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
	mov	rsp, rsp
	jmp	.label_102
.label_103:
	nop	
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	mov	byte ptr [rbp - 5], al
.label_102:
	nop	
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403420

	.globl write_counts
	.type write_counts, @function
write_counts:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	movabs	rax, OFFSET FLAT:write_counts.format_sp_int
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xa8], r8
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_lines]],  1
	je	.label_109
	lea	rsi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x80], eax
	call	umaxtostr
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	esi, dword ptr [rbp - 0x80]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc8], eax
.label_109:
	nop	
	test	byte ptr [byte ptr [print_words]],  1
	mov	rbp, rbp
	je	.label_110
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0xc0]
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, rcx
	mov	dword ptr [rbp - 0xc4], eax
	nop	
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc4]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	nop	
	mov	qword ptr [rbp - 0x98], rcx
	mov	dword ptr [rbp - 0x7c], eax
.label_110:
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_chars]],  1
	je	.label_108
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, rcx
	nop	
	mov	dword ptr [rbp - 0x44], eax
	call	umaxtostr
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	nop	
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	nop	
	mov	qword ptr [rbp - 0x98], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
.label_108:
	test	byte ptr [byte ptr [print_bytes]],  1
	je	.label_107
	nop	
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], eax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	mov	qword ptr [rbp - 0x98], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
.label_107:
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_linelength]],  1
	lea	rsi, [rsi]
	je	.label_106
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0xac], eax
	lea	rsi, [rsi]
	call	umaxtostr
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0xac]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x40], eax
.label_106:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_111
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_105
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_104
.label_105:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
.label_104:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xb0], eax
.label_111:
	lea	rsi, [rsi]
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	add	rsp, 0xd0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403750

	.globl wc
	.type wc, @function
wc:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x41d0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40fc], edi
	mov	qword ptr [rbp - 0x4160], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4020], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4030], rcx
	mov	byte ptr [rbp - 0x40a5], 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x4160], 0
	je	.label_195
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4160]
	mov	qword ptr [rbp - 0x40d8], rax
	lea	rdi, [rdi]
	jmp	.label_205
.label_195:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x40d8], rax
.label_205:
	mov	rax, qword ptr [rbp - 0x40d8]
	mov	qword ptr [rbp - 0x4150], rax
	mov	qword ptr [rbp - 0x4090], 0
	mov	qword ptr [rbp - 0x41b8], 0
	nop	
	mov	qword ptr [rbp - 0x4140], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40e0], 0
	mov	qword ptr [rbp - 0x4190], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_122
	mov	al,  byte ptr [byte ptr [print_bytes]]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x4151], al
	mov	al,  byte ptr [byte ptr [print_chars]]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x40c1], al
	lea	rsi, [rsi]
	jmp	.label_126
.label_122:
	nop	
	mov	al, 1
	nop	
	test	byte ptr [byte ptr [print_bytes]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4011], al
	jne	.label_137
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [print_chars]]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4011], al
.label_137:
	mov	al, byte ptr [rbp - 0x4011]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4151], al
	mov	byte ptr [rbp - 0x40c1], 0
.label_126:
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_words]],  1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x412d], al
	jne	.label_155
	nop	
	mov	al,  byte ptr [byte ptr [print_linelength]]
	nop	
	mov	byte ptr [rbp - 0x412d], al
.label_155:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x412d]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4049], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4151], 1
	mov	rbp, rbp
	je	.label_167
	nop	
	test	byte ptr [rbp - 0x40c1], 1
	jne	.label_167
	test	byte ptr [byte ptr [print_lines]],  1
	mov	rbp, rbp
	jne	.label_167
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x4049], 1
	je	.label_184
.label_167:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x40fc]
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	ecx, eax
	call	fdadvise
.label_184:
	test	byte ptr [rbp - 0x4151], 1
	je	.label_194
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40c1], 1
	nop	
	jne	.label_194
	test	byte ptr [byte ptr [print_lines]],  1
	jne	.label_194
	test	byte ptr [rbp - 0x4049], 1
	mov	rsp, rsp
	jne	.label_194
	xor	eax, eax
	mov	byte ptr [rbp - 0x40c2], 0
	mov	rcx, qword ptr [rbp - 0x4020]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rcx]
	jge	.label_204
	mov	edi, dword ptr [rbp - 0x40fc]
	mov	rax, qword ptr [rbp - 0x4020]
	lea	rdi, [rdi]
	add	rax, 8
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	__fstat
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x4020]
	lea	rdi, [rdi]
	mov	dword ptr [rsi], eax
.label_204:
	mov	rax, qword ptr [rbp - 0x4020]
	nop	
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_117
	nop	
	mov	rax, qword ptr [rbp - 0x4020]
	lea	rdi, [rdi]
	add	rax, 8
	mov	rsp, rsp
	mov	rdi, rax
	call	usable_st_size
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_113
	jmp	.label_117
.label_113:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x4020]
	cmp	rcx, qword ptr [rdx + 0x38]
	jg	.label_117
	mov	rax, qword ptr [rbp - 0x4020]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x40d0], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x4030], 0
	mov	rsp, rsp
	jge	.label_130
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x40fc]
	call	lseek
	mov	qword ptr [rbp - 0x4030], rax
.label_130:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40d0]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [word ptr [page_size]]
	cmp	rdx, 0
	je	.label_148
	nop	
	mov	rax, qword ptr [rbp - 0x40d0]
	cmp	rax, qword ptr [rbp - 0x4030]
	jae	.label_156
	nop	
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40f8], rcx
	jmp	.label_163
.label_156:
	mov	rax, qword ptr [rbp - 0x40d0]
	sub	rax, qword ptr [rbp - 0x4030]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40f8], rax
.label_163:
	mov	rax, qword ptr [rbp - 0x40f8]
	mov	qword ptr [rbp - 0x41b8], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40c2], 1
	mov	rbp, rbp
	jmp	.label_152
.label_148:
	xor	eax, eax
	nop	
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x40d0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40d0]
	mov	rsi, qword ptr [rbp - 0x4020]
	cmp	rcx, qword ptr [rsi + 0x40]
	nop	
	mov	qword ptr [rbp - 0x40b8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4070], rdx
	jge	.label_182
	movabs	rax, 0x2000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4020]
	cmp	qword ptr [rcx + 0x40], rax
	ja	.label_182
	mov	rax, qword ptr [rbp - 0x4020]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x4108], rax
	jmp	.label_196
.label_182:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x4108], rcx
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x4108]
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40b8]
	nop	
	mov	qword ptr [rbp - 0x4180], rax
	mov	rbp, rbp
	mov	rax, rsi
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4068], rdx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x4180]
	nop	
	div	rdi
	mov	r8, qword ptr [rbp - 0x4070]
	mov	rsp, rsp
	sub	r8, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4038], r8
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4068]
	cmp	rdx, qword ptr [rbp - 0x4030]
	lea	rdi, [rdi]
	jg	.label_129
	mov	rax, qword ptr [rbp - 0x4030]
	cmp	rax, qword ptr [rbp - 0x4038]
	jge	.label_129
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x40fc]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x4038]
	lea	rsi, [rsi]
	call	lseek
	lea	rdi, [rdi]
	xor	edx, edx
	mov	esi, edx
	nop	
	cmp	rsi, rax
	jg	.label_129
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4038]
	sub	rax, qword ptr [rbp - 0x4030]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x41b8], rax
.label_129:
	nop	
	jmp	.label_152
.label_152:
	jmp	.label_117
.label_117:
	test	byte ptr [rbp - 0x40c2], 1
	jne	.label_143
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 2
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x40fc]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	ecx, eax
	call	fdadvise
.label_174:
	mov	eax, 0x4000
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rsi, [rbp - 0x4010]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x40fc]
	lea	rdi, [rdi]
	call	safe_read
	mov	qword ptr [rbp - 0x4198], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jbe	.label_164
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x4198], -1
	mov	rbp, rbp
	jne	.label_169
	nop	
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x4150]
	mov	dword ptr [rbp - 0x4174], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x4174]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x40a5], 0
	jmp	.label_164
.label_169:
	mov	rax, qword ptr [rbp - 0x4198]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x41b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x41b8], rax
	jmp	.label_174
.label_164:
	mov	rbp, rbp
	jmp	.label_143
.label_143:
	mov	rsp, rsp
	jmp	.label_112
.label_194:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x40c1], 1
	jne	.label_139
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4049], 1
	mov	rsp, rsp
	jne	.label_139
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4116], 0
.label_208:
	mov	eax, 0x4000
	mov	edx, eax
	lea	rsi, [rbp - 0x4010]
	mov	edi, dword ptr [rbp - 0x40fc]
	nop	
	call	safe_read
	mov	qword ptr [rbp - 0x4198], rax
	cmp	rax, 0
	nop	
	jbe	.label_116
	cmp	qword ptr [rbp - 0x4198], -1
	mov	rbp, rbp
	jne	.label_207
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4150]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x40a5], 0
	jmp	.label_116
.label_207:
	mov	rsp, rsp
	lea	rax, [rbp - 0x4010]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4198]
	add	rcx, qword ptr [rbp - 0x41b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x41b8], rcx
	mov	qword ptr [rbp - 0x4080], rax
	mov	rax, qword ptr [rbp - 0x4080]
	add	rax, qword ptr [rbp - 0x4198]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40a0], rax
	mov	rax, qword ptr [rbp - 0x4190]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x41a8], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4116], 1
	jne	.label_120
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x4080]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40a0]
	je	.label_189
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4080]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x4080], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	cmp	edx, 0xa
	sete	sil
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edx, sil
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x4190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4190], rax
	jmp	.label_149
.label_189:
	mov	rsp, rsp
	jmp	.label_151
.label_120:
	jmp	.label_178
.label_178:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x4080]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4080]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	esi, 0xa
	mov	rdx, rax
	mov	rsp, rsp
	call	memchr
	mov	qword ptr [rbp - 0x4080], rax
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_187
	nop	
	mov	rax, qword ptr [rbp - 0x4080]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x4080], rax
	mov	rax, qword ptr [rbp - 0x4190]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4190], rax
	jmp	.label_178
.label_187:
	jmp	.label_151
.label_151:
	mov	eax, 0xf
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4190]
	nop	
	sub	rdx, qword ptr [rbp - 0x41a8]
	mov	rax, qword ptr [rbp - 0x4198]
	nop	
	xor	esi, esi
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	edx, esi
	div	rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rcx, rax
	nop	
	ja	.label_201
	nop	
	mov	byte ptr [rbp - 0x4116], 1
	lea	rsi, [rsi]
	jmp	.label_206
.label_201:
	mov	byte ptr [rbp - 0x4116], 0
.label_206:
	jmp	.label_208
.label_116:
	mov	rsp, rsp
	jmp	.label_175
.label_139:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_210
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x4148]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4071], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x41a0], 0
	mov	rbp, rbp
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	mov	byte ptr [rbp - 0x4115], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x41c0], 0
.label_153:
	mov	rsp, rsp
	mov	eax, 0x4000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdx, [rbp - 0x4010]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40fc]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x41c0]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x41c0]
	lea	rdi, [rdi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	safe_read
	mov	qword ptr [rbp - 0x4198], rax
	mov	rbp, rbp
	cmp	rax, 0
	jbe	.label_147
	cmp	qword ptr [rbp - 0x4198], -1
	jne	.label_150
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4150]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4050], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x4050]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x40a5], 0
	jmp	.label_147
.label_150:
	lea	rax, [rbp - 0x4010]
	mov	rcx, qword ptr [rbp - 0x4198]
	add	rcx, qword ptr [rbp - 0x41b8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x41b8], rcx
	mov	qword ptr [rbp - 0x4170], rax
	mov	rax, qword ptr [rbp - 0x41c0]
	nop	
	add	rax, qword ptr [rbp - 0x4198]
	nop	
	mov	qword ptr [rbp - 0x4198], rax
.label_115:
	mov	byte ptr [rbp - 0x4181], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4115], 1
	nop	
	jne	.label_186
	mov	rax, qword ptr [rbp - 0x4170]
	movsx	edi, byte ptr [rax]
	call	is_basic
	mov	rsp, rsp
	test	al, 1
	jne	.label_193
	jmp	.label_186
.label_193:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4060], 1
	mov	rax, qword ptr [rbp - 0x4170]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x41b0], ecx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4181], 0
	mov	rbp, rbp
	jmp	.label_157
.label_186:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x41b0]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x4148]
	nop	
	mov	byte ptr [rbp - 0x4115], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4148]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40f0], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x4170]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4198]
	mov	rsp, rsp
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4060], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x4060], -2
	jne	.label_209
	mov	rax, qword ptr [rbp - 0x40f0]
	mov	qword ptr [rbp - 0x4148], rax
	lea	rsi, [rsi]
	jmp	.label_212
.label_209:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x4060], -1
	lea	rdi, [rdi]
	jne	.label_114
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4170]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x4170], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4198]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4198], rax
	jmp	.label_121
.label_114:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x4148]
	call	mbsinit
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_140
	mov	byte ptr [rbp - 0x4115], 0
.label_140:
	cmp	qword ptr [rbp - 0x4060], 0
	mov	rbp, rbp
	jne	.label_166
	mov	dword ptr [rbp - 0x41b0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4060], 1
.label_166:
	mov	rsp, rsp
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x41b0]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 9
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4114], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4134], ecx
	mov	rsp, rsp
	je	.label_159
	lea	rdi, [rdi]
	jmp	.label_170
.label_170:
	mov	eax, dword ptr [rbp - 0x4114]
	mov	rbp, rbp
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x40a4], eax
	je	.label_173
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0x4114]
	mov	rsp, rsp
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x403c], eax
	je	.label_181
	mov	rbp, rbp
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 0x4114]
	mov	rbp, rbp
	add	eax, -0xc
	mov	rbp, rbp
	sub	eax, 2
	mov	dword ptr [rbp - 0x4094], eax
	jb	.label_185
	lea	rsi, [rsi]
	jmp	.label_191
.label_191:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4114]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x4164], eax
	lea	rdi, [rdi]
	je	.label_183
	jmp	.label_197
.label_173:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4190]
	add	rax, 1
	mov	qword ptr [rbp - 0x4190], rax
.label_185:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x41a0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x4090]
	jbe	.label_200
	mov	rax, qword ptr [rbp - 0x41a0]
	mov	qword ptr [rbp - 0x4090], rax
.label_200:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x41a0], 0
	nop	
	jmp	.label_132
.label_159:
	mov	eax, 8
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x41a0]
	and	rdx, 7
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x41a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x41a0], rcx
	jmp	.label_132
.label_183:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x41a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x41a0], rax
.label_181:
	jmp	.label_132
.label_132:
	mov	al, byte ptr [rbp - 0x4071]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x40e0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40e0], rdx
	nop	
	mov	byte ptr [rbp - 0x4071], 0
	jmp	.label_190
.label_197:
	test	byte ptr [rbp - 0x4181], 1
	je	.label_124
	mov	edi, dword ptr [rbp - 0x41b0]
	lea	rsi, [rsi]
	call	iswprint
	nop	
	cmp	eax, 0
	je	.label_124
	nop	
	test	byte ptr [byte ptr [print_linelength]],  1
	lea	rsi, [rsi]
	je	.label_133
	mov	edi, dword ptr [rbp - 0x41b0]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4158], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4158], 0
	jle	.label_142
	movsxd	rax, dword ptr [rbp - 0x4158]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x41a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x41a0], rax
.label_142:
	mov	rbp, rbp
	jmp	.label_133
.label_133:
	mov	edi, dword ptr [rbp - 0x41b0]
	nop	
	call	iswspace
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_162
	mov	edi, dword ptr [rbp - 0x41b0]
	call	iswnbspace
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_165
.label_162:
	lea	rdi, [rdi]
	jmp	.label_132
.label_165:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4071], 1
	lea	rsi, [rsi]
	jmp	.label_172
.label_124:
	test	byte ptr [rbp - 0x4181], 1
	mov	rsp, rsp
	jne	.label_188
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4170]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	movsxd	rcx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4128], rcx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x4128]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_188
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x41a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x41a0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4170]
	nop	
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x40e8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40e8]
	mov	rsp, rsp
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x2000
	lea	rdi, [rdi]
	cmp	edi, 0
	mov	rsp, rsp
	je	.label_203
	nop	
	jmp	.label_132
.label_203:
	mov	byte ptr [rbp - 0x4071], 1
.label_188:
	jmp	.label_172
.label_172:
	jmp	.label_190
.label_190:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4060]
	add	rax, qword ptr [rbp - 0x4170]
	mov	qword ptr [rbp - 0x4170], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4060]
	mov	rcx, qword ptr [rbp - 0x4198]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x4198], rcx
	mov	rax, qword ptr [rbp - 0x4140]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x4140], rax
.label_121:
	nop	
	cmp	qword ptr [rbp - 0x4198], 0
	lea	rsi, [rsi]
	ja	.label_115
.label_212:
	cmp	qword ptr [rbp - 0x4198], 0
	mov	rbp, rbp
	jbe	.label_123
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4198], 0x4000
	mov	rsp, rsp
	jne	.label_131
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4170]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x4170], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4198]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4198], rax
.label_131:
	lea	rdi, [rbp - 0x4010]
	mov	rsi, qword ptr [rbp - 0x4170]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4198]
	call	memmove
.label_123:
	mov	rax, qword ptr [rbp - 0x4198]
	mov	qword ptr [rbp - 0x41c0], rax
	mov	rbp, rbp
	jmp	.label_153
.label_147:
	mov	rax, qword ptr [rbp - 0x41a0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x4090]
	lea	rsi, [rsi]
	jbe	.label_161
	mov	rax, qword ptr [rbp - 0x41a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4090], rax
.label_161:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4071]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x40e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40e0], rdx
	nop	
	jmp	.label_171
.label_210:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4051], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40c0], 0
.label_158:
	lea	rdi, [rdi]
	mov	eax, 0x4000
	mov	edx, eax
	mov	rbp, rbp
	lea	rsi, [rbp - 0x4010]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40fc]
	lea	rdi, [rdi]
	call	safe_read
	mov	qword ptr [rbp - 0x4198], rax
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	jbe	.label_192
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x4010]
	mov	qword ptr [rbp - 0x4110], rax
	cmp	qword ptr [rbp - 0x4198], -1
	jne	.label_198
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4150]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4028], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x4028]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40a5], 0
	jmp	.label_192
.label_198:
	mov	rax, qword ptr [rbp - 0x4198]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x41b8]
	mov	qword ptr [rbp - 0x41b8], rax
.label_176:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4110]
	mov	rcx, rax
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4110], rcx
	movsx	edx, byte ptr [rax]
	mov	esi, edx
	sub	esi, 9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x412c], edx
	mov	dword ptr [rbp - 0x411c], esi
	je	.label_211
	mov	rbp, rbp
	jmp	.label_125
.label_125:
	nop	
	mov	eax, dword ptr [rbp - 0x412c]
	mov	rbp, rbp
	sub	eax, 0xa
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x41ac], eax
	mov	rsp, rsp
	je	.label_127
	nop	
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0x412c]
	mov	rbp, rbp
	sub	eax, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40ac], eax
	lea	rdi, [rdi]
	je	.label_136
	jmp	.label_144
.label_144:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x412c]
	lea	rdi, [rdi]
	add	eax, -0xc
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x41c4], eax
	jb	.label_177
	jmp	.label_199
.label_199:
	mov	eax, dword ptr [rbp - 0x412c]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4024], eax
	je	.label_154
	jmp	.label_128
.label_127:
	mov	rax, qword ptr [rbp - 0x4190]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4190], rax
.label_177:
	nop	
	mov	rax, qword ptr [rbp - 0x40c0]
	cmp	rax, qword ptr [rbp - 0x4090]
	mov	rsp, rsp
	jbe	.label_168
	mov	rax, qword ptr [rbp - 0x40c0]
	mov	qword ptr [rbp - 0x4090], rax
.label_168:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40c0], 0
	jmp	.label_141
.label_211:
	lea	rsi, [rsi]
	mov	eax, 8
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x40c0]
	and	rdx, 7
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x40c0]
	mov	qword ptr [rbp - 0x40c0], rcx
	jmp	.label_141
.label_154:
	mov	rax, qword ptr [rbp - 0x40c0]
	add	rax, 1
	mov	qword ptr [rbp - 0x40c0], rax
.label_136:
	jmp	.label_141
.label_141:
	nop	
	mov	al, byte ptr [rbp - 0x4051]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x40e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40e0], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4051], 0
	jmp	.label_145
.label_128:
	mov	rax, qword ptr [rbp - 0x4110]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x4048], rcx
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x4048]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edi, 0x4000
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	rsp, rsp
	je	.label_119
	mov	rax, qword ptr [rbp - 0x40c0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40c0], rax
	mov	rax, qword ptr [rbp - 0x4110]
	movsx	edi, byte ptr [rax - 1]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4088], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4088]
	mov	rbp, rbp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	lea	rsi, [rsi]
	cmp	edi, 0
	jne	.label_118
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4110]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	call	isnbspace
	cmp	eax, 0
	je	.label_138
.label_118:
	nop	
	jmp	.label_141
.label_138:
	mov	byte ptr [rbp - 0x4051], 1
.label_119:
	jmp	.label_145
.label_145:
	jmp	.label_146
.label_146:
	mov	rax, qword ptr [rbp - 0x4198]
	mov	rbp, rbp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x4198], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_176
	lea	rsi, [rsi]
	jmp	.label_158
.label_192:
	mov	rax, qword ptr [rbp - 0x40c0]
	cmp	rax, qword ptr [rbp - 0x4090]
	mov	rbp, rbp
	jbe	.label_160
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40c0]
	mov	qword ptr [rbp - 0x4090], rax
.label_160:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x4051]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x40e0]
	mov	qword ptr [rbp - 0x40e0], rdx
.label_171:
	lea	rsi, [rsi]
	jmp	.label_175
.label_175:
	jmp	.label_112
.label_112:
	mov	al, byte ptr [rbp - 0x40c1]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [print_chars]]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	cmp	ecx, edx
	jge	.label_180
	mov	rax, qword ptr [rbp - 0x41b8]
	mov	qword ptr [rbp - 0x4140], rax
.label_180:
	mov	rdi, qword ptr [rbp - 0x4190]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40e0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4140]
	nop	
	mov	rcx, qword ptr [rbp - 0x41b8]
	nop	
	mov	r8, qword ptr [rbp - 0x4090]
	mov	r9, qword ptr [rbp - 0x4160]
	mov	rsp, rsp
	call	write_counts
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4190]
	mov	rsp, rsp
	add	rcx,  qword ptr [word ptr [total_lines]]
	nop	
	mov	qword ptr [word ptr [total_lines]],  rcx
	mov	rcx, qword ptr [rbp - 0x40e0]
	lea	rsi, [rsi]
	add	rcx,  qword ptr [word ptr [total_words]]
	mov	qword ptr [word ptr [total_words]],  rcx
	mov	rcx, qword ptr [rbp - 0x4140]
	add	rcx,  qword ptr [word ptr [total_chars]]
	mov	qword ptr [word ptr [total_chars]],  rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x41b8]
	lea	rsi, [rsi]
	add	rcx,  qword ptr [word ptr [total_bytes]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [total_bytes]],  rcx
	mov	rcx, qword ptr [rbp - 0x4090]
	cmp	rcx,  qword ptr [word ptr [max_line_length]]
	lea	rdi, [rdi]
	jbe	.label_202
	mov	rax, qword ptr [rbp - 0x4090]
	mov	rbp, rbp
	mov	qword ptr [word ptr [max_line_length]],  rax
.label_202:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x40a5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x41d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 1], al
	je	.label_213
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	je	.label_213
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	byte ptr [rbp - 1], al
	jne	.label_213
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
	jmp	.label_213
.label_213:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl iswnbspace
	.type iswnbspace, @function
iswnbspace:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 8], edi
	test	byte ptr [byte ptr [posixly_correct]],  1
	mov	byte ptr [rbp - 9], cl
	nop	
	jne	.label_214
	mov	al, 1
	cmp	dword ptr [rbp - 8], 0xa0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	je	.label_215
	mov	rsp, rsp
	mov	al, 1
	cmp	dword ptr [rbp - 8], 0x2007
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	je	.label_215
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0x202f
	mov	byte ptr [rbp - 1], al
	je	.label_215
	mov	rbp, rbp
	cmp	dword ptr [rbp - 8], 0x2060
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_215:
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 9], al
.label_214:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d60

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	nop	
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl isnbspace
	.type isnbspace, @function
isnbspace:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	btowc
	lea	rsi, [rsi]
	mov	edi, eax
	call	iswnbspace
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dc0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	eax, 0x30
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_216
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_217
.label_216:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_217:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e60

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_219
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_218
.label_219:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_218:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f20

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rsi], 0
	je	.label_220
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	call	getdelim
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_223
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	feof
	mov	ecx, 4
	mov	rsp, rsp
	mov	edx, 2
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_221
.label_223:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	nop	
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_221
.label_220:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_222
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_221
.label_222:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x28], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
.label_221:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405080

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_224
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_225
.label_224:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	sub	rax, rcx
	sar	rax, 3
	mov	qword ptr [rbp - 8], rax
.label_225:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	je	.label_226
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	free
.label_226:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x10
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405150
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
	#Procedure 0x405180
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
	#Procedure 0x4051b0

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
	je	.label_227
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_231
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_227
.label_231:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_228
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
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_229
.label_228:
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
.label_229:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_227:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_230
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_230:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052e0

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
	.align	32
	#Procedure 0x405320
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
	je	.label_232
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
.label_232:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405380

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
	jae	.label_233
	jmp	.label_236
.label_236:
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
	jne	.label_236
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_235
.label_233:
	jmp	.label_234
.label_234:
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
	jne	.label_234
	jmp	.label_235
.label_235:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054c0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jl	.label_237
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_238
.label_237:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_238:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405530
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdi, 0x18
	mov	rbp, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jne	.label_239
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_242
.label_239:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_242:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_241
	jmp	.label_240
.label_241:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_240:
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405630

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	edi, byte ptr [rbp - 1]
	mov	rsp, rsp
	sar	edi, 5
	lea	rsi, [rsi]
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	edx, 0x1f
	mov	rbp, rbp
	mov	ecx, edx
	mov	rsp, rsp
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405690

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x55
	call	sysconf
	mov	rsp, rsp
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x80], xmm0
	nop	
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 8], xmm1
	movsd	xmm1, qword ptr [rbp - 0x80]
	ucomisd	xmm1, xmm0
	mov	rbp, rbp
	jb	.label_248
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 8]
	ucomisd	xmm1, xmm0
	nop	
	jb	.label_248
	movsd	xmm0, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 0x88], xmm0
	jmp	.label_245
.label_248:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x78]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	nop	
	jne	.label_247
	nop	
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	mov	rbp, rbp
	movq	xmm1, qword ptr [rbp - 0x58]
	nop	
	punpckldq	xmm1, xmm0
	mov	rbp, rbp
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	subpd	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x88], xmm0
	jmp	.label_245
.label_247:
	mov	rbp, rbp
	movsd	xmm0,  qword ptr [word ptr [label_246]]
	mov	rsp, rsp
	movsd	qword ptr [rbp - 0x88], xmm0
.label_245:
	movsd	xmm0, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057a0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	edi, 0x56
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x78], xmm0
	call	sysconf
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x88], xmm1
	movsd	xmm1, qword ptr [rbp - 0x78]
	nop	
	ucomisd	xmm1, xmm0
	jb	.label_250
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	ucomisd	xmm1, xmm0
	jb	.label_250
	movsd	xmm0, qword ptr [rbp - 0x78]
	mulsd	xmm0, qword ptr [rbp - 0x88]
	movsd	qword ptr [rbp - 0x80], xmm0
	jmp	.label_251
.label_250:
	lea	rdi, [rbp - 0x70]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_249
	movq	xmm0, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_243]]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_244]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	lea	rsi, [rsi]
	movq	xmm0, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm3, xmm1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	cvtsi2sd	xmm0, rcx
	mov	rsp, rsp
	mulsd	xmm3, xmm0
	movsd	qword ptr [rbp - 0x80], xmm3
	nop	
	jmp	.label_251
.label_249:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_252]]
	nop	
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x80], xmm0
.label_251:
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x80]
	add	rsp, 0x90
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058e0

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
	jne	.label_253
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_253:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_256
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_255
.label_256:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_255:
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
	jl	.label_254
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_254
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
	jne	.label_257
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_257:
	jmp	.label_254
.label_254:
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
	.align	32
	#Procedure 0x405a60
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
	je	.label_259
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_258
.label_259:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_258
.label_258:
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
	.align	32
	#Procedure 0x405b10
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
	je	.label_260
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_261
.label_260:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b70
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
	je	.label_262
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_263
.label_262:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bd0

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
	je	.label_264
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_265
.label_264:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_265
.label_265:
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
	.align	32
	#Procedure 0x405cd0
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
	jne	.label_266
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_266:
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
	.align	32
	#Procedure 0x405d30

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
	jne	.label_267
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_267:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_269
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_268
.label_269:
	call	abort
.label_268:
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
	.align	32
	#Procedure 0x405dd0
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
	je	.label_270
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_271
.label_270:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_271
.label_271:
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
	.align	32
	#Procedure 0x405ed0

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
.label_375:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_458
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_444]]
	jmp	rcx
.label_767:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_766:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_274
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_280
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_280:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_274
.label_274:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_299
.label_768:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_299
.label_769:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_314
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
.label_314:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_329
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_353:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_338
	jmp	.label_396
.label_396:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_341
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_341:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_353
.label_338:
	mov	rbp, rbp
	jmp	.label_329
.label_329:
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
	jmp	.label_299
.label_764:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_763:
	mov	byte ptr [rbp - 0x3e], 1
.label_765:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_374
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_374:
	jmp	.label_376
.label_376:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_378
	jmp	.label_383
.label_383:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_469
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_469:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_378
.label_378:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_299
.label_762:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_299
.label_458:
	call	abort
.label_299:
	mov	qword ptr [rbp - 0xd8], 0
.label_402:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_399
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
	jmp	.label_400
.label_399:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_400:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_417
	mov	rbp, rbp
	jmp	.label_426
.label_417:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_428
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_428
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_428
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_441
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_441
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_451
.label_441:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_451:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_428
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
	jne	.label_428
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_470
	jmp	.label_281
.label_470:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_428:
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
	ja	.label_277
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_297]]
	nop	
	jmp	rcx
.label_748:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_303
	mov	rsp, rsp
	jmp	.label_308
.label_308:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_311
	jmp	.label_281
.label_311:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_312
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_312
	nop	
	jmp	.label_321
.label_321:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_324
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_324:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_331
.label_331:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_336
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_336:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_343
.label_343:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_346
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_346:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_312:
	lea	rsi, [rsi]
	jmp	.label_357
.label_357:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_317:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_358
.label_358:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_349
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_349
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_349
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_349
	nop	
	jmp	.label_388
.label_388:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_389
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_389:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_359
.label_359:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_328
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_328:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_349
.label_349:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_403
.label_303:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_406
	mov	rbp, rbp
	jmp	.label_284
.label_406:
	jmp	.label_403
.label_403:
	jmp	.label_296
.label_759:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_415
	mov	rbp, rbp
	jmp	.label_422
.label_422:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_424
	jmp	.label_431
.label_415:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_434
	jmp	.label_281
.label_434:
	jmp	.label_355
.label_424:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_291
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_291
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_291
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
	je	.label_335
	nop	
	jmp	.label_455
.label_455:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_335
	jmp	.label_461
.label_461:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_335
	jmp	.label_466
.label_466:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_335
	jmp	.label_459
.label_459:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_373
	jmp	.label_335
.label_335:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_285
	jmp	.label_281
.label_285:
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
	jae	.label_292
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_292:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_316
.label_316:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_272
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_272:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_326
.label_326:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_333
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_333:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_340
.label_340:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_414
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_414:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_282
.label_373:
	jmp	.label_282
.label_282:
	jmp	.label_291
.label_291:
	jmp	.label_355
.label_431:
	jmp	.label_355
.label_355:
	jmp	.label_296
.label_749:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_361
.label_750:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_361
.label_754:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_361
.label_752:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_362
.label_755:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_362
.label_751:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_362
.label_753:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_361
.label_760:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_433
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_380
	nop	
	jmp	.label_281
.label_380:
	lea	rsi, [rsi]
	jmp	.label_294
.label_433:
	test	byte ptr [rbp - 0x89], 1
	je	.label_385
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_385
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_385
	jmp	.label_294
.label_385:
	jmp	.label_362
.label_362:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_394
	test	byte ptr [rbp - 0x3e], 1
	je	.label_394
	jmp	.label_281
.label_394:
	mov	rsp, rsp
	jmp	.label_361
.label_361:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_398
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_298
.label_398:
	jmp	.label_296
.label_761:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_404
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_407
	jmp	.label_413
.label_404:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_407
.label_413:
	nop	
	jmp	.label_296
.label_407:
	jmp	.label_418
.label_418:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_419
	lea	rsi, [rsi]
	jmp	.label_296
.label_419:
	nop	
	jmp	.label_427
.label_427:
	mov	byte ptr [rbp - 0x91], 1
.label_756:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_430
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_430
	jmp	.label_281
.label_430:
	lea	rsi, [rsi]
	jmp	.label_296
.label_758:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_439
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_443
	jmp	.label_281
.label_443:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_445
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_445
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_445:
	jmp	.label_452
.label_452:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_453
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_453:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_457
.label_457:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_463
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_463:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_471
.label_471:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_276
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_439:
	lea	rsi, [rsi]
	jmp	.label_296
.label_757:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_296
.label_277:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_304
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
	jmp	.label_387
.label_304:
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
	jne	.label_332
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_332:
	jmp	.label_342
.label_342:
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
	jne	.label_356
	jmp	.label_363
.label_356:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_364
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_363
.label_364:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_368
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_386:
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
	jae	.label_369
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_369:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_384
	jmp	.label_290
.label_384:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_386
.label_290:
	jmp	.label_363
.label_368:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_347
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_347
	mov	qword ptr [rbp - 0xe8], 1
.label_438:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_397
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
	jb	.label_330
	jmp	.label_410
.label_410:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_330
	jmp	.label_416
.label_416:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_330
	jmp	.label_423
.label_423:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_425
	mov	rsp, rsp
	jmp	.label_330
.label_330:
	mov	rsp, rsp
	jmp	.label_281
.label_425:
	jmp	.label_395
.label_395:
	mov	rsp, rsp
	jmp	.label_446
.label_446:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_438
.label_397:
	mov	rbp, rbp
	jmp	.label_347
.label_347:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_454
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_454:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_472
.label_472:
	lea	rsi, [rsi]
	jmp	.label_448
.label_448:
	jmp	.label_449
.label_449:
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
	jne	.label_342
.label_363:
	jmp	.label_387
.label_387:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_456
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_465
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_465
.label_456:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_447:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_283
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_283
	jmp	.label_287
.label_287:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_289
	jmp	.label_281
.label_289:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_295
	test	byte ptr [rbp - 0x42], 1
	jne	.label_295
	lea	rdi, [rdi]
	jmp	.label_305
.label_305:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_279:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_315
.label_315:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_322
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_322:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_327
.label_327:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_351
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_351:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_295:
	jmp	.label_344
.label_344:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_345
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_345:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_348
.label_348:
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_354
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
.label_354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_371
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
.label_371:
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
	jmp	.label_379
.label_283:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_307
	lea	rdi, [rdi]
	jmp	.label_390
.label_390:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_339:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_307:
	nop	
	jmp	.label_379
.label_379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_382
	jmp	.label_401
.label_382:
	lea	rsi, [rsi]
	jmp	.label_405
.label_405:
	test	byte ptr [rbp - 0x42], 1
	je	.label_408
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_408
	lea	rsi, [rsi]
	jmp	.label_411
.label_411:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_412
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_421
.label_421:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_429
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_429:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_408:
	nop	
	jmp	.label_440
.label_440:
	mov	rsp, rsp
	jmp	.label_467
.label_467:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_442
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_442:
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
	jmp	.label_447
.label_401:
	mov	rsp, rsp
	jmp	.label_294
.label_465:
	lea	rsi, [rsi]
	jmp	.label_296
.label_296:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_435
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_462
.label_435:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_464
.label_462:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_464
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
	jne	.label_288
.label_464:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_288
	mov	rsp, rsp
	jmp	.label_294
.label_288:
	nop	
	jmp	.label_298
.label_298:
	jmp	.label_300
.label_300:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_302
	jmp	.label_281
.label_302:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_306
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_306
	lea	rdi, [rdi]
	jmp	.label_313
.label_313:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_320
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_334:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_337
.label_337:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_437
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_437:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_306:
	jmp	.label_377
.label_377:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_350
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_350:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_360
.label_360:
	nop	
	jmp	.label_294
.label_294:
	jmp	.label_365
.label_365:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_366
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_366
	lea	rdi, [rdi]
	jmp	.label_370
.label_370:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_372
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_381
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_381:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_366:
	jmp	.label_391
.label_391:
	nop	
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_393
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_393:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_420
	mov	byte ptr [rbp - 0xb7], 0
.label_420:
	mov	rbp, rbp
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_402
.label_426:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_409
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_409
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_409
	nop	
	jmp	.label_281
.label_409:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_286
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_286
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_286
	test	byte ptr [rbp - 0xb7], 1
	je	.label_432
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
	jmp	.label_318
.label_432:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_450
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_450
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_375
.label_450:
	jmp	.label_460
.label_460:
	mov	rbp, rbp
	jmp	.label_286
.label_286:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_309
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_309
	mov	rbp, rbp
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_468
	lea	rdi, [rdi]
	jmp	.label_273
.label_273:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_275
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_275:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_301
.label_468:
	jmp	.label_309
.label_309:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_310
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_310:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_318
.label_281:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_323
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_323
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_323:
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
.label_318:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x407970
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
	.align	32
	#Procedure 0x4079e0

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
	je	.label_473
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_474
.label_473:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_474
.label_474:
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
	je	.label_475
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_475:
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
	.align	32
	#Procedure 0x407bb0
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
.label_480:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_479
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
	jmp	.label_480
.label_479:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_478
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_476]],  rax
.label_478:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_477
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_477:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cc0

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
	.align	32
	#Procedure 0x407d10

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
	jge	.label_487
	call	abort
.label_487:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_482
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
	jge	.label_483
	call	xalloc_die
.label_483:
	test	byte ptr [rbp - 0x51], 1
	je	.label_484
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_488
.label_484:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_488:
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
	je	.label_486
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_476]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_486:
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
.label_482:
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
	ja	.label_485
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
	je	.label_481
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_481:
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
.label_485:
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
	.align	32
	#Procedure 0x408040

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
	.align	32
	#Procedure 0x408080
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
	#Procedure 0x4080b0
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
	.align	32
	#Procedure 0x4080f0

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
	.align	32
	#Procedure 0x408150

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
	jne	.label_489
	call	abort
.label_489:
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
	.align	32
	#Procedure 0x4081f0

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
	.align	32
	#Procedure 0x408260

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
	.align	32
	#Procedure 0x4082a0
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
	.align	32
	#Procedure 0x4082e0

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
	.align	32
	#Procedure 0x408390

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
	#Procedure 0x4083d0

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
	#Procedure 0x408400
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
	#Procedure 0x408440

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
	.align	32
	#Procedure 0x408520

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
	.align	32
	#Procedure 0x408570

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
	.align	32
	#Procedure 0x408610
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
	.align	32
	#Procedure 0x408660
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
	.align	32
	#Procedure 0x4086c0

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
	.align	32
	#Procedure 0x408700
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
	#Procedure 0x408740

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
	#Procedure 0x408780
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
	#Procedure 0x4087c0

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
	je	.label_493
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_491
.label_493:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_492
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
	jmp	.label_491
.label_492:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_490
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
	jmp	.label_491
.label_490:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_491:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408900

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi + 0x10], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	add	rdi, 0x18
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	_obstack_begin
	nop	
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	nop	
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, 0x70
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	dword ptr [rbp - 8], eax
	call	_obstack_begin
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	ecx, r9d
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsi, 0xc8
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	_obstack_begin
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a20

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	mov	rbp, rbp
	jbe	.label_494
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	jmp	.label_498
.label_494:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	_obstack_free
.label_498:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jbe	.label_495
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_495
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_499
.label_495:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	call	_obstack_free
.label_499:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xc8
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_497
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_497
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_496
.label_497:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_496:
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bc0

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rsi
.label_503:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fgetc
	mov	dword ptr [rbp - 0xb4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xb4], -1
	mov	rsp, rsp
	jne	.label_509
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_511
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	sub	rax, rcx
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 1
	jae	.label_502
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	_obstack_newchunk
.label_502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdx, rcx
	add	rdx, 1
	nop	
	mov	qword ptr [rax + 0x18], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	save_token
.label_511:
	mov	rsp, rsp
	jmp	.label_507
.label_509:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 1
	jae	.label_510
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	_obstack_newchunk
.label_510:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	nop	
	mov	byte ptr [rsi], cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xb4], 0
	nop	
	jne	.label_501
	mov	rdi, qword ptr [rbp - 0x60]
	call	save_token
.label_501:
	mov	rbp, rbp
	jmp	.label_503
.label_507:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 8
	jae	.label_500
	lea	rsi, [rsi]
	mov	eax, 8
	mov	rbp, rbp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	_obstack_newchunk
.label_500:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa8]
	jne	.label_508
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x50]
	mov	rbp, rbp
	and	cl, 0xfd
	lea	rdi, [rdi]
	or	cl, 2
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x50], cl
.label_508:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	mov	rsp, rsp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	nop	
	jbe	.label_505
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x18], rax
.label_505:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 0xc8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 0xa0]
	jne	.label_504
	mov	rax, qword ptr [rbp - 0x68]
	mov	cl, byte ptr [rax + 0x50]
	lea	rdi, [rdi]
	and	cl, 0xfd
	or	cl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x50], cl
.label_504:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	sub	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	nop	
	jbe	.label_506
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x18], rax
.label_506:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	ferror
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	dl
	nop	
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rsp, rsp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090c0

	.globl save_token
	.type save_token, @function
save_token:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rdi, 0x18
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	sub	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jne	.label_512
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	lea	rdi, [rdi]
	or	cl, 2
	nop	
	mov	byte ptr [rax + 0x50], cl
.label_512:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jbe	.label_514
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
.label_514:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 0x70
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 8
	jae	.label_515
	nop	
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x40]
	call	_obstack_newchunk
.label_515:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	qword ptr [rbp - 0x68], 8
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_513
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_513:
	mov	rbp, rbp
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409380

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
.label_521:
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
	jg	.label_522
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_520
.label_522:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_516
	lea	rdi, [rdi]
	jmp	.label_521
.label_516:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_519
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jae	.label_519
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_523
.label_519:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_520
.label_523:
	jmp	.label_518
.label_518:
	jmp	.label_517
.label_517:
	mov	rsp, rsp
	jmp	.label_521
.label_520:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409470

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
	je	.label_527
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
	jmp	.label_525
.label_527:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_525:
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
	ja	.label_526
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_528]]
	jmp	rcx
.label_710:
	jmp	.label_524
.label_711:
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
	jmp	.label_524
.label_712:
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
	jmp	.label_524
.label_713:
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
	jmp	.label_524
.label_714:
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
	jmp	.label_524
.label_715:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
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
	jmp	.label_524
.label_716:
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
	jmp	.label_524
.label_717:
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
	jmp	.label_524
.label_718:
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
	jmp	.label_524
.label_719:
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
	jmp	.label_524
.label_526:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_524:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cb0
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
.label_529:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_530
	mov	rbp, rbp
	jmp	.label_531
.label_531:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_529
.label_530:
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
	.align	32
	#Procedure 0x409d60

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
.label_533:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_536
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_535
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
	jmp	.label_534
.label_535:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_534:
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
.label_536:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_532
	mov	rsp, rsp
	jmp	.label_537
.label_532:
	jmp	.label_538
.label_538:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_533
.label_537:
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
	.align	32
	#Procedure 0x409ec0

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
	je	.label_539
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
.label_539:
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
	.align	32
	#Procedure 0x40a080
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
	.align	32
	#Procedure 0x40a130

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
	jae	.label_540
	mov	rbp, rbp
	call	xalloc_die
.label_540:
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
	#Procedure 0x40a190

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
	jne	.label_541
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_541
	lea	rdi, [rdi]
	call	xalloc_die
.label_541:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1f0
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
	jae	.label_542
	mov	rsp, rsp
	call	xalloc_die
.label_542:
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
	.align	32
	#Procedure 0x40a270

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
	jne	.label_543
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_543
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_545
.label_543:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_544
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_544
	lea	rsi, [rsi]
	call	xalloc_die
.label_544:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a320

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
	jne	.label_546
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_548
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
.label_548:
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
	jae	.label_550
	call	xalloc_die
.label_550:
	lea	rsi, [rsi]
	jmp	.label_549
.label_546:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_547
	call	xalloc_die
.label_547:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_549:
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
	.align	32
	#Procedure 0x40a450

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
	#Procedure 0x40a480
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
	#Procedure 0x40a4c0
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
	#Procedure 0x40a510
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
	jb	.label_551
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_552
.label_551:
	lea	rsi, [rsi]
	call	xalloc_die
.label_552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a580

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
	.align	32
	#Procedure 0x40a5d0
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
	.align	32
	#Procedure 0x40a630

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_3
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
	.align	32
	#Procedure 0x40a690

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
	.align	32
	#Procedure 0x40a6a0

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
	jge	.label_553
	call	xset_binary_mode_error
.label_553:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6e0

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
	jge	.label_557
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_555
.label_557:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_554
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
	je	.label_556
.label_554:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_556
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_556:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_558
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
.label_558:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_555:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a800

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
	je	.label_559
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_560
.label_559:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_561
.label_560:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_561:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a870

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
	je	.label_562
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
.label_562:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a8d0

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
	jne	.label_563
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_563
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_563
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
	jne	.label_564
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_565
.label_564:
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
	jmp	.label_565
.label_563:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_565:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9e0

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
	jne	.label_566
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_566:
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
	ja	.label_567
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_567
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_567
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
	jmp	.label_568
.label_567:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_568:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aad0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], r8
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x50]
	nop	
	and	al, 0xfe
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab50

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_569
	nop	
	mov	qword ptr [rbp - 0x18], 0x10
.label_569:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_570
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x20
	nop	
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
.label_570:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_571
	mov	rbp, rbp
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_571:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x10
	sub	rsi, 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rdi, 1
	lea	rsi, [rsi]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x50]
	mov	rbp, rbp
	and	r8b, 0xfd
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x50], r8b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	r8b, byte ptr [rdx + 0x50]
	lea	rdi, [rdi]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ace0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x50], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	_obstack_begin_worker
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad70

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x30]
	add	rsi, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	shr	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	add	rsi, 0x64
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 8]
	jae	.label_573
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_573:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	jae	.label_575
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	ja	.label_574
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	ja	.label_574
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x28], rax
.label_574:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_576
	nop	
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_576:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	add	rdx, 0x10
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	nop	
	jne	.label_572
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x10
	mov	rsp, rsp
	sub	rsi, 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_572
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	call_freefun
.label_572:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b000

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_577
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_578
.label_577:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_578:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b080

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_579
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_580
.label_579:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_580:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b0f0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
.label_584:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 2], cl
	je	.label_585
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jae	.label_583
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	setb	cl
	nop	
	mov	byte ptr [rbp - 1], cl
.label_583:
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 2], al
.label_585:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 2]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_581
	jmp	.label_582
.label_581:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_584
.label_582:
	cmp	qword ptr [rbp - 0x28], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b1c0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_591:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0xa], cl
	je	.label_590
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 9], al
	jae	.label_593
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_593:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa], al
.label_590:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_588
	mov	rbp, rbp
	jmp	.label_589
.label_588:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_freefun
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x50]
	lea	rsi, [rsi]
	and	cl, 0xfd
	lea	rsi, [rsi]
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_591
.label_589:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_586
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	jmp	.label_587
.label_586:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_592
	mov	rbp, rbp
	call	abort
.label_592:
	jmp	.label_587
.label_587:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b320

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
.label_594:
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_595
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_594
.label_595:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3a0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_2
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	nop	
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40b400

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
	.align	32
	#Procedure 0x40b420

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
	.align	32
	#Procedure 0x40b440

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
	.align	32
	#Procedure 0x40b4a0

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
	jmp	.label_599
.label_598:
	mov	rbp, rbp
	jmp	.label_601
.label_601:
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
	je	.label_601
.label_602:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_599:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b590

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
	.align	32
	#Procedure 0x40b670

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
	mov	eax, OFFSET FLAT:.str_6
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
	.align	32
	#Procedure 0x40b710

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
	.align	32
	#Procedure 0x40b790

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
	ja	.label_612
	jmp	.label_614
.label_614:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_613
.label_612:
	lea	rsi, [rsi]
	jmp	.label_613
.label_613:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b7f0
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
	jb	.label_615
	jmp	.label_617
.label_617:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_615
	jmp	.label_616
.label_616:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_618
	jmp	.label_615
.label_615:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_619
.label_618:
	mov	byte ptr [rbp - 1], 0
.label_619:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b860
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
	jb	.label_620
	jmp	.label_623
.label_623:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_621
	jmp	.label_620
.label_620:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_622
.label_621:
	mov	byte ptr [rbp - 1], 0
.label_622:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_624
	jmp	.label_625
.label_625:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_626
.label_624:
	mov	byte ptr [rbp - 1], 0
.label_626:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8e0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_627
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_627:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b910
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
	jb	.label_628
	jmp	.label_630
.label_630:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_631
	jmp	.label_628
.label_628:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_629
.label_631:
	mov	byte ptr [rbp - 1], 0
.label_629:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b960
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_632
	jmp	.label_634
.label_634:
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
	#Procedure 0x40b9a0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_635
	jmp	.label_637
.label_637:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_636
.label_635:
	mov	byte ptr [rbp - 1], 0
.label_636:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9e0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_638
	jmp	.label_640
.label_640:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_639
.label_638:
	mov	byte ptr [rbp - 1], 0
.label_639:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba20
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_641
	jmp	.label_643
.label_643:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_642
.label_641:
	mov	byte ptr [rbp - 1], 0
.label_642:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba60
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
	jb	.label_644
	jmp	.label_647
.label_647:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_644
	jmp	.label_648
.label_648:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_644
	jmp	.label_646
.label_646:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_649
	jmp	.label_644
.label_644:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_645
.label_649:
	mov	byte ptr [rbp - 1], 0
.label_645:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bae0
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
	jb	.label_650
	jmp	.label_652
.label_652:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_653
	jmp	.label_650
.label_650:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_651
.label_653:
	mov	byte ptr [rbp - 1], 0
.label_651:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb30
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_654
	jmp	.label_656
.label_656:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_655
.label_654:
	mov	byte ptr [rbp - 1], 0
.label_655:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb70
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
	jb	.label_657
	jmp	.label_660
.label_660:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_657
	jmp	.label_658
.label_658:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_659
	jmp	.label_657
.label_657:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_661
.label_659:
	mov	byte ptr [rbp - 1], 0
.label_661:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bbe0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_662
	jmp	.label_664
.label_664:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_663
.label_662:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_663:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc20
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_665
	jmp	.label_667
.label_667:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_666
.label_665:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_666:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd10

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40bd20

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat