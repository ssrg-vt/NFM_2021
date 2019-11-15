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
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
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
	mov	dword ptr [rbp - 0x14], eax
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
	mov	dword ptr [rbp - 0x18], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
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
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_11
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_12
	nop	
	jmp	.label_14
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_13
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_10
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
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
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_15
	movabs	rsi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	dword ptr [rbp - 0x2c], eax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.45
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
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
	sub	rsp, 0x340
	nop	
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x228], rax
	call	bindtextdomain
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x230], rax
	mov	rsp, rsp
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	call	atexit
	mov	dword ptr [rbp - 0x23c], eax
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
	mov	qword ptr [rbp - 0x248], rsi
	mov	rcx, qword ptr [rbp - 0x248]
	call	setvbuf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24c], eax
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
.label_52:
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	nop	
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	eax, -1
	je	.label_47
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x250], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], ecx
	nop	
	je	.label_50
	mov	rbp, rbp
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x258], eax
	je	.label_66
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x25c], eax
	lea	rdi, [rdi]
	je	.label_70
	jmp	.label_65
.label_65:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x250]
	lea	rdi, [rdi]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x260], eax
	lea	rsi, [rsi]
	je	.label_77
	lea	rdi, [rdi]
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x6c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x264], eax
	lea	rdi, [rdi]
	je	.label_26
	lea	rdi, [rdi]
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x250]
	mov	rsp, rsp
	sub	eax, 0x6d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x268], eax
	je	.label_35
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x250]
	lea	rdi, [rdi]
	sub	eax, 0x77
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x26c], eax
	lea	rsi, [rsi]
	je	.label_43
	lea	rdi, [rdi]
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x250]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x270], eax
	je	.label_34
	jmp	.label_62
.label_77:
	mov	byte ptr [byte ptr [print_bytes]],  1
	mov	rbp, rbp
	jmp	.label_46
.label_35:
	mov	byte ptr [byte ptr [print_chars]],  1
	mov	rbp, rbp
	jmp	.label_46
.label_26:
	mov	byte ptr [byte ptr [print_lines]],  1
	lea	rdi, [rdi]
	jmp	.label_46
.label_43:
	mov	byte ptr [byte ptr [print_words]],  1
	nop	
	jmp	.label_46
.label_70:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_linelength]],  1
	lea	rdi, [rdi]
	jmp	.label_46
.label_34:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_46
.label_66:
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_50:
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
	mov	qword ptr [rbp - 0x278], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_62:
	mov	edi, 1
	call	usage
.label_46:
	jmp	.label_52
.label_47:
	test	byte ptr [byte ptr [print_lines]],  1
	jne	.label_54
	test	byte ptr [byte ptr [print_words]],  1
	jne	.label_54
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_chars]],  1
	jne	.label_54
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [print_bytes]],  1
	lea	rdi, [rdi]
	jne	.label_54
	test	byte ptr [byte ptr [print_linelength]],  1
	lea	rsi, [rsi]
	jne	.label_54
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_bytes]],  1
	nop	
	mov	byte ptr [byte ptr [print_words]],  1
	mov	byte ptr [byte ptr [print_lines]],  1
.label_54:
	mov	byte ptr [rbp - 0x159], 0
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_78
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	jge	.label_22
	nop	
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x280], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x284], edi
	nop	
	mov	esi, dword ptr [rbp - 0x284]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_1
	nop	
	mov	rdi, qword ptr [rbp - 0x290]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x294], eax
	call	usage
.label_22:
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	eax, OFFSET FLAT:.str.19
	nop	
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_76
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x170], rax
	jmp	.label_16
.label_76:
	movabs	rsi, OFFSET FLAT:.str.20
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	fopen
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x170], 0
	lea	rdi, [rdi]
	jne	.label_27
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x298], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a0], rax
	call	quotearg_style
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x298]
	mov	rdx, qword ptr [rbp - 0x2a0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_27:
	lea	rdi, [rdi]
	jmp	.label_16
.label_16:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	call	fileno
	mov	rsp, rsp
	lea	rsi, [rbp - 0x200]
	lea	rsi, [rsi]
	mov	edi, eax
	call	__fstat
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_45
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1e8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rbp, rbp
	jne	.label_45
	nop	
	cvtsi2sd	xmm0, qword ptr [rbp - 0x1d0]
	movsd	qword ptr [rbp - 0x2a8], xmm0
	nop	
	call	physmem_available
	movsd	xmm1,  qword ptr [word ptr [label_19]]
	movsd	xmm2,  qword ptr [word ptr [label_20]]
	nop	
	divsd	xmm0, xmm2
	ucomisd	xmm0, xmm1
	mov	rbp, rbp
	jbe	.label_21
	movsd	xmm0,  qword ptr [word ptr [label_19]]
	movsd	qword ptr [rbp - 0x2b0], xmm0
	jmp	.label_31
.label_21:
	mov	rsp, rsp
	call	physmem_available
	movsd	xmm1,  qword ptr [word ptr [label_20]]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x2b0], xmm0
.label_31:
	movsd	xmm0, qword ptr [rbp - 0x2b0]
	movsd	xmm1, qword ptr [rbp - 0x2a8]
	ucomisd	xmm0, xmm1
	jb	.label_45
	lea	rdi, [rbp - 0x158]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x159], 1
	nop	
	call	readtokens0_init
	nop	
	lea	rsi, [rbp - 0x158]
	nop	
	mov	rdi, qword ptr [rbp - 0x170]
	call	readtokens0
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_59
	jmp	.label_67
.label_59:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x170]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_72
.label_67:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	nop	
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2b8], rax
	call	quotearg_style
	nop	
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_72:
	mov	rax, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	argv_iter_init_argv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rax
	jmp	.label_30
.label_45:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x170]
	call	argv_iter_init_stream
	mov	qword ptr [rbp - 0x168], rax
.label_30:
	mov	rbp, rbp
	jmp	.label_48
.label_78:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_51
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x2c0], rax
	nop	
	jmp	.label_60
.label_51:
	nop	
	movabs	rax, OFFSET FLAT:main.stdin_only
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_60
.label_60:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2c0]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	cmp	ecx, dword ptr [rbp - 8]
	nop	
	jge	.label_71
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c4], eax
	jmp	.label_23
.label_71:
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c4], eax
	mov	rsp, rsp
	jmp	.label_23
.label_23:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c4]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	argv_iter_init_argv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rax
.label_48:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x168], 0
	jne	.label_40
	nop	
	call	xalloc_die
.label_40:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	get_input_fstatus
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	compute_number_width
	mov	rbp, rbp
	mov	dword ptr [dword ptr [number_width]],  eax
	mov	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x204], 0
.label_42:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x20c]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x205], 0
	mov	rdi, qword ptr [rbp - 0x168]
	call	argv_iter
	mov	qword ptr [rbp - 0x218], rax
	cmp	qword ptr [rbp - 0x218], 0
	mov	rsp, rsp
	jne	.label_69
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20c]
	lea	rsi, [rsi]
	mov	ecx, eax
	sub	ecx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c8], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2cc], ecx
	je	.label_73
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x2c8]
	mov	rbp, rbp
	sub	eax, 3
	mov	dword ptr [rbp - 0x2d0], eax
	je	.label_49
	lea	rdi, [rdi]
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0x2c8]
	mov	rsp, rsp
	sub	eax, 4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2d4], eax
	je	.label_32
	lea	rdi, [rdi]
	jmp	.label_37
.label_73:
	jmp	.label_39
.label_32:
	nop	
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d8], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2e0], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2d8]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	jmp	.label_39
.label_49:
	mov	rsp, rsp
	call	xalloc_die
.label_37:
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0x33f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_69:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_25
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	eax, OFFSET FLAT:.str.19
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_25
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_25
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x2e8], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2ec], edi
	mov	esi, dword ptr [rbp - 0x2ec]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x205], 1
.label_25:
	mov	rax, qword ptr [rbp - 0x218]
	cmp	byte ptr [rax], 0
	jne	.label_61
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_64
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	jmp	.label_68
.label_64:
	mov	rdi, qword ptr [rbp - 0x168]
	call	argv_iter_n_args
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	qword ptr [rbp - 0x220], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	movabs	rdi, OFFSET FLAT:.str.28
	mov	r8, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0x2f8], rax
	nop	
	mov	qword ptr [rbp - 0x300], r8
	call	gettext
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.29
	nop	
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2f8]
	nop	
	mov	r8, qword ptr [rbp - 0x300]
	mov	r9, rax
	mov	al, 0
	nop	
	call	error
.label_68:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x205], 1
.label_61:
	test	byte ptr [rbp - 0x205], 1
	nop	
	je	.label_53
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_56
.label_53:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x308], rdi
	mov	rbp, rbp
	je	.label_57
	mov	eax, dword ptr [rbp - 0x204]
	mov	dword ptr [rbp - 0x30c], eax
	mov	rsp, rsp
	jmp	.label_36
.label_57:
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x30c], eax
	jmp	.label_36
.label_36:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x30c]
	movsxd	rcx, eax
	imul	rcx, rcx, 0x98
	nop	
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x308]
	mov	rsi, rcx
	mov	rsp, rsp
	call	wc_file
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	and	al, 1
	movzx	r8d, al
	and	r8d, edx
	cmp	r8d, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
.label_56:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_55
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 1
.label_55:
	lea	rdi, [rdi]
	jmp	.label_38
.label_38:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x204]
	add	eax, 1
	mov	dword ptr [rbp - 0x204], eax
	mov	rbp, rbp
	jmp	.label_42
.label_39:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	je	.label_28
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_28
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	call	argv_iter_n_args
	cmp	rax, 0
	jne	.label_28
	xor	eax, eax
	mov	edi, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	call	wc_file
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	and	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_28:
	test	byte ptr [rbp - 0x159], 1
	je	.label_58
	lea	rdi, [rbp - 0x158]
	lea	rsi, [rsi]
	call	readtokens0_free
.label_58:
	nop	
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	call	argv_iter_n_args
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	edi, ecx
	lea	rdi, [rdi]
	cmp	rdi, rax
	mov	rsp, rsp
	jae	.label_74
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rax,  qword ptr [word ptr [total_lines]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [total_words]]
	mov	rdx,  qword ptr [word ptr [total_chars]]
	mov	rcx,  qword ptr [word ptr [total_bytes]]
	mov	rsp, rsp
	mov	r8,  qword ptr [word ptr [max_line_length]]
	mov	qword ptr [rbp - 0x318], r8
	mov	qword ptr [rbp - 0x320], rax
	mov	qword ptr [rbp - 0x328], rsi
	mov	qword ptr [rbp - 0x330], rdx
	mov	qword ptr [rbp - 0x338], rcx
	call	gettext
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x328]
	nop	
	mov	rdx, qword ptr [rbp - 0x330]
	mov	rcx, qword ptr [rbp - 0x338]
	mov	r8, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	mov	r9, rax
	lea	rsi, [rsi]
	call	write_counts
.label_74:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x168]
	nop	
	call	argv_iter_free
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	free
	test	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rdi, [rdi]
	je	.label_18
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_18
	nop	
	call	__errno_location
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.19
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_18:
	lea	rsi, [rsi]
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x11]
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	lea	rsi, [rsi]
	add	rsp, 0x340
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl get_input_fstatus
	.type get_input_fstatus, @function
get_input_fstatus:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_84
	mov	rax, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_86
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 1
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
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 1
	jmp	.label_80
.label_83:
	mov	qword ptr [rbp - 0x20], 0
.label_87:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_88
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_82
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	call	__fstat
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	jmp	.label_85
.label_79:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	imul	rax, rax, 0x98
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	lea	rdi, [rdi]
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x2c], eax
.label_85:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x98
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_87
.label_88:
	nop	
	jmp	.label_80
.label_80:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403070

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 1
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_89
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	jg	.label_89
	mov	dword ptr [rbp - 0x18], 1
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
.label_98:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_95
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax], 0
	jne	.label_91
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rax, rax, 0x98
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x20]
	mov	rbp, rbp
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_90
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x98
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_94
.label_90:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 7
.label_94:
	mov	rbp, rbp
	jmp	.label_91
.label_91:
	jmp	.label_93
.label_93:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_98
.label_95:
	jmp	.label_96
.label_96:
	lea	rdi, [rdi]
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_97
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	mov	eax, 0xa
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_96
.label_97:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_92
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x14], eax
.label_92:
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403210

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_102
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.19
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jne	.label_100
.label_102:
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
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	wc
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_99
.label_100:
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_101
	mov	rsp, rsp
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_99
.label_101:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	wc
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	edi, dword ptr [rbp - 0x1c]
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
	mov	dword ptr [rbp - 0x28], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_99
.label_103:
	nop	
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_99:
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033c0

	.globl write_counts
	.type write_counts, @function
write_counts:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	movabs	rax, OFFSET FLAT:write_counts.format_sp_int
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_lines]],  1
	je	.label_104
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rdi
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x5c], eax
	call	umaxtostr
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
.label_104:
	nop	
	test	byte ptr [byte ptr [print_words]],  1
	mov	rbp, rbp
	je	.label_109
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x50]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsp, rsp
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x70], eax
.label_109:
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_chars]],  1
	je	.label_107
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	rbp, rbp
	mov	rdi, rcx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	call	umaxtostr
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	nop	
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
.label_107:
	test	byte ptr [byte ptr [print_bytes]],  1
	je	.label_106
	nop	
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], eax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	movabs	rcx, OFFSET FLAT:write_counts.format_sp_int
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
.label_106:
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_linelength]],  1
	lea	rsi, [rsi]
	je	.label_111
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	call	umaxtostr
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xa0], eax
.label_111:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_108
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_110
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_105
.label_110:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0xa8], rax
.label_105:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xac], eax
.label_108:
	lea	rsi, [rsi]
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xb0], eax
	mov	rsp, rsp
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl wc
	.type wc, @function
wc:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x41c0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_154
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x4118], rax
	lea	rdi, [rdi]
	jmp	.label_166
.label_154:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x4118], rax
.label_166:
	mov	rax, qword ptr [rbp - 0x4118]
	mov	qword ptr [rbp - 0x4070], rax
	mov	qword ptr [rbp - 0x4060], 0
	mov	qword ptr [rbp - 0x4058], 0
	nop	
	mov	qword ptr [rbp - 0x4050], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4048], 0
	mov	qword ptr [rbp - 0x4040], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_186
	mov	al,  byte ptr [byte ptr [print_bytes]]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x4061], al
	mov	al,  byte ptr [byte ptr [print_chars]]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4062], al
	lea	rsi, [rsi]
	jmp	.label_189
.label_186:
	nop	
	mov	al, 1
	nop	
	test	byte ptr [byte ptr [print_bytes]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4119], al
	jne	.label_211
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [print_chars]]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4119], al
.label_211:
	mov	al, byte ptr [rbp - 0x4119]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4061], al
	mov	byte ptr [rbp - 0x4062], 0
.label_189:
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_words]],  1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x411a], al
	jne	.label_114
	nop	
	mov	al,  byte ptr [byte ptr [print_linelength]]
	nop	
	mov	byte ptr [rbp - 0x411a], al
.label_114:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x411a]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4063], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4061], 1
	mov	rbp, rbp
	je	.label_123
	nop	
	test	byte ptr [rbp - 0x4062], 1
	jne	.label_123
	test	byte ptr [byte ptr [print_lines]],  1
	mov	rbp, rbp
	jne	.label_123
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x4063], 1
	je	.label_139
.label_123:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	ecx, eax
	call	fdadvise
.label_139:
	test	byte ptr [rbp - 0x4061], 1
	je	.label_150
	mov	rsp, rsp
	test	byte ptr [rbp - 0x4062], 1
	nop	
	jne	.label_150
	test	byte ptr [byte ptr [print_lines]],  1
	jne	.label_150
	test	byte ptr [rbp - 0x4063], 1
	mov	rsp, rsp
	jne	.label_150
	xor	eax, eax
	mov	byte ptr [rbp - 0x4071], 0
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rcx]
	jge	.label_196
	mov	edi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 8
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	__fstat
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rsi], eax
.label_196:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_171
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 8
	mov	rsp, rsp
	mov	rdi, rax
	call	usable_st_size
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_177
	jmp	.label_171
.label_177:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x38]
	jg	.label_171
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x4080], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jge	.label_184
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	lseek
	mov	qword ptr [rbp - 0x20], rax
.label_184:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4080]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [word ptr [page_size]]
	cmp	rdx, 0
	je	.label_200
	nop	
	mov	rax, qword ptr [rbp - 0x4080]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_176
	nop	
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x4128], rcx
	jmp	.label_210
.label_176:
	mov	rax, qword ptr [rbp - 0x4080]
	sub	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4128], rax
.label_210:
	mov	rax, qword ptr [rbp - 0x4128]
	mov	qword ptr [rbp - 0x4058], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4071], 1
	mov	rbp, rbp
	jmp	.label_149
.label_200:
	xor	eax, eax
	nop	
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x4080]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4080]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rsi + 0x40]
	nop	
	mov	qword ptr [rbp - 0x4130], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4138], rdx
	jge	.label_126
	movabs	rax, 0x2000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x40], rax
	ja	.label_126
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x4140], rax
	jmp	.label_147
.label_126:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x4140], rcx
	jmp	.label_147
.label_147:
	mov	rax, qword ptr [rbp - 0x4140]
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x4130]
	nop	
	mov	qword ptr [rbp - 0x4148], rax
	mov	rbp, rbp
	mov	rax, rsi
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4150], rdx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x4148]
	nop	
	div	rdi
	mov	r8, qword ptr [rbp - 0x4138]
	mov	rsp, rsp
	sub	r8, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4088], r8
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4150]
	cmp	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jg	.label_151
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x4088]
	jge	.label_151
	mov	edx, 1
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x4088]
	lea	rsi, [rsi]
	call	lseek
	lea	rdi, [rdi]
	xor	edx, edx
	mov	esi, edx
	nop	
	cmp	rsi, rax
	jg	.label_151
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4088]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4058], rax
.label_151:
	nop	
	jmp	.label_149
.label_149:
	jmp	.label_171
.label_171:
	test	byte ptr [rbp - 0x4071], 1
	jne	.label_162
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 2
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	ecx, eax
	call	fdadvise
.label_132:
	mov	eax, 0x4000
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rsi, [rbp - 0x4030]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jbe	.label_130
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x4038], -1
	mov	rbp, rbp
	jne	.label_209
	nop	
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	dword ptr [rbp - 0x4154], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x4154]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_130
.label_209:
	mov	rax, qword ptr [rbp - 0x4038]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x4058]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4058], rax
	jmp	.label_132
.label_130:
	mov	rbp, rbp
	jmp	.label_162
.label_162:
	mov	rsp, rsp
	jmp	.label_121
.label_150:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4062], 1
	jne	.label_143
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4063], 1
	mov	rsp, rsp
	jne	.label_143
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4089], 0
.label_161:
	mov	eax, 0x4000
	mov	edx, eax
	lea	rsi, [rbp - 0x4030]
	mov	edi, dword ptr [rbp - 4]
	nop	
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	cmp	rax, 0
	nop	
	jbe	.label_155
	cmp	qword ptr [rbp - 0x4038], -1
	mov	rbp, rbp
	jne	.label_159
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	dword ptr [rbp - 0x4158], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4158]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_155
.label_159:
	mov	rsp, rsp
	lea	rax, [rbp - 0x4030]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4038]
	add	rcx, qword ptr [rbp - 0x4058]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4058], rcx
	mov	qword ptr [rbp - 0x4098], rax
	mov	rax, qword ptr [rbp - 0x4098]
	add	rax, qword ptr [rbp - 0x4038]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40a0], rax
	mov	rax, qword ptr [rbp - 0x4040]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40a8], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4089], 1
	jne	.label_172
	jmp	.label_141
.label_141:
	mov	rax, qword ptr [rbp - 0x4098]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40a0]
	je	.label_192
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4098]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x4098], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	cmp	edx, 0xa
	sete	sil
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edx, sil
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x4040]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4040], rax
	jmp	.label_141
.label_192:
	mov	rsp, rsp
	jmp	.label_115
.label_172:
	jmp	.label_117
.label_117:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x4098]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4098]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	esi, 0xa
	mov	rdx, rax
	mov	rsp, rsp
	call	memchr
	mov	qword ptr [rbp - 0x4098], rax
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_128
	nop	
	mov	rax, qword ptr [rbp - 0x4098]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x4098], rax
	mov	rax, qword ptr [rbp - 0x4040]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4040], rax
	jmp	.label_117
.label_128:
	jmp	.label_115
.label_115:
	mov	eax, 0xf
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4040]
	nop	
	sub	rdx, qword ptr [rbp - 0x40a8]
	mov	rax, qword ptr [rbp - 0x4038]
	nop	
	xor	esi, esi
	mov	qword ptr [rbp - 0x4160], rdx
	mov	rsp, rsp
	mov	edx, esi
	div	rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4160]
	nop	
	cmp	rcx, rax
	nop	
	ja	.label_146
	nop	
	mov	byte ptr [rbp - 0x4089], 1
	lea	rsi, [rsi]
	jmp	.label_157
.label_146:
	mov	byte ptr [rbp - 0x4089], 0
.label_157:
	jmp	.label_161
.label_155:
	mov	rsp, rsp
	jmp	.label_119
.label_143:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_164
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40c0]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40a9], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40b8], 0
	mov	rbp, rbp
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	mov	byte ptr [rbp - 0x40c1], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40d0], 0
.label_198:
	mov	rsp, rsp
	mov	eax, 0x4000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdx, [rbp - 0x4030]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x40d0]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x40d0]
	lea	rdi, [rdi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	mov	rbp, rbp
	cmp	rax, 0
	jbe	.label_113
	cmp	qword ptr [rbp - 0x4038], -1
	jne	.label_194
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4164], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4164]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_113
.label_194:
	lea	rax, [rbp - 0x4030]
	mov	rcx, qword ptr [rbp - 0x4038]
	add	rcx, qword ptr [rbp - 0x4058]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4058], rcx
	mov	qword ptr [rbp - 0x40d8], rax
	mov	rax, qword ptr [rbp - 0x40d0]
	nop	
	add	rax, qword ptr [rbp - 0x4038]
	nop	
	mov	qword ptr [rbp - 0x4038], rax
.label_170:
	mov	byte ptr [rbp - 0x40f1], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x40c1], 1
	nop	
	jne	.label_127
	mov	rax, qword ptr [rbp - 0x40d8]
	movsx	edi, byte ptr [rax]
	call	is_basic
	mov	rsp, rsp
	test	al, 1
	jne	.label_136
	jmp	.label_127
.label_136:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40f0], 1
	mov	rax, qword ptr [rbp - 0x40d8]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x40e4], ecx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40f1], 0
	mov	rbp, rbp
	jmp	.label_140
.label_127:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x40e4]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x40c0]
	nop	
	mov	byte ptr [rbp - 0x40c1], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40c0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40e0], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40d8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4038]
	mov	rsp, rsp
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40f0], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40f0], -2
	jne	.label_163
	mov	rax, qword ptr [rbp - 0x40e0]
	mov	qword ptr [rbp - 0x40c0], rax
	lea	rsi, [rsi]
	jmp	.label_142
.label_163:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40f0], -1
	lea	rdi, [rdi]
	jne	.label_169
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40d8]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x40d8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4038]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4038], rax
	jmp	.label_173
.label_169:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x40c0]
	call	mbsinit
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_185
	mov	byte ptr [rbp - 0x40c1], 0
.label_185:
	cmp	qword ptr [rbp - 0x40f0], 0
	mov	rbp, rbp
	jne	.label_112
	mov	dword ptr [rbp - 0x40e4], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40f0], 1
.label_112:
	mov	rsp, rsp
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 0x40e4]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 9
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4168], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x416c], ecx
	mov	rsp, rsp
	je	.label_202
	lea	rdi, [rdi]
	jmp	.label_208
.label_208:
	mov	eax, dword ptr [rbp - 0x4168]
	mov	rbp, rbp
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4170], eax
	je	.label_212
	jmp	.label_118
.label_118:
	mov	eax, dword ptr [rbp - 0x4168]
	mov	rsp, rsp
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x4174], eax
	je	.label_120
	mov	rbp, rbp
	jmp	.label_122
.label_122:
	mov	eax, dword ptr [rbp - 0x4168]
	mov	rbp, rbp
	add	eax, -0xc
	mov	rbp, rbp
	sub	eax, 2
	mov	dword ptr [rbp - 0x4178], eax
	jb	.label_125
	lea	rsi, [rsi]
	jmp	.label_131
.label_131:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4168]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x417c], eax
	lea	rdi, [rdi]
	je	.label_124
	jmp	.label_138
.label_212:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4040]
	add	rax, 1
	mov	qword ptr [rbp - 0x4040], rax
.label_125:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40b8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x4060]
	jbe	.label_145
	mov	rax, qword ptr [rbp - 0x40b8]
	mov	qword ptr [rbp - 0x4060], rax
.label_145:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40b8], 0
	nop	
	jmp	.label_134
.label_202:
	mov	eax, 8
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x40b8]
	and	rdx, 7
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x40b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40b8], rcx
	jmp	.label_134
.label_124:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40b8]
	add	rax, 1
	mov	qword ptr [rbp - 0x40b8], rax
.label_120:
	jmp	.label_134
.label_134:
	mov	al, byte ptr [rbp - 0x40a9]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x4048]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4048], rdx
	nop	
	mov	byte ptr [rbp - 0x40a9], 0
	jmp	.label_160
.label_138:
	test	byte ptr [rbp - 0x40f1], 1
	je	.label_174
	mov	edi, dword ptr [rbp - 0x40e4]
	lea	rsi, [rsi]
	call	iswprint
	nop	
	cmp	eax, 0
	je	.label_174
	nop	
	test	byte ptr [byte ptr [print_linelength]],  1
	lea	rsi, [rsi]
	je	.label_179
	mov	edi, dword ptr [rbp - 0x40e4]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40f8], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x40f8], 0
	jle	.label_168
	movsxd	rax, dword ptr [rbp - 0x40f8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x40b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40b8], rax
.label_168:
	mov	rbp, rbp
	jmp	.label_179
.label_179:
	mov	edi, dword ptr [rbp - 0x40e4]
	nop	
	call	iswspace
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_156
	mov	edi, dword ptr [rbp - 0x40e4]
	call	iswnbspace
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_206
.label_156:
	lea	rdi, [rdi]
	jmp	.label_134
.label_206:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x40a9], 1
	lea	rsi, [rsi]
	jmp	.label_158
.label_174:
	test	byte ptr [rbp - 0x40f1], 1
	mov	rsp, rsp
	jne	.label_129
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40d8]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	movsxd	rcx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4188], rcx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x4188]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_129
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40b8]
	add	rax, 1
	mov	qword ptr [rbp - 0x40b8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40d8]
	nop	
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x4190], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4190]
	mov	rsp, rsp
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x2000
	lea	rdi, [rdi]
	cmp	edi, 0
	mov	rsp, rsp
	je	.label_148
	nop	
	jmp	.label_134
.label_148:
	mov	byte ptr [rbp - 0x40a9], 1
.label_129:
	jmp	.label_158
.label_158:
	jmp	.label_160
.label_160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40f0]
	add	rax, qword ptr [rbp - 0x40d8]
	mov	qword ptr [rbp - 0x40d8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40f0]
	mov	rcx, qword ptr [rbp - 0x4038]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x4038], rcx
	mov	rax, qword ptr [rbp - 0x4050]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x4050], rax
.label_173:
	nop	
	cmp	qword ptr [rbp - 0x4038], 0
	lea	rsi, [rsi]
	ja	.label_170
.label_142:
	cmp	qword ptr [rbp - 0x4038], 0
	mov	rbp, rbp
	jbe	.label_191
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4038], 0x4000
	mov	rsp, rsp
	jne	.label_175
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40d8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40d8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4038]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4038], rax
.label_175:
	lea	rdi, [rbp - 0x4030]
	mov	rsi, qword ptr [rbp - 0x40d8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4038]
	call	memmove
.label_191:
	mov	rax, qword ptr [rbp - 0x4038]
	mov	qword ptr [rbp - 0x40d0], rax
	mov	rbp, rbp
	jmp	.label_198
.label_113:
	mov	rax, qword ptr [rbp - 0x40b8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x4060]
	lea	rsi, [rsi]
	jbe	.label_203
	mov	rax, qword ptr [rbp - 0x40b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4060], rax
.label_203:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x40a9]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x4048]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4048], rdx
	nop	
	jmp	.label_205
.label_164:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40f9], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4108], 0
.label_199:
	lea	rdi, [rdi]
	mov	eax, 0x4000
	mov	edx, eax
	mov	rbp, rbp
	lea	rsi, [rbp - 0x4030]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	safe_read
	mov	qword ptr [rbp - 0x4038], rax
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	jbe	.label_133
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x4030]
	mov	qword ptr [rbp - 0x4110], rax
	cmp	qword ptr [rbp - 0x4038], -1
	jne	.label_137
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x4070]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4194], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4194]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_133
.label_137:
	mov	rax, qword ptr [rbp - 0x4038]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4058]
	mov	qword ptr [rbp - 0x4058], rax
.label_190:
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
	mov	dword ptr [rbp - 0x4198], edx
	mov	dword ptr [rbp - 0x419c], esi
	je	.label_165
	mov	rbp, rbp
	jmp	.label_183
.label_183:
	nop	
	mov	eax, dword ptr [rbp - 0x4198]
	mov	rbp, rbp
	sub	eax, 0xa
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x41a0], eax
	mov	rsp, rsp
	je	.label_195
	nop	
	jmp	.label_178
.label_178:
	mov	eax, dword ptr [rbp - 0x4198]
	mov	rbp, rbp
	sub	eax, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x41a4], eax
	lea	rdi, [rdi]
	je	.label_144
	jmp	.label_187
.label_187:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4198]
	lea	rdi, [rdi]
	add	eax, -0xc
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x41a8], eax
	jb	.label_188
	jmp	.label_193
.label_193:
	mov	eax, dword ptr [rbp - 0x4198]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x41ac], eax
	je	.label_197
	jmp	.label_204
.label_195:
	mov	rax, qword ptr [rbp - 0x4040]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4040], rax
.label_188:
	nop	
	mov	rax, qword ptr [rbp - 0x4108]
	cmp	rax, qword ptr [rbp - 0x4060]
	mov	rsp, rsp
	jbe	.label_207
	mov	rax, qword ptr [rbp - 0x4108]
	mov	qword ptr [rbp - 0x4060], rax
.label_207:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4108], 0
	jmp	.label_116
.label_165:
	lea	rsi, [rsi]
	mov	eax, 8
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x4108]
	and	rdx, 7
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4108]
	mov	qword ptr [rbp - 0x4108], rcx
	jmp	.label_116
.label_197:
	mov	rax, qword ptr [rbp - 0x4108]
	add	rax, 1
	mov	qword ptr [rbp - 0x4108], rax
.label_144:
	jmp	.label_116
.label_116:
	nop	
	mov	al, byte ptr [rbp - 0x40f9]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x4048]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4048], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40f9], 0
	jmp	.label_135
.label_204:
	mov	rax, qword ptr [rbp - 0x4110]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x41b8], rcx
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x41b8]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edi, 0x4000
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	rsp, rsp
	je	.label_152
	mov	rax, qword ptr [rbp - 0x4108]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x4108], rax
	mov	rax, qword ptr [rbp - 0x4110]
	movsx	edi, byte ptr [rax - 1]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x41c0], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x41c0]
	mov	rbp, rbp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	lea	rsi, [rsi]
	cmp	edi, 0
	jne	.label_182
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4110]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	call	isnbspace
	cmp	eax, 0
	je	.label_181
.label_182:
	nop	
	jmp	.label_116
.label_181:
	mov	byte ptr [rbp - 0x40f9], 1
.label_152:
	jmp	.label_135
.label_135:
	jmp	.label_180
.label_180:
	mov	rax, qword ptr [rbp - 0x4038]
	mov	rbp, rbp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x4038], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_190
	lea	rsi, [rsi]
	jmp	.label_199
.label_133:
	mov	rax, qword ptr [rbp - 0x4108]
	cmp	rax, qword ptr [rbp - 0x4060]
	mov	rbp, rbp
	jbe	.label_201
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4108]
	mov	qword ptr [rbp - 0x4060], rax
.label_201:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x40f9]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x4048]
	mov	qword ptr [rbp - 0x4048], rdx
.label_205:
	lea	rsi, [rsi]
	jmp	.label_119
.label_119:
	jmp	.label_121
.label_121:
	mov	al, byte ptr [rbp - 0x4062]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [print_chars]]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	cmp	ecx, edx
	jge	.label_153
	mov	rax, qword ptr [rbp - 0x4058]
	mov	qword ptr [rbp - 0x4050], rax
.label_153:
	mov	rdi, qword ptr [rbp - 0x4040]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x4048]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4050]
	nop	
	mov	rcx, qword ptr [rbp - 0x4058]
	nop	
	mov	r8, qword ptr [rbp - 0x4060]
	mov	r9, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	write_counts
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4040]
	mov	rsp, rsp
	add	rcx,  qword ptr [word ptr [total_lines]]
	nop	
	mov	qword ptr [word ptr [total_lines]],  rcx
	mov	rcx, qword ptr [rbp - 0x4048]
	lea	rsi, [rsi]
	add	rcx,  qword ptr [word ptr [total_words]]
	mov	qword ptr [word ptr [total_words]],  rcx
	mov	rcx, qword ptr [rbp - 0x4050]
	add	rcx,  qword ptr [word ptr [total_chars]]
	mov	qword ptr [word ptr [total_chars]],  rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4058]
	lea	rsi, [rsi]
	add	rcx,  qword ptr [word ptr [total_bytes]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [total_bytes]],  rcx
	mov	rcx, qword ptr [rbp - 0x4060]
	cmp	rcx,  qword ptr [word ptr [max_line_length]]
	lea	rdi, [rdi]
	jbe	.label_167
	mov	rax, qword ptr [rbp - 0x4060]
	mov	rbp, rbp
	mov	qword ptr [word ptr [max_line_length]],  rax
.label_167:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x41c0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b40

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_213
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	je	.label_213
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
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
	mov	rsp, rsp
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404be0

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
	nop	
	jne	.label_214
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0xa0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 6], al
	mov	rsp, rsp
	je	.label_215
	mov	rsp, rsp
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2007
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 6], al
	mov	rsp, rsp
	je	.label_215
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0x202f
	mov	byte ptr [rbp - 6], al
	je	.label_215
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0x2060
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 6], al
.label_215:
	mov	al, byte ptr [rbp - 6]
	mov	byte ptr [rbp - 5], al
.label_214:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c70

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
	#Procedure 0x404c90

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
	#Procedure 0x404cd0

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
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_216
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_217
.label_216:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_217:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d70

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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_219
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_218
.label_219:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	nop	
	mov	rax, qword ptr [rbp - 0x18]
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
	#Procedure 0x404e30

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rsi], 0
	je	.label_220
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	getdelim
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_223
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_221
.label_223:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	nop	
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_221
.label_220:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_222
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_221
.label_222:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 8], rax
.label_221:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_224
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_225
.label_224:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	sub	rax, rcx
	sar	rax, 3
	mov	qword ptr [rbp - 0x10], rax
.label_225:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405000

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
	#Procedure 0x405060
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
	#Procedure 0x405090
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
	#Procedure 0x4050c0

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
	je	.label_228
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_227
.label_228:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_231
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
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_229
.label_231:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
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
	#Procedure 0x4051f0

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
	.align	32
	#Procedure 0x405230
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
	je	.label_232
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
.label_232:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405290

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_233
	jmp	.label_236
.label_236:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_236
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_235
.label_233:
	jmp	.label_234
.label_234:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	nop	
	jne	.label_234
	jmp	.label_235
.label_235:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053d0
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
	#Procedure 0x405440
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
	#Procedure 0x405540

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
	#Procedure 0x4055a0

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
	movsd	qword ptr [rbp - 0x10], xmm0
	nop	
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	mov	rbp, rbp
	jb	.label_248
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	nop	
	jb	.label_248
	movsd	xmm0, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_246
.label_248:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x88]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	nop	
	jne	.label_247
	nop	
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	mov	rbp, rbp
	movq	xmm1, qword ptr [rbp - 0x68]
	nop	
	punpckldq	xmm1, xmm0
	mov	rbp, rbp
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_245]]
	subpd	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_246
.label_247:
	mov	rbp, rbp
	movsd	xmm0,  qword ptr [word ptr [label_243]]
	mov	rsp, rsp
	movsd	qword ptr [rbp - 8], xmm0
.label_246:
	movsd	xmm0, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056b0

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
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	nop	
	ucomisd	xmm1, xmm0
	jb	.label_249
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomisd	xmm1, xmm0
	jb	.label_249
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_250
.label_249:
	lea	rdi, [rbp - 0x88]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_252
	movq	xmm0, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_244]]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_245]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	lea	rsi, [rsi]
	movq	xmm0, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm3, xmm1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm0, rcx
	mov	rsp, rsp
	mulsd	xmm3, xmm0
	movsd	qword ptr [rbp - 8], xmm3
	nop	
	jmp	.label_250
.label_252:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_251]]
	nop	
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
.label_250:
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057e0

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
	jne	.label_253
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_253:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_256
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_255
.label_256:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_255:
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
	jl	.label_254
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_254
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
	jne	.label_257
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_257:
	jmp	.label_254
.label_254:
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
	.align	32
	#Procedure 0x405960
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
	je	.label_259
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_258
.label_259:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_258
.label_258:
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
	.align	32
	#Procedure 0x405a10
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
	je	.label_260
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_261
.label_260:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a70
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
	je	.label_262
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_263
.label_262:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ad0

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
	je	.label_264
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_265
.label_264:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_265
.label_265:
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
	.align	32
	#Procedure 0x405bd0
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
	jne	.label_266
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_266:
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
	.align	32
	#Procedure 0x405c30

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
	jne	.label_267
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_267:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
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
	.align	32
	#Procedure 0x405cd0
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
	je	.label_270
	mov	rax, qword ptr [rbp - 0x28]
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
	.align	32
	#Procedure 0x405dd0

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
.label_356:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_419
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_423]]
	jmp	rcx
.label_709:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_708:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_429
	jmp	.label_433
.label_433:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_436
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_436:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_429
.label_429:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_322
.label_710:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_322
.label_711:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_450
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
.label_450:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_281
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_274:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_463
	jmp	.label_466
.label_466:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_468
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_468:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_274
.label_463:
	mov	rbp, rbp
	jmp	.label_281
.label_281:
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
	jmp	.label_322
.label_706:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_705:
	mov	byte ptr [rbp - 0x7b], 1
.label_707:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_293
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_293:
	jmp	.label_296
.label_296:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_299
	jmp	.label_305
.label_305:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_306
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_306:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_299
.label_299:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_322
.label_704:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_322
.label_419:
	call	abort
.label_322:
	mov	qword ptr [rbp - 0x58], 0
.label_295:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_335
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
	jmp	.label_404
.label_335:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_404:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_351
	mov	rbp, rbp
	jmp	.label_361
.label_351:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_364
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_364
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_364
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_377
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_377
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_393
.label_377:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_393:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_364
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
	jne	.label_364
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_411
	jmp	.label_278
.label_411:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_364:
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
	ja	.label_414
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_424]]
	nop	
	jmp	rcx
.label_718:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_427
	mov	rsp, rsp
	jmp	.label_432
.label_432:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_367
	jmp	.label_278
.label_367:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_438
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_438
	nop	
	jmp	.label_442
.label_442:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_443
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_443:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_449
.label_449:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_454
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_454:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_459
.label_459:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_462
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_462:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_438:
	lea	rsi, [rsi]
	jmp	.label_405
.label_405:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_470
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_470:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_472
.label_472:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_277
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_277
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_277
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_277
	nop	
	jmp	.label_311
.label_311:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_297
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_297:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_307
.label_307:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_313
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_313:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_277
.label_277:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_328
.label_427:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_330
	mov	rbp, rbp
	jmp	.label_336
.label_330:
	jmp	.label_328
.label_328:
	jmp	.label_309
.label_729:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_338
	mov	rbp, rbp
	jmp	.label_342
.label_342:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_345
	jmp	.label_352
.label_338:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_355
	jmp	.label_278
.label_355:
	jmp	.label_359
.label_345:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_362
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_362
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_362
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
	je	.label_379
	nop	
	jmp	.label_388
.label_388:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_379
	jmp	.label_395
.label_395:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_379
	jmp	.label_399
.label_399:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_379
	jmp	.label_331
.label_331:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_407
	jmp	.label_379
.label_379:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_431
	jmp	.label_278
.label_431:
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
	jae	.label_417
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_417:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_428
.label_428:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_435
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_435:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_440
.label_440:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_441
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_441:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_279:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_325
.label_407:
	jmp	.label_325
.label_325:
	jmp	.label_362
.label_362:
	jmp	.label_359
.label_352:
	jmp	.label_359
.label_359:
	jmp	.label_309
.label_719:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_298
.label_720:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_298
.label_724:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_298
.label_722:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_291
.label_725:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_291
.label_721:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_291
.label_723:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_298
.label_730:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_469
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_273
	nop	
	jmp	.label_278
.label_273:
	lea	rsi, [rsi]
	jmp	.label_280
.label_469:
	test	byte ptr [rbp - 0x79], 1
	je	.label_283
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_283
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_283
	jmp	.label_280
.label_283:
	jmp	.label_291
.label_291:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_292
	test	byte ptr [rbp - 0x7b], 1
	je	.label_292
	jmp	.label_278
.label_292:
	mov	rsp, rsp
	jmp	.label_298
.label_298:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_302
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_304
.label_302:
	jmp	.label_309
.label_731:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_310
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_321
	jmp	.label_319
.label_310:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_321
.label_319:
	nop	
	jmp	.label_309
.label_321:
	jmp	.label_327
.label_327:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_357
	lea	rsi, [rsi]
	jmp	.label_309
.label_357:
	nop	
	jmp	.label_334
.label_334:
	mov	byte ptr [rbp - 0x83], 1
.label_726:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_337
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_337
	jmp	.label_278
.label_337:
	lea	rsi, [rsi]
	jmp	.label_309
.label_728:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_341
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_349
	jmp	.label_278
.label_349:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_354
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_354
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_354:
	jmp	.label_366
.label_366:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_369
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_369:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_376
.label_376:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_383
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_390
.label_390:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_289
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_289:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_341:
	lea	rsi, [rsi]
	jmp	.label_309
.label_727:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_309
.label_414:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_408
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
	jmp	.label_382
.label_408:
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
	jne	.label_430
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_430:
	jmp	.label_386
.label_386:
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
	jne	.label_451
	jmp	.label_284
.label_451:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_458
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_284
.label_458:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_460
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_301:
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
	jae	.label_464
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_464:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_272
	jmp	.label_275
.label_272:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_301
.label_275:
	jmp	.label_284
.label_460:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_285
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_285
	mov	qword ptr [rbp - 0xb8], 1
.label_340:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_394
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
	jb	.label_294
	jmp	.label_314
.label_314:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_294
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_294
	jmp	.label_332
.label_332:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_333
	mov	rsp, rsp
	jmp	.label_294
.label_294:
	mov	rsp, rsp
	jmp	.label_278
.label_333:
	jmp	.label_339
.label_339:
	mov	rsp, rsp
	jmp	.label_387
.label_387:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_340
.label_394:
	mov	rbp, rbp
	jmp	.label_285
.label_285:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_353
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_353:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_358
.label_358:
	lea	rsi, [rsi]
	jmp	.label_368
.label_368:
	jmp	.label_370
.label_370:
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
	jne	.label_386
.label_284:
	jmp	.label_382
.label_382:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_384
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_392
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_392
.label_384:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_360:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_400
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_400
	jmp	.label_402
.label_402:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_406
	jmp	.label_278
.label_406:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_410
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_410
	lea	rdi, [rdi]
	jmp	.label_415
.label_415:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_418
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_418:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_286
.label_286:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_426
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_426:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_437
.label_437:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_371
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_371:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_410:
	jmp	.label_448
.label_448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_446
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_446:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_447
.label_447:
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_323
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
.label_323:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_420
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
.label_420:
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
	jmp	.label_425
.label_400:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_282
	lea	rdi, [rdi]
	jmp	.label_287
.label_287:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_288
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_282:
	nop	
	jmp	.label_425
.label_425:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_300
	jmp	.label_308
.label_300:
	lea	rsi, [rsi]
	jmp	.label_465
.label_465:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_312
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_312
	lea	rsi, [rsi]
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_320
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_329
.label_329:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_397
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_397:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_312:
	nop	
	jmp	.label_344
.label_344:
	mov	rsp, rsp
	jmp	.label_346
.label_346:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_348
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_348:
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
	jmp	.label_360
.label_308:
	mov	rsp, rsp
	jmp	.label_280
.label_392:
	lea	rsi, [rsi]
	jmp	.label_309
.label_309:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_412
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_381
.label_412:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_385
.label_381:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_385
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
	jne	.label_398
.label_385:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_398
	mov	rsp, rsp
	jmp	.label_280
.label_398:
	nop	
	jmp	.label_304
.label_304:
	jmp	.label_380
.label_380:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_401
	jmp	.label_278
.label_401:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_409
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_409
	lea	rdi, [rdi]
	jmp	.label_413
.label_413:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_416
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_416:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_316:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_434
.label_434:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_439
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_439:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_409:
	jmp	.label_445
.label_445:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_455
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_455:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_453
.label_453:
	nop	
	jmp	.label_280
.label_280:
	jmp	.label_457
.label_457:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_350
	test	byte ptr [rbp - 0x82], 1
	jne	.label_350
	lea	rdi, [rdi]
	jmp	.label_372
.label_372:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_461
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_461:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_444
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_444:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_350:
	jmp	.label_276
.label_276:
	nop	
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_317
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_317:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_290
	mov	byte ptr [rbp - 0x7e], 0
.label_290:
	mov	rbp, rbp
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_295
.label_361:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_303
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_303
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_303
	nop	
	jmp	.label_278
.label_303:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_315
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_315
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_315
	test	byte ptr [rbp - 0x7e], 1
	je	.label_326
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
	jmp	.label_343
.label_326:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_347
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_347
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_356
.label_347:
	jmp	.label_363
.label_363:
	mov	rbp, rbp
	jmp	.label_315
.label_315:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_365
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_365
	mov	rbp, rbp
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_374
	lea	rdi, [rdi]
	jmp	.label_375
.label_375:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_378
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_378:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_373
.label_374:
	jmp	.label_365
.label_365:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_396
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_343
.label_278:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_403
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_403
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_403:
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
.label_343:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076f0
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
	.align	32
	#Procedure 0x407760

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
	je	.label_473
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_474
.label_473:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_474
.label_474:
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
	je	.label_475
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_475:
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
	.align	32
	#Procedure 0x407930
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
	#Procedure 0x407a40

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
	.align	32
	#Procedure 0x407a90

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
	jge	.label_487
	call	abort
.label_487:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_482
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
	jge	.label_483
	call	xalloc_die
.label_483:
	test	byte ptr [rbp - 0x31], 1
	je	.label_484
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_488
.label_484:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_488:
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
	je	.label_486
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_476]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_486:
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
.label_482:
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
	ja	.label_485
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
	je	.label_481
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_481:
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
.label_485:
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
	.align	32
	#Procedure 0x407dc0

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
	.align	32
	#Procedure 0x407e00
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
	#Procedure 0x407e30
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
	.align	32
	#Procedure 0x407e70

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
	.align	32
	#Procedure 0x407ed0

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
	jne	.label_489
	call	abort
.label_489:
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
	.align	32
	#Procedure 0x407f70

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
	.align	32
	#Procedure 0x407fe0

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
	.align	32
	#Procedure 0x408020
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
	.align	32
	#Procedure 0x408060

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
	.align	32
	#Procedure 0x408110

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
	#Procedure 0x408150

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
	#Procedure 0x408180
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
	#Procedure 0x4081c0

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
	.align	32
	#Procedure 0x4082b0

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
	.align	32
	#Procedure 0x408300

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
	.align	32
	#Procedure 0x4083a0
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
	.align	32
	#Procedure 0x4083f0
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
	.align	32
	#Procedure 0x408450

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
	.align	32
	#Procedure 0x408490
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
	#Procedure 0x4084d0

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
	#Procedure 0x408510
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
	#Procedure 0x408550

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
	je	.label_492
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_490
.label_492:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_493
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
	jmp	.label_490
.label_493:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_491
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
	jmp	.label_490
.label_491:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_490:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408690

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
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x70
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	call	_obstack_begin
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	ecx, r9d
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, 0xc8
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	_obstack_begin
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087b0

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	mov	rbp, rbp
	jbe	.label_498
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_498
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	jmp	.label_496
.label_498:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_free
.label_496:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jbe	.label_494
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_494
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_497
.label_494:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_497:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	nop	
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_499
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_499
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_495
.label_499:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_free
.label_495:
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408950

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
	mov	qword ptr [rbp - 0x10], rsi
.label_510:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fgetc
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], -1
	mov	rsp, rsp
	jne	.label_509
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_503
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 1
	jae	.label_504
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_504:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
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
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_503:
	mov	rsp, rsp
	jmp	.label_507
.label_509:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 1
	jae	.label_508
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	_obstack_newchunk
.label_508:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	nop	
	mov	byte ptr [rsi], cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	jne	.label_500
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_500:
	mov	rbp, rbp
	jmp	.label_510
.label_507:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 8
	jae	.label_501
	lea	rsi, [rsi]
	mov	eax, 8
	mov	rbp, rbp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	call	_obstack_newchunk
.label_501:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_506
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x50]
	mov	rbp, rbp
	and	cl, 0xfd
	lea	rdi, [rdi]
	or	cl, 2
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x50], cl
.label_506:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	mov	rsp, rsp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	nop	
	jbe	.label_502
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
.label_502:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0xc8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_511
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x50]
	lea	rdi, [rdi]
	and	cl, 0xfd
	or	cl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x50], cl
.label_511:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	sub	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	nop	
	jbe	.label_505
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x18], rax
.label_505:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
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
	#Procedure 0x408e90

	.globl save_token
	.type save_token, @function
save_token:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdi, 0x18
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	sub	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jne	.label_512
	mov	rax, qword ptr [rbp - 0x30]
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
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jbe	.label_514
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
.label_514:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 0x70
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_515
	nop	
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_515:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	qword ptr [rbp - 0x78], 8
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_513
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	call	_obstack_newchunk
.label_513:
	mov	rbp, rbp
	lea	rax, [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
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
	#Procedure 0x409150

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
.label_523:
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
	jg	.label_516
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_522
.label_516:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_517
	lea	rdi, [rdi]
	jmp	.label_523
.label_517:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_520
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_520
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_521
.label_520:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_522
.label_521:
	jmp	.label_519
.label_519:
	jmp	.label_518
.label_518:
	mov	rsp, rsp
	jmp	.label_523
.label_522:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409240

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
	je	.label_524
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
	jmp	.label_527
.label_524:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_527:
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
	ja	.label_528
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_526]]
	jmp	rcx
.label_761:
	jmp	.label_525
.label_762:
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
	jmp	.label_525
.label_763:
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
	jmp	.label_525
.label_764:
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
	jmp	.label_525
.label_765:
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
	jmp	.label_525
.label_766:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
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
	jmp	.label_525
.label_767:
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
	jmp	.label_525
.label_768:
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
	jmp	.label_525
.label_769:
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
	jmp	.label_525
.label_770:
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
	jmp	.label_525
.label_528:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_525:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099b0
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
.label_529:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_530
	mov	rbp, rbp
	jmp	.label_531
.label_531:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_529
.label_530:
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
	.align	32
	#Procedure 0x409a60

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
.label_538:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_533
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
	jmp	.label_534
.label_533:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_534:
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
.label_537:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_536
	mov	rsp, rsp
	jmp	.label_532
.label_536:
	jmp	.label_535
.label_535:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_538
.label_532:
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
	.align	32
	#Procedure 0x409bc0

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
	je	.label_539
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
.label_539:
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
	.align	32
	#Procedure 0x409d70
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
	.align	32
	#Procedure 0x409e20

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
	#Procedure 0x409e80

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
	jne	.label_541
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_541
	lea	rdi, [rdi]
	call	xalloc_die
.label_541:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ee0
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
	jae	.label_542
	mov	rsp, rsp
	call	xalloc_die
.label_542:
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
	.align	32
	#Procedure 0x409f60

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
	jne	.label_543
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_543
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_545
.label_543:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_544
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_544
	lea	rsi, [rsi]
	call	xalloc_die
.label_544:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a010

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
	jne	.label_546
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_548
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
.label_548:
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
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_547
	call	xalloc_die
.label_547:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_549:
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
	.align	32
	#Procedure 0x40a140

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
	#Procedure 0x40a170
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
	#Procedure 0x40a1b0
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
	#Procedure 0x40a200
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
	jb	.label_551
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_552
.label_551:
	lea	rsi, [rsi]
	call	xalloc_die
.label_552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a270

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
	.align	32
	#Procedure 0x40a2c0
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
	.align	32
	#Procedure 0x40a320

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
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a380

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
	#Procedure 0x40a390

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
	jge	.label_553
	call	xset_binary_mode_error
.label_553:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3d0

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
	jge	.label_558
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_556
.label_558:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_555
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
	je	.label_554
.label_555:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_554
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_554:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_557
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
.label_557:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_556:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4f0

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
	je	.label_559
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_560
.label_559:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_561
.label_560:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_561:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a560

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
	je	.label_562
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
.label_562:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5c0

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
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_563
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
	jne	.label_564
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_565
.label_564:
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
	jmp	.label_565
.label_563:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_565:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6d0

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
	jne	.label_566
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_566:
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
	ja	.label_567
	nop	
	cmp	qword ptr [rbp - 0x20], 0
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
	jmp	.label_568
.label_567:
	mov	rax, qword ptr [rbp - 0x30]
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
	#Procedure 0x40a7c0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x50]
	nop	
	and	al, 0xfe
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a840

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_569
	nop	
	mov	qword ptr [rbp - 0x18], 0x10
.label_569:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_570
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x20
	nop	
	sub	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_570:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_571
	mov	rbp, rbp
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_571:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
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
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x50]
	mov	rbp, rbp
	and	r8b, 0xfd
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x50], r8b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
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
	#Procedure 0x40a9d0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x50], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa60

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	shr	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	add	rsi, 0x64
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_572
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_572:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_574
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_574:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	ja	.label_573
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	ja	.label_573
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_573:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_575
	nop	
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_575:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rdx, 0x10
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	nop	
	jne	.label_576
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsi, 0x10
	mov	rsp, rsp
	sub	rsi, 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_576
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	call_freefun
.label_576:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40acf0

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_578
.label_577:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_578:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad70

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
	#Procedure 0x40ade0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_584:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_585
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	lea	rsi, [rsi]
	jae	.label_583
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	setb	cl
	nop	
	mov	byte ptr [rbp - 0x22], cl
.label_583:
	nop	
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_585:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_581
	jmp	.label_582
.label_581:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_584
.label_582:
	cmp	qword ptr [rbp - 0x18], 0
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
	#Procedure 0x40aeb0

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
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_593:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_589
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	jae	.label_590
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], cl
.label_590:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
.label_589:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_587
	mov	rbp, rbp
	jmp	.label_592
.label_587:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_freefun
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
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
	jmp	.label_593
.label_592:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_591
	mov	rax, qword ptr [rbp - 0x10]
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
	jmp	.label_586
.label_591:
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_588
	mov	rbp, rbp
	call	abort
.label_588:
	jmp	.label_586
.label_586:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b010

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
.label_594:
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_595
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_594
.label_595:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b090

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
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40b0f0

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
	#Procedure 0x40b110

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
	#Procedure 0x40b130

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
	je	.label_596
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_597
.label_596:
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_597:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b190

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
	jne	.label_598
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_601
.label_598:
	mov	rbp, rbp
	jmp	.label_599
.label_599:
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
	jne	.label_600
	jmp	.label_602
.label_600:
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
	je	.label_599
.label_602:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
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
	.align	32
	#Procedure 0x40b280

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
	jne	.label_605
	test	byte ptr [rbp - 0x13], 1
	je	.label_604
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_605
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_604
.label_605:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_603
	call	__errno_location
	mov	dword ptr [rax], 0
.label_603:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_606
.label_604:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_606:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b360

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
	je	.label_608
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_609
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_607
.label_609:
	mov	byte ptr [rbp - 5], 0
.label_607:
	jmp	.label_608
.label_608:
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
	.align	32
	#Procedure 0x40b400

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
	#Procedure 0x40b480

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
	#Procedure 0x40b4e0
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
	#Procedure 0x40b550
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
	#Procedure 0x40b5a0
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
	#Procedure 0x40b5d0
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
	#Procedure 0x40b600
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
	#Procedure 0x40b650
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
	#Procedure 0x40b690
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
	#Procedure 0x40b6d0
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
	#Procedure 0x40b710
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
	#Procedure 0x40b750
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
	#Procedure 0x40b7d0
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
	jne	.label_652
	jmp	.label_650
.label_650:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_651
.label_652:
	mov	byte ptr [rbp - 1], 0
.label_651:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b820
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
	#Procedure 0x40b860
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
	#Procedure 0x40b8d0

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
	#Procedure 0x40b910
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
	#Procedure 0x40ba00

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40ba10

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat