	.section	.text
	.align	16
	#Procedure 0x401cb0

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	jmp	.label_8
.label_8:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_7
.label_9:
	movabs	rdi, OFFSET FLAT:.str.1
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x28], rsi
	call	gettext
	mov	edx, 2
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	nop	
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x38], eax
	call	emit_size_note
	nop	
	movabs	rdi, OFFSET FLAT:.str.7
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401e80

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ec0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.45
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_15
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_15:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_14
	jmp	.label_10
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_11
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_13
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_13:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_12
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.57
	nop	
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.58
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.60
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 8]
	nop	
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402140

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x350
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
	mov	qword ptr [rbp - 0x20], 0
	call	getpagesize
	mov	rbp, rbp
	movabs	rsi, 0x7fffffffffffffff
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	call	set_program_name
	nop	
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.10
	movabs	rsi, OFFSET FLAT:.str.11
	mov	qword ptr [rbp - 0x150], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 0x158], rax
	lea	rdi, [rdi]
	call	textdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x160], rax
	call	atexit
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x164], eax
	call	bad_cast
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.13
	mov	qword ptr [word ptr [infile]],  rax
	mov	rbp, rbp
	call	bad_cast
	mov	rsp, rsp
	mov	qword ptr [word ptr [outbase]],  rax
.label_26:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [optind]],  0
	je	.label_43
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x168], eax
	jmp	.label_46
.label_43:
	mov	eax, 1
	mov	dword ptr [rbp - 0x168], eax
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x168]
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.14
	movabs	rcx, OFFSET FLAT:longopts
	lea	rsi, [rsi]
	xor	esi, esi
	mov	r8d, esi
	mov	dword ptr [rbp - 0x4c], eax
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	getopt_long
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_109
	jmp	.label_68
.label_109:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x16c], eax
	mov	dword ptr [rbp - 0x170], ecx
	je	.label_70
	lea	rdi, [rdi]
	jmp	.label_77
.label_77:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x174], eax
	mov	rbp, rbp
	je	.label_80
	jmp	.label_86
.label_86:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x16c]
	add	eax, -0x30
	lea	rdi, [rdi]
	sub	eax, 0xa
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x178], eax
	mov	rbp, rbp
	jb	.label_89
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x17c], eax
	mov	rbp, rbp
	je	.label_96
	mov	rbp, rbp
	jmp	.label_100
.label_100:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x16c]
	nop	
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x180], eax
	lea	rdi, [rdi]
	je	.label_82
	jmp	.label_105
.label_105:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rbp, rbp
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x184], eax
	lea	rdi, [rdi]
	je	.label_106
	mov	rsp, rsp
	jmp	.label_113
.label_113:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x16c]
	lea	rsi, [rsi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x188], eax
	je	.label_52
	jmp	.label_119
.label_119:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x16c]
	lea	rsi, [rsi]
	sub	eax, 0x65
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18c], eax
	nop	
	je	.label_120
	lea	rsi, [rsi]
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x190], eax
	je	.label_50
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x194], eax
	je	.label_30
	mov	rsp, rsp
	jmp	.label_37
.label_37:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x16c]
	lea	rdi, [rdi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x198], eax
	je	.label_56
	jmp	.label_44
.label_44:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_18
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x1a0], eax
	je	.label_52
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x1a4], eax
	lea	rdi, [rdi]
	je	.label_121
	mov	rbp, rbp
	jmp	.label_92
.label_92:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a8], eax
	mov	rsp, rsp
	je	.label_85
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_111
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x1b0], eax
	je	.label_79
	mov	rsp, rsp
	jmp	.label_83
.label_82:
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b8], rax
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rdx, 0x1fffffffffffffff
	movabs	rcx, OFFSET FLAT:.str_0
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1b8]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [suffix_length]],  rax
	mov	rbp, rbp
	jmp	.label_31
.label_79:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	last_component
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_91
	movabs	rdi, OFFSET FLAT:.str.16
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_91:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [additional_suffix]],  rax
	jmp	.label_31
.label_106:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_25
	mov	rbp, rbp
	jmp	.label_27
.label_27:
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_25:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.18_0
	nop	
	mov	dword ptr [rbp - 0x14], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1c8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	ecx, 1
	mov	esi, ecx
	lea	rdi, [rdi]
	movabs	rdx, 0x7fffffffffffffff
	movabs	rcx, OFFSET FLAT:main.multipliers
	nop	
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_31
.label_50:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_65
	jmp	.label_71
.label_71:
	movabs	rdi, OFFSET FLAT:.str.17_0
	nop	
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	call	usage
.label_65:
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x14], 3
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d0], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_31
.label_96:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	je	.label_99
	mov	rsp, rsp
	jmp	.label_101
.label_101:
	nop	
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_99:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	dword ptr [rbp - 0x14], 2
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsp, rsp
	call	gettext
	mov	ecx, 1
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	movabs	rdx, 0x7fffffffffffffff
	nop	
	movabs	rcx, OFFSET FLAT:main.multipliers
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rdi, [rdi]
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_31
.label_30:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_35
	lea	rsi, [rsi]
	jmp	.label_39
.label_39:
	movabs	rdi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_35:
	lea	rsi, [rsi]
	jmp	.label_51
.label_51:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x1e0], rcx
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1e0]
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_45
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_51
.label_45:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.20
	mov	eax, 2
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	cmp	eax, 0
	jne	.label_66
	mov	dword ptr [rbp - 0x14], 7
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	add	rax, 2
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_17
.label_66:
	movabs	rsi, OFFSET FLAT:.str.21
	mov	eax, 2
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	nop	
	cmp	eax, 0
	jne	.label_97
	nop	
	mov	dword ptr [rbp - 0x14], 6
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	add	rax, 2
	nop	
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_74
.label_97:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 5
.label_74:
	jmp	.label_17
.label_17:
	mov	esi, 0x2f
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	strchr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	rax, 0
	nop	
	je	.label_112
	lea	rdi, [rbp - 0x30]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	parse_chunk
	mov	rsp, rsp
	jmp	.label_118
.label_112:
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1e8], rax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	ecx, 1
	nop	
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1e8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
.label_118:
	jmp	.label_31
.label_18:
	nop	
	mov	byte ptr [byte ptr [unbuffered]],  1
	jmp	.label_31
.label_56:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
	cmp	byte ptr [rbp - 0x59], 0
	jne	.label_42
	nop	
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_42:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	cmp	byte ptr [rax + 1], 0
	je	.label_53
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	mov	eax, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_63
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], 0
	mov	rsp, rsp
	jmp	.label_69
.label_63:
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1f0], rax
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1f0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_69:
	lea	rsi, [rsi]
	jmp	.label_53
.label_53:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	jg	.label_88
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 0x59]
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	je	.label_88
	movabs	rdi, OFFSET FLAT:.str.26
	nop	
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
.label_88:
	movsx	eax, byte ptr [rbp - 0x59]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [eolchar]],  eax
	lea	rsi, [rsi]
	jmp	.label_31
.label_89:
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jne	.label_104
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 4
	mov	qword ptr [rbp - 0x38], 0
.label_104:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	je	.label_47
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 4
	mov	rsp, rsp
	je	.label_47
	jmp	.label_117
.label_117:
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	call	usage
.label_47:
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_23
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x4c]
	nop	
	je	.label_23
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
.label_23:
	movabs	rax, 0x1999999999999999
	nop	
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], ecx
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jb	.label_34
	imul	rax, qword ptr [rbp - 0x38], 0xa
	nop	
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	sub	ecx, 0x30
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jae	.label_36
.label_34:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x1f4], eax
	jmp	.label_49
.label_36:
	mov	eax, 1
	nop	
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	edx, dword ptr [rbp - 0x3c]
	nop	
	sub	edx, 0x30
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	add	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1f4], eax
.label_49:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f4]
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_61
	movabs	rdi, OFFSET FLAT:.str.27
	call	gettext
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x200], rax
	nop	
	call	umaxtostr
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x200]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_61:
	jmp	.label_31
.label_52:
	cmp	dword ptr [rbp - 0x3c], 0x64
	jne	.label_84
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
	mov	rbp, rbp
	jmp	.label_87
.label_84:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.29
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
.label_87:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_67
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strlen
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [suffix_alphabet]]
	mov	qword ptr [rbp - 0x208], rax
	call	strspn
	mov	rsi, qword ptr [rbp - 0x208]
	cmp	rsi, rax
	mov	rbp, rbp
	je	.label_108
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x64
	lea	rsi, [rsi]
	jne	.label_110
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x210], rax
	jmp	.label_116
.label_110:
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x210], rax
.label_116:
	mov	rax, qword ptr [rbp - 0x210]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x218], rax
	call	quote
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_108:
	mov	rsp, rsp
	jmp	.label_75
.label_75:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdx]
	nop	
	cmp	eax, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x219], cl
	lea	rsi, [rsi]
	jne	.label_41
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	setne	dl
	mov	byte ptr [rbp - 0x219], dl
.label_41:
	mov	al, byte ptr [rbp - 0x219]
	test	al, 1
	nop	
	jne	.label_57
	jmp	.label_59
.label_57:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_75
.label_59:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [numeric_suffix_start]],  rax
	nop	
	jmp	.label_67
.label_67:
	jmp	.label_31
.label_120:
	nop	
	mov	byte ptr [byte ptr [elide_empty_files]],  1
	jmp	.label_31
.label_85:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [filter_command]],  rax
	mov	rsp, rsp
	jmp	.label_31
.label_111:
	movabs	rdi, OFFSET FLAT:.str.32
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [optarg]]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x228], rax
	mov	qword ptr [rbp - 0x230], rcx
	lea	rdi, [rdi]
	call	gettext
	mov	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	movabs	rcx, OFFSET FLAT:main.multipliers
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x230]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	r8, rax
	lea	rsi, [rsi]
	call	xdectoumax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_31
.label_121:
	mov	byte ptr [byte ptr [verbose]],  1
	nop	
	jmp	.label_31
.label_80:
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_70:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.8
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.34
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str.35
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_83:
	mov	edi, 1
	call	usage
.label_31:
	lea	rsi, [rsi]
	jmp	.label_26
.label_68:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_29
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [filter_command]],  0
	je	.label_29
	movabs	rdi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	error
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_29:
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	jne	.label_90
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0x3e8
.label_90:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_58
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x240], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x240]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_58:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [eolchar]],  0
	lea	rsi, [rsi]
	jge	.label_81
	mov	dword ptr [dword ptr [eolchar]],  0xa
.label_81:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	set_suffix_length
	mov	esi,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	cmp	esi, dword ptr [rbp - 8]
	jge	.label_93
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	mov	qword ptr [word ptr [infile]],  rdx
.label_93:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	jge	.label_102
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [word ptr [outbase]],  rdx
.label_102:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	jge	.label_115
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	lea	rsi, [rsi]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x248], rax
	call	quote
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, edx
	mov	rbp, rbp
	mov	esi, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_115:
	nop	
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	lea	rdi, [rdi]
	je	.label_38
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	lea	rdi, [rdi]
	call	strlen
	nop	
	cmp	rax,  qword ptr [word ptr [suffix_length]]
	jbe	.label_38
	movabs	rdi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_38:
	nop	
	mov	rdi,  qword ptr [word ptr [infile]]
	nop	
	mov	eax, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_64
	xor	eax, eax
	mov	rsi,  qword ptr [word ptr [infile]]
	nop	
	mov	edi, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	ecx, eax
	mov	rsp, rsp
	call	fd_reopen
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_64
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.41
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24c], esi
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [infile]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x258], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x24c]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_64:
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, eax
	mov	rsp, rsp
	mov	esi, eax
	call	xset_binary_mode
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:in_stat_buf
	mov	rbp, rbp
	call	__fstat
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_103
	nop	
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x25c], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x25c]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_103:
	cmp	qword ptr [rbp - 0x20], 0
	setne	al
	xor	al, 0xff
	mov	rbp, rbp
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x71], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x71], 1
	lea	rsi, [rsi]
	jne	.label_16
	nop	
	movabs	rax, OFFSET FLAT:in_stat_buf
	mov	ecx, OFFSET FLAT:in_stat_buf
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rsp
	lea	rdi, [rdi]
	mov	ecx, 0x12
	lea	rdi, [rdi]
	mov	rdi, rdx
	nop	
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	nop	
	mov	qword ptr [rbp - 0x268], rax
	call	io_blksize
	mov	qword ptr [rbp - 0x20], rax
.label_16:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rdi, rax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	call	ptr_align
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], -1
	nop	
	cmp	dword ptr [rbp - 0x14], 5
	je	.label_54
	cmp	dword ptr [rbp - 0x14], 6
	mov	rbp, rbp
	jne	.label_60
.label_54:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:in_stat_buf
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	call	input_file_size
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jge	.label_72
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x26c], esi
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	nop	
	mov	qword ptr [rbp - 0x278], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x26c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x278]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_72:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_98
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_21
.label_98:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x280], rax
.label_21:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x280]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x38]
	jae	.label_32
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	rsp, rsp
	lea	rsi, [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x288], rax
	mov	rbp, rbp
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	quote
	mov	edi, 1
	mov	esi, 0x4b
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_32:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_33
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rax
	jmp	.label_22
.label_33:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rax
.label_22:
	nop	
	mov	rax, qword ptr [rbp - 0x290]
	mov	qword ptr [rbp - 0x48], rax
.label_60:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [filter_command]],  0
	nop	
	je	.label_48
	movabs	rdi, OFFSET FLAT:newblocked
	call	sigemptyset
	mov	edi, 0xd
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0x148]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], eax
	call	sigaction
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x148], rdx
	mov	dword ptr [rbp - 0x298], eax
	je	.label_62
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:newblocked
	lea	rsi, [rsi]
	mov	esi, 0xd
	call	sigaddset
	mov	dword ptr [rbp - 0x29c], eax
.label_62:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:newblocked
	movabs	rdx, OFFSET FLAT:oldblocked
	call	sigprocmask
	nop	
	mov	dword ptr [rbp - 0x2a0], eax
.label_48:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	dec	eax
	mov	ecx, eax
	mov	rsp, rsp
	sub	eax, 6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2a8], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2ac], eax
	mov	rbp, rbp
	ja	.label_76
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_94]]
	jmp	rcx
.label_1018:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	call	lines_split
	jmp	.label_40
.label_1016:
	nop	
	mov	rcx, -1
	xor	eax, eax
	mov	r8d, eax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	call	bytes_split
	nop	
	jmp	.label_40
.label_1017:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	line_bytes_split
	jmp	.label_40
.label_1019:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_114
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2b8], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	rdx, rax
	call	bytes_split
	jmp	.label_107
.label_114:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x48]
	nop	
	call	bytes_chunk_extract
.label_107:
	jmp	.label_40
.label_1020:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	lines_chunk_split
	jmp	.label_40
.label_1021:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	call	lines_rr
	lea	rdi, [rdi]
	jmp	.label_40
.label_76:
	lea	rdi, [rdi]
	call	abort
.label_40:
	xor	edi, edi
	call	close
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_19
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x2bc], ecx
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	esi, dword ptr [rbp - 0x2bc]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_19:
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [output_desc]]
	mov	edx,  dword ptr [dword ptr [filter_pid]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	rsp, rsp
	call	closeout
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 0x350
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039b0

	.globl parse_chunk
	.type parse_chunk, @function
parse_chunk:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rdx, 1
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoumax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_122
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	gettext
	mov	esi, 1
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, rax
	mov	rsp, rsp
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_122:
	lea	rdi, [rdi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	mov	rbp, rbp
	je	.label_127
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_127:
	cmp	dword ptr [rbp - 0xc], 5
	nop	
	je	.label_125
	cmp	dword ptr [rbp - 0xc], 6
	je	.label_125
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 7
	mov	rsp, rsp
	jne	.label_132
.label_125:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_128
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, eax
	nop	
	mov	edx, 0xa
	lea	rcx, [rbp - 0x28]
	movabs	r8, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	lea	rsi, [rsi]
	call	xstrtoumax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jne	.label_126
	mov	rsp, rsp
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rcx, rax
	ja	.label_126
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jae	.label_134
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_134:
	jmp	.label_126
.label_126:
	mov	rsp, rsp
	jmp	.label_128
.label_128:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [suffix_alphabet]]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x38]
	nop	
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	and	sil, 1
	nop	
	mov	byte ptr [rbp - 0x39], sil
.label_131:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, rcx
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_129
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_131
.label_129:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_132:
	cmp	qword ptr [word ptr [suffix_length]],  0
	mov	rsp, rsp
	je	.label_124
	mov	rax,  qword ptr [word ptr [suffix_length]]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_135
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_135:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [suffix_auto]],  0
	mov	rsp, rsp
	jmp	.label_130
.label_124:
	mov	eax, 2
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	jbe	.label_133
	mov	rsp, rsp
	mov	eax, 2
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_123
.label_133:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
.label_123:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [suffix_length]],  rax
.label_130:
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d40

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x10]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jge	.label_136
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_136
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	jmp	.label_139
.label_136:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	jmp	.label_139
.label_139:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, 0x20000
	lea	rsi, [rsi]
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_141
	mov	rsp, rsp
	mov	eax, 0x20000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_140
.label_141:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_137
	movabs	rax, 0x2000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x38], rax
	lea	rdi, [rdi]
	ja	.label_137
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_138
.label_137:
	lea	rsi, [rsi]
	mov	eax, 0x200
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_138
.label_138:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_140:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e70

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	rbp, rbp
	add	rsi, rcx
	mov	rax, rsi
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl input_file_size
	.type input_file_size, @function
input_file_size:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, eax
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, r8
	lea	rdi, [rdi]
	mov	edx, eax
	call	lseek
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_152
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x1d
	jne	.label_153
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
.label_153:
	nop	
	mov	qword ptr [rbp - 8], -1
	jmp	.label_145
.label_152:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
.label_151:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	safe_read
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_145
.label_148:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], -1
	lea	rsi, [rsi]
	jne	.label_155
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], -1
	lea	rsi, [rsi]
	jmp	.label_145
.label_155:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jb	.label_151
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_156
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], -1
	jmp	.label_145
.label_156:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	usable_st_size
	mov	rsp, rsp
	test	al, 1
	jne	.label_142
	jmp	.label_146
.label_142:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jg	.label_146
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_150
.label_146:
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	edx, 2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	call	lseek
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jge	.label_147
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], -1
	mov	rbp, rbp
	jmp	.label_145
.label_147:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	je	.label_144
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	call	lseek
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_154
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -1
	mov	rsp, rsp
	jmp	.label_145
.label_154:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jge	.label_149
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_149:
	lea	rsi, [rsi]
	jmp	.label_144
.label_144:
	jmp	.label_150
.label_150:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	cmp	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jne	.label_143
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	nop	
	mov	qword ptr [rbp - 8], -1
	jmp	.label_145
.label_143:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_145:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041a0

	.globl lines_split
	.type lines_split, @function
lines_split:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x39], 1
	mov	qword ptr [rbp - 0x48], 0
.label_157:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	lea	rdi, [rdi]
	jne	.label_163
	mov	rsp, rsp
	call	__errno_location
	nop	
	xor	edi, edi
	nop	
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x54]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_163:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx,  dword ptr [dword ptr [eolchar]]
	mov	dl, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], dl
.label_161:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jne	.label_162
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_159
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	dl, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	edi, dl
	mov	rdx, rax
	mov	rbp, rbp
	call	cwrite
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], 0
	mov	byte ptr [rbp - 0x55], al
.label_159:
	mov	rsp, rsp
	jmp	.label_164
.label_162:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_158
	mov	al, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rcx, rdx
	and	al, 1
	movzx	edi, al
	mov	rdx, rcx
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rbp - 0x39], 1
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x56], al
.label_158:
	jmp	.label_161
.label_164:
	mov	rbp, rbp
	jmp	.label_160
.label_160:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_157
	mov	rbp, rbp
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_168:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], -1
	mov	rsp, rsp
	je	.label_173
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], -1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	lea	rdi, [rdi]
	jmp	.label_178
.label_173:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x32], 1
	jne	.label_174
	xor	edi, edi
	mov	edx, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	lseek
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_174
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 1
.label_174:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_179
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x5c], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_179:
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x49], al
.label_178:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_172:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_165
	test	byte ptr [rbp - 0x32], 1
	jne	.label_183
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	je	.label_167
.label_183:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x40]
	and	al, 1
	movzx	edi, al
	mov	rbp, rbp
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_167:
	mov	al, 1
	mov	cl, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, edx
	add	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rsi
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x5d], al
	mov	rsp, rsp
	je	.label_180
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	setb	cl
	mov	byte ptr [rbp - 0x5d], cl
.label_180:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5d]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x32], 1
	mov	rsp, rsp
	jne	.label_169
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	jne	.label_169
	nop	
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x49], 1
	nop	
	jmp	.label_165
.label_169:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_172
.label_165:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_177
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x32], 1
	lea	rdi, [rdi]
	jne	.label_181
	nop	
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	je	.label_166
.label_181:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_166:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rbp - 0x31], 0
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x32], 1
	jne	.label_171
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_171
	jmp	.label_182
.label_171:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
.label_177:
	jmp	.label_170
.label_170:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x49]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_168
.label_182:
	nop	
	jmp	.label_175
.label_175:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_176
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0x5e], al
	jmp	.label_175
.label_176:
	lea	rdi, [rdi]
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404700

	.globl line_bytes_split
	.type line_bytes_split, @function
line_bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 0
.label_189:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_read
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_204
	lea	rsi, [rsi]
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	nop	
	mov	dword ptr [rbp - 0x8c], ecx
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_204:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x58], rax
.label_191:
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	je	.label_203
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	sub	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_206
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x60]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	memrchr
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_196
.label_206:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	memrchr
	mov	qword ptr [rbp - 0x70], rax
.label_196:
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_186
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	jne	.label_190
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_186
.label_190:
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	nop	
	movzx	edi, al
	call	cwrite
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x8d], al
	lea	rsi, [rsi]
	jbe	.label_201
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	xrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_201:
	nop	
	mov	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_186:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_195
	mov	byte ptr [rbp - 0x41], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	sete	dl
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	dl, 1
	movzx	edi, dl
	mov	rdx, rax
	mov	rbp, rbp
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8e], al
	je	.label_188
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rcx
.label_188:
	jmp	.label_195
.label_195:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	je	.label_199
	test	byte ptr [rbp - 0x41], 1
	jne	.label_199
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_185
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_209
.label_185:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x98], rax
.label_209:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	sete	cl
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edi, cl
	lea	rdi, [rdi]
	call	cwrite
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x50], rsi
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
	cmp	qword ptr [rbp - 0x68], 0
	nop	
	mov	byte ptr [rbp - 0x99], al
	je	.label_205
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x60], rcx
.label_205:
	mov	rsp, rsp
	jmp	.label_199
.label_199:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_192
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_200
.label_192:
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jne	.label_198
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	je	.label_198
.label_200:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	nop	
	je	.label_208
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	jmp	.label_187
.label_208:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
.label_187:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_194
	nop	
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rcx, rax
	ja	.label_202
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_207
.label_202:
	call	xalloc_die
.label_207:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_194:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x50], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
.label_198:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_184
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 0
.label_184:
	jmp	.label_191
.label_203:
	mov	rbp, rbp
	jmp	.label_193
.label_193:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_189
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_197
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0xa9], al
.label_197:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free
	nop	
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c90

	.globl bytes_chunk_extract
	.type bytes_chunk_extract, @function
bytes_chunk_extract:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	cmp	qword ptr [rbp - 8], 0
	je	.label_213
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_213
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_213
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	ja	.label_213
	mov	rbp, rbp
	jmp	.label_225
.label_213:
	movabs	rdi, OFFSET FLAT:.str.102
	movabs	rsi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	mov	edx, 0x3e0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.bytes_chunk_extract
	call	__assert_fail
.label_225:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	imul	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_221
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_220
.label_221:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	imul	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
.label_220:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_223
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memmove
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_224
.label_223:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	lseek
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_219
	call	__errno_location
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x64], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x64]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_219:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], -1
.label_224:
	lea	rdi, [rdi]
	jmp	.label_212
.label_212:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jge	.label_214
	nop	
	cmp	qword ptr [rbp - 0x28], -1
	je	.label_218
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], -1
	jmp	.label_222
.label_218:
	nop	
	xor	edi, edi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	nop	
	jne	.label_216
	call	__errno_location
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x68], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x68]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_216:
	jmp	.label_222
.label_222:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_211
	jmp	.label_214
.label_211:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x38]
	cmp	rax, rcx
	nop	
	jae	.label_215
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_210
.label_215:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
.label_210:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	edi, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	je	.label_217
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	lea	rsi, [rsi]
	call	ignorable
	test	al, 1
	jne	.label_217
	lea	rsi, [rsi]
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	movabs	rdx, OFFSET FLAT:.str.12
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], ecx
	nop	
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_217:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_212
.label_214:
	mov	rsp, rsp
	add	rsp, 0x80
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405060

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	qword ptr [rbp - 0x30], r9
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_245
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_245
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_245
	mov	rsp, rsp
	jmp	.label_258
.label_245:
	movabs	rdi, OFFSET FLAT:.str.103
	movabs	rsi, OFFSET FLAT:.str.82
	mov	edx, 0x362
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.lines_chunk_split
	call	__assert_fail
.label_258:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], 1
	mov	byte ptr [rbp - 0x52], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 1
	nop	
	jbe	.label_265
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_240
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x60]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_253
.label_240:
	mov	rbp, rbp
	xor	edi, edi
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	call	lseek
	mov	rbp, rbp
	cmp	rax, 0
	jge	.label_262
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_262:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], -1
.label_253:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x38]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_265:
	nop	
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_232
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x28], -1
	je	.label_264
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x28], -1
	jmp	.label_228
.label_264:
	nop	
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], -1
	nop	
	jne	.label_260
	nop	
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0xa0], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_260:
	lea	rsi, [rsi]
	jmp	.label_228
.label_228:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_229
	lea	rsi, [rsi]
	jmp	.label_232
.label_229:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_234
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	jmp	.label_241
.label_234:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0xa8], rax
.label_241:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x52], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_251:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	je	.label_254
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x48]
	sub	rsi, qword ptr [rbp - 0x50]
	cmp	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdx
	nop	
	jle	.label_256
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_263
.label_256:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
.label_263:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rcx, rax
	jae	.label_226
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	jmp	.label_230
.label_226:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	sub	rdx, qword ptr [rbp - 0x50]
	cmp	rcx, rdx
	nop	
	jle	.label_236
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_242
.label_236:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
.label_242:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc0], rax
.label_230:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [eolchar]]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	call	memchr
	nop	
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x98], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_261
	mov	byte ptr [rbp - 0x81], 1
	jmp	.label_268
.label_261:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
.label_268:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_247
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	je	.label_244
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xcc]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_244:
	nop	
	jmp	.label_257
.label_247:
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_259
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x51]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x80]
	and	al, 1
	mov	rbp, rbp
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0xcd], al
.label_259:
	jmp	.label_257
.label_257:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	sub	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rbp - 0x81]
	lea	rdi, [rdi]
	and	dl, 1
	mov	byte ptr [rbp - 0x51], dl
.label_249:
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xce], al
	jne	.label_237
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	sub	rcx, 1
	cmp	rax, rcx
	lea	rdi, [rdi]
	setle	dl
	mov	byte ptr [rbp - 0xce], dl
.label_237:
	mov	al, byte ptr [rbp - 0xce]
	mov	rbp, rbp
	test	al, 1
	jne	.label_255
	nop	
	jmp	.label_250
.label_255:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	jne	.label_233
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	nop	
	jne	.label_233
	mov	byte ptr [rbp - 0x52], 1
	lea	rdi, [rdi]
	jmp	.label_250
.label_233:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_243
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	jbe	.label_243
	lea	rdi, [rdi]
	jmp	.label_227
.label_243:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_266
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_269
.label_266:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_269:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	sub	rcx, 1
	cmp	rax, rcx
	jg	.label_231
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_238
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	cwrite
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xcf], al
.label_238:
	jmp	.label_248
.label_231:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], 0
.label_248:
	jmp	.label_249
.label_250:
	mov	rbp, rbp
	jmp	.label_251
.label_254:
	jmp	.label_246
.label_232:
	test	byte ptr [rbp - 0x52], 1
	mov	rsp, rsp
	je	.label_252
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
.label_252:
	jmp	.label_235
.label_235:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd0], cl
	jne	.label_239
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	cmp	rax, qword ptr [rbp - 0x10]
	setbe	dl
	mov	byte ptr [rbp - 0xd0], dl
.label_239:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xd0]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_267
	mov	rbp, rbp
	jmp	.label_227
.label_267:
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	nop	
	call	cwrite
	nop	
	mov	byte ptr [rbp - 0xd1], al
	mov	rsp, rsp
	jmp	.label_235
.label_227:
	lea	rsi, [rsi]
	add	rsp, 0xe0
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405850

	.globl lines_rr
	.type lines_rr, @function
lines_rr:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_290
	mov	qword ptr [rbp - 0x40], 1
	jmp	.label_295
.label_290:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_296
	call	xalloc_die
.label_296:
	mov	rsp, rsp
	mov	eax, 0x20
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	xnmalloc
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_309:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_273
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [outfile]]
	nop	
	call	xstrdup
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	shl	rdi, 5
	add	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], 0xffffffff
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_309
.label_273:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x23], 0
.label_295:
	lea	rsi, [rsi]
	jmp	.label_286
.label_286:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	nop	
	cmp	qword ptr [rbp - 0x58], -1
	mov	rbp, rbp
	jne	.label_302
	call	__errno_location
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x78], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_302:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_271
	jmp	.label_274
.label_271:
	jmp	.label_277
.label_277:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
.label_282:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_281
	mov	byte ptr [rbp - 0x61], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	rax, rcx
	mov	rdx, rax
	mov	rsp, rsp
	call	memchr
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_292
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_294
.label_292:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
.label_294:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_297
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_300
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_300
	mov	edi, 1
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	full_write
	cmp	rax, qword ptr [rbp - 0x60]
	nop	
	je	.label_307
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_307:
	jmp	.label_285
.label_300:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_287
	mov	eax, 1
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, 1
	nop	
	je	.label_287
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_287:
	jmp	.label_285
.label_285:
	test	byte ptr [rbp - 0x61], 1
	je	.label_304
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_306
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	jmp	.label_308
.label_306:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x88], rax
.label_308:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_304:
	jmp	.label_279
.label_297:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	ofile_open
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	mov	rbp, rbp
	movzx	r8d, al
	or	r8d, ecx
	lea	rsi, [rsi]
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x23], al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_288
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	edi, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x60]
	je	.label_301
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_301
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	esi, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_301:
	jmp	.label_283
.label_288:
	mov	eax, 1
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_278
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_278
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_278:
	lea	rsi, [rsi]
	jmp	.label_283
.label_283:
	call	__errno_location
	mov	edi, dword ptr [rax]
	nop	
	call	ignorable
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_270
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x22], 1
.label_270:
	test	byte ptr [rbp - 0x23], 1
	lea	rdi, [rdi]
	je	.label_275
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_284
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_284:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	nop	
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 8], 0xfffffffe
.label_275:
	test	byte ptr [rbp - 0x61], 1
	lea	rdi, [rdi]
	je	.label_272
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jne	.label_272
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x22], 1
	mov	rbp, rbp
	jne	.label_305
	mov	rsp, rsp
	jmp	.label_276
.label_305:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_272:
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_282
.label_281:
	jmp	.label_286
.label_274:
	jmp	.label_276
.label_276:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_289
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_291
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_293
.label_291:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
.label_293:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x74], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_299
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_303
	nop	
	test	byte ptr [byte ptr [elide_empty_files]],  1
	jne	.label_303
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	ofile_open
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	nop	
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	nop	
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x23], al
.label_303:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rax, 5
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 8], 0
	nop	
	jl	.label_280
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	call	closeout
.label_280:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax + 8], 0xfffffffe
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_298
.label_299:
	mov	rsp, rsp
	jmp	.label_289
.label_289:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060e0

	.globl closeout
	.type closeout, @function
closeout:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	je	.label_316
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_316
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_316
	call	__errno_location
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x64], ecx
	nop	
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x64]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_316:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jl	.label_313
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_312
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	call	close
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_312
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], ecx
	nop	
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_312:
	mov	dword ptr [rbp - 0x1c], 0
.label_325:
	movsxd	rax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	nop	
	jae	.label_311
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4]
	nop	
	cmp	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	jne	.label_318
	mov	rax,  qword ptr [word ptr [n_open_pipes]]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [word ptr [n_open_pipes]],  rcx
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4 - 4]
	nop	
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rcx + rax*4], edx
	mov	rsp, rsp
	jmp	.label_311
.label_318:
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_325
.label_311:
	jmp	.label_313
.label_313:
	cmp	dword ptr [rbp - 0x10], 0
	jle	.label_315
	lea	rsi, [rbp - 0x20]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x10]
	call	waitpid
	cmp	eax, -1
	jne	.label_320
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0xa
	je	.label_320
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.106
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_320:
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rbp - 0x28], eax
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 0x7f
	nop	
	add	eax, 1
	mov	rsp, rsp
	mov	cl, al
	movsx	eax, cl
	nop	
	sar	eax, 1
	nop	
	cmp	eax, 0
	jle	.label_314
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	and	eax, 0x7f
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0xd
	je	.label_323
	lea	rsi, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	call	sig2str
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_322
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.107
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	call	sprintf
	nop	
	mov	dword ptr [rbp - 0x70], eax
.label_322:
	movabs	rdi, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	quotearg_n_style_colon
	nop	
	xor	esi, esi
	mov	rsp, rsp
	lea	r8, [rbp - 0x50]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_323:
	jmp	.label_321
.label_314:
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x7f
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_310
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x60]
	and	eax, 0xff00
	sar	eax, 8
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_317
	movabs	rdi, OFFSET FLAT:.str.109
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x84]
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_317:
	lea	rsi, [rsi]
	jmp	.label_319
.label_310:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.110
	call	gettext
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x20]
	nop	
	add	ecx, 0
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_319:
	lea	rsi, [rsi]
	jmp	.label_321
.label_321:
	jmp	.label_315
.label_315:
	nop	
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406510

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rdi + 0x18]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	je	.label_326
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_326
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	edx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	jne	.label_326
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 9], cl
	lea	rsi, [rsi]
	jmp	.label_326
.label_326:
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl cwrite
	.type cwrite, @function
cwrite:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	al, dil
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 2], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	test	byte ptr [rbp - 2], 1
	je	.label_327
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_329
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_329
	test	byte ptr [byte ptr [elide_empty_files]],  1
	je	.label_329
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_328
.label_329:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	mov	esi,  dword ptr [dword ptr [output_desc]]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [filter_pid]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	rsp, rsp
	call	closeout
	call	next_file_name
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [outfile]]
	mov	rsp, rsp
	call	create
	mov	dword ptr [dword ptr [output_desc]],  eax
	nop	
	cmp	dword ptr [dword ptr [output_desc]],  0
	mov	rbp, rbp
	jge	.label_330
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [outfile]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_330:
	nop	
	jmp	.label_327
.label_327:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [output_desc]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_332
	nop	
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_328
.label_332:
	mov	rsp, rsp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable
	test	al, 1
	jne	.label_331
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [outfile]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_331:
	mov	byte ptr [rbp - 1], 0
.label_328:
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	cmp	qword ptr [word ptr [outfile]],  0
	mov	rsp, rsp
	jne	.label_345
	jmp	.label_343
.label_343:
	nop	
	cmp	qword ptr [word ptr [next_file_name.outfile_length]],  0
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	xor	al, 0xff
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	jne	.label_346
	mov	rdi,  qword ptr [word ptr [outbase]]
	call	strlen
	nop	
	mov	qword ptr [word ptr [next_file_name.outbase_length]],  rax
	cmp	qword ptr [word ptr [additional_suffix]],  0
	je	.label_351
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [additional_suffix]]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_335
.label_351:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [next_file_name.addsuf_length]],  rax
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	add	rax,  qword ptr [word ptr [next_file_name.addsuf_length]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [next_file_name.outfile_length]],  rax
	nop	
	jmp	.label_344
.label_346:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	mov	rsp, rsp
	add	rax, 2
	mov	rbp, rbp
	mov	qword ptr [word ptr [next_file_name.outfile_length]],  rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [suffix_length]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [word ptr [suffix_length]],  rax
.label_344:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	nop	
	jae	.label_339
	call	xalloc_die
.label_339:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [outfile]]
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	call	xrealloc
	mov	qword ptr [word ptr [outfile]],  rax
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jne	.label_347
	mov	rdi,  qword ptr [word ptr [outfile]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [outbase]]
	mov	rdx,  qword ptr [word ptr [next_file_name.outbase_length]]
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_340
.label_347:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	byte ptr [rcx + rax], dl
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [next_file_name.outbase_length]],  rax
.label_340:
	nop	
	mov	rax,  qword ptr [word ptr [outfile]]
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	mov	qword ptr [word ptr [outfile_mid]],  rax
	mov	rdi,  qword ptr [word ptr [outfile_mid]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [suffix_alphabet]]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [suffix_length]]
	nop	
	movzx	esi, dl
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	cmp	qword ptr [word ptr [additional_suffix]],  0
	je	.label_349
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rsi,  qword ptr [word ptr [additional_suffix]]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [next_file_name.addsuf_length]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcpy
.label_349:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	edx, 8
	mov	esi, edx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [suffix_length]]
	call	xcalloc
	nop	
	mov	qword ptr [word ptr [next_file_name.sufindex]],  rax
	nop	
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_337
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jne	.label_350
	lea	rdi, [rdi]
	jmp	.label_333
.label_350:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.82
	mov	edx, 0x198
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.next_file_name
	call	__assert_fail
.label_333:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	qword ptr [rbp - 0x30], rcx
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x10]
	add	rax, rcx
	mov	rsi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	memcpy
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [suffix_length]]
	lea	rdi, [rdi]
	shl	rcx, 3
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_352:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_342
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [numeric_suffix_start]]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	sub	edx, 0x30
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rcx
	add	rsi, -8
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rcx - 8], rax
	lea	rsi, [rsi]
	jmp	.label_352
.label_342:
	jmp	.label_337
.label_337:
	mov	rbp, rbp
	jmp	.label_336
.label_345:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [suffix_length]]
	mov	qword ptr [rbp - 0x20], rax
.label_338:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_341
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax*8], rdx
	mov	rbp, rbp
	test	byte ptr [byte ptr [suffix_auto]],  1
	lea	rsi, [rsi]
	je	.label_334
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_334
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_334
	jmp	.label_343
.label_334:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], dl
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	cmp	byte ptr [rcx + rax], 0
	je	.label_348
	jmp	.label_336
.label_348:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	qword ptr [rcx + rax*8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	mov	byte ptr [rcx + rax], dl
	mov	rsp, rsp
	jmp	.label_338
.label_341:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.83
	call	gettext
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_336:
	add	rsp, 0x30
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d30

	.globl create
	.type create, @function
create:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	cmp	qword ptr [word ptr [filter_command]],  0
	jne	.label_360
	nop	
	test	byte ptr [byte ptr [verbose]],  1
	lea	rsi, [rsi]
	je	.label_362
	nop	
	movabs	rdi, OFFSET FLAT:.str.84
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], eax
.label_362:
	mov	esi, 0x41
	mov	rbp, rbp
	mov	edx, 0x1b6
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	open_safer
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jge	.label_375
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_353
.label_375:
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_357
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.85
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_357:
	mov	rax,  qword ptr [word ptr [label_367]]
	cmp	rax, qword ptr [rbp - 0xa0]
	jne	.label_368
	mov	rax,  qword ptr [word ptr [in_stat_buf]]
	cmp	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	jne	.label_368
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_368:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	call	ftruncate
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_356
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x90]
	nop	
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	je	.label_359
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, dword ptr [rbp - 0x90]
	cmp	eax, 0
	je	.label_356
.label_359:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.87
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], esi
	mov	rbp, rbp
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	nop	
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xf4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_356:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_353
.label_360:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.88
	mov	rsp, rsp
	call	getenv
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xc0], 0
	jne	.label_376
	movabs	rax, OFFSET FLAT:.str.89
	mov	qword ptr [rbp - 0xc0], rax
.label_376:
	movabs	rdi, OFFSET FLAT:.str.90
	mov	rbp, rbp
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	setenv
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_361
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.91
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x104], esi
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x104]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_361:
	test	byte ptr [byte ptr [verbose]],  1
	mov	rbp, rbp
	je	.label_365
	movabs	rdi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x110], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
.label_365:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xb0]
	call	pipe
	cmp	eax, 0
	je	.label_377
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.93
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x120], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_377:
	call	fork
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xb4], 0
	nop	
	jne	.label_372
	nop	
	mov	dword ptr [rbp - 0xc4], 0
.label_370:
	movsxd	rax, dword ptr [rbp - 0xc4]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	nop	
	jae	.label_364
	movsxd	rax, dword ptr [rbp - 0xc4]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_369
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.94
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x124], esi
	nop	
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x124]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_369:
	lea	rdi, [rdi]
	jmp	.label_374
.label_374:
	mov	eax, dword ptr [rbp - 0xc4]
	add	eax, 1
	mov	dword ptr [rbp - 0xc4], eax
	nop	
	jmp	.label_370
.label_364:
	nop	
	mov	edi, dword ptr [rbp - 0xac]
	call	close
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_354
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.95
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x128]
	mov	rdx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_354:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xb0], 0
	je	.label_355
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	edi, dword ptr [rbp - 0xb0]
	call	dup2
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_366
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.96
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x12c]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_366:
	mov	edi, dword ptr [rbp - 0xb0]
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_373
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.97
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x130], esi
	call	gettext
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x130]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_373:
	nop	
	jmp	.label_355
.label_355:
	mov	rsp, rsp
	mov	edi, 2
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:oldblocked
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rdi
	mov	rdi, rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x13c], eax
	lea	rdi, [rdi]
	call	last_component
	nop	
	movabs	rdx, OFFSET FLAT:.str.98
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8d, ecx
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [filter_command]]
	mov	rdi, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	execl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x140], eax
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.99
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x144], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	r8,  qword ptr [word ptr [filter_command]]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_372:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xb4], -1
	jne	.label_358
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.100
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x148], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x148]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_358:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xb0]
	call	close
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_363
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.101
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14c]
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_363:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [dword ptr [filter_pid]],  eax
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	cmp	rcx,  qword ptr [word ptr [open_pipes_alloc]]
	mov	rbp, rbp
	jne	.label_371
	movabs	rsi, OFFSET FLAT:open_pipes_alloc
	mov	eax, 4
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	nop	
	mov	rdi, rcx
	call	x2nrealloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [open_pipes]],  rax
.label_371:
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	nop	
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [word ptr [n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
.label_353:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x150
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407560

	.globl ignorable
	.type ignorable, @function
ignorable:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [filter_command]],  0
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], cl
	je	.label_378
	cmp	dword ptr [rbp - 4], 0x20
	lea	rdi, [rdi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_378:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075b0

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rdx + 8], -1
	mov	rsp, rsp
	jg	.label_391
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_392
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_380
.label_392:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_380:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_394:
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], -1
	nop	
	jne	.label_393
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	create
	nop	
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_387
.label_393:
	nop	
	mov	esi, 0xc01
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax]
	mov	al, 0
	mov	rsp, rsp
	call	open_safer
	mov	dword ptr [rbp - 0x20], eax
.label_387:
	mov	eax, 0xffffffff
	cmp	eax, dword ptr [rbp - 0x20]
	jge	.label_386
	mov	rbp, rbp
	jmp	.label_388
.label_386:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x18
	lea	rdi, [rdi]
	je	.label_381
	call	__errno_location
	cmp	dword ptr [rax], 0x17
	lea	rsi, [rsi]
	je	.label_381
	lea	rsi, [rsi]
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_381:
	mov	byte ptr [rbp - 0x19], 1
.label_385:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 8], 0
	nop	
	jge	.label_390
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_382
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_384
.label_382:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
.label_384:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jne	.label_379
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], ecx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_379:
	jmp	.label_385
.label_390:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_383
	mov	rbp, rbp
	call	__errno_location
	nop	
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x48], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x48]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_383:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 5
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 8], 0xfffffffe
	mov	rsp, rsp
	jmp	.label_394
.label_388:
	movabs	rsi, OFFSET FLAT:.str.105
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 5
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 8], eax
	mov	edi, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	fdopen
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_389
	mov	rbp, rbp
	call	__errno_location
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	call	quotearg_n_style_colon
	nop	
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_389:
	mov	eax,  dword ptr [dword ptr [filter_pid]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 5
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], eax
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [filter_pid]],  0
.label_391:
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079a0
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
	#Procedure 0x4079d0
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
	#Procedure 0x407a00

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
	je	.label_395
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_398
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_395
.label_398:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_399
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
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_397
.label_399:
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
.label_397:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_395:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_396
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_396:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b30

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
.label_406:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_403
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_406
.label_403:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_405:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_400
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_404
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_402
.label_404:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_401
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_401:
	jmp	.label_402
.label_402:
	jmp	.label_407
.label_407:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_405
.label_400:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c00
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
.label_409:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_408
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
.label_408:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_410
	mov	rbp, rbp
	jmp	.label_411
.label_410:
	jmp	.label_412
.label_412:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_409
.label_411:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cc0

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
	je	.label_413
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
.label_413:
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
	je	.label_415
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
	ja	.label_416
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
	jmp	.label_414
.label_416:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdx
.label_414:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_415:
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
	#Procedure 0x407f40

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	nop	
	je	.label_419
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_418
.label_419:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_417
.label_418:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
.label_417:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408000

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_422:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_421
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_423
	jmp	.label_421
.label_423:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_420
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_421
.label_420:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_422
.label_421:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080b0

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
	jae	.label_424
	jmp	.label_427
.label_427:
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
	jne	.label_427
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_426
.label_424:
	jmp	.label_425
.label_425:
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
	jne	.label_425
	jmp	.label_426
.label_426:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081f0

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
	jne	.label_430
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_430:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_428
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_432
.label_428:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_432:
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
	jl	.label_431
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
	jne	.label_431
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
	jne	.label_429
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_429:
	jmp	.label_431
.label_431:
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
	#Procedure 0x408370
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
	je	.label_434
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_433
.label_434:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_433
.label_433:
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
	#Procedure 0x408420
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
	je	.label_435
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_436
.label_435:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408480
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
	je	.label_437
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_438
.label_437:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084e0

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
	je	.label_439
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_440
.label_439:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_440
.label_440:
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
	#Procedure 0x4085e0
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
	jne	.label_441
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_441:
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
	#Procedure 0x408640

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
	jne	.label_442
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_442:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_444
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_443
.label_444:
	call	abort
.label_443:
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
	#Procedure 0x4086e0
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
	je	.label_445
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_446
.label_445:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_446
.label_446:
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
	#Procedure 0x4087e0

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
.label_627:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_487
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_490]]
	jmp	rcx
.label_1067:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1066:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_497
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_556
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_556:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_497
.label_497:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_521
.label_1068:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_521
.label_986:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_523
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
.label_523:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_537
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_563:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_544
	jmp	.label_548
.label_548:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_550
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_550:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_457
.label_457:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_563
.label_544:
	mov	rbp, rbp
	jmp	.label_537
.label_537:
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
	jmp	.label_521
.label_1064:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1063:
	mov	byte ptr [rbp - 0x7b], 1
.label_1065:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_575
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_575:
	jmp	.label_578
.label_578:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_580
	jmp	.label_583
.label_583:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_584
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_584:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_580
.label_580:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_521
.label_1062:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_521
.label_487:
	call	abort
.label_521:
	mov	qword ptr [rbp - 0x58], 0
.label_547:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_609
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
	jmp	.label_589
.label_609:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_589:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_623
	mov	rbp, rbp
	jmp	.label_630
.label_623:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_458
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_458
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_458
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_640
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_640
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_451
.label_640:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_451:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_458
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
	jne	.label_458
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_477
	jmp	.label_473
.label_477:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_458:
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
	ja	.label_480
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_492]]
	nop	
	jmp	rcx
.label_954:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_495
	mov	rsp, rsp
	jmp	.label_499
.label_499:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_504
	jmp	.label_473
.label_504:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_511
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_511
	nop	
	jmp	.label_514
.label_514:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_515
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_515:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_522
.label_522:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_528
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_528:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_534
.label_534:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_542
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_542:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_511:
	lea	rsi, [rsi]
	jmp	.label_553
.label_553:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_555
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_555:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_560
.label_560:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_500
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_500
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_500
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_500
	nop	
	jmp	.label_577
.label_577:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_579
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_579:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_585
.label_585:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_591
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_591:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_500
.label_500:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_546
.label_495:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_605
	mov	rbp, rbp
	jmp	.label_610
.label_605:
	jmp	.label_546
.label_546:
	jmp	.label_463
.label_965:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_611
	mov	rbp, rbp
	jmp	.label_616
.label_616:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_618
	jmp	.label_624
.label_611:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_626
	jmp	.label_473
.label_626:
	jmp	.label_540
.label_618:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_536
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_536
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_536
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
	je	.label_448
	nop	
	jmp	.label_647
.label_647:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_448
	jmp	.label_453
.label_453:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_448
	jmp	.label_460
.label_460:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_448
	jmp	.label_468
.label_468:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_471
	jmp	.label_448
.label_448:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_614
	jmp	.label_473
.label_614:
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
	jae	.label_485
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_485:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_496
.label_496:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_503
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_503:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_508
.label_508:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_513
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_513:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_520
.label_520:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_478
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_478:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_531
.label_471:
	jmp	.label_531
.label_531:
	jmp	.label_536
.label_536:
	jmp	.label_540
.label_624:
	jmp	.label_540
.label_540:
	jmp	.label_463
.label_955:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_543
.label_956:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_543
.label_960:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_543
.label_958:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_551
.label_961:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_551
.label_957:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_551
.label_959:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_543
.label_966:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_558
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_562
	nop	
	jmp	.label_473
.label_562:
	lea	rsi, [rsi]
	jmp	.label_461
.label_558:
	test	byte ptr [rbp - 0x79], 1
	je	.label_568
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_568
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_568
	jmp	.label_461
.label_568:
	jmp	.label_551
.label_551:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_574
	test	byte ptr [rbp - 0x7b], 1
	je	.label_574
	jmp	.label_473
.label_574:
	mov	rsp, rsp
	jmp	.label_543
.label_543:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_582
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_464
.label_582:
	jmp	.label_463
.label_967:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_588
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_592
	jmp	.label_597
.label_588:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_592
.label_597:
	nop	
	jmp	.label_463
.label_592:
	jmp	.label_601
.label_601:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_602
	lea	rsi, [rsi]
	jmp	.label_463
.label_602:
	nop	
	jmp	.label_608
.label_608:
	mov	byte ptr [rbp - 0x83], 1
.label_962:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_603
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_603
	jmp	.label_473
.label_603:
	lea	rsi, [rsi]
	jmp	.label_463
.label_964:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_632
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_622
	jmp	.label_473
.label_622:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_483
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_483
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_483:
	jmp	.label_633
.label_633:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_635
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_635:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_639
.label_639:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_644
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_644:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_449
.label_449:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_641
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_632:
	lea	rsi, [rsi]
	jmp	.label_463
.label_963:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_463
.label_480:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_472
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
	jmp	.label_482
.label_472:
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
	jne	.label_498
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_498:
	jmp	.label_510
.label_510:
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
	jne	.label_524
	jmp	.label_512
.label_524:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_533
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_512
.label_533:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_538
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_494:
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
	jae	.label_545
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_545:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_561
	jmp	.label_564
.label_561:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_494
.label_564:
	jmp	.label_512
.label_538:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_569
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_569
	mov	qword ptr [rbp - 0xb8], 1
.label_613:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_573
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
	jb	.label_576
	jmp	.label_593
.label_593:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_576
	jmp	.label_599
.label_599:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_576
	jmp	.label_606
.label_606:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_567
	mov	rsp, rsp
	jmp	.label_576
.label_576:
	mov	rsp, rsp
	jmp	.label_473
.label_567:
	jmp	.label_612
.label_612:
	mov	rsp, rsp
	jmp	.label_615
.label_615:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_613
.label_573:
	mov	rbp, rbp
	jmp	.label_569
.label_569:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_625
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_625:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_628
.label_628:
	lea	rsi, [rsi]
	jmp	.label_634
.label_634:
	jmp	.label_636
.label_636:
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
	jne	.label_510
.label_512:
	jmp	.label_482
.label_482:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_645
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_450
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_450
.label_645:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_629:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_462
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_462
	jmp	.label_467
.label_467:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_470
	jmp	.label_473
.label_470:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_476
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_476
	lea	rdi, [rdi]
	jmp	.label_481
.label_481:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_486
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_486:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_489
.label_489:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_493
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_493:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_505
.label_505:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_476:
	jmp	.label_516
.label_516:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_518
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_518:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_469
.label_469:
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_530
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
.label_530:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_607
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
.label_607:
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
	jmp	.label_559
.label_462:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_566
	lea	rdi, [rdi]
	jmp	.label_535
.label_535:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_570
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_570:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_566:
	nop	
	jmp	.label_559
.label_559:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_581
	jmp	.label_586
.label_581:
	lea	rsi, [rsi]
	jmp	.label_587
.label_587:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_590
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_590
	lea	rsi, [rsi]
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_598
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_598:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_604
.label_604:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_526
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_590:
	nop	
	jmp	.label_617
.label_617:
	mov	rsp, rsp
	jmp	.label_619
.label_619:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_621
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_621:
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
	jmp	.label_629
.label_586:
	mov	rsp, rsp
	jmp	.label_461
.label_450:
	lea	rsi, [rsi]
	jmp	.label_463
.label_463:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_596
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_643
.label_596:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_646
.label_643:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_646
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
	jne	.label_459
.label_646:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_459
	mov	rsp, rsp
	jmp	.label_461
.label_459:
	nop	
	jmp	.label_464
.label_464:
	jmp	.label_465
.label_465:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_466
	jmp	.label_473
.label_466:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_475
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_475
	lea	rdi, [rdi]
	jmp	.label_479
.label_479:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_484
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_484:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_507
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_507:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_502
.label_502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_506
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_475:
	jmp	.label_517
.label_517:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_519
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_519:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_525
.label_525:
	nop	
	jmp	.label_461
.label_461:
	jmp	.label_532
.label_532:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_527
	test	byte ptr [rbp - 0x82], 1
	jne	.label_527
	lea	rdi, [rdi]
	jmp	.label_539
.label_539:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_541
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_541:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_554
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_554:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_527:
	jmp	.label_565
.label_565:
	nop	
	jmp	.label_552
.label_552:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_509
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_509:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_572
	mov	byte ptr [rbp - 0x7e], 0
.label_572:
	mov	rbp, rbp
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_547
.label_630:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_454
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_454
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_454
	nop	
	jmp	.label_473
.label_454:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_594
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_594
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_594
	test	byte ptr [rbp - 0x7e], 1
	je	.label_600
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
	jmp	.label_557
.label_600:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_620
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_620
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_627
.label_620:
	jmp	.label_631
.label_631:
	mov	rbp, rbp
	jmp	.label_594
.label_594:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_455
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_455
	mov	rbp, rbp
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_637
	lea	rdi, [rdi]
	jmp	.label_638
.label_638:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_642
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_642:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_447
.label_447:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_452
.label_637:
	jmp	.label_455
.label_455:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_557
.label_473:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_474
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_474
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_474:
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
.label_557:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a100
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
	#Procedure 0x40a170

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
	je	.label_648
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_649
.label_648:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_649
.label_649:
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
	je	.label_650
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_650:
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
	#Procedure 0x40a340
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
.label_655:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_654
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
	jmp	.label_655
.label_654:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_653
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_651]],  rax
.label_653:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_652
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_652:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a450

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
	#Procedure 0x40a4a0

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
	jge	.label_657
	call	abort
.label_657:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_660
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
	jge	.label_661
	call	xalloc_die
.label_661:
	test	byte ptr [rbp - 0x31], 1
	je	.label_662
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_658
.label_662:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_658:
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
	je	.label_656
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_651]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_656:
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
.label_660:
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
	ja	.label_663
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
	je	.label_659
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_659:
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
.label_663:
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
	#Procedure 0x40a7d0

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
	#Procedure 0x40a810
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
	#Procedure 0x40a840
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
	#Procedure 0x40a880

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
	#Procedure 0x40a8e0

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
	jne	.label_664
	call	abort
.label_664:
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
	#Procedure 0x40a980

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
	#Procedure 0x40a9f0

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
	#Procedure 0x40aa30
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
	#Procedure 0x40aa70

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
	#Procedure 0x40ab20

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
	#Procedure 0x40ab60

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
	#Procedure 0x40ab90
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
	#Procedure 0x40abd0

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
	#Procedure 0x40acc0

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
	#Procedure 0x40ad10

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
	#Procedure 0x40adb0
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
	#Procedure 0x40ae00
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
	#Procedure 0x40ae60

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
	#Procedure 0x40aea0
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
	#Procedure 0x40aee0

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
	#Procedure 0x40af20

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
	#Procedure 0x40af60

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
	je	.label_668
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_667
.label_668:
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
	jne	.label_666
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
	jmp	.label_667
.label_666:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_665
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
	jmp	.label_667
.label_665:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_667:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b0a0

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
.label_670:
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
	jg	.label_676
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_674
.label_676:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_669
	lea	rdi, [rdi]
	jmp	.label_670
.label_669:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_673
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_673
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_675
.label_673:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_674
.label_675:
	jmp	.label_672
.label_672:
	jmp	.label_671
.label_671:
	mov	rsp, rsp
	jmp	.label_670
.label_674:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b190

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_683:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jg	.label_684
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_682
.label_684:
	call	__errno_location
	cmp	dword ptr [rax], 4
	nop	
	jne	.label_680
	nop	
	jmp	.label_683
.label_680:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_677
	mov	eax, 0x7ff00000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_677
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_678
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_682
.label_678:
	jmp	.label_679
.label_679:
	jmp	.label_681
.label_681:
	jmp	.label_683
.label_682:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b270

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
	jg	.label_685
	cmp	dword ptr [rbp - 4], 2
	jg	.label_685
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
.label_685:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b300

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
	je	.label_686
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
	jmp	.label_690
.label_686:
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
.label_690:
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
	ja	.label_688
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_689]]
	jmp	rcx
.label_1023:
	jmp	.label_687
.label_1024:
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
	jmp	.label_687
.label_1025:
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
	jmp	.label_687
.label_1026:
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
	jmp	.label_687
.label_1027:
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
	jmp	.label_687
.label_1028:
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
	jmp	.label_687
.label_1029:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
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
	jmp	.label_687
.label_1030:
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
	jmp	.label_687
.label_1031:
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
	jmp	.label_687
.label_1032:
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
	jmp	.label_687
.label_688:
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
.label_687:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba70
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
.label_691:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_692
	mov	rbp, rbp
	jmp	.label_693
.label_693:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_691
.label_692:
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
	#Procedure 0x40bb20

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
.label_700:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_699
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_695
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
	jmp	.label_696
.label_695:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_696:
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
.label_699:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_698
	mov	rsp, rsp
	jmp	.label_694
.label_698:
	jmp	.label_697
.label_697:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_700
.label_694:
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
	#Procedure 0x40bc80

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
	je	.label_701
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
.label_701:
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
	#Procedure 0x40be30
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
	#Procedure 0x40bee0

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
	jae	.label_702
	mov	rbp, rbp
	call	xalloc_die
.label_702:
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
	#Procedure 0x40bf40

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
	jne	.label_703
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_703
	lea	rdi, [rdi]
	call	xalloc_die
.label_703:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bfa0
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
	jae	.label_704
	mov	rsp, rsp
	call	xalloc_die
.label_704:
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
	#Procedure 0x40c020

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
	jne	.label_705
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_705
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_707
.label_705:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_706
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_706
	lea	rsi, [rsi]
	call	xalloc_die
.label_706:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_707:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0d0

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
	jne	.label_708
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_710
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
.label_710:
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
	jae	.label_712
	call	xalloc_die
.label_712:
	lea	rsi, [rsi]
	jmp	.label_711
.label_708:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_709
	call	xalloc_die
.label_709:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_711:
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
	#Procedure 0x40c200

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
	#Procedure 0x40c230
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
	#Procedure 0x40c270
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
	#Procedure 0x40c2c0

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
	jb	.label_713
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_714
.label_713:
	lea	rsi, [rsi]
	call	xalloc_die
.label_714:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c330

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
	#Procedure 0x40c380

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
	#Procedure 0x40c3e0

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
	#Procedure 0x40c440

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
	#Procedure 0x40c450

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
	jge	.label_715
	call	xset_binary_mode_error
.label_715:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c490

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
	jne	.label_726
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_729
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_719
.label_729:
	mov	dword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_724
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_716
.label_724:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_716:
	jmp	.label_719
.label_719:
	nop	
	jmp	.label_722
.label_726:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_725
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_721
.label_725:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_717
	call	__errno_location
	mov	dword ptr [rax], 0
.label_717:
	jmp	.label_721
.label_721:
	jmp	.label_722
.label_722:
	nop	
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_718
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_727
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_720
.label_727:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_720
.label_720:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_728
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_723
.label_728:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
.label_723:
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
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_718:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c680

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
	#Procedure 0x40c6f0

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
	jg	.label_745
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_745
	jmp	.label_767
.label_745:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_767:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_766
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_770
.label_766:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_770
.label_770:
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
.label_794:
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
	je	.label_786
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_794
.label_786:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_784
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_738
.label_784:
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
	jne	.label_757
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_768
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_768
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_768
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_781
.label_768:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_738
.label_781:
	lea	rdi, [rdi]
	jmp	.label_755
.label_757:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_790
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_733
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_738
.label_733:
	mov	dword ptr [rbp - 0x4c], 1
.label_790:
	jmp	.label_755
.label_755:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_743
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_738
.label_743:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_756
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
	jne	.label_774
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
	jmp	.label_738
.label_774:
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
	je	.label_737
	jmp	.label_789
.label_789:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_737
	nop	
	jmp	.label_734
.label_734:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_737
	nop	
	jmp	.label_740
.label_740:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_737
	lea	rsi, [rsi]
	jmp	.label_749
.label_749:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_737
	jmp	.label_761
.label_761:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_737
	jmp	.label_771
.label_771:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_737
	mov	rsp, rsp
	jmp	.label_776
.label_776:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_737
	jmp	.label_780
.label_780:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_737
	mov	rsp, rsp
	jmp	.label_788
.label_788:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_737
	jmp	.label_730
.label_730:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_732
	jmp	.label_737
.label_737:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_739
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
	je	.label_748
	lea	rsi, [rsi]
	jmp	.label_765
.label_765:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_748
	jmp	.label_750
.label_750:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_763
	lea	rsi, [rsi]
	jmp	.label_778
.label_778:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_779
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_779:
	jmp	.label_763
.label_748:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_763:
	jmp	.label_739
.label_739:
	nop	
	jmp	.label_732
.label_732:
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
	je	.label_795
	jmp	.label_741
.label_741:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_735
	jmp	.label_751
.label_751:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_753
	jmp	.label_759
.label_759:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_762
	nop	
	jmp	.label_772
.label_772:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_773
	nop	
	jmp	.label_777
.label_777:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_736
	mov	rsp, rsp
	jmp	.label_782
.label_782:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_747
	jmp	.label_793
.label_793:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_775
	mov	rbp, rbp
	jmp	.label_746
.label_746:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_758
	jmp	.label_742
.label_742:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_744
	jmp	.label_752
.label_752:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_754
	jmp	.label_760
.label_760:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_753
	jmp	.label_783
.label_783:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_762
	jmp	.label_792
.label_792:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_773
	jmp	.label_769
.label_769:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_747
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_787
	jmp	.label_791
.label_744:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_795:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_754:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_731
.label_735:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_753:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_762:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_773:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_736:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_731
.label_747:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_731
.label_787:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_775:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_758:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_731
.label_791:
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
	jmp	.label_738
.label_731:
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
	je	.label_764
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_764:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_738:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfe0

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
	jae	.label_796
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_797
.label_796:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_797:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d060

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
.label_798:
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
	je	.label_799
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
	jmp	.label_798
.label_799:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d0e0

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
	jge	.label_803
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_801
.label_803:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_800
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
	je	.label_802
.label_800:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_802
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_802:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_804
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
.label_804:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_801:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d200

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
	je	.label_805
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_806
.label_805:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_807
.label_806:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_807:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d270

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
	je	.label_808
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
.label_808:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2d0

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
	jne	.label_809
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_809
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_809
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
	jne	.label_811
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_810
.label_811:
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
	jmp	.label_810
.label_809:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_810:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d3e0

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
	jne	.label_812
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_812:
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
	ja	.label_813
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_813
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_813
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
	jmp	.label_814
.label_813:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_814:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d4d0
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	str2signum
	xor	ecx, ecx
	mov	edx, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rsi], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	cmovl	ecx, edx
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d520

	.globl str2signum
	.type str2signum, @function
str2signum:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	sub	eax, 0x30
	cmp	eax, 9
	nop	
	ja	.label_822
	lea	rsi, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_823
	cmp	qword ptr [rbp - 0x20], 0x40
	jg	.label_823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_820
.label_823:
	lea	rdi, [rdi]
	jmp	.label_819
.label_822:
	mov	dword ptr [rbp - 0x24], 0
.label_826:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	cmp	rcx, 0x23
	lea	rsi, [rsi]
	jae	.label_824
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:numname_table
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_827
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:numname_table
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	jmp	.label_820
.label_827:
	jmp	.label_825
.label_825:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_826
.label_824:
	mov	rbp, rbp
	call	__libc_current_sigrtmin
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	call	__libc_current_sigrtmax
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	jge	.label_818
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_7
	nop	
	mov	eax, 5
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_818
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, 0xa
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_815
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jg	.label_815
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x34]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_815
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_820
.label_815:
	jmp	.label_821
.label_818:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_817
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_4
	nop	
	mov	eax, 5
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_817
	mov	rbp, rbp
	lea	rsi, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_816
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, qword ptr [rbp - 0x48]
	jg	.label_816
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jg	.label_816
	movsxd	rax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	jmp	.label_820
.label_816:
	lea	rdi, [rdi]
	jmp	.label_817
.label_817:
	jmp	.label_821
.label_821:
	jmp	.label_819
.label_819:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
.label_820:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d810

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_837:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x23
	lea	rdi, [rdi]
	jae	.label_834
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x14]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0xc
	mov	rbp, rbp
	add	rax, rdx
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 8]
	jne	.label_828
	movabs	rax, OFFSET FLAT:numname_table
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	lea	rsi, [rsi]
	add	rax, rdx
	add	rax, 4
	mov	rsi, rax
	lea	rsi, [rsi]
	call	strcpy
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_831
.label_828:
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_837
.label_834:
	lea	rsi, [rsi]
	call	__libc_current_sigrtmin
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_830
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x1c]
	jle	.label_836
.label_830:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_831
.label_836:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	sub	esi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x34]
	nop	
	idiv	esi
	mov	edi, dword ptr [rbp - 0x38]
	add	edi, eax
	cmp	ecx, edi
	lea	rdi, [rdi]
	jg	.label_829
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_7
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcpy
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0x20], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_832
.label_829:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_832:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	je	.label_833
	movabs	rsi, OFFSET FLAT:.str.2_2
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	nop	
	call	sprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_833:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_831:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da10

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
	#Procedure 0x40da30

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
	#Procedure 0x40da50

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
	je	.label_839
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_838
.label_839:
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_838:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dab0

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
	jne	.label_840
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_841
.label_840:
	mov	rbp, rbp
	jmp	.label_843
.label_843:
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
	jne	.label_842
	jmp	.label_844
.label_842:
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
	je	.label_843
.label_844:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_841:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dba0

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
	jne	.label_847
	test	byte ptr [rbp - 0x13], 1
	je	.label_846
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_847
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_846
.label_847:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_845
	call	__errno_location
	mov	dword ptr [rax], 0
.label_845:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_848
.label_846:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_848:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc80

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
	je	.label_850
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_851
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_849
.label_851:
	mov	byte ptr [rbp - 5], 0
.label_849:
	jmp	.label_850
.label_850:
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
	#Procedure 0x40dd20

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
	jne	.label_853
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_853:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_852
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_852:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dda0

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
	#Procedure 0x40dde0

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
	je	.label_866
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
.label_866:
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
	je	.label_873
	nop	
	jmp	.label_861
.label_861:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_862
	jmp	.label_867
.label_873:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_869
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
	jmp	.label_879
.label_869:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_879:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_872
.label_862:
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
	ja	.label_876
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
	jmp	.label_884
.label_876:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_884:
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
	jmp	.label_872
.label_867:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_854
	nop	
	jmp	.label_855
.label_855:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_857
	jmp	.label_865
.label_865:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_854
	nop	
	jmp	.label_874
.label_874:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_857
	nop	
	jmp	.label_882
.label_882:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_854
	lea	rsi, [rsi]
	jmp	.label_859
.label_859:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_854
	lea	rsi, [rsi]
	jmp	.label_870
.label_870:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_857
	mov	rsp, rsp
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_854
	jmp	.label_883
.label_883:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_857
	lea	rsi, [rsi]
	jmp	.label_858
.label_858:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_854
	jmp	.label_868
.label_868:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_857
	mov	rsp, rsp
	jmp	.label_878
.label_878:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_854
	lea	rsi, [rsi]
	jmp	.label_880
.label_880:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_854
	nop	
	jmp	.label_863
.label_863:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_864
	lea	rdi, [rdi]
	jmp	.label_857
.label_857:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_856
.label_854:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_881
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
	jmp	.label_860
.label_881:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_860:
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
	jmp	.label_856
.label_864:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_875
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
	jmp	.label_871
.label_875:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_871:
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
.label_856:
	jmp	.label_872
.label_872:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e460

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
	#Procedure 0x40e4b0

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
	jg	.label_893
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
	jle	.label_892
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_885
.label_892:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_887
.label_885:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_890
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_890:
	mov	rbp, rbp
	jmp	.label_887
.label_887:
	jmp	.label_888
.label_893:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_888:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_891
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_891
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_889
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
	jne	.label_886
.label_889:
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
.label_886:
	jmp	.label_891
.label_891:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e630

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
	ja	.label_894
	jmp	.label_895
.label_895:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_896
.label_894:
	lea	rsi, [rsi]
	jmp	.label_896
.label_896:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e690
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
	jb	.label_897
	jmp	.label_900
.label_900:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_897
	jmp	.label_898
.label_898:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_899
	jmp	.label_897
.label_897:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_901
.label_899:
	mov	byte ptr [rbp - 1], 0
.label_901:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e700
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
	jb	.label_902
	jmp	.label_905
.label_905:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_903
	jmp	.label_902
.label_902:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_904
.label_903:
	mov	byte ptr [rbp - 1], 0
.label_904:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e750
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_906
	jmp	.label_907
.label_907:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_908
.label_906:
	mov	byte ptr [rbp - 1], 0
.label_908:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e780
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_909
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_909:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7b0
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
	jb	.label_910
	jmp	.label_912
.label_912:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_913
	jmp	.label_910
.label_910:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_911
.label_913:
	mov	byte ptr [rbp - 1], 0
.label_911:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e800
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_914
	jmp	.label_916
.label_916:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_915
.label_914:
	mov	byte ptr [rbp - 1], 0
.label_915:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e840
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_917
	jmp	.label_919
.label_919:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_918
.label_917:
	mov	byte ptr [rbp - 1], 0
.label_918:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e880
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_920
	jmp	.label_922
.label_922:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_921
.label_920:
	mov	byte ptr [rbp - 1], 0
.label_921:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_923
	jmp	.label_925
.label_925:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_924
.label_923:
	mov	byte ptr [rbp - 1], 0
.label_924:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e900
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
	jb	.label_926
	jmp	.label_929
.label_929:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_926
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_926
	jmp	.label_928
.label_928:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_931
	jmp	.label_926
.label_926:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_927
.label_931:
	mov	byte ptr [rbp - 1], 0
.label_927:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e980
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
	jb	.label_932
	jmp	.label_935
.label_935:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_933
	jmp	.label_932
.label_932:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_934
.label_933:
	mov	byte ptr [rbp - 1], 0
.label_934:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9d0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_936
	jmp	.label_938
.label_938:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_937
.label_936:
	mov	byte ptr [rbp - 1], 0
.label_937:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea10
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
	jb	.label_939
	jmp	.label_941
.label_941:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_939
	jmp	.label_940
.label_940:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_942
	jmp	.label_939
.label_939:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_943
.label_942:
	mov	byte ptr [rbp - 1], 0
.label_943:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea80

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_944
	jmp	.label_946
.label_946:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_945
.label_944:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_945:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eac0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_947
	jmp	.label_949
.label_949:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_948
.label_947:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_948:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ebb0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat