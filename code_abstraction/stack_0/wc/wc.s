	.section	.text
	.align	32
	#Procedure 0x401bc0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	jmp	.label_9
.label_9:
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
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
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
	call	emit_stdin_note
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
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401d10

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d40

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
.label_14:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_13
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_11
	jmp	.label_12
.label_11:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_14
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.40
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
	je	.label_10
	movabs	rsi, OFFSET FLAT:.str.42
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_10
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.45
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.46
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
	.align	32
	#Procedure 0x401ee0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x340
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.9
	movabs	rsi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 0x228], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x230], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x238], rax
	call	atexit
	mov	dword ptr [rbp - 0x23c], eax
	call	getpagesize
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	movsxd	rdi, eax
	mov	qword ptr [word ptr [page_size]],  rdi
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x248], rsi
	mov	rcx, qword ptr [rbp - 0x248]
	call	setvbuf
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x24c], eax
	call	getenv
	cmp	rax, 0
	setne	r8b
	and	r8b, 1
	mov	byte ptr [byte ptr [posixly_correct]],  r8b
	mov	byte ptr [byte ptr [print_bytes]],  0
	mov	byte ptr [byte ptr [print_chars]],  0
	mov	byte ptr [byte ptr [print_words]],  0
	mov	byte ptr [byte ptr [print_lines]],  0
	mov	byte ptr [byte ptr [print_linelength]],  0
	mov	qword ptr [word ptr [max_line_length]],  0
	mov	qword ptr [word ptr [total_bytes]],  0
	mov	qword ptr [word ptr [total_chars]],  0
	mov	qword ptr [word ptr [total_words]],  0
	mov	qword ptr [word ptr [total_lines]],  0
.label_16:
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, -1
	je	.label_41
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x250], eax
	mov	dword ptr [rbp - 0x254], ecx
	je	.label_45
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x258], eax
	je	.label_52
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x25c], eax
	je	.label_60
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x260], eax
	je	.label_67
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x264], eax
	je	.label_69
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x268], eax
	je	.label_75
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x26c], eax
	je	.label_20
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x270], eax
	je	.label_25
	jmp	.label_46
.label_67:
	mov	byte ptr [byte ptr [print_bytes]],  1
	jmp	.label_31
.label_75:
	mov	byte ptr [byte ptr [print_chars]],  1
	jmp	.label_31
.label_69:
	mov	byte ptr [byte ptr [print_lines]],  1
	jmp	.label_31
.label_20:
	mov	byte ptr [byte ptr [print_words]],  1
	jmp	.label_31
.label_60:
	mov	byte ptr [byte ptr [print_linelength]],  1
	jmp	.label_31
.label_25:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_31
.label_52:
	xor	edi, edi
	call	usage
.label_45:
	movabs	rsi, OFFSET FLAT:.str.7
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.14
	movabs	r9, OFFSET FLAT:.str.15
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x278], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_46:
	mov	edi, 1
	call	usage
.label_31:
	jmp	.label_16
.label_41:
	test	byte ptr [byte ptr [print_lines]],  1
	jne	.label_17
	test	byte ptr [byte ptr [print_words]],  1
	jne	.label_17
	test	byte ptr [byte ptr [print_chars]],  1
	jne	.label_17
	test	byte ptr [byte ptr [print_bytes]],  1
	jne	.label_17
	test	byte ptr [byte ptr [print_linelength]],  1
	jne	.label_17
	mov	byte ptr [byte ptr [print_bytes]],  1
	mov	byte ptr [byte ptr [print_words]],  1
	mov	byte ptr [byte ptr [print_lines]],  1
.label_17:
	mov	byte ptr [rbp - 0x159], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_38
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_49
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	mov	edi, 4
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x280], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x284], edi
	mov	esi, dword ptr [rbp - 0x284]
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x290], rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rdi, qword ptr [rbp - 0x290]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 0x294], eax
	call	usage
.label_49:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_26
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x170], rax
	jmp	.label_29
.label_26:
	movabs	rsi, OFFSET FLAT:.str.20
	mov	rdi, qword ptr [rbp - 0x30]
	call	fopen
	mov	qword ptr [rbp - 0x170], rax
	cmp	qword ptr [rbp - 0x170], 0
	jne	.label_42
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.21
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x298], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2a0], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x298]
	mov	rdx, qword ptr [rbp - 0x2a0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_42:
	jmp	.label_29
.label_29:
	mov	rdi, qword ptr [rbp - 0x170]
	call	fileno
	lea	rsi, [rbp - 0x200]
	mov	edi, eax
	call	__fstat
	cmp	eax, 0
	jne	.label_43
	mov	eax, dword ptr [rbp - 0x1e8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_43
	cvtsi2sd	xmm0, qword ptr [rbp - 0x1d0]
	movsd	qword ptr [rbp - 0x2a8], xmm0
	call	physmem_available
	movsd	xmm1,  qword ptr [word ptr [label_27]]
	movsd	xmm2,  qword ptr [word ptr [label_36]]
	divsd	xmm0, xmm2
	ucomisd	xmm0, xmm1
	jbe	.label_48
	movsd	xmm0,  qword ptr [word ptr [label_27]]
	movsd	qword ptr [rbp - 0x2b0], xmm0
	jmp	.label_28
.label_48:
	call	physmem_available
	movsd	xmm1,  qword ptr [word ptr [label_36]]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x2b0], xmm0
.label_28:
	movsd	xmm0, qword ptr [rbp - 0x2b0]
	movsd	xmm1, qword ptr [rbp - 0x2a8]
	ucomisd	xmm0, xmm1
	jb	.label_43
	lea	rdi, [rbp - 0x158]
	mov	byte ptr [rbp - 0x159], 1
	call	readtokens0_init
	lea	rsi, [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x170]
	call	readtokens0
	test	al, 1
	jne	.label_33
	jmp	.label_62
.label_33:
	mov	rdi, qword ptr [rbp - 0x170]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_63
.label_62:
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2b8], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_63:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	argv_iter_init_argv
	mov	qword ptr [rbp - 0x168], rax
	jmp	.label_19
.label_43:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x170]
	call	argv_iter_init_stream
	mov	qword ptr [rbp - 0x168], rax
.label_19:
	jmp	.label_70
.label_38:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_39
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_44
.label_39:
	movabs	rax, OFFSET FLAT:main.stdin_only
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_44
.label_44:
	mov	rax, qword ptr [rbp - 0x2c0]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	cmp	ecx, dword ptr [rbp - 8]
	jge	.label_56
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x2c4], eax
	jmp	.label_64
.label_56:
	mov	eax, 1
	mov	dword ptr [rbp - 0x2c4], eax
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x2c4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	argv_iter_init_argv
	mov	qword ptr [rbp - 0x168], rax
.label_70:
	cmp	qword ptr [rbp - 0x168], 0
	jne	.label_76
	call	xalloc_die
.label_76:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	get_input_fstatus
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	compute_number_width
	mov	dword ptr [dword ptr [number_width]],  eax
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x204], 0
.label_77:
	lea	rsi, [rbp - 0x20c]
	mov	byte ptr [rbp - 0x205], 0
	mov	rdi, qword ptr [rbp - 0x168]
	call	argv_iter
	mov	qword ptr [rbp - 0x218], rax
	cmp	qword ptr [rbp - 0x218], 0
	jne	.label_40
	mov	eax, dword ptr [rbp - 0x20c]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x2c8], eax
	mov	dword ptr [rbp - 0x2cc], ecx
	je	.label_47
	jmp	.label_53
.label_53:
	mov	eax, dword ptr [rbp - 0x2c8]
	sub	eax, 3
	mov	dword ptr [rbp - 0x2d0], eax
	je	.label_54
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x2c8]
	sub	eax, 4
	mov	dword ptr [rbp - 0x2d4], eax
	je	.label_73
	jmp	.label_32
.label_47:
	jmp	.label_21
.label_73:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d8], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2e0], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2d8]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_21
.label_54:
	call	xalloc_die
.label_32:
	movabs	rdi, OFFSET FLAT:.str.24
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0x33f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_40:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_37
	mov	rdi, qword ptr [rbp - 0x30]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_37
	mov	rdi, qword ptr [rbp - 0x218]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_37
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x2e8], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x2ec], edi
	mov	esi, dword ptr [rbp - 0x2ec]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x205], 1
.label_37:
	mov	rax, qword ptr [rbp - 0x218]
	cmp	byte ptr [rax], 0
	jne	.label_78
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_71
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_22
.label_71:
	mov	rdi, qword ptr [rbp - 0x168]
	call	argv_iter_n_args
	xor	edi, edi
	mov	esi, 3
	mov	qword ptr [rbp - 0x220], rax
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	movabs	rdi, OFFSET FLAT:.str.28
	mov	r8, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0x2f8], rax
	mov	qword ptr [rbp - 0x300], r8
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str.29
	mov	edi, esi
	mov	rcx, qword ptr [rbp - 0x2f8]
	mov	r8, qword ptr [rbp - 0x300]
	mov	r9, rax
	mov	al, 0
	call	error
.label_22:
	mov	byte ptr [rbp - 0x205], 1
.label_78:
	test	byte ptr [rbp - 0x205], 1
	je	.label_55
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_66
.label_55:
	mov	rdi, qword ptr [rbp - 0x218]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x308], rdi
	je	.label_61
	mov	eax, dword ptr [rbp - 0x204]
	mov	dword ptr [rbp - 0x30c], eax
	jmp	.label_72
.label_61:
	xor	eax, eax
	mov	dword ptr [rbp - 0x30c], eax
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x30c]
	movsxd	rcx, eax
	imul	rcx, rcx, 0x98
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x308]
	mov	rsi, rcx
	call	wc_file
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	r8d, al
	and	r8d, edx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_66:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_23
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 1
.label_23:
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x204]
	add	eax, 1
	mov	dword ptr [rbp - 0x204], eax
	jmp	.label_77
.label_21:
	test	byte ptr [rbp - 0x11], 1
	je	.label_35
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_35
	mov	rdi, qword ptr [rbp - 0x168]
	call	argv_iter_n_args
	cmp	rax, 0
	jne	.label_35
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x38]
	call	wc_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_35:
	test	byte ptr [rbp - 0x159], 1
	je	.label_58
	lea	rdi, [rbp - 0x158]
	call	readtokens0_free
.label_58:
	mov	rdi, qword ptr [rbp - 0x168]
	call	argv_iter_n_args
	mov	ecx, 1
	mov	edi, ecx
	cmp	rdi, rax
	jae	.label_34
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rax,  qword ptr [word ptr [total_lines]]
	mov	rsi,  qword ptr [word ptr [total_words]]
	mov	rdx,  qword ptr [word ptr [total_chars]]
	mov	rcx,  qword ptr [word ptr [total_bytes]]
	mov	r8,  qword ptr [word ptr [max_line_length]]
	mov	qword ptr [rbp - 0x318], r8
	mov	qword ptr [rbp - 0x320], rax
	mov	qword ptr [rbp - 0x328], rsi
	mov	qword ptr [rbp - 0x330], rdx
	mov	qword ptr [rbp - 0x338], rcx
	call	gettext
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x328]
	mov	rdx, qword ptr [rbp - 0x330]
	mov	rcx, qword ptr [rbp - 0x338]
	mov	r8, qword ptr [rbp - 0x318]
	mov	r9, rax
	call	write_counts
.label_34:
	mov	rdi, qword ptr [rbp - 0x168]
	call	argv_iter_free
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_50
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_50
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str.19
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_50:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x11]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x340
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl get_input_fstatus
	.type get_input_fstatus, @function
get_input_fstatus:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 8], 0
	je	.label_84
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_83
.label_84:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_83
.label_83:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, 0x98
	mov	esi, ecx
	mov	rdi, rax
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_87
	cmp	qword ptr [rbp - 8], 1
	jne	.label_82
	mov	al,  byte ptr [byte ptr [print_lines]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [print_words]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [print_chars]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [print_bytes]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [print_linelength]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	cmp	ecx, 1
	jne	.label_82
.label_87:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	jmp	.label_79
.label_82:
	mov	qword ptr [rbp - 0x20], 0
.label_88:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_86
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_81
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.19
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_85
.label_81:
	xor	edi, edi
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rsi, rax
	call	__fstat
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_80
.label_85:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x2c], eax
.label_80:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x98
	add	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_88
.label_86:
	jmp	.label_79
.label_79:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c60

	.globl compute_number_width
	.type compute_number_width, @function
compute_number_width:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 1
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_89
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax], 0
	jg	.label_89
	mov	dword ptr [rbp - 0x18], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
.label_95:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_91
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax], 0
	jne	.label_90
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x20]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_94
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_97
.label_94:
	mov	dword ptr [rbp - 0x18], 7
.label_97:
	jmp	.label_90
.label_90:
	jmp	.label_98
.label_98:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_95
.label_91:
	jmp	.label_92
.label_92:
	mov	eax, 0xa
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_96
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_92
.label_96:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_93
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x14], eax
.label_93:
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl wc_file
	.type wc_file, @function
wc_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_101
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_103
.label_101:
	xor	eax, eax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	wc
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_99
.label_103:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_102
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_99
.label_102:
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	wc
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	cmp	eax, 0
	je	.label_100
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x28], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_99
.label_100:
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_99:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ed0

	.globl write_counts
	.type write_counts, @function
write_counts:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	movabs	rax, OFFSET FLAT:write_counts.format_sp_int
	add	rax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [print_lines]],  1
	je	.label_104
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x5c], eax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x58]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, rax
	mov	al, 0
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x60], eax
.label_104:
	test	byte ptr [byte ptr [print_words]],  1
	je	.label_105
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x6c], eax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x68]
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, rax
	mov	al, 0
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x70], eax
.label_105:
	test	byte ptr [byte ptr [print_chars]],  1
	je	.label_108
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x7c], eax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x78]
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, rax
	mov	al, 0
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x80], eax
.label_108:
	test	byte ptr [byte ptr [print_bytes]],  1
	je	.label_110
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x8c], eax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x88]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, rax
	mov	al, 0
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x90], eax
.label_110:
	test	byte ptr [byte ptr [print_linelength]],  1
	je	.label_106
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x9c], eax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xa0], eax
.label_106:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_109
	mov	esi, 0xa
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_111
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_107
.label_111:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
.label_107:
	mov	rax, qword ptr [rbp - 0xa8]
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xac], eax
.label_109:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xb0], eax
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403140

	.globl wc
	.type wc, @function
wc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x41c0
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x21], 1
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_183
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x4118], rax
	jmp	.label_192
.label_183:
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	mov	qword ptr [rbp - 0x4118], rax
.label_192:
	mov	rax, qword ptr [rbp - 0x4118]
	mov	qword ptr [rbp - 0x4070], rax
	mov	qword ptr [rbp - 0x4060], 0
	mov	qword ptr [rbp - 0x4058], 0
	mov	qword ptr [rbp - 0x4050], 0
	mov	qword ptr [rbp - 0x4048], 0
	mov	qword ptr [rbp - 0x4040], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_209
	mov	al,  byte ptr [byte ptr [print_bytes]]
	and	al, 1
	mov	byte ptr [rbp - 0x4061], al
	mov	al,  byte ptr [byte ptr [print_chars]]
	and	al, 1
	mov	byte ptr [rbp - 0x4062], al
	jmp	.label_187
.label_209:
	mov	al, 1
	test	byte ptr [byte ptr [print_bytes]],  1
	mov	byte ptr [rbp - 0x4119], al
	jne	.label_113
	mov	al,  byte ptr [byte ptr [print_chars]]
	mov	byte ptr [rbp - 0x4119], al
.label_113:
	mov	al, byte ptr [rbp - 0x4119]
	and	al, 1
	mov	byte ptr [rbp - 0x4061], al
	mov	byte ptr [rbp - 0x4062], 0
.label_187:
	mov	al, 1
	test	byte ptr [byte ptr [print_words]],  1
	mov	byte ptr [rbp - 0x411a], al
	jne	.label_127
	mov	al,  byte ptr [byte ptr [print_linelength]]
	mov	byte ptr [rbp - 0x411a], al
.label_127:
	mov	al, byte ptr [rbp - 0x411a]
	and	al, 1
	mov	byte ptr [rbp - 0x4063], al
	test	byte ptr [rbp - 0x4061], 1
	je	.label_140
	test	byte ptr [rbp - 0x4062], 1
	jne	.label_140
	test	byte ptr [byte ptr [print_lines]],  1
	jne	.label_140
	test	byte ptr [rbp - 0x4063], 1
	je	.label_152
.label_140:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 2
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	fdadvise
.label_152:
	test	byte ptr [rbp - 0x4061], 1
	je	.label_163
	test	byte ptr [rbp - 0x4062], 1
	jne	.label_163
	test	byte ptr [byte ptr [print_lines]],  1
	jne	.label_163
	test	byte ptr [rbp - 0x4063], 1
	jne	.label_163
	xor	eax, eax
	mov	byte ptr [rbp - 0x4071], 0
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rcx]
	jge	.label_168
	mov	edi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rsi, rax
	call	__fstat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi], eax
.label_168:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	jne	.label_172
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rdi, rax
	call	usable_st_size
	test	al, 1
	jne	.label_181
	jmp	.label_172
.label_181:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x38]
	jg	.label_172
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x4080], rax
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_190
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 4]
	call	lseek
	mov	qword ptr [rbp - 0x20], rax
.label_190:
	mov	rax, qword ptr [rbp - 0x4080]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [page_size]]
	cmp	rdx, 0
	je	.label_198
	mov	rax, qword ptr [rbp - 0x4080]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_212
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x4128], rcx
	jmp	.label_204
.label_212:
	mov	rax, qword ptr [rbp - 0x4080]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x4128], rax
.label_204:
	mov	rax, qword ptr [rbp - 0x4128]
	mov	qword ptr [rbp - 0x4058], rax
	mov	byte ptr [rbp - 0x4071], 1
	jmp	.label_171
.label_198:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x4080]
	mov	rax, qword ptr [rbp - 0x4080]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rsi + 0x40]
	mov	qword ptr [rbp - 0x4130], rax
	mov	qword ptr [rbp - 0x4138], rdx
	jge	.label_119
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x40], rax
	ja	.label_119
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x4140], rax
	jmp	.label_126
.label_119:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x4140], rcx
	jmp	.label_126
.label_126:
	mov	rax, qword ptr [rbp - 0x4140]
	xor	ecx, ecx
	mov	edx, ecx
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x4130]
	mov	qword ptr [rbp - 0x4148], rax
	mov	rax, rsi
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x4150], rdx
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x4148]
	div	rdi
	mov	r8, qword ptr [rbp - 0x4138]
	sub	r8, rdx
	mov	qword ptr [rbp - 0x4088], r8
	mov	rdx, qword ptr [rbp - 0x4150]
	cmp	rdx, qword ptr [rbp - 0x20]
	jg	.label_141
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x4088]
	jge	.label_141
	mov	edx, 1
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x4088]
	call	lseek
	xor	edx, edx
	mov	esi, edx
	cmp	rsi, rax
	jg	.label_141
	mov	rax, qword ptr [rbp - 0x4088]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x4058], rax
.label_141:
	jmp	.label_171
.label_171:
	jmp	.label_172
.label_172:
	test	byte ptr [rbp - 0x4071], 1
	jne	.label_122
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 2
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	fdadvise
.label_200:
	mov	eax, 0x4000
	mov	edx, eax
	lea	rsi, [rbp - 0x4030]
	mov	edi, dword ptr [rbp - 4]
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	cmp	rax, 0
	jbe	.label_184
	cmp	qword ptr [rbp - 0x4038], -1
	jne	.label_188
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	dword ptr [rbp - 0x4154], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4154]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_184
.label_188:
	mov	rax, qword ptr [rbp - 0x4038]
	add	rax, qword ptr [rbp - 0x4058]
	mov	qword ptr [rbp - 0x4058], rax
	jmp	.label_200
.label_184:
	jmp	.label_122
.label_122:
	jmp	.label_145
.label_163:
	test	byte ptr [rbp - 0x4062], 1
	jne	.label_207
	test	byte ptr [rbp - 0x4063], 1
	jne	.label_207
	mov	byte ptr [rbp - 0x4089], 0
.label_206:
	mov	eax, 0x4000
	mov	edx, eax
	lea	rsi, [rbp - 0x4030]
	mov	edi, dword ptr [rbp - 4]
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	cmp	rax, 0
	jbe	.label_112
	cmp	qword ptr [rbp - 0x4038], -1
	jne	.label_115
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	dword ptr [rbp - 0x4158], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4158]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_112
.label_115:
	lea	rax, [rbp - 0x4030]
	mov	rcx, qword ptr [rbp - 0x4038]
	add	rcx, qword ptr [rbp - 0x4058]
	mov	qword ptr [rbp - 0x4058], rcx
	mov	qword ptr [rbp - 0x4098], rax
	mov	rax, qword ptr [rbp - 0x4098]
	add	rax, qword ptr [rbp - 0x4038]
	mov	qword ptr [rbp - 0x40a0], rax
	mov	rax, qword ptr [rbp - 0x4040]
	mov	qword ptr [rbp - 0x40a8], rax
	test	byte ptr [rbp - 0x4089], 1
	jne	.label_143
	jmp	.label_137
.label_137:
	mov	rax, qword ptr [rbp - 0x4098]
	cmp	rax, qword ptr [rbp - 0x40a0]
	je	.label_158
	mov	rax, qword ptr [rbp - 0x4098]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x4098], rcx
	movsx	edx, byte ptr [rax]
	cmp	edx, 0xa
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x4040]
	mov	qword ptr [rbp - 0x4040], rax
	jmp	.label_137
.label_158:
	jmp	.label_139
.label_143:
	jmp	.label_147
.label_147:
	mov	rdi, qword ptr [rbp - 0x4098]
	mov	rax, qword ptr [rbp - 0x40a0]
	mov	rcx, qword ptr [rbp - 0x4098]
	sub	rax, rcx
	mov	esi, 0xa
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x4098], rax
	cmp	rax, 0
	je	.label_182
	mov	rax, qword ptr [rbp - 0x4098]
	add	rax, 1
	mov	qword ptr [rbp - 0x4098], rax
	mov	rax, qword ptr [rbp - 0x4040]
	add	rax, 1
	mov	qword ptr [rbp - 0x4040], rax
	jmp	.label_147
.label_182:
	jmp	.label_139
.label_139:
	mov	eax, 0xf
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x4040]
	sub	rdx, qword ptr [rbp - 0x40a8]
	mov	rax, qword ptr [rbp - 0x4038]
	xor	esi, esi
	mov	qword ptr [rbp - 0x4160], rdx
	mov	edx, esi
	div	rcx
	mov	rcx, qword ptr [rbp - 0x4160]
	cmp	rcx, rax
	ja	.label_196
	mov	byte ptr [rbp - 0x4089], 1
	jmp	.label_203
.label_196:
	mov	byte ptr [rbp - 0x4089], 0
.label_203:
	jmp	.label_206
.label_112:
	jmp	.label_157
.label_207:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_176
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40c0]
	mov	byte ptr [rbp - 0x40a9], 0
	mov	qword ptr [rbp - 0x40b8], 0
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x40c1], 0
	mov	qword ptr [rbp - 0x40d0], 0
.label_185:
	mov	eax, 0x4000
	mov	ecx, eax
	lea	rdx, [rbp - 0x4030]
	mov	edi, dword ptr [rbp - 4]
	add	rdx, qword ptr [rbp - 0x40d0]
	sub	rcx, qword ptr [rbp - 0x40d0]
	mov	rsi, rdx
	mov	rdx, rcx
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	cmp	rax, 0
	jbe	.label_131
	cmp	qword ptr [rbp - 0x4038], -1
	jne	.label_138
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	dword ptr [rbp - 0x4164], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4164]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_131
.label_138:
	lea	rax, [rbp - 0x4030]
	mov	rcx, qword ptr [rbp - 0x4038]
	add	rcx, qword ptr [rbp - 0x4058]
	mov	qword ptr [rbp - 0x4058], rcx
	mov	qword ptr [rbp - 0x40d8], rax
	mov	rax, qword ptr [rbp - 0x40d0]
	add	rax, qword ptr [rbp - 0x4038]
	mov	qword ptr [rbp - 0x4038], rax
.label_164:
	mov	byte ptr [rbp - 0x40f1], 1
	test	byte ptr [rbp - 0x40c1], 1
	jne	.label_174
	mov	rax, qword ptr [rbp - 0x40d8]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_173
	jmp	.label_174
.label_173:
	mov	qword ptr [rbp - 0x40f0], 1
	mov	rax, qword ptr [rbp - 0x40d8]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x40e4], ecx
	mov	byte ptr [rbp - 0x40f1], 0
	jmp	.label_114
.label_174:
	lea	rdi, [rbp - 0x40e4]
	lea	rcx, [rbp - 0x40c0]
	mov	byte ptr [rbp - 0x40c1], 1
	mov	rax, qword ptr [rbp - 0x40c0]
	mov	qword ptr [rbp - 0x40e0], rax
	mov	rsi, qword ptr [rbp - 0x40d8]
	mov	rdx, qword ptr [rbp - 0x4038]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x40f0], rax
	cmp	qword ptr [rbp - 0x40f0], -2
	jne	.label_193
	mov	rax, qword ptr [rbp - 0x40e0]
	mov	qword ptr [rbp - 0x40c0], rax
	jmp	.label_179
.label_193:
	cmp	qword ptr [rbp - 0x40f0], -1
	jne	.label_199
	mov	rax, qword ptr [rbp - 0x40d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x40d8], rax
	mov	rax, qword ptr [rbp - 0x4038]
	add	rax, -1
	mov	qword ptr [rbp - 0x4038], rax
	jmp	.label_201
.label_199:
	lea	rdi, [rbp - 0x40c0]
	call	mbsinit
	cmp	eax, 0
	je	.label_210
	mov	byte ptr [rbp - 0x40c1], 0
.label_210:
	cmp	qword ptr [rbp - 0x40f0], 0
	jne	.label_211
	mov	dword ptr [rbp - 0x40e4], 0
	mov	qword ptr [rbp - 0x40f0], 1
.label_211:
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0x40e4]
	mov	ecx, eax
	sub	ecx, 9
	mov	dword ptr [rbp - 0x4168], eax
	mov	dword ptr [rbp - 0x416c], ecx
	je	.label_116
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0x4168]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4170], eax
	je	.label_125
	jmp	.label_133
.label_133:
	mov	eax, dword ptr [rbp - 0x4168]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x4174], eax
	je	.label_135
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 0x4168]
	add	eax, -0xc
	sub	eax, 2
	mov	dword ptr [rbp - 0x4178], eax
	jb	.label_150
	jmp	.label_175
.label_175:
	mov	eax, dword ptr [rbp - 0x4168]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x417c], eax
	je	.label_180
	jmp	.label_128
.label_125:
	mov	rax, qword ptr [rbp - 0x4040]
	add	rax, 1
	mov	qword ptr [rbp - 0x4040], rax
.label_150:
	mov	rax, qword ptr [rbp - 0x40b8]
	cmp	rax, qword ptr [rbp - 0x4060]
	jbe	.label_156
	mov	rax, qword ptr [rbp - 0x40b8]
	mov	qword ptr [rbp - 0x4060], rax
.label_156:
	mov	qword ptr [rbp - 0x40b8], 0
	jmp	.label_159
.label_116:
	mov	eax, 8
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x40b8]
	and	rdx, 7
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x40b8]
	mov	qword ptr [rbp - 0x40b8], rcx
	jmp	.label_159
.label_180:
	mov	rax, qword ptr [rbp - 0x40b8]
	add	rax, 1
	mov	qword ptr [rbp - 0x40b8], rax
.label_135:
	jmp	.label_159
.label_159:
	mov	al, byte ptr [rbp - 0x40a9]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x4048]
	mov	qword ptr [rbp - 0x4048], rdx
	mov	byte ptr [rbp - 0x40a9], 0
	jmp	.label_178
.label_128:
	test	byte ptr [rbp - 0x40f1], 1
	je	.label_186
	mov	edi, dword ptr [rbp - 0x40e4]
	call	iswprint
	cmp	eax, 0
	je	.label_186
	test	byte ptr [byte ptr [print_linelength]],  1
	je	.label_130
	mov	edi, dword ptr [rbp - 0x40e4]
	call	wcwidth
	mov	dword ptr [rbp - 0x40f8], eax
	cmp	dword ptr [rbp - 0x40f8], 0
	jle	.label_197
	movsxd	rax, dword ptr [rbp - 0x40f8]
	add	rax, qword ptr [rbp - 0x40b8]
	mov	qword ptr [rbp - 0x40b8], rax
.label_197:
	jmp	.label_130
.label_130:
	mov	edi, dword ptr [rbp - 0x40e4]
	call	iswspace
	cmp	eax, 0
	jne	.label_205
	mov	edi, dword ptr [rbp - 0x40e4]
	call	iswnbspace
	cmp	eax, 0
	je	.label_167
.label_205:
	jmp	.label_159
.label_167:
	mov	byte ptr [rbp - 0x40a9], 1
	jmp	.label_194
.label_186:
	test	byte ptr [rbp - 0x40f1], 1
	jne	.label_117
	mov	rax, qword ptr [rbp - 0x40d8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x4188], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x4188]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_117
	mov	rax, qword ptr [rbp - 0x40b8]
	add	rax, 1
	mov	qword ptr [rbp - 0x40b8], rax
	mov	rax, qword ptr [rbp - 0x40d8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x4190], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x4190]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_144
	jmp	.label_159
.label_144:
	mov	byte ptr [rbp - 0x40a9], 1
.label_117:
	jmp	.label_194
.label_194:
	jmp	.label_178
.label_178:
	mov	rax, qword ptr [rbp - 0x40f0]
	add	rax, qword ptr [rbp - 0x40d8]
	mov	qword ptr [rbp - 0x40d8], rax
	mov	rax, qword ptr [rbp - 0x40f0]
	mov	rcx, qword ptr [rbp - 0x4038]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x4038], rcx
	mov	rax, qword ptr [rbp - 0x4050]
	add	rax, 1
	mov	qword ptr [rbp - 0x4050], rax
.label_201:
	cmp	qword ptr [rbp - 0x4038], 0
	ja	.label_164
.label_179:
	cmp	qword ptr [rbp - 0x4038], 0
	jbe	.label_166
	cmp	qword ptr [rbp - 0x4038], 0x4000
	jne	.label_169
	mov	rax, qword ptr [rbp - 0x40d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x40d8], rax
	mov	rax, qword ptr [rbp - 0x4038]
	add	rax, -1
	mov	qword ptr [rbp - 0x4038], rax
.label_169:
	lea	rdi, [rbp - 0x4030]
	mov	rsi, qword ptr [rbp - 0x40d8]
	mov	rdx, qword ptr [rbp - 0x4038]
	call	memmove
.label_166:
	mov	rax, qword ptr [rbp - 0x4038]
	mov	qword ptr [rbp - 0x40d0], rax
	jmp	.label_185
.label_131:
	mov	rax, qword ptr [rbp - 0x40b8]
	cmp	rax, qword ptr [rbp - 0x4060]
	jbe	.label_189
	mov	rax, qword ptr [rbp - 0x40b8]
	mov	qword ptr [rbp - 0x4060], rax
.label_189:
	mov	al, byte ptr [rbp - 0x40a9]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x4048]
	mov	qword ptr [rbp - 0x4048], rdx
	jmp	.label_195
.label_176:
	mov	byte ptr [rbp - 0x40f9], 0
	mov	qword ptr [rbp - 0x4108], 0
.label_146:
	mov	eax, 0x4000
	mov	edx, eax
	lea	rsi, [rbp - 0x4030]
	mov	edi, dword ptr [rbp - 4]
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	cmp	rax, 0
	jbe	.label_123
	lea	rax, [rbp - 0x4030]
	mov	qword ptr [rbp - 0x4110], rax
	cmp	qword ptr [rbp - 0x4038], -1
	jne	.label_208
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	dword ptr [rbp - 0x4194], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4194]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_123
.label_208:
	mov	rax, qword ptr [rbp - 0x4038]
	add	rax, qword ptr [rbp - 0x4058]
	mov	qword ptr [rbp - 0x4058], rax
.label_118:
	mov	rax, qword ptr [rbp - 0x4110]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x4110], rcx
	movsx	edx, byte ptr [rax]
	mov	esi, edx
	sub	esi, 9
	mov	dword ptr [rbp - 0x4198], edx
	mov	dword ptr [rbp - 0x419c], esi
	je	.label_132
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0x4198]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x41a0], eax
	je	.label_149
	jmp	.label_151
.label_151:
	mov	eax, dword ptr [rbp - 0x4198]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x41a4], eax
	je	.label_153
	jmp	.label_154
.label_154:
	mov	eax, dword ptr [rbp - 0x4198]
	add	eax, -0xc
	sub	eax, 2
	mov	dword ptr [rbp - 0x41a8], eax
	jb	.label_155
	jmp	.label_161
.label_161:
	mov	eax, dword ptr [rbp - 0x4198]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x41ac], eax
	je	.label_162
	jmp	.label_165
.label_149:
	mov	rax, qword ptr [rbp - 0x4040]
	add	rax, 1
	mov	qword ptr [rbp - 0x4040], rax
.label_155:
	mov	rax, qword ptr [rbp - 0x4108]
	cmp	rax, qword ptr [rbp - 0x4060]
	jbe	.label_170
	mov	rax, qword ptr [rbp - 0x4108]
	mov	qword ptr [rbp - 0x4060], rax
.label_170:
	mov	qword ptr [rbp - 0x4108], 0
	jmp	.label_129
.label_132:
	mov	eax, 8
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x4108]
	and	rdx, 7
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x4108]
	mov	qword ptr [rbp - 0x4108], rcx
	jmp	.label_129
.label_162:
	mov	rax, qword ptr [rbp - 0x4108]
	add	rax, 1
	mov	qword ptr [rbp - 0x4108], rax
.label_153:
	jmp	.label_129
.label_129:
	mov	al, byte ptr [rbp - 0x40f9]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x4048]
	mov	qword ptr [rbp - 0x4048], rdx
	mov	byte ptr [rbp - 0x40f9], 0
	jmp	.label_134
.label_165:
	mov	rax, qword ptr [rbp - 0x4110]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x41b8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x41b8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_202
	mov	rax, qword ptr [rbp - 0x4108]
	add	rax, 1
	mov	qword ptr [rbp - 0x4108], rax
	mov	rax, qword ptr [rbp - 0x4110]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x41c0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x41c0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	jne	.label_120
	mov	rax, qword ptr [rbp - 0x4110]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	call	isnbspace
	cmp	eax, 0
	je	.label_191
.label_120:
	jmp	.label_129
.label_191:
	mov	byte ptr [rbp - 0x40f9], 1
.label_202:
	jmp	.label_134
.label_134:
	jmp	.label_136
.label_136:
	mov	rax, qword ptr [rbp - 0x4038]
	add	rax, -1
	mov	qword ptr [rbp - 0x4038], rax
	cmp	rax, 0
	jne	.label_118
	jmp	.label_146
.label_123:
	mov	rax, qword ptr [rbp - 0x4108]
	cmp	rax, qword ptr [rbp - 0x4060]
	jbe	.label_148
	mov	rax, qword ptr [rbp - 0x4108]
	mov	qword ptr [rbp - 0x4060], rax
.label_148:
	mov	al, byte ptr [rbp - 0x40f9]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x4048]
	mov	qword ptr [rbp - 0x4048], rdx
.label_195:
	jmp	.label_157
.label_157:
	jmp	.label_145
.label_145:
	mov	al, byte ptr [rbp - 0x4062]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [print_chars]]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	jge	.label_160
	mov	rax, qword ptr [rbp - 0x4058]
	mov	qword ptr [rbp - 0x4050], rax
.label_160:
	mov	rdi, qword ptr [rbp - 0x4040]
	mov	rsi, qword ptr [rbp - 0x4048]
	mov	rdx, qword ptr [rbp - 0x4050]
	mov	rcx, qword ptr [rbp - 0x4058]
	mov	r8, qword ptr [rbp - 0x4060]
	mov	r9, qword ptr [rbp - 0x10]
	call	write_counts
	mov	rcx, qword ptr [rbp - 0x4040]
	add	rcx,  qword ptr [word ptr [total_lines]]
	mov	qword ptr [word ptr [total_lines]],  rcx
	mov	rcx, qword ptr [rbp - 0x4048]
	add	rcx,  qword ptr [word ptr [total_words]]
	mov	qword ptr [word ptr [total_words]],  rcx
	mov	rcx, qword ptr [rbp - 0x4050]
	add	rcx,  qword ptr [word ptr [total_chars]]
	mov	qword ptr [word ptr [total_chars]],  rcx
	mov	rcx, qword ptr [rbp - 0x4058]
	add	rcx,  qword ptr [word ptr [total_bytes]]
	mov	qword ptr [word ptr [total_bytes]],  rcx
	mov	rcx, qword ptr [rbp - 0x4060]
	cmp	rcx,  qword ptr [word ptr [max_line_length]]
	jbe	.label_177
	mov	rax, qword ptr [rbp - 0x4060]
	mov	qword ptr [word ptr [max_line_length]],  rax
.label_177:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x41c0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041b0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_213
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_213
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_213
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_213
.label_213:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl iswnbspace
	.type iswnbspace, @function
iswnbspace:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [posixly_correct]],  1
	mov	byte ptr [rbp - 5], cl
	jne	.label_214
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0xa0
	mov	byte ptr [rbp - 6], al
	je	.label_215
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2007
	mov	byte ptr [rbp - 6], al
	je	.label_215
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x202f
	mov	byte ptr [rbp - 6], al
	je	.label_215
	cmp	dword ptr [rbp - 4], 0x2060
	sete	al
	mov	byte ptr [rbp - 6], al
.label_215:
	mov	al, byte ptr [rbp - 6]
	mov	byte ptr [rbp - 5], al
.label_214:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042a0

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
	.align	32
	#Procedure 0x4042b0

	.globl isnbspace
	.type isnbspace, @function
isnbspace:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	btowc
	mov	edi, eax
	call	iswnbspace
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042d0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x30
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_217
	mov	qword ptr [rbp - 8], 0
	jmp	.label_216
.label_217:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_216:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x30
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_219
	mov	qword ptr [rbp - 8], 0
	jmp	.label_218
.label_219:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_218:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043d0

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi], 0
	je	.label_220
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	call	getdelim
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_223
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	feof
	mov	ecx, 4
	mov	edx, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_222
.label_223:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_222
.label_220:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_221
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	jmp	.label_222
.label_221:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rax + 0x28], rdx
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rax
.label_222:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	je	.label_224
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_225
.label_224:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x20]
	sub	rax, rcx
	sar	rax, 3
	mov	qword ptr [rbp - 0x10], rax
.label_225:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	je	.label_226
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	free
.label_226:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404570
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
	.align	32
	#Procedure 0x404590
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
	.align	32
	#Procedure 0x4045b0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_228
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_230
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_228
.label_230:
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_231
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_227
.label_231:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_227:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_228:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_229
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_229:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046a0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046e0
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_232
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_232:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
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
	jae	.label_233
	jmp	.label_236
.label_236:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_236
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_235
.label_233:
	jmp	.label_234
.label_234:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
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
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_234
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404830
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jl	.label_238
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_237
.label_238:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_237:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404880
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 0x18
	cmp	rsi, rdi
	jne	.label_239
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	jmp	.label_240
.label_239:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_240:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	test	dl, 1
	jne	.label_242
	jmp	.label_241
.label_242:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_241:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404940

	.globl is_basic
	.type is_basic, @function
is_basic:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	sar	edi, 5
	movsxd	rcx, edi
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	and	edx, 0x1f
	mov	ecx, edx
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404980

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x55
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	jb	.label_247
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_247
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_245
.label_247:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_246
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movq	xmm1, qword ptr [rbp - 0x68]
	punpckldq	xmm1, xmm0
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	subpd	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_245
.label_246:
	movsd	xmm0,  qword ptr [word ptr [label_248]]
	movsd	qword ptr [rbp - 8], xmm0
.label_245:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x56
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	jb	.label_250
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_250
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_249
.label_250:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_252
	movq	xmm0, qword ptr [rbp - 0x60]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_243]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_244]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm3, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm0, rcx
	mulsd	xmm3, xmm0
	movsd	qword ptr [rbp - 8], xmm3
	jmp	.label_249
.label_252:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_251]]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
.label_249:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_253
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_253:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_254
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_256
.label_254:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_256:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_255
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_255
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_257:
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c80
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
	je	.label_258
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_259
.label_258:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_259
.label_259:
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
	.align	32
	#Procedure 0x404d00
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_260
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_261
.label_260:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d40
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
	je	.label_262
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_263
.label_262:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d90

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
	je	.label_264
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_265
.label_264:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_265
.label_265:
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
	.align	32
	#Procedure 0x404e40
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_266
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_266:
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
	.align	32
	#Procedure 0x404e80

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
	jne	.label_267
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_267:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_269
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_268
.label_269:
	call	abort
.label_268:
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
	.align	32
	#Procedure 0x404ef0
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
	je	.label_270
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_271
.label_270:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_271
.label_271:
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
	.align	32
	#Procedure 0x404fc0

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
.label_390:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_294
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_300]]
	jmp	rcx
.label_703:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_702:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_308
	jmp	.label_311
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_312
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_312:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_308
.label_308:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_318
.label_704:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_318
.label_705:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_329
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_329:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_341
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_361:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_345
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_351
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_351:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_361
.label_345:
	jmp	.label_341
.label_341:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_318
.label_700:
	mov	byte ptr [rbp - 0x79], 1
.label_699:
	mov	byte ptr [rbp - 0x7b], 1
.label_701:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_374
	mov	byte ptr [rbp - 0x79], 1
.label_374:
	jmp	.label_281
.label_281:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_384
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_380
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_384
.label_384:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_318
.label_698:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_318
.label_294:
	call	abort
.label_318:
	mov	qword ptr [rbp - 0x58], 0
.label_359:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_394
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_397
.label_394:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_397:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_410
	jmp	.label_463
.label_410:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_418
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_418
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_418
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_425
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_425
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_398
.label_425:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_398:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_418
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_418
	test	byte ptr [rbp - 0x7b], 1
	je	.label_449
	jmp	.label_277
.label_449:
	mov	byte ptr [rbp - 0x81], 1
.label_418:
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
	ja	.label_454
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_457]]
	jmp	rcx
.label_683:
	test	byte ptr [rbp - 0x79], 1
	je	.label_458
	jmp	.label_409
.label_409:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_464
	jmp	.label_277
.label_464:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_432
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_432
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_470
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_470:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_279:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_290
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_290:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_432:
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_303
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_303:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_453
.label_453:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_314
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_314
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_314
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_314
	jmp	.label_327
.label_327:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_451
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_451:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_314
.label_314:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_350
.label_458:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_353
	jmp	.label_357
.label_353:
	jmp	.label_350
.label_350:
	jmp	.label_286
.label_694:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_358
	jmp	.label_365
.label_365:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_366
	jmp	.label_368
.label_358:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_385
	jmp	.label_277
.label_385:
	jmp	.label_373
.label_366:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_382
	jmp	.label_389
.label_389:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_382
	jmp	.label_392
.label_392:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_382
	jmp	.label_399
.label_399:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_382
	jmp	.label_403
.label_403:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_404
	jmp	.label_382
.label_382:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_413
	jmp	.label_277
.label_413:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_417
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_417:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_428
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_428:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_433
.label_433:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_438:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_445
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_445:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_296
.label_404:
	jmp	.label_296
.label_296:
	jmp	.label_377
.label_377:
	jmp	.label_373
.label_368:
	jmp	.label_373
.label_373:
	jmp	.label_286
.label_684:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_280
.label_685:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_280
.label_689:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_280
.label_687:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_272
.label_690:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_272
.label_686:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_272
.label_688:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_280
.label_695:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_461
	test	byte ptr [rbp - 0x7b], 1
	je	.label_465
	jmp	.label_277
.label_465:
	jmp	.label_317
.label_461:
	test	byte ptr [rbp - 0x79], 1
	je	.label_467
	test	byte ptr [rbp - 0x7b], 1
	je	.label_467
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_467
	jmp	.label_317
.label_467:
	jmp	.label_272
.label_272:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_273
	test	byte ptr [rbp - 0x7b], 1
	je	.label_273
	jmp	.label_277
.label_273:
	jmp	.label_280
.label_280:
	test	byte ptr [rbp - 0x79], 1
	je	.label_282
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_284
.label_282:
	jmp	.label_286
.label_696:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_288
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_291
	jmp	.label_297
.label_288:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_291
.label_297:
	jmp	.label_286
.label_291:
	jmp	.label_299
.label_299:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_302
	jmp	.label_286
.label_302:
	jmp	.label_305
.label_305:
	mov	byte ptr [rbp - 0x83], 1
.label_691:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_310
	test	byte ptr [rbp - 0x7b], 1
	je	.label_310
	jmp	.label_277
.label_310:
	jmp	.label_286
.label_693:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_315
	test	byte ptr [rbp - 0x7b], 1
	je	.label_379
	jmp	.label_277
.label_379:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_324
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_324
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_324:
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_340
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_340:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_348
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_354
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_354:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_315:
	jmp	.label_286
.label_692:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_286
.label_454:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_309
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
	jmp	.label_372
.label_309:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_447
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_447:
	jmp	.label_292
.label_292:
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
	jne	.label_401
	jmp	.label_411
.label_401:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_408
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_411
.label_408:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_455
	mov	byte ptr [rbp - 0x91], 0
.label_434:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_419:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_430
	jmp	.label_431
.label_430:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_434
.label_431:
	jmp	.label_411
.label_455:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_441
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_441
	mov	qword ptr [rbp - 0xb8], 1
.label_468:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_444
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
	jb	.label_344
	jmp	.label_456
.label_456:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_344
	jmp	.label_375
.label_375:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_344
	jmp	.label_460
.label_460:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_462
	jmp	.label_344
.label_344:
	jmp	.label_277
.label_462:
	jmp	.label_443
.label_443:
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_468
.label_444:
	jmp	.label_441
.label_441:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_275
	mov	byte ptr [rbp - 0x91], 0
.label_275:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_319
.label_319:
	jmp	.label_285
.label_285:
	jmp	.label_287
.label_287:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_292
.label_411:
	jmp	.label_372
.label_372:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_298
	test	byte ptr [rbp - 0x79], 1
	je	.label_307
	test	byte ptr [rbp - 0x91], 1
	jne	.label_307
.label_298:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_439:
	test	byte ptr [rbp - 0x79], 1
	je	.label_316
	test	byte ptr [rbp - 0x91], 1
	jne	.label_316
	jmp	.label_322
.label_322:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_323
	jmp	.label_277
.label_323:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_326
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_326
	jmp	.label_330
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_333
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_346
.label_346:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_352
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_326:
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_363:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_367
.label_367:
	jmp	.label_370
.label_370:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_371
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_371:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_381
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_387
.label_316:
	test	byte ptr [rbp - 0x81], 1
	je	.label_391
	jmp	.label_393
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_391:
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_406
	jmp	.label_412
.label_406:
	jmp	.label_414
.label_414:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_416
	test	byte ptr [rbp - 0x82], 1
	jne	.label_416
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_421
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_423
.label_423:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_427
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_416:
	jmp	.label_435
.label_435:
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_440
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_440:
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
	jmp	.label_439
.label_412:
	jmp	.label_317
.label_307:
	jmp	.label_286
.label_286:
	test	byte ptr [rbp - 0x79], 1
	je	.label_450
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_452
.label_450:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_321
.label_452:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_321
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
	jne	.label_347
.label_321:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_347
	jmp	.label_317
.label_347:
	jmp	.label_284
.label_284:
	jmp	.label_426
.label_426:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_466
	jmp	.label_277
.label_466:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_459
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_459
	jmp	.label_472
.label_472:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_276
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_283
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_283:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_295
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_459:
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_306
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_306:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_313
.label_313:
	jmp	.label_317
.label_317:
	jmp	.label_293
.label_293:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_320
	test	byte ptr [rbp - 0x82], 1
	jne	.label_320
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_325
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_325:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_328
.label_328:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_334:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_320:
	jmp	.label_342
.label_342:
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_446
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_446:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_471
	mov	byte ptr [rbp - 0x7e], 0
.label_471:
	jmp	.label_357
.label_357:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_359
.label_463:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_364
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_364
	test	byte ptr [rbp - 0x7b], 1
	je	.label_364
	jmp	.label_277
.label_364:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_369
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_369
	test	byte ptr [rbp - 0x7d], 1
	je	.label_369
	test	byte ptr [rbp - 0x7e], 1
	je	.label_376
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
	jmp	.label_386
.label_376:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_388
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_388
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_390
.label_388:
	jmp	.label_362
.label_362:
	jmp	.label_369
.label_369:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_396
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_396
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_402
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_400
.label_402:
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_422
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_386
.label_277:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_429
	test	byte ptr [rbp - 0x79], 1
	je	.label_429
	mov	dword ptr [rbp - 0x34], 4
.label_429:
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
.label_386:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406360
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
	.align	32
	#Procedure 0x4063a0

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
	je	.label_473
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_474
.label_473:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_474
.label_474:
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
	je	.label_475
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_475:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406500
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_478:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_477
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_478
.label_477:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_479
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_480]],  rax
.label_479:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_476
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_476:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065e0

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
	.align	32
	#Procedure 0x406620

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
	jge	.label_488
	call	abort
.label_488:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_485
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_487
	call	xalloc_die
.label_487:
	test	byte ptr [rbp - 0x31], 1
	je	.label_484
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_486
.label_484:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_486:
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
	je	.label_483
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_480]]
	mov	qword ptr [rax + 8], rcx
.label_483:
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
.label_485:
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
	ja	.label_481
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_482
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_482:
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
.label_481:
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
	.align	32
	#Procedure 0x4068a0

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
	.align	32
	#Procedure 0x4068e0
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
	.align	32
	#Procedure 0x406900
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
	.align	32
	#Procedure 0x406930

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
	.align	32
	#Procedure 0x406970

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
	jne	.label_489
	call	abort
.label_489:
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
	.align	32
	#Procedure 0x4069e0

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
	.align	32
	#Procedure 0x406a20

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
	.align	32
	#Procedure 0x406a50
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
	.align	32
	#Procedure 0x406a80

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
	.align	32
	#Procedure 0x406b00

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
	.align	32
	#Procedure 0x406b30

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
	.align	32
	#Procedure 0x406b50
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
	.align	32
	#Procedure 0x406b80

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
	.align	32
	#Procedure 0x406c30

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
	.align	32
	#Procedure 0x406c70

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
	.align	32
	#Procedure 0x406cf0
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
	.align	32
	#Procedure 0x406d20
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
	.align	32
	#Procedure 0x406d60

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
	.align	32
	#Procedure 0x406da0
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
	.align	32
	#Procedure 0x406dd0

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
	.align	32
	#Procedure 0x406e00
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
	.align	32
	#Procedure 0x406e20

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
	je	.label_492
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_490
.label_492:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_491
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_490
.label_491:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_493
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_490
.label_493:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_490:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f20

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	call	_obstack_begin
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x70
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], eax
	call	_obstack_begin
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0xc8
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	_obstack_begin
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407010

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	jbe	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_497
.label_494:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	_obstack_free
.label_497:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_495
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_495
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_498
.label_495:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_498:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_496
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_496
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_499
.label_496:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_free
.label_499:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407150

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_500:
	mov	rdi, qword ptr [rbp - 8]
	call	fgetc
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_509
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_511
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 1
	jae	.label_510
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_510:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_511:
	jmp	.label_501
.label_509:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 1
	jae	.label_504
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	_obstack_newchunk
.label_504:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	mov	byte ptr [rsi], cl
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_505
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_505:
	jmp	.label_500
.label_501:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 8
	jae	.label_506
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_506:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_502
	mov	rax, qword ptr [rbp - 0x90]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_502:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x90]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_503
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
.label_503:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_508
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_508:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_507
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x18], rax
.label_507:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407550

	.globl save_token
	.type save_token, @function
save_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_512
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_512:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x30]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_513
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
.label_513:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_514
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_514:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 8
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_515
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	_obstack_newchunk
.label_515:
	lea	rax, [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407770

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_516:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_520
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_518
.label_520:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_522
	jmp	.label_516
.label_522:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_519
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_519
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_517
.label_519:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_518
.label_517:
	jmp	.label_521
.label_521:
	jmp	.label_523
.label_523:
	jmp	.label_516
.label_518:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407820

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
	je	.label_526
	movabs	rsi, OFFSET FLAT:.str_5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_528
.label_526:
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_528:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_1
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_527
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_525]]
	jmp	rcx
.label_756:
	jmp	.label_524
.label_757:
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_524
.label_758:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_524
.label_759:
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_524
.label_760:
	movabs	rdi, OFFSET FLAT:.str.7_0
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
	jmp	.label_524
.label_761:
	movabs	rdi, OFFSET FLAT:.str.8
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
	jmp	.label_524
.label_762:
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_524
.label_763:
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_524
.label_764:
	movabs	rdi, OFFSET FLAT:.str.11_1
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
	jmp	.label_524
.label_765:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_524
.label_527:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_524:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407de0
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
.label_531:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_529
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_531
.label_529:
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
	.align	32
	#Procedure 0x407e50

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
.label_532:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_536
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_534
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_533
.label_534:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_533:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_536:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_538
	jmp	.label_537
.label_538:
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_532
.label_537:
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
	.align	32
	#Procedure 0x407f60

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
	je	.label_539
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
.label_539:
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
	.align	32
	#Procedure 0x4080d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
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
	movabs	rdi, OFFSET FLAT:.str.19_0
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
	.align	32
	#Procedure 0x408160

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
	jae	.label_540
	call	xalloc_die
.label_540:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081b0

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
	jne	.label_541
	cmp	qword ptr [rbp - 8], 0
	je	.label_541
	call	xalloc_die
.label_541:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081f0
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
	jae	.label_542
	call	xalloc_die
.label_542:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408240

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_543
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_543
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_545
.label_543:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_544
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_544
	call	xalloc_die
.label_544:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_545:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082c0

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
	jne	.label_546
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_549
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
.label_549:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_547
	call	xalloc_die
.label_547:
	jmp	.label_548
.label_546:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_550
	call	xalloc_die
.label_550:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_548:
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
	.align	32
	#Procedure 0x4083b0

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
	.align	32
	#Procedure 0x4083d0
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
	.align	32
	#Procedure 0x408400
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
	.align	32
	#Procedure 0x408440
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
	jb	.label_551
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_552
.label_551:
	call	xalloc_die
.label_552:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084a0

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
	.align	32
	#Procedure 0x4084e0
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
	.align	32
	#Procedure 0x408520

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408560

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408570

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_553
	call	xset_binary_mode_error
.label_553:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085a0

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
	jge	.label_554
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_557
.label_554:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_555
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_556
.label_555:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_556
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_556:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_558
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_558:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_557:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408670

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_559
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_560
.label_559:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_561
.label_560:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_561:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086d0

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
	je	.label_562
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_562:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408710

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
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_563
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_565
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_564
.label_565:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_564
.label_563:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_564:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087e0

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
	jne	.label_566
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_566:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_567
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_567
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_567
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_568
.label_567:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_568:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408890

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088f0

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_569
	mov	qword ptr [rbp - 0x18], 0x10
.label_569:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_571
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_571:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_570
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_570:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfd
	mov	byte ptr [rdx + 0x50], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a10

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a80

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shr	rdi, 3
	add	rsi, rdi
	add	rsi, 0x64
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_572
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_572:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_574
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_574:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_573
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_573
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_573:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_575
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_575:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x10
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	jne	.label_576
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_576
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_576:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c80

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_577
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_578
.label_577:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_578:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ce0

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_579
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_580
.label_579:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_580:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d40

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_583:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_582
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_584
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_584:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_582:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_581
	jmp	.label_585
.label_581:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_583
.label_585:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408dd0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_592:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_590
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_593
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_593:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_590:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_589
	jmp	.label_591
.label_589:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_592
.label_591:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_588
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_586
.label_588:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_587
	call	abort
.label_587:
	jmp	.label_586
.label_586:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ed0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_595:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_594
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_595
.label_594:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f30

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	32
	#Procedure 0x408f80

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f90

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fa0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_597
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_596
.label_597:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_596:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ff0

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
	jne	.label_598
	mov	dword ptr [rbp - 4], 0
	jmp	.label_602
.label_598:
	jmp	.label_599
.label_599:
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
	jne	.label_601
	jmp	.label_600
.label_601:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_599
.label_600:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_602:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090b0

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
	jne	.label_603
	test	byte ptr [rbp - 0x13], 1
	je	.label_604
	test	byte ptr [rbp - 0x11], 1
	jne	.label_603
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_604
.label_603:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_605
	call	__errno_location
	mov	dword ptr [rax], 0
.label_605:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_606
.label_604:
	mov	dword ptr [rbp - 4], 0
.label_606:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409160

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
	je	.label_607
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_6
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_609
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_608
.label_609:
	mov	byte ptr [rbp - 5], 0
.label_608:
	jmp	.label_607
.label_607:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091e0

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
	jne	.label_610
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_610:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_611
	movabs	rax, OFFSET FLAT:.str.1_5
	mov	qword ptr [rbp - 8], rax
.label_611:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409240

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
	ja	.label_612
	jmp	.label_614
.label_614:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_613
.label_612:
	jmp	.label_613
.label_613:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409290
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
	jmp	.label_618
.label_618:
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
	ja	.label_617
	jmp	.label_615
.label_615:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_619
.label_617:
	mov	byte ptr [rbp - 1], 0
.label_619:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409300
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
	#Procedure 0x409350
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_624
	jmp	.label_626
.label_626:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_625
.label_624:
	mov	byte ptr [rbp - 1], 0
.label_625:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409380
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
	#Procedure 0x4093b0
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
	#Procedure 0x409400
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
	#Procedure 0x409440
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
	#Procedure 0x409480
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
	#Procedure 0x4094c0
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
	#Procedure 0x409500
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
	#Procedure 0x409580
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
	jmp	.label_653
.label_653:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_651
	jmp	.label_650
.label_650:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_652
.label_651:
	mov	byte ptr [rbp - 1], 0
.label_652:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095d0
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
	#Procedure 0x409610
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
	#Procedure 0x409680

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
	#Procedure 0x4096c0
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
	#Procedure 0x4097b0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x4097c0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat